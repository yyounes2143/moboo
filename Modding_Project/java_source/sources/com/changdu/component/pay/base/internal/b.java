package com.changdu.component.pay.base.internal;

import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.RSAPublicKeySpec;
import javax.crypto.Cipher;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class b {
    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        if (bArr != null && bArr.length > 0) {
            for (byte b : bArr) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() < 2) {
                    sb.append(0);
                }
                sb.append(hexString);
            }
            return sb.toString();
        }
        return null;
    }

    public static byte[] b(byte[] bArr) {
        byte[] bArr2 = {1, 0, 1};
        String upperCase = "e9fcb7f959934c422f6f178c608db9809a17d885f45d90351d2c1d4a5f27e83374bca21c36035208b2b24645bd72a3165449351e0e7d1783ab624b9c866ce583".toUpperCase();
        int length = upperCase.length() / 2;
        char[] charArray = upperCase.toCharArray();
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr3[i] = (byte) (((byte) "0123456789ABCDEF".indexOf(charArray[i2 + 1])) | (((byte) "0123456789ABCDEF".indexOf(charArray[i2])) << 4));
        }
        PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(new BigInteger(1, bArr3), new BigInteger(1, bArr2)));
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, generatePublic);
        return cipher.doFinal(bArr);
    }
}
