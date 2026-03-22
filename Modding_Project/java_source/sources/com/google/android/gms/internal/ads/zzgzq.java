package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgzq {
    public static final List zza(Object obj, long j) {
        int i;
        zzgze zzgzeVar = (zzgze) zzhbp.zzh(obj, j);
        if (!zzgzeVar.zzc()) {
            int size = zzgzeVar.size();
            if (size == 0) {
                i = 10;
            } else {
                i = size + size;
            }
            zzgze zzf = zzgzeVar.zzf(i);
            zzhbp.zzv(obj, j, zzf);
            return zzf;
        }
        return zzgzeVar;
    }
}
