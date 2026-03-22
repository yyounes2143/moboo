package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzego extends zzegj {
    private final zzchb zza;
    private final zzcva zzb;
    private final zzeja zzc;
    private final zzdbr zzd;
    private final zzegu zze;
    private final zzedk zzf;

    public zzego(zzchb zzchbVar, zzcva zzcvaVar, zzeja zzejaVar, zzdbr zzdbrVar, zzegu zzeguVar, zzedk zzedkVar) {
        this.zza = zzchbVar;
        this.zzb = zzcvaVar;
        this.zzc = zzejaVar;
        this.zzd = zzdbrVar;
        this.zze = zzeguVar;
        this.zzf = zzedkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzegj
    public final ListenableFuture zzc(zzfcp zzfcpVar, Bundle bundle, zzfbu zzfbuVar, zzfcg zzfcgVar) {
        zzcva zzcvaVar = this.zzb;
        zzcvaVar.zzk(zzfcpVar);
        zzcvaVar.zzg(bundle);
        zzcvaVar.zzh(new zzcut(zzfcgVar, zzfbuVar, this.zze));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdR)).booleanValue()) {
            zzcvaVar.zze(this.zzf);
        }
        zzdfz zzf = this.zza.zzf();
        zzf.zze(zzcvaVar.zzl());
        zzf.zzd(this.zzd);
        zzf.zzc(this.zzc);
        zzcsb zza = zzf.zzf().zza();
        return zza.zzh(zza.zzi());
    }
}
