package com.sensorsdata.analytics.android.sdk.encrypt.utils;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.encrypt.encryptor.SymmetricEncryptMode;
import com.sensorsdata.analytics.android.sdk.util.Base64Coder;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.interfaces.ECPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class EncryptUtils {
    private static final String TAG = "SensorsDataEncrypt";

    public static String encryptAESKey(String str, byte[] bArr, String str2) {
        return publicKeyEncrypt(str, str2, bArr);
    }

    public static byte[] generateSymmetricKey(SymmetricEncryptMode symmetricEncryptMode) throws NoSuchAlgorithmException {
        KeyGenerator keyGenerator = KeyGenerator.getInstance(symmetricEncryptMode.algorithm);
        keyGenerator.init(128);
        return keyGenerator.generateKey().getEncoded();
    }

    public static boolean isECEncrypt() {
        try {
            Class.forName("org.spongycastle.jce.provider.BouncyCastleProvider");
            return true;
        } catch (Exception unused) {
            SALog.i("SA.Encrypt", "当前项目未集成 ECC 加密库");
            return false;
        }
    }

    private static String publicKeyEncrypt(String str, String str2, byte[] bArr) {
        Cipher cipher;
        byte[] doFinal;
        if (TextUtils.isEmpty(str)) {
            SALog.i(TAG, "PublicKey is null.");
            return null;
        }
        try {
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(Base64Coder.decode(str));
            if ("EC".equals(str2)) {
                cipher = Cipher.getInstance("ECIES", "SC");
                cipher.init(1, (ECPublicKey) KeyFactory.getInstance("EC", "SC").generatePublic(x509EncodedKeySpec));
            } else {
                PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(x509EncodedKeySpec);
                cipher = Cipher.getInstance("RSA/None/PKCS1Padding");
                cipher.init(1, generatePublic);
            }
            int length = bArr.length;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i = 0;
            while (true) {
                int i2 = length - i;
                if (i2 > 0) {
                    if (i2 > 245) {
                        doFinal = cipher.doFinal(bArr, i, 245);
                    } else {
                        doFinal = cipher.doFinal(bArr, i, i2);
                    }
                    byteArrayOutputStream.write(doFinal, 0, doFinal.length);
                    i += 245;
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return new String(Base64Coder.encode(byteArray));
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    public static String symmetricEncrypt(byte[] bArr, byte[] bArr2, SymmetricEncryptMode symmetricEncryptMode) {
        if (bArr != null && bArr2 != null) {
            try {
                byte[] bArr3 = new byte[16];
                new SecureRandom().nextBytes(bArr3);
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, symmetricEncryptMode.algorithm);
                Cipher cipher = Cipher.getInstance(symmetricEncryptMode.transformation);
                cipher.init(1, secretKeySpec, new IvParameterSpec(bArr3));
                byte[] doFinal = cipher.doFinal(bArr2);
                ByteBuffer allocate = ByteBuffer.allocate(16 + doFinal.length);
                allocate.put(bArr3);
                allocate.put(doFinal);
                return new String(Base64Coder.encode(allocate.array()));
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
        return null;
    }
}
