package com.tencent.liteav.txcplayer.a;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.tencent.liteav.base.util.LiteavLog;
import java.net.URLDecoder;
import java.security.MessageDigest;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class a {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0036 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r3) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.txcplayer.a.a.a(java.lang.String):java.lang.String");
    }

    public static String b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer("");
            for (int i = 0; i < digest.length; i++) {
                int i2 = digest[i];
                if (i2 < 0) {
                    i2 += 256;
                }
                if (i2 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i2));
            }
            return stringBuffer.toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public static String c(String str) {
        try {
            if (f(str)) {
                LiteavLog.w("CommonUtil", "URL has been encoded");
                return str;
            }
            byte[] bytes = str.getBytes("UTF-8");
            StringBuilder sb = new StringBuilder(bytes.length);
            for (int i = 0; i < bytes.length; i++) {
                int i2 = bytes[i];
                if (i2 < 0) {
                    i2 += 256;
                }
                if (i2 > 32 && i2 < 127 && i2 != 34 && i2 != 37 && i2 != 60 && i2 != 62 && i2 != 91 && i2 != 125 && i2 != 92 && i2 != 93 && i2 != 94 && i2 != 96 && i2 != 123 && i2 != 124) {
                    sb.append((char) i2);
                }
                sb.append(String.format("%%%02X", Integer.valueOf(i2)));
            }
            return sb.toString();
        } catch (Exception e) {
            LiteavLog.e("CommonUtil", "tryEncodeUrl failed.", e);
            return str;
        }
    }

    public static String d(String str) {
        String b = b(str);
        String a2 = a(str);
        if (!TextUtils.isEmpty(a2)) {
            if (a2.toLowerCase().endsWith("m3u8")) {
                return b + ".hls";
            }
            if (a2.toLowerCase().endsWith("mp4") && !g(str)) {
                b = b(h(str));
            }
            return b + "." + a2;
        }
        return b + ".auto";
    }

    public static String e(String str) {
        return new String(Base64.decode(str, 0));
    }

    private static boolean f(String str) {
        if (str == null) {
            return true;
        }
        try {
            if (!str.replace("+", " ").equals(URLDecoder.decode(str, "UTF-8").replace("+", " "))) {
                return true;
            }
            return false;
        } catch (Exception e) {
            LiteavLog.e("CommonUtil", "isUrlEncoded error : ", e);
            return false;
        }
    }

    private static boolean g(String str) {
        int indexOf = str.indexOf("?");
        if (indexOf < 0) {
            return false;
        }
        String substring = str.substring(indexOf);
        if (TextUtils.isEmpty(substring) || !substring.toLowerCase().contains("exper")) {
            return false;
        }
        return true;
    }

    private static String h(String str) {
        int indexOf;
        int indexOf2 = str.indexOf("voddrm.token.");
        if (indexOf2 >= 0 && (indexOf = str.indexOf(".", indexOf2 + 13)) >= 0 && indexOf < str.length() - 1) {
            str = str.substring(0, indexOf2) + str.substring(indexOf + 1);
        }
        int indexOf3 = str.indexOf("?");
        if (indexOf3 >= 0) {
            return str.substring(0, indexOf3);
        }
        return str;
    }

    public static String a(String str, String str2) {
        String path;
        int lastIndexOf;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (TextUtils.isEmpty(str2) || (path = Uri.parse(str).getPath()) == null) {
            return str;
        }
        String[] split = path.split("/");
        if (split.length <= 0 || (lastIndexOf = str.lastIndexOf(split[split.length - 1])) <= 0) {
            return str;
        }
        return str.substring(0, lastIndexOf) + "voddrm.token." + str2 + "." + str.substring(lastIndexOf);
    }

    public static String a(String str, String str2, String str3, int i) {
        String str4;
        Uri parse = Uri.parse(str);
        String query = parse.getQuery();
        if (TextUtils.isEmpty(query)) {
            str4 = "";
        } else {
            str4 = query + "&";
        }
        if (TextUtils.isEmpty(str3)) {
            str3 = "plain";
        }
        return Uri.decode(parse.buildUpon().query(str4 + "spfileid=" + str2 + "&spdrmtype=" + str3 + "&spappid=" + i).build().toString());
    }
}
