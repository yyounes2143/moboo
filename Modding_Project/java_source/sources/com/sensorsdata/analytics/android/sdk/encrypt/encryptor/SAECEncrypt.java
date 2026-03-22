package com.sensorsdata.analytics.android.sdk.encrypt.encryptor;

import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.encrypt.SAEncryptListener;
import com.sensorsdata.analytics.android.sdk.encrypt.utils.EncryptUtils;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Security;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAECEncrypt implements SAEncryptListener {
    byte[] aesKey;
    String mEncryptKey;

    static {
        try {
            Security.addProvider((Provider) Class.forName("org.spongycastle.jce.provider.BouncyCastleProvider").newInstance());
        } catch (Exception e) {
            SALog.i("SA.SAECEncrypt", e.toString());
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.encrypt.SAEncryptListener
    public String asymmetricEncryptType() {
        return "EC";
    }

    @Override // com.sensorsdata.analytics.android.sdk.encrypt.SAEncryptListener
    public String encryptEvent(byte[] bArr) {
        return EncryptUtils.symmetricEncrypt(this.aesKey, bArr, SymmetricEncryptMode.AES);
    }

    @Override // com.sensorsdata.analytics.android.sdk.encrypt.SAEncryptListener
    public String encryptSymmetricKeyWithPublicKey(String str) {
        if (this.mEncryptKey == null) {
            try {
                byte[] generateSymmetricKey = EncryptUtils.generateSymmetricKey(SymmetricEncryptMode.AES);
                this.aesKey = generateSymmetricKey;
                this.mEncryptKey = EncryptUtils.encryptAESKey(str, generateSymmetricKey, "EC");
            } catch (NoSuchAlgorithmException e) {
                SALog.printStackTrace(e);
                return null;
            }
        }
        return this.mEncryptKey;
    }

    @Override // com.sensorsdata.analytics.android.sdk.encrypt.SAEncryptListener
    public String symmetricEncryptType() {
        return "AES";
    }
}
