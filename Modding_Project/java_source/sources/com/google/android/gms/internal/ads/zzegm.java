package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzegm extends zzegj {
    private final zzchb zza;
    private final zzcva zzb;
    private final zzeja zzc;
    private final zzdbr zzd;
    private final zzdgr zze;
    private final zzcyq zzf;
    @Nullable
    private final ViewGroup zzg;
    @Nullable
    private final zzdaw zzh;
    private final zzegu zzi;
    private final zzedk zzj;

    public zzegm(zzchb zzchbVar, zzcva zzcvaVar, zzeja zzejaVar, zzdbr zzdbrVar, zzdgr zzdgrVar, zzcyq zzcyqVar, @Nullable ViewGroup viewGroup, @Nullable zzdaw zzdawVar, zzegu zzeguVar, zzedk zzedkVar) {
        this.zza = zzchbVar;
        this.zzb = zzcvaVar;
        this.zzc = zzejaVar;
        this.zzd = zzdbrVar;
        this.zze = zzdgrVar;
        this.zzf = zzcyqVar;
        this.zzg = viewGroup;
        this.zzh = zzdawVar;
        this.zzi = zzeguVar;
        this.zzj = zzedkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzegj
    public final ListenableFuture zzc(zzfcp zzfcpVar, Bundle bundle, zzfbu zzfbuVar, zzfcg zzfcgVar) {
        zzcva zzcvaVar = this.zzb;
        zzcvaVar.zzk(zzfcpVar);
        zzcvaVar.zzg(bundle);
        zzcvaVar.zzh(new zzcut(zzfcgVar, zzfbuVar, this.zzi));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdR)).booleanValue()) {
            zzcvaVar.zze(this.zzj);
        }
        zzcpt zzd = this.zza.zzd();
        zzd.zzi(zzcvaVar.zzl());
        zzd.zzf(this.zzd);
        zzd.zze(this.zzc);
        zzd.zzd(this.zze);
        zzd.zzg(new zzcqp(this.zzf, this.zzh));
        zzd.zzc(new zzcom(this.zzg));
        zzcsb zzc = zzd.zzk().zzc();
        return zzc.zzh(zzc.zzi());
    }
}
