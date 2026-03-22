package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzew {
    public final String zza;

    private zzew(int i, int i2, String str) {
        this.zza = str;
    }

    @Nullable
    public static zzew zza(zzek zzekVar) {
        String str;
        String str2;
        zzekVar.zzM(2);
        int zzm = zzekVar.zzm();
        int i = zzm >> 1;
        int i2 = zzm & 1;
        int zzm2 = zzekVar.zzm() >> 3;
        if (i != 4 && i != 5 && i != 7 && i != 8) {
            if (i == 9) {
                str = "dvav";
            } else if (i == 10) {
                str = "dav1";
            } else {
                return null;
            }
        } else {
            str = "dvhe";
        }
        int i3 = zzm2 | (i2 << 5);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String str3 = ".";
        if (i >= 10) {
            str2 = ".";
        } else {
            str2 = ".0";
        }
        sb.append(str2);
        sb.append(i);
        if (i3 < 10) {
            str3 = ".0";
        }
        sb.append(str3);
        sb.append(i3);
        return new zzew(i, i3, sb.toString());
    }
}
