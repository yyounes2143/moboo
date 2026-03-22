package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeeg implements zzedf {
    private final zzcpu zza;
    private final Context zzb;
    private final zzdpd zzc;
    private final zzfcp zzd;
    private final Executor zze;
    private final zzfur zzf;
    private final zzdrx zzg;

    public zzeeg(zzcpu zzcpuVar, Context context, Executor executor, zzdpd zzdpdVar, zzfcp zzfcpVar, zzfur zzfurVar, zzdrx zzdrxVar) {
        this.zzb = context;
        this.zza = zzcpuVar;
        this.zze = executor;
        this.zzc = zzdpdVar;
        this.zzd = zzfcpVar;
        this.zzf = zzfurVar;
        this.zzg = zzdrxVar;
    }

    public static /* synthetic */ ListenableFuture zzc(final zzeeg zzeegVar, zzfcg zzfcgVar, zzfbu zzfbuVar, Object obj) {
        View zzdpgVar;
        zzbcm zzbcmVar = zzbcv.zzct;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzeegVar.zzg.zza().putLong(zzdrl.RENDERING_WEBVIEW_CREATION_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        Context context = zzeegVar.zzb;
        com.google.android.gms.ads.internal.client.zzr zza = zzfcv.zza(context, zzfbuVar.zzu);
        final zzcfb zza2 = zzeegVar.zzc.zza(zza, zzfbuVar, zzfcgVar.zzb.zzb);
        zza2.zzac(zzfbuVar.zzW);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzie)).booleanValue() && zzfbuVar.zzag) {
            zzdpgVar = zzcqj.zza(context, zza2.zzF(), zzfbuVar);
        } else {
            zzdpgVar = new zzdpg(context, zza2.zzF(), (com.google.android.gms.ads.internal.util.zzau) zzeegVar.zzf.apply(zzfbuVar));
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzeegVar.zzg.zza().putLong(zzdrl.RENDERING_WEBVIEW_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        final zzcoq zza3 = zzeegVar.zza.zza(new zzcrn(zzfcgVar, zzfbuVar, null), new zzcow(zzdpgVar, zza2, new zzcqv() { // from class: com.google.android.gms.internal.ads.zzeea
            @Override // com.google.android.gms.internal.ads.zzcqv
            public final com.google.android.gms.ads.internal.client.zzea zza() {
                return zzcfb.this.zzq();
            }
        }, zzfcv.zzb(zza)));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            zzeegVar.zzg.zza().putLong(zzdrl.RENDERING_AD_COMPONENT_CREATION_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzdpc zzi = zza3.zzi();
        zzdrx zzdrxVar = zzeegVar.zzg;
        zzi.zzi(zza2, false, null, zzdrxVar.zza());
        zzcwl zzc = zza3.zzc();
        zzcwn zzcwnVar = new zzcwn() { // from class: com.google.android.gms.internal.ads.zzeeb
            @Override // com.google.android.gms.internal.ads.zzcwn
            public final void zzs() {
                zzcfb zzcfbVar = zzcfb.this;
                if (zzcfbVar.zzN() != null) {
                    zzcfbVar.zzN().zzs();
                }
            }
        };
        zzgdj zzgdjVar = zzcaa.zzg;
        zzc.zzo(zzcwnVar, zzgdjVar);
        zzfbz zzfbzVar = zzfbuVar.zzs;
        String str = zzfbzVar.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfz)).booleanValue() && zza3.zzl().zze(true)) {
            str = zzcgm.zzb(str, zzcgm.zza(zzfbuVar));
        }
        zza3.zzi();
        ListenableFuture zzj = zzdpc.zzj(zza2, zzfbzVar.zzb, str, zzdrxVar.zza());
        if (zzfbuVar.zzM) {
            zzj.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeec
                @Override // java.lang.Runnable
                public final void run() {
                    zzcfb.this.zzah();
                }
            }, zzeegVar.zze);
        }
        zzj.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeed
            @Override // java.lang.Runnable
            public final void run() {
                zzeeg.zzd(zzeeg.this, zza2);
            }
        }, zzeegVar.zze);
        return zzgcy.zzm(zzj, new zzfur() { // from class: com.google.android.gms.internal.ads.zzeee
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj2) {
                return zzcoq.this.zza();
            }
        }, zzgdjVar);
    }

    public static /* synthetic */ void zzd(zzeeg zzeegVar, zzcfb zzcfbVar) {
        zzcfbVar.zzab();
        zzfcp zzfcpVar = zzeegVar.zzd;
        zzcgd zzq = zzcfbVar.zzq();
        com.google.android.gms.ads.internal.client.zzfw zzfwVar = zzfcpVar.zza;
        if (zzfwVar != null && zzq != null) {
            zzq.zzs(zzfwVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbv)).booleanValue() && !zzcfbVar.isAttachedToWindow()) {
            zzcfbVar.onPause();
            zzcfbVar.zzav(true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final ListenableFuture zza(final zzfcg zzfcgVar, final zzfbu zzfbuVar) {
        return zzgcy.zzn(zzgcy.zzh(null), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzeef
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzeeg.zzc(zzeeg.this, zzfcgVar, zzfbuVar, obj);
            }
        }, this.zze);
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
