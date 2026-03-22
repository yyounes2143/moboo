package com.sensorsdata.analytics.android.sdk.useridentity;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentDistinctId;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentLoader;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.listener.SAEventListener;
import com.sensorsdata.analytics.android.sdk.monitor.TrackMonitor;
import com.sensorsdata.analytics.android.sdk.useridentity.Identities;
import com.sensorsdata.analytics.android.sdk.useridentity.h5identity.H5UserIdentityStrategy;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils;
import java.util.UUID;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class UserIdentityAPI implements IUserIdentityAPI {
    private static final String TAG = "SA.UserIdentityAPI";
    private final PersistentDistinctId mAnonymousId;
    private H5UserIdentityStrategy mH5UserIdentityStrategy;
    private final Identities mIdentitiesInstance;
    private String mLoginIdValue;
    private final SAContextManager mSAContextManager;

    public UserIdentityAPI(SAContextManager sAContextManager) {
        this.mLoginIdValue = null;
        this.mSAContextManager = sAContextManager;
        PersistentDistinctId anonymousIdPst = PersistentLoader.getInstance().getAnonymousIdPst();
        this.mAnonymousId = anonymousIdPst;
        Identities identities = new Identities();
        this.mIdentitiesInstance = identities;
        try {
            identities.init(SensorsDataUtils.getIdentifier(sAContextManager.getContext()), anonymousIdPst.get());
            this.mLoginIdValue = identities.getJointLoginID();
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void bind(String str, String str2) {
        bindBack(str, str2);
    }

    public boolean bindBack(String str, String str2) {
        try {
            return this.mIdentitiesInstance.update(str, str2);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public String getAnonymousId() {
        String str;
        try {
            synchronized (this.mAnonymousId) {
                str = this.mAnonymousId.get();
            }
            return str;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public String getDistinctId() {
        try {
            String loginId = getLoginId();
            if (!TextUtils.isEmpty(loginId)) {
                return loginId;
            }
            return getAnonymousId();
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return "";
        }
    }

    public JSONObject getIdentities(EventType eventType) {
        if (EventType.TRACK_SIGNUP == eventType) {
            return this.mIdentitiesInstance.getIdentities(Identities.State.LOGIN_KEY);
        }
        if (EventType.TRACK_ID_UNBIND == eventType) {
            return this.mIdentitiesInstance.getIdentities(Identities.State.REMOVE_KEYID);
        }
        return this.mIdentitiesInstance.getIdentities(Identities.State.DEFAULT);
    }

    public Identities getIdentitiesInstance() {
        return this.mIdentitiesInstance;
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public String getLoginId() {
        if (AppInfoUtils.isTaskExecuteThread()) {
            return this.mIdentitiesInstance.getJointLoginID();
        }
        return this.mLoginIdValue;
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void identify(String str) {
        try {
            SALog.i(TAG, "identify is called");
            synchronized (this.mAnonymousId) {
                if (!str.equals(this.mAnonymousId.get())) {
                    this.mAnonymousId.commit(str);
                    this.mIdentitiesInstance.updateSpecialIDKeyAndValue(Identities.SpecialID.ANONYMOUS_ID, str);
                    if (this.mSAContextManager.getEventListenerList() != null) {
                        for (SAEventListener sAEventListener : this.mSAContextManager.getEventListenerList()) {
                            try {
                                sAEventListener.identify();
                            } catch (Exception e) {
                                SALog.printStackTrace(e);
                            }
                        }
                    }
                    TrackMonitor.getInstance().callIdentify(str);
                }
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void login(String str) {
        loginWithKeyBack(LoginIDAndKey.LOGIN_ID_KEY_DEFAULT, str);
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void loginWithKey(String str, String str2) {
        loginWithKeyBack(str, str2);
    }

    public boolean loginWithKeyBack(String str, String str2) {
        try {
            boolean updateLoginKeyAndID = this.mIdentitiesInstance.updateLoginKeyAndID(str, str2, getAnonymousId());
            if (updateLoginKeyAndID) {
                if (this.mSAContextManager.getEventListenerList() != null) {
                    for (SAEventListener sAEventListener : this.mSAContextManager.getEventListenerList()) {
                        try {
                            sAEventListener.login();
                        } catch (Exception e) {
                            SALog.printStackTrace(e);
                        }
                    }
                }
                TrackMonitor.getInstance().callLogin(this.mIdentitiesInstance.getJointLoginID());
                return updateLoginKeyAndID;
            }
            return updateLoginKeyAndID;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
            return false;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void logout() {
        try {
            JSONObject identities = this.mIdentitiesInstance.getIdentities(Identities.State.DEFAULT);
            boolean isEmpty = TextUtils.isEmpty(this.mIdentitiesInstance.getLoginId());
            if (isEmpty) {
                if (identities != null) {
                    if (identities.length() == 1) {
                        if (!identities.has(Identities.ANDROID_ID)) {
                            if (identities.has(Identities.ANDROID_UUID)) {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                } else {
                    return;
                }
            }
            SALog.i(TAG, "logout is called");
            this.mIdentitiesInstance.removeLoginKeyAndID();
            if (!isEmpty) {
                if (this.mSAContextManager.getEventListenerList() != null) {
                    for (SAEventListener sAEventListener : this.mSAContextManager.getEventListenerList()) {
                        try {
                            sAEventListener.logout();
                        } catch (Exception e) {
                            SALog.printStackTrace(e);
                        }
                    }
                }
                TrackMonitor.getInstance().callLogout();
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        SALog.i(TAG, "Clean loginId");
    }

    public boolean mergeH5Identities(EventType eventType, JSONObject jSONObject) {
        if (this.mH5UserIdentityStrategy == null) {
            this.mH5UserIdentityStrategy = new H5UserIdentityStrategy(this);
        }
        return this.mH5UserIdentityStrategy.processH5UserIdentity(eventType, jSONObject);
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void resetAnonymousId() {
        try {
            synchronized (this.mAnonymousId) {
                SALog.i(TAG, "resetAnonymousId is called");
                String identifier = SensorsDataUtils.getIdentifier(this.mSAContextManager.getContext());
                if (identifier.equals(this.mAnonymousId.get())) {
                    SALog.i(TAG, "DistinctId not change");
                    return;
                }
                if (!SensorsDataUtils.isValidAndroidId(identifier)) {
                    identifier = UUID.randomUUID().toString();
                }
                this.mAnonymousId.commit(identifier);
                if (this.mSAContextManager.getEventListenerList() != null) {
                    for (SAEventListener sAEventListener : this.mSAContextManager.getEventListenerList()) {
                        try {
                            sAEventListener.resetAnonymousId();
                        } catch (Exception e) {
                            SALog.printStackTrace(e);
                        }
                    }
                }
                TrackMonitor.getInstance().callResetAnonymousId(identifier);
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public void trackH5Notify(JSONObject jSONObject) {
        try {
            if (this.mSAContextManager.getEventListenerList() != null) {
                for (SAEventListener sAEventListener : this.mSAContextManager.getEventListenerList()) {
                    try {
                        sAEventListener.trackEvent(jSONObject);
                    } catch (Exception e) {
                        SALog.printStackTrace(e);
                    }
                }
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        TrackMonitor.getInstance().callTrack(jSONObject);
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void unbind(String str, String str2) {
        unbindBack(str, str2);
    }

    public boolean unbindBack(String str, String str2) {
        try {
            return this.mIdentitiesInstance.remove(str, str2);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    public void updateLoginId(String str, String str2) {
        this.mLoginIdValue = LoginIDAndKey.jointLoginID(str, str2);
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void login(String str, JSONObject jSONObject) {
        loginWithKeyBack(LoginIDAndKey.LOGIN_ID_KEY_DEFAULT, str);
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void loginWithKey(String str, String str2, JSONObject jSONObject) {
        loginWithKeyBack(str, str2);
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public JSONObject getIdentities() {
        return this.mIdentitiesInstance.getIdentities(Identities.State.DEFAULT);
    }
}
