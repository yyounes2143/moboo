package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcdm extends zzcdi {
    public zzcdm(zzcbw zzcbwVar) {
        super(zzcbwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final boolean zzt(String str) {
        String zzg = com.google.android.gms.ads.internal.util.client.zzf.zzg(str);
        zzcbw zzcbwVar = (zzcbw) this.zzc.get();
        if (zzcbwVar != null && zzg != null) {
            zzcbwVar.zzt(zzg, this);
        }
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("VideoStreamNoopCache is doing nothing.");
        zzg(str, zzg, "noop", "Noop cache is a noop.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzf() {
    }
}
