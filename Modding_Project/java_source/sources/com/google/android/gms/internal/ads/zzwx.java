package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzwx extends zzbl {
    private static final Object zzb = new Object();
    private final long zzc;
    private final long zzd;
    private final boolean zze;
    @Nullable
    private final zzap zzf;
    @Nullable
    private final zzaj zzg;

    static {
        zzad zzadVar = new zzad();
        zzadVar.zza("SinglePeriodTimeline");
        zzadVar.zzb(Uri.EMPTY);
        zzadVar.zzc();
    }

    public zzwx(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, @Nullable Object obj, zzap zzapVar, @Nullable zzaj zzajVar) {
        this.zzc = j4;
        this.zzd = j5;
        this.zze = z;
        zzapVar.getClass();
        this.zzf = zzapVar;
        this.zzg = zzajVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zza(Object obj) {
        if (zzb.equals(obj)) {
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
        Object obj;
        zzdc.zza(i, 0, 1);
        if (z) {
            obj = zzb;
        } else {
            obj = null;
        }
        zzbjVar.zzi(null, obj, 0, this.zzc, 0L, zzb.zza, false);
        return zzbjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final zzbk zze(int i, zzbk zzbkVar, long j) {
        zzdc.zza(i, 0, 1);
        Object obj = zzbk.zza;
        zzap zzapVar = this.zzf;
        long j2 = this.zzd;
        zzbkVar.zza(obj, zzapVar, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, this.zze, false, this.zzg, 0L, j2, 0, 0, 0L);
        return zzbkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final Object zzf(int i) {
        zzdc.zza(i, 0, 1);
        return zzb;
    }
}
