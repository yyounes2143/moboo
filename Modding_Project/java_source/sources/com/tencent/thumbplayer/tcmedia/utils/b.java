package com.tencent.thumbplayer.tcmedia.utils;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.security.MessageDigest;
import java.util.Collection;
import java.util.Map;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes6.dex */
public class b {
    public static int a(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException e) {
                TPLogUtil.e("TPCommonUtils", e);
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0036 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(java.lang.String r3) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r3)
            java.lang.String r1 = ""
            if (r0 != 0) goto L2c
            r0 = 63
            int r0 = r3.indexOf(r0)
            if (r0 <= 0) goto L15
            r2 = 0
            java.lang.String r3 = r3.substring(r2, r0)
        L15:
            r0 = 46
            int r0 = r3.lastIndexOf(r0)
            if (r0 < 0) goto L2c
            int r2 = r3.length()
            int r2 = r2 + (-1)
            if (r0 >= r2) goto L2c
            int r0 = r0 + 1
            java.lang.String r3 = r3.substring(r0)
            goto L2d
        L2c:
            r3 = r1
        L2d:
            java.lang.String r0 = "/"
            boolean r0 = r3.contains(r0)
            if (r0 == 0) goto L36
            return r1
        L36:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.utils.b.b(java.lang.String):java.lang.String");
    }

    public static String c(String str) {
        String a2 = a(str);
        String b = b(str);
        if (!TextUtils.isEmpty(b)) {
            if (b.toLowerCase().endsWith("m3u8")) {
                return a2 + ".hls";
            }
            return a2 + "." + b;
        }
        return a2 + ".auto";
    }

    public static boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return str.split(":")[0].matches("^((https|http|ftp|rtsp|mms)?)");
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    public static String a(String str) {
        try {
            byte[] digest = MessageDigest.getInstance(SameMD5.TAG).digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(40);
            for (byte b : digest) {
                int i = b & 255;
                if ((i >> 4) == 0) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (Exception e) {
            TPLogUtil.e("TPCommonUtils", e.toString());
            return null;
        }
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            if (TextUtils.isEmpty(str)) {
                str = "this argument should not be null!";
            }
            throw new IllegalArgumentException(str);
        }
    }

    public static boolean a(Collection<? extends Object> collection) {
        return collection == null || collection.size() <= 0;
    }

    public static boolean a(Map<? extends Object, ? extends Object> map) {
        return map == null || map.size() <= 0;
    }
}
