package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaaq implements zzacf {
    final /* synthetic */ zzsz zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzaau zzd;

    public zzaaq(zzaau zzaauVar, zzsz zzszVar, int i, long j) {
        this.zza = zzszVar;
        this.zzb = i;
        this.zzc = j;
        this.zzd = zzaauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacf
    public final void zza(long j) {
        this.zzd.zzao(this.zza, this.zzb, this.zzc, j);
    }

    @Override // com.google.android.gms.internal.ads.zzacf
    public final void zzb() {
        this.zzd.zzaR(this.zza, this.zzb, this.zzc);
    }
}
