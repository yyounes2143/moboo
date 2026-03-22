package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfhk implements zzgcu {
    final /* synthetic */ zzfhn zza;
    final /* synthetic */ zzfhc zzb;
    final /* synthetic */ boolean zzc;

    public zzfhk(zzfhn zzfhnVar, zzfhc zzfhcVar, boolean z) {
        this.zza = zzfhnVar;
        this.zzb = zzfhcVar;
        this.zzc = z;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        zzfhc zzfhcVar = this.zzb;
        if (zzfhcVar.zzk()) {
            zzfhn zzfhnVar = this.zza;
            zzfhcVar.zzh(th);
            zzfhcVar.zzg(false);
            zzfhnVar.zza(zzfhcVar);
            if (this.zzc) {
                zzfhnVar.zzh();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zzb(Object obj) {
        zzfhc zzfhcVar = this.zzb;
        zzfhcVar.zzg(true);
        zzfhn zzfhnVar = this.zza;
        zzfhnVar.zza(zzfhcVar);
        if (this.zzc) {
            zzfhnVar.zzh();
        }
    }
}
