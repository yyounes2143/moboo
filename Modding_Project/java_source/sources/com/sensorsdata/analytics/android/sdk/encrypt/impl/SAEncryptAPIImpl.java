package com.sensorsdata.analytics.android.sdk.encrypt.impl;

import android.net.Uri;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.encrypt.AESSecretManager;
import com.sensorsdata.analytics.android.sdk.encrypt.R;
import com.sensorsdata.analytics.android.sdk.encrypt.SecreteKey;
import com.sensorsdata.analytics.android.sdk.encrypt.biz.SAEventEncryptTools;
import com.sensorsdata.analytics.android.sdk.encrypt.biz.SecretKeyManager;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import org.json.JSONException;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAEncryptAPIImpl implements SAEncryptAPI {
    private static final String TAG = "SA.EncryptAPIImpl";
    private SAContextManager mSAContextManager;
    private SecretKeyManager mSecretKeyManager;
    private SAEventEncryptTools mSensorsDataEncrypt;

    public SAEncryptAPIImpl(SAContextManager sAContextManager) {
        try {
            this.mSAContextManager = sAContextManager;
            SAConfigOptions sAConfigOptions = sAContextManager.getInternalConfigs().saConfigOptions;
            if (!sAConfigOptions.isEnableEncrypt()) {
                if (sAConfigOptions.isTransportEncrypt()) {
                }
                if (sAConfigOptions.getStorePlugins() == null && !sAConfigOptions.getStorePlugins().isEmpty()) {
                    AESSecretManager.getInstance().initSecretKey(sAContextManager.getContext());
                    return;
                }
            }
            this.mSensorsDataEncrypt = new SAEventEncryptTools(sAContextManager);
            this.mSecretKeyManager = SecretKeyManager.getInstance(sAContextManager);
            if (sAConfigOptions.getStorePlugins() == null) {
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.encrypt.impl.SAEncryptAPI
    public String decryptAES(String str) {
        return AESSecretManager.getInstance().decryptAES(str);
    }

    @Override // com.sensorsdata.analytics.android.sdk.encrypt.impl.SAEncryptAPI
    public String encryptAES(String str) {
        return AESSecretManager.getInstance().encryptAES(str);
    }

    @Override // com.sensorsdata.analytics.android.sdk.encrypt.impl.SAEncryptAPI
    public <T> T encryptEventData(T t) {
        return (T) this.mSensorsDataEncrypt.encryptTrackData(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T invokeModuleFunction(String str, Object... objArr) {
        try {
            if (Modules.Encrypt.METHOD_ENCRYPT_AES.equals(str)) {
                return (T) encryptAES((String) objArr[0]);
            }
            if (Modules.Encrypt.METHOD_DECRYPT_AES.equals(str)) {
                return (T) decryptAES((String) objArr[0]);
            }
            if (Modules.Encrypt.METHOD_VERIFY_SECRET_KEY.equals(str)) {
                return (T) verifySecretKey((Uri) objArr[0]);
            }
            if (Modules.Encrypt.METHOD_ENCRYPT_EVENT_DATA.equals(str)) {
                return (T) encryptEventData(objArr[0]);
            }
            if (Modules.Encrypt.METHOD_STORE_SECRET_KEY.equals(str)) {
                storeSecretKey((String) objArr[0]);
                return null;
            } else if (Modules.Encrypt.METHOD_LOAD_SECRET_KEY.equals(str)) {
                return (T) loadSecretKey();
            } else {
                if (Modules.Encrypt.METHOD_VERIFY_SUPPORT_TRANSPORT.equals(str)) {
                    return (T) this.mSecretKeyManager.isSupportTransportEncrypt();
                }
                return null;
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.encrypt.impl.SAEncryptAPI
    public String loadSecretKey() {
        try {
            SecreteKey loadSecretKey = this.mSecretKeyManager.loadSecretKey();
            if (this.mSecretKeyManager.getEncryptListener(loadSecretKey) == null) {
                return "";
            }
            return loadSecretKey.toString();
        } catch (JSONException e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.encrypt.impl.SAEncryptAPI
    public void storeSecretKey(String str) {
        SecretKeyManager.getInstance(this.mSAContextManager).storeSecretKey(str);
    }

    @Override // com.sensorsdata.analytics.android.sdk.encrypt.impl.SAEncryptAPI
    public String verifySecretKey(Uri uri) {
        String queryParameter = uri.getQueryParameter("v");
        String decode = Uri.decode(uri.getQueryParameter("key"));
        String decode2 = Uri.decode(uri.getQueryParameter("symmetricEncryptType"));
        String decode3 = Uri.decode(uri.getQueryParameter("asymmetricEncryptType"));
        SALog.i(TAG, "Encrypt, version = " + queryParameter + ", key = " + decode + ", symmetricEncryptType = " + decode2 + ", asymmetricEncryptType = " + decode3);
        if (!TextUtils.isEmpty(queryParameter) && !TextUtils.isEmpty(decode)) {
            SecretKeyManager secretKeyManager = this.mSecretKeyManager;
            if (secretKeyManager != null) {
                return secretKeyManager.checkPublicSecretKey(this.mSAContextManager.getContext(), queryParameter, decode, decode2, decode3);
            }
            return SADisplayUtil.getStringResource(this.mSAContextManager.getContext(), R.string.sensors_analytics_encrypt_disable);
        }
        return SADisplayUtil.getStringResource(this.mSAContextManager.getContext(), R.string.sensors_analytics_encrypt_fail);
    }
}
