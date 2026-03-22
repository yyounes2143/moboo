package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzedq implements zzedf {
    private final zzcod zza;
    private final Context zzb;
    private final zzdpd zzc;
    private final zzfcp zzd;
    private final Executor zze;
    private final VersionInfoParcel zzf;
    private final zzbjz zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjh)).booleanValue();
    private final zzece zzi;
    private final zzdrx zzj;
    private final zzdsd zzk;

    public zzedq(zzcod zzcodVar, Context context, Executor executor, zzdpd zzdpdVar, zzfcp zzfcpVar, VersionInfoParcel versionInfoParcel, zzbjz zzbjzVar, zzece zzeceVar, zzdrx zzdrxVar, zzdsd zzdsdVar) {
        this.zzb = context;
        this.zza = zzcodVar;
        this.zze = executor;
        this.zzc = zzdpdVar;
        this.zzd = zzfcpVar;
        this.zzf = versionInfoParcel;
        this.zzg = zzbjzVar;
        this.zzi = zzeceVar;
        this.zzj = zzdrxVar;
        this.zzk = zzdsdVar;
    }

    public static /* synthetic */ ListenableFuture zzc(final zzedq zzedqVar, final zzfbu zzfbuVar, zzfcg zzfcgVar, zzdph zzdphVar, Object obj) {
        zzbcm zzbcmVar = zzbcv.zzct;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzedqVar.zzj.zza().putLong(zzdrl.RENDERING_WEBVIEW_CREATION_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzdpd zzdpdVar = zzedqVar.zzc;
        zzfcp zzfcpVar = zzedqVar.zzd;
        final zzcfb zza = zzdpdVar.zza(zzfcpVar.zze, zzfbuVar, zzfcgVar.zzb.zzb);
        zza.zzac(zzfbuVar.zzW);
        zzdphVar.zza(zzedqVar.zzb, zza.zzF());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzedqVar.zzj.zza().putLong(zzdrl.RENDERING_WEBVIEW_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzcaf zzcafVar = new zzcaf();
        zzcod zzcodVar = zzedqVar.zza;
        zzbjz zzbjzVar = null;
        zzcrn zzcrnVar = new zzcrn(zzfcgVar, zzfbuVar, null);
        VersionInfoParcel versionInfoParcel = zzedqVar.zzf;
        boolean z = zzedqVar.zzh;
        zzbjz zzbjzVar2 = zzedqVar.zzg;
        final zzcoa zza2 = zzcodVar.zza(zzcrnVar, new zzdfa(new zzeds(versionInfoParcel, zzcafVar, zzfbuVar, zza, zzfcpVar, z, zzbjzVar2, zzedqVar.zzi, zzedqVar.zzk), zza), new zzcob(zzfbuVar.zzaa));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzedqVar.zzj.zza().putLong(zzdrl.RENDERING_AD_COMPONENT_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzdpc zzh = zza2.zzh();
        if (true == z) {
            zzbjzVar = zzbjzVar2;
        }
        zzdrx zzdrxVar = zzedqVar.zzj;
        zzh.zzi(zza, false, zzbjzVar, zzdrxVar.zza());
        zzcafVar.zzc(zza2);
        zza2.zzc().zzo(new zzcwn() { // from class: com.google.android.gms.internal.ads.zzedo
            @Override // com.google.android.gms.internal.ads.zzcwn
            public final void zzs() {
                zzcfb zzcfbVar = zzcfb.this;
                if (zzcfbVar.zzN() != null) {
                    zzcfbVar.zzN().zzs();
                }
            }
        }, zzcaa.zzg);
        zzfbz zzfbzVar = zzfbuVar.zzs;
        String str = zzfbzVar.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfz)).booleanValue() && zza2.zzi().zze(true)) {
            str = zzcgm.zzb(str, zzcgm.zza(zzfbuVar));
        }
        zza2.zzh();
        return zzgcy.zzm(zzdpc.zzj(zza, zzfbzVar.zzb, str, zzdrxVar.zza()), new zzfur(zzedqVar) { // from class: com.google.android.gms.internal.ads.zzedp
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj2) {
                zzcfb zzcfbVar = zza;
                if (zzfbuVar.zzM) {
                    zzcfbVar.zzah();
                }
                zzcoa zzcoaVar = zza2;
                zzcfbVar.zzab();
                zzcfbVar.onPause();
                return zzcoaVar.zza();
            }
        }, zzedqVar.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final ListenableFuture zza(final zzfcg zzfcgVar, final zzfbu zzfbuVar) {
        final zzdph zzdphVar = new zzdph();
        ListenableFuture zzh = zzgcy.zzh(null);
        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzedm
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzedq.zzc(zzedq.this, zzfbuVar, zzfcgVar, zzdphVar, obj);
            }
        };
        Executor executor = this.zze;
        ListenableFuture zzn = zzgcy.zzn(zzh, zzgcfVar, executor);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedn
            @Override // java.lang.Runnable
            public final void run() {
                zzdph.this.zzb();
            }
        }, executor);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final boolean zzb(zzfcg zzfcgVar, zzfbu zzfbuVar) {
        zzfbz zzfbzVar = zzfbuVar.zzs;
        if (zzfbzVar != null && zzfbzVar.zza != null) {
            return true;
        }
        return false;
    }
}
