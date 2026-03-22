package com.sensorsdata.analytics.android.sdk.data.persistent;

import android.content.Context;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class PersistentLoader {
    private static volatile PersistentLoader INSTANCE;
    private final Context mContext;
    private final PersistentAppEndData mAppEndDataPst = (PersistentAppEndData) loadPersistent(DbParams.PersistentName.APP_END_DATA);
    private final PersistentAppExitData mAppExitDataPst = (PersistentAppExitData) loadPersistent(DbParams.APP_EXIT_DATA);
    private final PersistentLoginId mLoginIdPst = (PersistentLoginId) loadPersistent(DbParams.PersistentName.LOGIN_ID);
    private final PersistentRemoteSDKConfig mRemoteSDKConfig = (PersistentRemoteSDKConfig) loadPersistent(DbParams.PersistentName.REMOTE_CONFIG);
    private final UserIdentityPersistent mUserIdsPst = (UserIdentityPersistent) loadPersistent(DbParams.PersistentName.PERSISTENT_USER_ID);
    private final LoginIdKeyPersistent mLoginIdKeyPst = (LoginIdKeyPersistent) loadPersistent(DbParams.PersistentName.PERSISTENT_LOGIN_ID_KEY);
    private final PersistentDistinctId mAnonymousIdPst = (PersistentDistinctId) loadPersistent(DbParams.PersistentName.DISTINCT_ID);
    private final PersistentFirstStart mFirstStartPst = (PersistentFirstStart) loadPersistent(DbParams.PersistentName.FIRST_START);
    private final PersistentFirstDay mFirstDayPst = (PersistentFirstDay) loadPersistent(DbParams.PersistentName.FIRST_DAY);
    private final PersistentSuperProperties mSuperPropertiesPst = (PersistentSuperProperties) loadPersistent(DbParams.PersistentName.SUPER_PROPERTIES);
    private final PersistentVisualConfig mVisualConfigPst = (PersistentVisualConfig) loadPersistent(DbParams.PersistentName.VISUAL_PROPERTIES);
    private final PersistentFirstTrackInstallation mFirstInstallationPst = (PersistentFirstTrackInstallation) loadPersistent(DbParams.PersistentName.FIRST_INSTALL);
    private final PersistentFirstTrackInstallationWithCallback mFirstInstallationWithCallbackPst = (PersistentFirstTrackInstallationWithCallback) loadPersistent(DbParams.PersistentName.FIRST_INSTALL_CALLBACK);

    private PersistentLoader(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public static PersistentLoader getInstance() {
        return INSTANCE;
    }

    private PersistentIdentity<?> loadPersistent(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1436067305:
                if (str.equals(DbParams.PersistentName.LOGIN_ID)) {
                    c = 0;
                    break;
                }
                break;
            case -951089033:
                if (str.equals(DbParams.PersistentName.SUPER_PROPERTIES)) {
                    c = 1;
                    break;
                }
                break;
            case -854148740:
                if (str.equals(DbParams.PersistentName.FIRST_INSTALL_CALLBACK)) {
                    c = 2;
                    break;
                }
                break;
            case -690407917:
                if (str.equals(DbParams.PersistentName.FIRST_START)) {
                    c = 3;
                    break;
                }
                break;
            case -456824111:
                if (str.equals(DbParams.PersistentName.PERSISTENT_LOGIN_ID_KEY)) {
                    c = 4;
                    break;
                }
                break;
            case -266152892:
                if (str.equals(DbParams.PersistentName.PERSISTENT_USER_ID)) {
                    c = 5;
                    break;
                }
                break;
            case -212773998:
                if (str.equals(DbParams.PersistentName.VISUAL_PROPERTIES)) {
                    c = 6;
                    break;
                }
                break;
            case 133344653:
                if (str.equals(DbParams.PersistentName.FIRST_DAY)) {
                    c = 7;
                    break;
                }
                break;
            case 721318680:
                if (str.equals(DbParams.PersistentName.DISTINCT_ID)) {
                    c = '\b';
                    break;
                }
                break;
            case 923005325:
                if (str.equals(DbParams.APP_EXIT_DATA)) {
                    c = '\t';
                    break;
                }
                break;
            case 947194773:
                if (str.equals(DbParams.PersistentName.REMOTE_CONFIG)) {
                    c = '\n';
                    break;
                }
                break;
            case 1214783133:
                if (str.equals(DbParams.PersistentName.FIRST_INSTALL)) {
                    c = 11;
                    break;
                }
                break;
            case 1521941740:
                if (str.equals(DbParams.PersistentName.APP_END_DATA)) {
                    c = '\f';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return new PersistentLoginId();
            case 1:
                return new PersistentSuperProperties();
            case 2:
                return new PersistentFirstTrackInstallationWithCallback();
            case 3:
                return new PersistentFirstStart();
            case 4:
                return new LoginIdKeyPersistent();
            case 5:
                return new UserIdentityPersistent();
            case 6:
                return new PersistentVisualConfig();
            case 7:
                return new PersistentFirstDay();
            case '\b':
                return new PersistentDistinctId(this.mContext);
            case '\t':
                return new PersistentAppExitData();
            case '\n':
                return new PersistentRemoteSDKConfig();
            case 11:
                return new PersistentFirstTrackInstallation();
            case '\f':
                return new PersistentAppEndData();
            default:
                return null;
        }
    }

    public static void preInit(Context context) {
        if (INSTANCE == null) {
            synchronized (PersistentLoader.class) {
                try {
                    if (INSTANCE == null) {
                        INSTANCE = new PersistentLoader(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public PersistentDistinctId getAnonymousIdPst() {
        return this.mAnonymousIdPst;
    }

    public PersistentAppEndData getAppEndDataPst() {
        return this.mAppEndDataPst;
    }

    public PersistentAppExitData getAppExitDataPst() {
        return this.mAppExitDataPst;
    }

    public PersistentFirstDay getFirstDayPst() {
        return this.mFirstDayPst;
    }

    public PersistentFirstTrackInstallation getFirstInstallationPst() {
        return this.mFirstInstallationPst;
    }

    public PersistentFirstTrackInstallationWithCallback getFirstInstallationWithCallbackPst() {
        return this.mFirstInstallationWithCallbackPst;
    }

    public PersistentFirstStart getFirstStartPst() {
        return this.mFirstStartPst;
    }

    public LoginIdKeyPersistent getLoginIdKeyPst() {
        return this.mLoginIdKeyPst;
    }

    public PersistentLoginId getLoginIdPst() {
        return this.mLoginIdPst;
    }

    public PersistentRemoteSDKConfig getRemoteSDKConfig() {
        return this.mRemoteSDKConfig;
    }

    public PersistentSuperProperties getSuperPropertiesPst() {
        return this.mSuperPropertiesPst;
    }

    public UserIdentityPersistent getUserIdsPst() {
        return this.mUserIdsPst;
    }

    public PersistentVisualConfig getVisualConfigPst() {
        return this.mVisualConfigPst;
    }
}
