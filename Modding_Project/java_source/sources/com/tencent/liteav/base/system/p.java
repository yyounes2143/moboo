package com.tencent.liteav.base.system;

import com.google.common.base.Ascii;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.tencent.liteav.base.Log;
import java.security.MessageDigest;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f10240a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX WARN: Not initialized variable reg: 12, insn: 0x0061: MOVE  (r5 I:??[OBJECT, ARRAY]) = (r12 I:??[OBJECT, ARRAY]), block:B:18:0x0061 */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01e7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c5 A[LOOP:0: B:50:0x00bf->B:52:0x00c5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fa A[LOOP:1: B:54:0x00f8->B:55:0x00fa, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0177 A[Catch: all -> 0x017b, Exception -> 0x017e, TryCatch #12 {Exception -> 0x017e, all -> 0x017b, blocks: (B:60:0x0157, B:62:0x0177, B:67:0x0181, B:69:0x019f, B:70:0x01a2), top: B:106:0x0157 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x019f A[Catch: all -> 0x017b, Exception -> 0x017e, TryCatch #12 {Exception -> 0x017e, all -> 0x017b, blocks: (B:60:0x0157, B:62:0x0177, B:67:0x0181, B:69:0x019f, B:70:0x01a2), top: B:106:0x0157 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.base.system.p.a(java.lang.String):java.lang.String");
    }

    private static String b(String str) {
        if (str != null) {
            try {
                byte[] digest = MessageDigest.getInstance(SameMD5.TAG).digest(str.getBytes("UTF-8"));
                char[] cArr = new char[digest.length << 1];
                int i = 0;
                for (byte b : digest) {
                    int i2 = i + 1;
                    char[] cArr2 = f10240a;
                    cArr[i] = cArr2[(b & 240) >>> 4];
                    i += 2;
                    cArr[i2] = cArr2[b & Ascii.SI];
                }
                return new String(cArr);
            } catch (Exception e) {
                Log.e("UUID", "stringToMd5 failed.", e);
                return "";
            }
        }
        return "";
    }
}
