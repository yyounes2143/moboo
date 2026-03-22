package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfjy extends com.google.android.gms.ads.internal.client.zzbm {
    final /* synthetic */ zzgds zza;
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzbx zzb;
    final /* synthetic */ zzfjz zzc;

    public zzfjy(zzfjz zzfjzVar, zzgds zzgdsVar, com.google.android.gms.ads.internal.client.zzbx zzbxVar) {
        this.zza = zzgdsVar;
        this.zzb = zzbxVar;
        this.zzc = zzfjzVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void zzb(com.google.android.gms.ads.internal.client.zze zzeVar) {
        String adError = zzeVar.zzb().toString();
        zzfjz zzfjzVar = this.zzc;
        String str = zzfjzVar.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to load interstitial ad with error: " + adError + " for ad unit: " + str);
        zzfjzVar.zzF(zzeVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void zzc() {
        zzfju.zza(this.zzb, this.zza);
    }
}
