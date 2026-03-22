package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbjk implements zzgcu {
    final /* synthetic */ zzcfb zza;

    public zzbjk(zzcfb zzcfbVar) {
        this.zza = zzcfbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "DefaultGmsgHandlers.attributionReportingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        com.google.android.gms.ads.internal.util.client.zzv zzvVar;
        String str = (String) obj;
        zzcfb zzcfbVar = this.zza;
        if (zzcfbVar.zzD() != null) {
            zzvVar = zzcfbVar.zzD().zzax;
        } else {
            zzvVar = null;
        }
        new com.google.android.gms.ads.internal.util.zzbw(zzcfbVar.getContext(), zzcfbVar.zzm().afmaVersion, str, null, zzvVar).zzb();
    }
}
