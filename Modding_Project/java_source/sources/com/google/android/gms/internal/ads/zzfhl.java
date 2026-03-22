package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfhl implements zzgcu {
    final /* synthetic */ zzfhn zza;
    final /* synthetic */ zzfhc zzb;

    public zzfhl(zzfhn zzfhnVar, zzfhc zzfhcVar) {
        this.zza = zzfhnVar;
        this.zzb = zzfhcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        zzfhc zzfhcVar = this.zzb;
        zzfhcVar.zzh(th);
        zzfhcVar.zzg(false);
        this.zza.zza(zzfhcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zzb(Object obj) {
    }
}
