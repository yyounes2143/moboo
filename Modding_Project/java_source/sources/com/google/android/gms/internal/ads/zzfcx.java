package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzfcx implements zzbjw {
    public final /* synthetic */ zzddy zza;
    public final /* synthetic */ zzcmn zzb;
    public final /* synthetic */ zzfjr zzc;
    public final /* synthetic */ zzebt zzd;

    public /* synthetic */ zzfcx(zzddy zzddyVar, zzcmn zzcmnVar, zzfjr zzfjrVar, zzebt zzebtVar) {
        this.zza = zzddyVar;
        this.zzb = zzcmnVar;
        this.zzc = zzfjrVar;
        this.zzd = zzebtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        zzcfb zzcfbVar = (zzcfb) obj;
        zzbjv.zzc(map, this.zza);
        String str = (String) map.get("u");
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("URL missing from click GMSG.");
            return;
        }
        zzebt zzebtVar = this.zzd;
        zzfjr zzfjrVar = this.zzc;
        zzgcy.zzr(zzbjv.zza(zzcfbVar, str), new zzfcz(zzcfbVar, this.zzb, zzfjrVar, zzebtVar), zzcaa.zza);
    }
}
