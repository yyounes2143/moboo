package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzegh extends zzegj {
    private final zzchb zza;
    private final zzdgr zzb;
    private final zzcva zzc;
    private final zzdbr zzd;
    private final zzegu zze;
    private final zzedk zzf;

    public zzegh(zzchb zzchbVar, zzdgr zzdgrVar, zzcva zzcvaVar, zzdbr zzdbrVar, zzegu zzeguVar, zzedk zzedkVar) {
        this.zza = zzchbVar;
        this.zzb = zzdgrVar;
        this.zzc = zzcvaVar;
        this.zzd = zzdbrVar;
        this.zze = zzeguVar;
        this.zzf = zzedkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzegj
    public final ListenableFuture zzc(zzfcp zzfcpVar, Bundle bundle, zzfbu zzfbuVar, zzfcg zzfcgVar) {
        zzcva zzcvaVar = this.zzc;
        zzcvaVar.zzk(zzfcpVar);
        zzcvaVar.zzg(bundle);
        zzcvaVar.zzh(new zzcut(zzfcgVar, zzfbuVar, this.zze));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdR)).booleanValue()) {
            zzcvaVar.zze(this.zzf);
        }
        zzdgv zzg = this.zza.zzg();
        zzg.zzf(zzcvaVar.zzl());
        zzg.zze(this.zzd);
        zzg.zzd(this.zzb);
        zzg.zzc(new zzcom(null));
        zzcsb zza = zzg.zzg().zza();
        return zza.zzh(zza.zzi());
    }
}
