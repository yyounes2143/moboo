package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfjv extends zzbap {
    final /* synthetic */ zzgds zza;
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzfp zzb;
    final /* synthetic */ zzfjw zzc;

    public zzfjv(zzfjw zzfjwVar, zzgds zzgdsVar, com.google.android.gms.ads.internal.client.zzfp zzfpVar) {
        this.zza = zzgdsVar;
        this.zzb = zzfpVar;
        this.zzc = zzfjwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbaq
    public final void zzc(com.google.android.gms.ads.internal.client.zze zzeVar) {
        String adError = zzeVar.zzb().toString();
        String str = this.zzb.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to load app open ad with error parcel: " + adError + " for ad unit: " + str);
        this.zzc.zzF(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbaq
    public final void zzd(zzban zzbanVar) {
        zzfju.zza(zzbanVar, this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbaq
    public final void zzb(int i) {
    }
}
