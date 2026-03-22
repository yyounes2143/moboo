package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzegk extends zzegj {
    private final zzchb zza;
    private final zzcva zzb;
    private final zzdbr zzc;
    private final zzegu zzd;
    private final zzedk zze;

    public zzegk(zzchb zzchbVar, zzcva zzcvaVar, zzdbr zzdbrVar, zzegu zzeguVar, zzedk zzedkVar) {
        this.zza = zzchbVar;
        this.zzb = zzcvaVar;
        this.zzc = zzdbrVar;
        this.zzd = zzeguVar;
        this.zze = zzedkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzegj
    public final ListenableFuture zzc(zzfcp zzfcpVar, Bundle bundle, zzfbu zzfbuVar, zzfcg zzfcgVar) {
        zzcva zzcvaVar = this.zzb;
        zzcvaVar.zzk(zzfcpVar);
        zzcvaVar.zzg(bundle);
        zzcvaVar.zzh(new zzcut(zzfcgVar, zzfbuVar, this.zzd));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdR)).booleanValue()) {
            zzcvaVar.zze(this.zze);
        }
        zzcoc zzc = this.zza.zzc();
        zzc.zzd(zzcvaVar.zzl());
        zzc.zzc(this.zzc);
        zzcsb zzb = zzc.zze().zzb();
        return zzb.zzh(zzb.zzi());
    }
}
