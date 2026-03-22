package com.google.android.gms.internal.ads;

import java.math.BigInteger;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzajm implements zzaem {
    final /* synthetic */ zzajo zza;

    public /* synthetic */ zzajm(zzajo zzajoVar, zzajn zzajnVar) {
        this.zza = zzajoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final long zza() {
        zzajz zzajzVar;
        long j;
        zzajo zzajoVar = this.zza;
        zzajzVar = zzajoVar.zzd;
        j = zzajoVar.zzf;
        return zzajzVar.zzf(j);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzaek zzg(long j) {
        zzajz zzajzVar;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        zzajo zzajoVar = this.zza;
        zzajzVar = zzajoVar.zzd;
        long zzg = zzajzVar.zzg(j);
        j2 = zzajoVar.zzb;
        BigInteger valueOf = BigInteger.valueOf(zzg);
        j3 = zzajoVar.zzc;
        j4 = zzajoVar.zzb;
        BigInteger multiply = valueOf.multiply(BigInteger.valueOf(j3 - j4));
        j5 = zzajoVar.zzf;
        long longValue = j2 + multiply.divide(BigInteger.valueOf(j5)).longValue();
        j6 = zzajoVar.zzb;
        j7 = zzajoVar.zzc;
        String str = zzeu.zza;
        zzaen zzaenVar = new zzaen(j, Math.max(j6, Math.min(longValue - 30000, j7 - 1)));
        return new zzaek(zzaenVar, zzaenVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final boolean zzh() {
        return true;
    }
}
