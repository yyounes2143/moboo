package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzajh {
    public final int zza;
    public final int zzb;
    public final long zzc;
    public final long zzd;
    public final long zze;
    public final long zzf;
    public final zzz zzg;
    public final int zzh;
    @Nullable
    public final long[] zzi;
    @Nullable
    public final long[] zzj;
    public final int zzk;
    @Nullable
    private final zzaji[] zzl;

    public zzajh(int i, int i2, long j, long j2, long j3, long j4, zzz zzzVar, int i3, @Nullable zzaji[] zzajiVarArr, int i4, @Nullable long[] jArr, @Nullable long[] jArr2) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = j;
        this.zzd = j2;
        this.zze = j3;
        this.zzf = j4;
        this.zzg = zzzVar;
        this.zzh = i3;
        this.zzl = zzajiVarArr;
        this.zzk = i4;
        this.zzi = jArr;
        this.zzj = jArr2;
    }

    public final zzajh zza(zzz zzzVar) {
        return new zzajh(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, zzzVar, this.zzh, this.zzl, this.zzk, this.zzi, this.zzj);
    }

    @Nullable
    public final zzaji zzb(int i) {
        return this.zzl[i];
    }
}
