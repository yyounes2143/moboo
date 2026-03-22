package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzalu {
    private static final Pattern zza = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    private static final Pattern zzb = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    private final zzek zzc = new zzek();
    private final StringBuilder zzd = new StringBuilder();

    @Nullable
    public static String zza(zzek zzekVar, StringBuilder sb) {
        zzc(zzekVar);
        if (zzekVar.zza() == 0) {
            return null;
        }
        String zzd = zzd(zzekVar, sb);
        if (!"".equals(zzd)) {
            return zzd;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((char) zzekVar.zzm());
        return sb2.toString();
    }

    public static void zzc(zzek zzekVar) {
        while (true) {
            for (boolean z = true; zzekVar.zza() > 0 && z; z = false) {
                char c = (char) zzekVar.zzN()[zzekVar.zzc()];
                if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                    int zzc = zzekVar.zzc();
                    int zzd = zzekVar.zzd();
                    byte[] zzN = zzekVar.zzN();
                    if (zzc + 2 <= zzd) {
                        int i = zzc + 1;
                        if (zzN[zzc] == 47) {
                            int i2 = zzc + 2;
                            if (zzN[i] == 42) {
                                while (true) {
                                    int i3 = i2 + 1;
                                    if (i3 >= zzd) {
                                        break;
                                    } else if (((char) zzN[i2]) == '*' && ((char) zzN[i3]) == '/') {
                                        zzd = i2 + 2;
                                        i2 = zzd;
                                    } else {
                                        i2 = i3;
                                    }
                                }
                                zzekVar.zzM(zzd - zzekVar.zzc());
                            }
                        } else {
                            continue;
                        }
                    }
                } else {
                    zzekVar.zzM(1);
                }
            }
            return;
        }
    }

    private static String zzd(zzek zzekVar, StringBuilder sb) {
        sb.setLength(0);
        int zzc = zzekVar.zzc();
        int zzd = zzekVar.zzd();
        loop0: while (true) {
            for (boolean z = false; zzc < zzd && !z; z = true) {
                char c = (char) zzekVar.zzN()[zzc];
                if ((c >= 'A' && c <= 'Z') || ((c >= 'a' && c <= 'z') || ((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                    sb.append(c);
                    zzc++;
                }
            }
        }
        zzekVar.zzM(zzc - zzekVar.zzc());
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:170:0x0304, code lost:
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00aa, code lost:
        if (")".equals(zza(r6, r3)) == false) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zzb(com.google.android.gms.internal.ads.zzek r18) {
        /*
            Method dump skipped, instructions count: 773
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalu.zzb(com.google.android.gms.internal.ads.zzek):java.util.List");
    }
}
