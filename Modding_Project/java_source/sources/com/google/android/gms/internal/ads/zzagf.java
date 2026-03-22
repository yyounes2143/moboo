package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzagf extends zzaea {
    final /* synthetic */ zzaem zza;
    final /* synthetic */ zzagg zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzagf(zzagg zzaggVar, zzaem zzaemVar, zzaem zzaemVar2) {
        super(zzaemVar);
        this.zza = zzaemVar2;
        this.zzb = zzaggVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaea, com.google.android.gms.internal.ads.zzaem
    public final zzaek zzg(long j) {
        long j2;
        long j3;
        zzaek zzg = this.zza.zzg(j);
        zzaen zzaenVar = zzg.zza;
        long j4 = zzaenVar.zzc;
        zzagg zzaggVar = this.zzb;
        j2 = zzaggVar.zzb;
        zzaen zzaenVar2 = new zzaen(zzaenVar.zzb, j4 + j2);
        zzaen zzaenVar3 = zzg.zzb;
        long j5 = zzaenVar3.zzc;
        j3 = zzaggVar.zzb;
        return new zzaek(zzaenVar2, new zzaen(zzaenVar3.zzb, j5 + j3));
    }
}
