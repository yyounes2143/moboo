package com.sensorsdata.analytics.android.sdk.useridentity;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter;
import com.sensorsdata.analytics.android.sdk.data.persistent.LoginIdKeyPersistent;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentLoader;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentLoginId;
import com.sensorsdata.analytics.android.sdk.data.persistent.UserIdentityPersistent;
import com.sensorsdata.analytics.android.sdk.util.SADataHelper;
import com.sensorsdata.analytics.android.sdk.util.SensorsDataUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class Identities {
    public static final String ANDROID_ID = "$identity_android_id";
    public static final String ANDROID_UUID = "$identity_android_uuid";
    public static final String ANONYMOUS_ID = "$identity_anonymous_id";
    public static final String COOKIE_ID = "$identity_cookie_id";
    public static final String IDENTITIES_KEY = "identities";
    private static final String TAG = "SA.Identities";
    private JSONObject mIdentities;
    private final LoginIDAndKey mLoginIDAndKey = new LoginIDAndKey();
    private JSONObject mLoginIdentities;
    private JSONObject mUnbindIdentities;

    /* compiled from: Proguard */
    /* renamed from: com.sensorsdata.analytics.android.sdk.useridentity.Identities$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sensorsdata$analytics$android$sdk$useridentity$Identities$SpecialID;
        static final /* synthetic */ int[] $SwitchMap$com$sensorsdata$analytics$android$sdk$useridentity$Identities$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$com$sensorsdata$analytics$android$sdk$useridentity$Identities$State = iArr;
            try {
                iArr[State.LOGIN_KEY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sensorsdata$analytics$android$sdk$useridentity$Identities$State[State.REMOVE_KEYID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sensorsdata$analytics$android$sdk$useridentity$Identities$State[State.DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[SpecialID.values().length];
            $SwitchMap$com$sensorsdata$analytics$android$sdk$useridentity$Identities$SpecialID = iArr2;
            try {
                iArr2[SpecialID.ANDROID_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sensorsdata$analytics$android$sdk$useridentity$Identities$SpecialID[SpecialID.ANDROID_UUID.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class Local {
        public static String getIdentitiesFromLocal() {
            try {
                UserIdentityPersistent userIdsPst = PersistentLoader.getInstance().getUserIdsPst();
                if (userIdsPst != null) {
                    return DbAdapter.decodeIdentities(userIdsPst.get());
                }
                return null;
            } catch (Exception e) {
                SALog.printStackTrace(e);
                return null;
            }
        }

        public static String getLoginIdFromLocal() {
            try {
                PersistentLoginId loginIdPst = PersistentLoader.getInstance().getLoginIdPst();
                if (loginIdPst == null) {
                    return "";
                }
                return loginIdPst.get();
            } catch (Exception e) {
                SALog.printStackTrace(e);
                return "";
            }
        }

        public static String getLoginIdKeyFromLocal() {
            try {
                LoginIdKeyPersistent loginIdKeyPst = PersistentLoader.getInstance().getLoginIdKeyPst();
                if (loginIdKeyPst == null) {
                    return "";
                }
                return loginIdKeyPst.get();
            } catch (Exception e) {
                SALog.printStackTrace(e);
                return "";
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum SpecialID {
        ANONYMOUS_ID,
        ANDROID_ID,
        ANDROID_UUID
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum State {
        LOGIN_KEY,
        REMOVE_KEYID,
        DEFAULT
    }

    private void clearIdentities(List<String> list, JSONObject jSONObject) {
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                if (!list.contains(keys.next())) {
                    keys.remove();
                }
            }
        }
    }

    private JSONObject createIdentities(JSONObject jSONObject, String str, String str2) throws JSONException {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
            if (SensorsDataUtils.isValidAndroidId(str)) {
                jSONObject.put(ANDROID_ID, str);
                return jSONObject;
            }
            jSONObject.put(ANDROID_UUID, str2);
        }
        return jSONObject;
    }

    private JSONObject getCacheIdentities() throws JSONException {
        String identities = DbAdapter.getInstance().getIdentities();
        if (!TextUtils.isEmpty(identities)) {
            return new JSONObject(identities);
        }
        return null;
    }

    private JSONObject getDefaultIdentities() {
        try {
            return getCacheIdentities();
        } catch (JSONException e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    private JSONObject getInitIdentities() throws JSONException {
        String identitiesFromLocal = Local.getIdentitiesFromLocal();
        if (identitiesFromLocal != null && !TextUtils.isEmpty(identitiesFromLocal)) {
            return new JSONObject(identitiesFromLocal);
        }
        return null;
    }

    private void initLoginIDAndKeyIdentities(String str, String str2, JSONObject jSONObject) throws JSONException {
        if (TextUtils.isEmpty(str2)) {
            if (jSONObject.has(str)) {
                clearIdentities(Arrays.asList(ANDROID_ID, ANDROID_UUID), jSONObject);
                this.mLoginIDAndKey.setLoginIDKey("");
            }
        } else if (jSONObject.has(str)) {
            if (!jSONObject.getString(this.mLoginIDAndKey.getLoginIDKey()).equals(str2)) {
                jSONObject.put(Local.getLoginIdKeyFromLocal(), Local.getLoginIdFromLocal());
                clearIdentities(Arrays.asList(ANDROID_ID, ANDROID_UUID, this.mLoginIDAndKey.getLoginIDKey()), jSONObject);
            }
        } else {
            jSONObject.put(Local.getLoginIdKeyFromLocal(), Local.getLoginIdFromLocal());
            clearIdentities(Arrays.asList(ANDROID_ID, ANDROID_UUID, this.mLoginIDAndKey.getLoginIDKey()), jSONObject);
        }
    }

    private boolean isInValid(String str, String str2, String str3) {
        return !this.mLoginIDAndKey.setLoginKeyAndID(str, str2, str3);
    }

    private boolean isInvalidBusinessID(String str, String str2, boolean z) {
        boolean z2;
        if (z) {
            if (!isRemoveKeyValid(str) || !SADataHelper.assertPropertyKey(str)) {
                SALog.i(TAG, "unbind key is invalid, key = " + str);
                z2 = true;
            }
            z2 = false;
        } else {
            if (!isKeyValid(str) || !SADataHelper.assertPropertyKey(str)) {
                SALog.i(TAG, "bind key is invalid, key = " + str);
                z2 = true;
            }
            z2 = false;
        }
        try {
            SADataHelper.assertDistinctId(str2);
            return z2;
        } catch (Exception e) {
            SALog.i(TAG, e);
            return true;
        }
    }

    private boolean isKeyValid(String str) {
        if (!ANONYMOUS_ID.equals(str) && !ANDROID_UUID.equals(str) && !ANDROID_ID.equals(str) && !this.mLoginIDAndKey.getLoginIDKey().equals(str) && !LoginIDAndKey.LOGIN_ID_KEY_DEFAULT.equals(str)) {
            return true;
        }
        return false;
    }

    private boolean isRemoveKeyValid(String str) {
        if (!ANONYMOUS_ID.equals(str) && !LoginIDAndKey.LOGIN_ID_KEY_DEFAULT.equals(str)) {
            return true;
        }
        return false;
    }

    private void saveIdentities() {
        DbAdapter.getInstance().commitIdentities(this.mIdentities.toString());
    }

    public JSONObject getIdentities(State state) {
        int i = AnonymousClass1.$SwitchMap$com$sensorsdata$analytics$android$sdk$useridentity$Identities$State[state.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    JSONObject jSONObject = this.mIdentities;
                    if (jSONObject == null) {
                        return getDefaultIdentities();
                    }
                    return jSONObject;
                }
                return null;
            }
            JSONObject jSONObject2 = this.mUnbindIdentities;
            if (jSONObject2 != null) {
                return jSONObject2;
            }
            return null;
        }
        return this.mLoginIdentities;
    }

    public String getJointLoginID() {
        return this.mLoginIDAndKey.getJointLoginID();
    }

    public String getLoginIDKey() {
        return this.mLoginIDAndKey.getLoginIDKey();
    }

    public String getLoginId() {
        return this.mLoginIDAndKey.getLoginId();
    }

    public void init(String str, String str2) throws JSONException {
        String loginIdKeyFromLocal = Local.getLoginIdKeyFromLocal();
        String loginIdFromLocal = Local.getLoginIdFromLocal();
        this.mLoginIDAndKey.init(loginIdKeyFromLocal);
        JSONObject createIdentities = createIdentities(getInitIdentities(), str, str2);
        initLoginIDAndKeyIdentities(loginIdKeyFromLocal, loginIdFromLocal, createIdentities);
        this.mIdentities = createIdentities;
        saveIdentities();
    }

    public void mergeIdentities(JSONObject jSONObject) throws JSONException {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!this.mIdentities.has(next)) {
                this.mIdentities.put(next, jSONObject.optString(next));
            }
        }
        saveIdentities();
    }

    public boolean remove(String str, String str2) throws JSONException {
        if (isInvalidBusinessID(str, str2, true)) {
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        this.mUnbindIdentities = jSONObject;
        jSONObject.put(str, str2);
        if (!ANDROID_ID.equals(str) && !ANDROID_UUID.equals(str) && this.mIdentities.has(str) && this.mIdentities.getString(str).equals(str2)) {
            this.mIdentities.remove(str);
        }
        if ((str + "+" + str2).equals(getJointLoginID())) {
            this.mIdentities.remove(str);
            this.mLoginIDAndKey.removeLoginKeyAndID();
        }
        saveIdentities();
        return true;
    }

    public void removeLoginKeyAndID() {
        this.mLoginIDAndKey.removeLoginKeyAndID();
        this.mLoginIdentities = new JSONObject();
        clearIdentities(Arrays.asList(ANDROID_ID, ANDROID_UUID), this.mIdentities);
        saveIdentities();
    }

    public boolean update(String str, String str2) throws JSONException {
        if (isInvalidBusinessID(str, str2, false)) {
            return false;
        }
        this.mIdentities.put(str, str2);
        saveIdentities();
        return true;
    }

    public void updateIdentities() {
        try {
            this.mIdentities = getCacheIdentities();
        } catch (JSONException e) {
            SALog.printStackTrace(e);
        }
    }

    public boolean updateLoginKeyAndID(String str, String str2, String str3) throws Exception {
        if (isInValid(str, str2, str3)) {
            return false;
        }
        this.mIdentities.put(str, str2);
        this.mLoginIdentities = new JSONObject(this.mIdentities.toString());
        clearIdentities(Arrays.asList(ANDROID_ID, ANDROID_UUID, str), this.mIdentities);
        saveIdentities();
        return true;
    }

    public void updateSpecialIDKeyAndValue(SpecialID specialID, String str) throws JSONException {
        int i = AnonymousClass1.$SwitchMap$com$sensorsdata$analytics$android$sdk$useridentity$Identities$SpecialID[specialID.ordinal()];
        if (i != 1) {
            if (i == 2) {
                this.mIdentities.put(ANDROID_UUID, str);
            }
        } else {
            this.mIdentities.put(ANDROID_ID, str);
        }
        saveIdentities();
    }
}
