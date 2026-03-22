package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaln {
    @Nullable
    public static zzalo zza(@Nullable zzalo zzaloVar, @Nullable String[] strArr, Map map) {
        int length;
        int i = 0;
        if (zzaloVar == null) {
            if (strArr == null) {
                return null;
            }
            int length2 = strArr.length;
            if (length2 == 1) {
                return (zzalo) map.get(strArr[0]);
            }
            if (length2 > 1) {
                zzalo zzaloVar2 = new zzalo();
                while (i < length2) {
                    zzaloVar2.zzl((zzalo) map.get(strArr[i]));
                    i++;
                }
                return zzaloVar2;
            }
        } else if (strArr != null && strArr.length == 1) {
            zzaloVar.zzl((zzalo) map.get(strArr[0]));
            return zzaloVar;
        } else if (strArr != null && (length = strArr.length) > 1) {
            while (i < length) {
                zzaloVar.zzl((zzalo) map.get(strArr[i]));
                i++;
            }
        }
        return zzaloVar;
    }
}
