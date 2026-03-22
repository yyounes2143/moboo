package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzehx implements zzedf {
    private final Context zza;
    private final zzdpd zzb;
    private final zzdom zzc;
    private final zzfcp zzd;
    private final Executor zze;
    private final VersionInfoParcel zzf;
    private final zzbjz zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjh)).booleanValue();
    private final zzece zzi;
    private final zzdrx zzj;
    private final zzdsd zzk;

    public zzehx(Context context, VersionInfoParcel versionInfoParcel, zzfcp zzfcpVar, Executor executor, zzdom zzdomVar, zzdpd zzdpdVar, zzbjz zzbjzVar, zzece zzeceVar, zzdrx zzdrxVar, zzdsd zzdsdVar) {
        this.zza = context;
        this.zzd = zzfcpVar;
        this.zzc = zzdomVar;
        this.zze = executor;
        this.zzf = versionInfoParcel;
        this.zzb = zzdpdVar;
        this.zzg = zzbjzVar;
        this.zzi = zzeceVar;
        this.zzj = zzdrxVar;
        this.zzk = zzdsdVar;
    }

    public static /* synthetic */ ListenableFuture zzc(final zzehx zzehxVar, final zzfbu zzfbuVar, zzfcg zzfcgVar, zzdph zzdphVar, Object obj) {
        zzbcm zzbcmVar = zzbcv.zzct;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzehxVar.zzj.zza().putLong(zzdrl.RENDERING_WEBVIEW_CREATION_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzdpd zzdpdVar = zzehxVar.zzb;
        zzfcp zzfcpVar = zzehxVar.zzd;
        final zzcfb zza = zzdpdVar.zza(zzfcpVar.zze, zzfbuVar, zzfcgVar.zzb.zzb);
        zza.zzac(zzfbuVar.zzW);
        Context context = zzehxVar.zza;
        zzdphVar.zza(context, zza.zzF());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzehxVar.zzj.zza().putLong(zzdrl.RENDERING_WEBVIEW_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzcaf zzcafVar = new zzcaf();
        zzdom zzdomVar = zzehxVar.zzc;
        zzcrn zzcrnVar = new zzcrn(zzfcgVar, zzfbuVar, null);
        VersionInfoParcel versionInfoParcel = zzehxVar.zzf;
        zzbjz zzbjzVar = zzehxVar.zzg;
        boolean z = zzehxVar.zzh;
        zzece zzeceVar = zzehxVar.zzi;
        zzdrx zzdrxVar = zzehxVar.zzj;
        final zzdoi zzd = zzdomVar.zzd(zzcrnVar, new zzdoj(new zzehw(context, zzdpdVar, zzfcpVar, versionInfoParcel, zzfbuVar, zzcafVar, zza, zzbjzVar, z, zzeceVar, zzdrxVar, zzehxVar.zzk), zza));
        zzcafVar.zzc(zzd);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzdrxVar.zza().putLong(zzdrl.RENDERING_AD_COMPONENT_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzbko.zzb(zza, zzd.zzg());
        zzd.zzc().zzo(new zzcwn() { // from class: com.google.android.gms.internal.ads.zzehq
            @Override // com.google.android.gms.internal.ads.zzcwn
            public final void zzs() {
                zzcfb zzcfbVar = zzcfb.this;
                if (zzcfbVar.zzN() != null) {
                    zzcfbVar.zzN().zzs();
                }
            }
        }, zzcaa.zzg);
        zzdpc zzl = zzd.zzl();
        if (true != z) {
            zzbjzVar = null;
        }
        zzl.zzi(zza, true, zzbjzVar, zzdrxVar.zza());
        zzfbz zzfbzVar = zzfbuVar.zzs;
        String str = zzfbzVar.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfz)).booleanValue() && zzd.zzm().zze(true)) {
            str = zzcgm.zzb(str, zzcgm.zza(zzfbuVar));
        }
        zzd.zzl();
        return zzgcy.zzm(zzdpc.zzj(zza, zzfbzVar.zzb, str, zzdrxVar.zza()), new zzfur(zzehxVar) { // from class: com.google.android.gms.internal.ads.zzehr
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj2) {
                zzcfb zzcfbVar = zza;
                if (zzfbuVar.zzM) {
                    zzcfbVar.zzah();
                }
                zzdoi zzdoiVar = zzd;
                zzcfbVar.zzab();
                zzcfbVar.onPause();
                return zzdoiVar.zzi();
            }
        }, zzehxVar.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final ListenableFuture zza(final zzfcg zzfcgVar, final zzfbu zzfbuVar) {
        final zzdph zzdphVar = new zzdph();
        ListenableFuture zzh = zzgcy.zzh(null);
        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzehs
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzehx.zzc(zzehx.this, zzfbuVar, zzfcgVar, zzdphVar, obj);
            }
        };
        Executor executor = this.zze;
        ListenableFuture zzn = zzgcy.zzn(zzh, zzgcfVar, executor);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeht
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
