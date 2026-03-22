package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfkw extends zzbww {
    final /* synthetic */ zzgds zza;
    final /* synthetic */ zzbwq zzb;
    final /* synthetic */ zzfkx zzc;

    public zzfkw(zzfkx zzfkxVar, zzgds zzgdsVar, zzbwq zzbwqVar) {
        this.zza = zzgdsVar;
        this.zzb = zzbwqVar;
        this.zzc = zzfkxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        String adError = zzeVar.zzb().toString();
        zzfkx zzfkxVar = this.zzc;
        String str = zzfkxVar.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to load rewarded ad with error: " + adError + ", adUnitId: " + str);
        zzfkxVar.zzF(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzg() {
        zzfju.zza(this.zzb, this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zze(int i) {
    }
}
