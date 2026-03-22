package com.sensorsdata.analytics.android.sdk.encrypt.biz;

import android.content.Context;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.encrypt.IPersistentSecretKey;
import com.sensorsdata.analytics.android.sdk.encrypt.R;
import com.sensorsdata.analytics.android.sdk.encrypt.SAEncryptListener;
import com.sensorsdata.analytics.android.sdk.encrypt.SecreteKey;
import com.sensorsdata.analytics.android.sdk.encrypt.encryptor.SAECEncrypt;
import com.sensorsdata.analytics.android.sdk.encrypt.encryptor.SARSAEncrypt;
import com.sensorsdata.analytics.android.sdk.encrypt.utils.EncryptUtils;
import com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SecretKeyManager {
    private static SecretKeyManager INSTANCE = null;
    private static final int KEY_VERSION_DEFAULT = 0;
    private static final String SP_SECRET_KEY = "secret_key";
    private static final String SP_SUPPORT_TRANSPORT_ENCRYPT = "supportTransportEncrypt";
    private static final String TAG = "SA.SecretKeyManager";
    private final List<SAEncryptListener> mListeners;
    private final IPersistentSecretKey mPersistentSecretKey;
    private final SAConfigOptions mSAConfigOptions;

    private SecretKeyManager(SAContextManager sAContextManager) {
        this.mSAConfigOptions = sAContextManager.getInternalConfigs().saConfigOptions;
        this.mPersistentSecretKey = sAContextManager.getInternalConfigs().saConfigOptions.getPersistentSecretKey();
        List<SAEncryptListener> encryptors = sAContextManager.getInternalConfigs().saConfigOptions.getEncryptors();
        this.mListeners = encryptors;
        encryptors.add(new SARSAEncrypt());
        if (EncryptUtils.isECEncrypt()) {
            encryptors.add(new SAECEncrypt());
        }
    }

    private String disposeECPublicKey(String str) {
        if (!TextUtils.isEmpty(str) && str.startsWith("EC:")) {
            return str.substring(str.indexOf(":") + 1);
        }
        return str;
    }

    public static SecretKeyManager getInstance(SAContextManager sAContextManager) {
        if (INSTANCE == null) {
            INSTANCE = new SecretKeyManager(sAContextManager);
        }
        return INSTANCE;
    }

    private boolean isEncryptorTypeNull(SAEncryptListener sAEncryptListener) {
        if (!TextUtils.isEmpty(sAEncryptListener.asymmetricEncryptType()) && !TextUtils.isEmpty(sAEncryptListener.symmetricEncryptType())) {
            return false;
        }
        return true;
    }

    private boolean isMatchEncryptType(SAEncryptListener sAEncryptListener, SecreteKey secreteKey) {
        if (sAEncryptListener != null && !isSecretKeyNull(secreteKey) && !isEncryptorTypeNull(sAEncryptListener) && sAEncryptListener.asymmetricEncryptType().equals(secreteKey.asymmetricEncryptType) && sAEncryptListener.symmetricEncryptType().equals(secreteKey.symmetricEncryptType)) {
            return true;
        }
        return false;
    }

    private void parseSecreteKey(JSONObject jSONObject, SecreteKey secreteKey) {
        if (jSONObject != null) {
            try {
                if (jSONObject.has("key_ec") && EncryptUtils.isECEncrypt()) {
                    String optString = jSONObject.optString("key_ec");
                    if (!TextUtils.isEmpty(optString)) {
                        jSONObject = new JSONObject(optString);
                    }
                }
                secreteKey.key = jSONObject.optString("public_key");
                secreteKey.symmetricEncryptType = "AES";
                if (jSONObject.has("type")) {
                    String optString2 = jSONObject.optString("type");
                    secreteKey.key = optString2 + ":" + secreteKey.key;
                    secreteKey.asymmetricEncryptType = optString2;
                } else {
                    secreteKey.asymmetricEncryptType = "RSA";
                }
                secreteKey.version = jSONObject.optInt("pkv");
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    private SecreteKey readAppKey() {
        String str;
        int i;
        String str2;
        String str3;
        SecreteKey loadSecretKey = this.mPersistentSecretKey.loadSecretKey();
        if (loadSecretKey != null) {
            str = loadSecretKey.key;
            i = loadSecretKey.version;
            str3 = loadSecretKey.symmetricEncryptType;
            str2 = loadSecretKey.asymmetricEncryptType;
        } else {
            str = "";
            i = 0;
            str2 = "";
            str3 = str2;
        }
        SALog.i(TAG, "readAppKey [key = " + str + " ,v = " + i + " ,symmetricEncryptType = " + str3 + " ,asymmetricEncryptType = " + str2 + "]");
        return new SecreteKey(str, i, str3, str2);
    }

    private SecreteKey readLocalKey() throws JSONException {
        String str;
        String str2;
        String str3 = "";
        String string = SAStoreManager.getInstance().getString(SP_SECRET_KEY, "");
        int i = 0;
        if (TextUtils.isEmpty(string)) {
            str = "";
            str2 = str;
        } else {
            JSONObject jSONObject = new JSONObject(string);
            String optString = jSONObject.optString("key", "");
            i = jSONObject.optInt("version", 0);
            str2 = jSONObject.optString("symmetricEncryptType", "");
            str3 = optString;
            str = jSONObject.optString("asymmetricEncryptType", "");
        }
        SALog.i(TAG, "readLocalKey [key = " + str3 + " ,v = " + i + " ,symmetricEncryptType = " + str2 + " ,asymmetricEncryptType = " + str + "]");
        return new SecreteKey(str3, i, str2, str);
    }

    public String checkPublicSecretKey(Context context, String str, String str2, String str3, String str4) {
        try {
            SecreteKey loadSecretKey = loadSecretKey();
            if (loadSecretKey != null && !TextUtils.isEmpty(loadSecretKey.key)) {
                if (str.equals(loadSecretKey.version + "") && disposeECPublicKey(str2).equals(disposeECPublicKey(loadSecretKey.key))) {
                    if (str3 != null && str4 != null && (!str3.equals(loadSecretKey.symmetricEncryptType) || !str4.equals(loadSecretKey.asymmetricEncryptType))) {
                        return String.format(SADisplayUtil.getStringResource(context, R.string.sensors_analytics_encrypt_verify_fail_type), str3, str4, loadSecretKey.symmetricEncryptType, loadSecretKey.asymmetricEncryptType);
                    }
                    return SADisplayUtil.getStringResource(context, R.string.sensors_analytics_encrypt_pass);
                }
                return String.format(SADisplayUtil.getStringResource(context, R.string.sensors_analytics_encrypt_verify_fail_version), str, Integer.valueOf(loadSecretKey.version));
            }
            return SADisplayUtil.getStringResource(context, R.string.sensors_analytics_encrypt_key_null);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return "";
        }
    }

    public SAEncryptListener getEncryptListener(SecreteKey secreteKey) {
        if (!isSecretKeyNull(secreteKey)) {
            for (SAEncryptListener sAEncryptListener : this.mListeners) {
                if (isMatchEncryptType(sAEncryptListener, secreteKey)) {
                    return sAEncryptListener;
                }
            }
            return null;
        }
        return null;
    }

    public boolean isSecretKeyNull(SecreteKey secreteKey) {
        if (secreteKey != null && !TextUtils.isEmpty(secreteKey.key) && secreteKey.version != 0) {
            return false;
        }
        return true;
    }

    public Boolean isSupportTransportEncrypt() {
        if (SAStoreManager.getInstance().isExists("supportTransportEncrypt")) {
            return Boolean.valueOf(SAStoreManager.getInstance().getBool("supportTransportEncrypt", false));
        }
        return null;
    }

    public SecreteKey loadSecretKey() throws JSONException {
        if (this.mPersistentSecretKey != null) {
            return readAppKey();
        }
        return readLocalKey();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00ad A[Catch: JSONException -> 0x001b, TryCatch #0 {JSONException -> 0x001b, blocks: (B:3:0x0004, B:5:0x0012, B:30:0x00a7, B:32:0x00ad, B:34:0x00b9, B:10:0x001e, B:12:0x0037, B:14:0x003d, B:16:0x0045, B:18:0x0055, B:19:0x005e, B:21:0x0064, B:23:0x0074, B:25:0x007e, B:26:0x0093, B:28:0x009b, B:29:0x00a4), top: B:38:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b9 A[Catch: JSONException -> 0x001b, TRY_LEAVE, TryCatch #0 {JSONException -> 0x001b, blocks: (B:3:0x0004, B:5:0x0012, B:30:0x00a7, B:32:0x00ad, B:34:0x00b9, B:10:0x001e, B:12:0x0037, B:14:0x003d, B:16:0x0045, B:18:0x0055, B:19:0x005e, B:21:0x0064, B:23:0x0074, B:25:0x007e, B:26:0x0093, B:28:0x009b, B:29:0x00a4), top: B:38:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void storeSecretKey(java.lang.String r10) {
        /*
            r9 = this;
            java.lang.String r0 = ""
            java.lang.String r1 = "supportTransportEncrypt"
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: org.json.JSONException -> L1b
            r2.<init>(r10)     // Catch: org.json.JSONException -> L1b
            com.sensorsdata.analytics.android.sdk.SAConfigOptions r10 = r9.mSAConfigOptions     // Catch: org.json.JSONException -> L1b
            boolean r10 = r10.isEnableEncrypt()     // Catch: org.json.JSONException -> L1b
            r3 = 0
            if (r10 != 0) goto L1e
            com.sensorsdata.analytics.android.sdk.SAConfigOptions r10 = r9.mSAConfigOptions     // Catch: org.json.JSONException -> L1b
            boolean r10 = r10.isTransportEncrypt()     // Catch: org.json.JSONException -> L1b
            if (r10 == 0) goto La7
            goto L1e
        L1b:
            r10 = move-exception
            goto Lc1
        L1e:
            java.lang.String r10 = "configs"
            java.lang.String r10 = r2.optString(r10)     // Catch: org.json.JSONException -> L1b
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: org.json.JSONException -> L1b
            r2.<init>(r10)     // Catch: org.json.JSONException -> L1b
            com.sensorsdata.analytics.android.sdk.encrypt.SecreteKey r10 = new com.sensorsdata.analytics.android.sdk.encrypt.SecreteKey     // Catch: org.json.JSONException -> L1b
            r4 = -1
            r10.<init>(r0, r4, r0, r0)     // Catch: org.json.JSONException -> L1b
            com.sensorsdata.analytics.android.sdk.SAConfigOptions r0 = r9.mSAConfigOptions     // Catch: org.json.JSONException -> L1b
            java.util.List r0 = r0.getEncryptors()     // Catch: org.json.JSONException -> L1b
            if (r0 == 0) goto La4
            boolean r4 = r0.isEmpty()     // Catch: org.json.JSONException -> L1b
            if (r4 != 0) goto La4
            java.lang.String r4 = "key_v2"
            org.json.JSONObject r4 = r2.optJSONObject(r4)     // Catch: org.json.JSONException -> L1b
            if (r4 == 0) goto L93
            java.lang.String r5 = "type"
            java.lang.String r5 = r4.optString(r5)     // Catch: org.json.JSONException -> L1b
            java.lang.String r6 = "\\+"
            java.lang.String[] r5 = r5.split(r6)     // Catch: org.json.JSONException -> L1b
            int r6 = r5.length     // Catch: org.json.JSONException -> L1b
            r7 = 2
            if (r6 != r7) goto L93
            r6 = r5[r3]     // Catch: org.json.JSONException -> L1b
            r7 = 1
            r5 = r5[r7]     // Catch: org.json.JSONException -> L1b
            java.util.Iterator r0 = r0.iterator()     // Catch: org.json.JSONException -> L1b
        L5e:
            boolean r7 = r0.hasNext()     // Catch: org.json.JSONException -> L1b
            if (r7 == 0) goto L93
            java.lang.Object r7 = r0.next()     // Catch: org.json.JSONException -> L1b
            com.sensorsdata.analytics.android.sdk.encrypt.SAEncryptListener r7 = (com.sensorsdata.analytics.android.sdk.encrypt.SAEncryptListener) r7     // Catch: org.json.JSONException -> L1b
            java.lang.String r8 = r7.asymmetricEncryptType()     // Catch: org.json.JSONException -> L1b
            boolean r8 = r6.equals(r8)     // Catch: org.json.JSONException -> L1b
            if (r8 == 0) goto L5e
            java.lang.String r7 = r7.symmetricEncryptType()     // Catch: org.json.JSONException -> L1b
            boolean r7 = r5.equals(r7)     // Catch: org.json.JSONException -> L1b
            if (r7 == 0) goto L5e
            java.lang.String r7 = "public_key"
            java.lang.String r7 = r4.optString(r7)     // Catch: org.json.JSONException -> L1b
            r10.key = r7     // Catch: org.json.JSONException -> L1b
            java.lang.String r7 = "pkv"
            int r7 = r4.optInt(r7)     // Catch: org.json.JSONException -> L1b
            r10.version = r7     // Catch: org.json.JSONException -> L1b
            r10.asymmetricEncryptType = r6     // Catch: org.json.JSONException -> L1b
            r10.symmetricEncryptType = r5     // Catch: org.json.JSONException -> L1b
            goto L5e
        L93:
            java.lang.String r0 = r10.key     // Catch: org.json.JSONException -> L1b
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: org.json.JSONException -> L1b
            if (r0 == 0) goto La4
            java.lang.String r0 = "key"
            org.json.JSONObject r0 = r2.optJSONObject(r0)     // Catch: org.json.JSONException -> L1b
            r9.parseSecreteKey(r0, r10)     // Catch: org.json.JSONException -> L1b
        La4:
            r9.storeSecretKey(r10)     // Catch: org.json.JSONException -> L1b
        La7:
            boolean r10 = r2.has(r1)     // Catch: org.json.JSONException -> L1b
            if (r10 == 0) goto Lb9
            com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager r10 = com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager.getInstance()     // Catch: org.json.JSONException -> L1b
            boolean r0 = r2.optBoolean(r1)     // Catch: org.json.JSONException -> L1b
            r10.setBool(r1, r0)     // Catch: org.json.JSONException -> L1b
            return
        Lb9:
            com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager r10 = com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager.getInstance()     // Catch: org.json.JSONException -> L1b
            r10.setBool(r1, r3)     // Catch: org.json.JSONException -> L1b
            return
        Lc1:
            r10.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.encrypt.biz.SecretKeyManager.storeSecretKey(java.lang.String):void");
    }

    private void storeSecretKey(SecreteKey secreteKey) {
        try {
            SALog.i(TAG, "[saveSecretKey] publicKey = " + secreteKey.toString());
            if (getEncryptListener(secreteKey) != null) {
                IPersistentSecretKey iPersistentSecretKey = this.mPersistentSecretKey;
                if (iPersistentSecretKey != null) {
                    iPersistentSecretKey.saveSecretKey(secreteKey);
                    SAStoreManager.getInstance().setString(SP_SECRET_KEY, "");
                    return;
                }
                SAStoreManager.getInstance().setString(SP_SECRET_KEY, secreteKey.toString());
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }
}
