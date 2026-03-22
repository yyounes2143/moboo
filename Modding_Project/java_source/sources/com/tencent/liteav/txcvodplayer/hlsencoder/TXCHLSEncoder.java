package com.tencent.liteav.txcvodplayer.hlsencoder;

import android.text.TextUtils;
import android.util.Base64;
import com.tencent.liteav.base.util.LiteavLog;
import java.nio.charset.Charset;
import java.util.Random;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXCHLSEncoder {

    /* renamed from: a  reason: collision with root package name */
    private static final String f10341a = "com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder";
    private static final Charset b = Charset.forName("UTF-8");
    private static final char[] c = "0123456789ABCDEF".toCharArray();

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            LiteavLog.w(f10341a, "encryptKey input exception!");
            return null;
        }
        return rsaEncrypt(str);
    }

    private static native byte[] aesDecrypt(String str, byte[] bArr);

    private static native byte[] aesEncrypt(String str, byte[] bArr);

    public static String b(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return new String(aesDecrypt(str, Base64.decode(str2, 2)), b);
        }
        LiteavLog.w(f10341a, "decryptWithSecretKey input exception!");
        return null;
    }

    private static native String md5(int i, String str, String str2, int i2);

    private static native String rsaEncrypt(String str);

    public static String a() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 32; i++) {
            char[] cArr = c;
            sb.append(cArr[new Random().nextInt(cArr.length)]);
        }
        return sb.toString();
    }

    public static String a(int i, String str, String str2, int i2) {
        if (TextUtils.isEmpty(str)) {
            str = "default";
        }
        if (TextUtils.isEmpty(str2)) {
            LiteavLog.w(f10341a, "genSecretKey input exception!");
            return null;
        }
        return md5(i, str, str2, i2);
    }

    public static String a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return Base64.encodeToString(aesEncrypt(str, str2.getBytes(b)), 2);
        }
        LiteavLog.w(f10341a, "encryptWithSecretKey input exception!");
        return null;
    }
}
