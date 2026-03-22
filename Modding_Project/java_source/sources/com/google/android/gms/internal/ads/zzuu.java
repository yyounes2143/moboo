package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzuu extends zzup {
    public static final Object zzc = new Object();
    @Nullable
    private final Object zzd;
    @Nullable
    private final Object zze;

    private zzuu(zzbl zzblVar, @Nullable Object obj, @Nullable Object obj2) {
        super(zzblVar);
        this.zzd = obj;
        this.zze = obj2;
    }

    public static zzuu zzq(zzap zzapVar) {
        return new zzuu(new zzuv(zzapVar), zzbk.zza, zzc);
    }

    public static zzuu zzr(zzbl zzblVar, @Nullable Object obj, @Nullable Object obj2) {
        return new zzuu(zzblVar, obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzbl
    public final int zza(Object obj) {
        Object obj2;
        if (zzc.equals(obj) && (obj2 = this.zze) != null) {
            obj = obj2;
        }
        return this.zzb.zza(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzbl
    public final zzbj zzd(int i, zzbj zzbjVar, boolean z) {
        this.zzb.zzd(i, zzbjVar, z);
        if (Objects.equals(zzbjVar.zzb, this.zze) && z) {
            zzbjVar.zzb = zzc;
        }
        return zzbjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzbl
    public final zzbk zze(int i, zzbk zzbkVar, long j) {
        this.zzb.zze(i, zzbkVar, j);
        if (Objects.equals(zzbkVar.zzb, this.zzd)) {
            zzbkVar.zzb = zzbk.zza;
        }
        return zzbkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzbl
    public final Object zzf(int i) {
        Object zzf = this.zzb.zzf(i);
        if (Objects.equals(zzf, this.zze)) {
            return zzc;
        }
        return zzf;
    }

    public final zzuu zzp(zzbl zzblVar) {
        return new zzuu(zzblVar, this.zzd, this.zze);
    }
}
