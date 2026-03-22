package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzegq extends zzegj {
    private final zzchb zza;
    private final zzcva zzb;
    private final zzdbr zzc;
    private final zzegu zzd;
    @Nullable
    private final zzfch zze;
    private final zzedk zzf;

    public zzegq(zzchb zzchbVar, zzcva zzcvaVar, zzdbr zzdbrVar, @Nullable zzfch zzfchVar, zzegu zzeguVar, zzedk zzedkVar) {
        this.zza = zzchbVar;
        this.zzb = zzcvaVar;
        this.zzc = zzdbrVar;
        this.zze = zzfchVar;
        this.zzd = zzeguVar;
        this.zzf = zzedkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzegj
    public final ListenableFuture zzc(zzfcp zzfcpVar, Bundle bundle, zzfbu zzfbuVar, zzfcg zzfcgVar) {
        zzfch zzfchVar;
        zzcva zzcvaVar = this.zzb;
        zzcvaVar.zzk(zzfcpVar);
        zzcvaVar.zzg(bundle);
        zzcvaVar.zzh(new zzcut(zzfcgVar, zzfbuVar, this.zzd));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdQ)).booleanValue() && (zzfchVar = this.zze) != null) {
            zzcvaVar.zzj(zzfchVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdR)).booleanValue()) {
            zzcvaVar.zze(this.zzf);
        }
        zzdol zzh = this.zza.zzh();
        zzh.zzd(zzcvaVar.zzl());
        zzh.zzc(this.zzc);
        zzcsb zzb = zzh.zze().zzb();
        return zzb.zzh(zzb.zzi());
    }
}
