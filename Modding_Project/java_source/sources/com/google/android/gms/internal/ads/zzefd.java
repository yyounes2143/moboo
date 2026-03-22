package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzefd implements zzedf {
    private final Context zza;
    private final zzdpd zzb;
    private final zzdga zzc;
    private final zzfcp zzd;
    private final Executor zze;
    private final VersionInfoParcel zzf;
    private final zzbjz zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjh)).booleanValue();
    private final zzece zzi;
    private final zzdrx zzj;
    private final zzdsd zzk;

    public zzefd(Context context, VersionInfoParcel versionInfoParcel, zzfcp zzfcpVar, Executor executor, zzdga zzdgaVar, zzdpd zzdpdVar, zzbjz zzbjzVar, zzece zzeceVar, zzdrx zzdrxVar, zzdsd zzdsdVar) {
        this.zza = context;
        this.zzd = zzfcpVar;
        this.zzc = zzdgaVar;
        this.zze = executor;
        this.zzf = versionInfoParcel;
        this.zzb = zzdpdVar;
        this.zzg = zzbjzVar;
        this.zzi = zzeceVar;
        this.zzj = zzdrxVar;
        this.zzk = zzdsdVar;
    }

    public static /* synthetic */ ListenableFuture zzc(final zzefd zzefdVar, final zzfbu zzfbuVar, zzfcg zzfcgVar, zzdph zzdphVar, Object obj) {
        zzbjz zzbjzVar;
        zzbcm zzbcmVar = zzbcv.zzct;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzefdVar.zzj.zza().putLong(zzdrl.RENDERING_WEBVIEW_CREATION_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzdpd zzdpdVar = zzefdVar.zzb;
        zzfcp zzfcpVar = zzefdVar.zzd;
        final zzcfb zza = zzdpdVar.zza(zzfcpVar.zze, zzfbuVar, zzfcgVar.zzb.zzb);
        zza.zzac(zzfbuVar.zzW);
        Context context = zzefdVar.zza;
        zzdphVar.zza(context, zza.zzF());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzefdVar.zzj.zza().putLong(zzdrl.RENDERING_WEBVIEW_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzcaf zzcafVar = new zzcaf();
        zzdga zzdgaVar = zzefdVar.zzc;
        zzcrn zzcrnVar = new zzcrn(zzfcgVar, zzfbuVar, null);
        VersionInfoParcel versionInfoParcel = zzefdVar.zzf;
        boolean z = zzefdVar.zzh;
        zzbjz zzbjzVar2 = zzefdVar.zzg;
        final zzdex zzd = zzdgaVar.zzd(zzcrnVar, new zzdfa(new zzefc(context, versionInfoParcel, zzcafVar, zzfbuVar, zza, zzfcpVar, z, zzbjzVar2, zzefdVar.zzi, zzefdVar.zzk), zza));
        zzcafVar.zzc(zzd);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzefdVar.zzj.zza().putLong(zzdrl.RENDERING_AD_COMPONENT_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzd.zzc().zzo(new zzcwn() { // from class: com.google.android.gms.internal.ads.zzefa
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
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfz)).booleanValue() && zzd.zzl().zze(true)) {
            str = zzcgm.zzb(str, zzcgm.zza(zzfbuVar));
        }
        zzdpc zzi = zzd.zzi();
        if (true != z) {
            zzbjzVar = null;
        } else {
            zzbjzVar = zzbjzVar2;
        }
        zzdrx zzdrxVar = zzefdVar.zzj;
        zzi.zzi(zza, true, zzbjzVar, zzdrxVar.zza());
        zzd.zzi();
        return zzgcy.zzm(zzdpc.zzj(zza, zzfbzVar.zzb, str, zzdrxVar.zza()), new zzfur(zzefdVar) { // from class: com.google.android.gms.internal.ads.zzefb
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj2) {
                zzcfb zzcfbVar = zza;
                if (zzfbuVar.zzM) {
                    zzcfbVar.zzah();
                }
                zzdex zzdexVar = zzd;
                zzcfbVar.zzab();
                zzcfbVar.onPause();
                return zzdexVar.zzg();
            }
        }, zzefdVar.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final ListenableFuture zza(final zzfcg zzfcgVar, final zzfbu zzfbuVar) {
        final zzdph zzdphVar = new zzdph();
        ListenableFuture zzh = zzgcy.zzh(null);
        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzeey
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzefd.zzc(zzefd.this, zzfbuVar, zzfcgVar, zzdphVar, obj);
            }
        };
        Executor executor = this.zze;
        ListenableFuture zzn = zzgcy.zzn(zzh, zzgcfVar, executor);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeez
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
