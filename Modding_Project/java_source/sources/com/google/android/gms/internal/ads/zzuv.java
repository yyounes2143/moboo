package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
/* compiled from: Proguard */
@VisibleForTesting
/* loaded from: classes4.dex */
public final class zzuv extends zzbl {
    private final zzap zzb;

    public zzuv(zzap zzapVar) {
        this.zzb = zzapVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zza(Object obj) {
        if (obj == zzuu.zzc) {
            return 0;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zzb() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zzc() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final zzbj zzd(int i, zzbj zzbjVar, boolean z) {
        Integer num;
        Object obj = null;
        if (z) {
            num = 0;
        } else {
            num = null;
        }
        if (z) {
            obj = zzuu.zzc;
        }
        zzbjVar.zzi(num, obj, 0, -9223372036854775807L, 0L, zzb.zza, true);
        return zzbjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final zzbk zze(int i, zzbk zzbkVar, long j) {
        zzbkVar.zza(zzbk.zza, this.zzb, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
        zzbkVar.zzk = true;
        return zzbkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final Object zzf(int i) {
        return zzuu.zzc;
    }
}
