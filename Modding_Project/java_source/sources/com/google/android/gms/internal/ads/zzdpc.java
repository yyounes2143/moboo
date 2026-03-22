package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdpc {
    private final zzcvr zza;
    private final zzddw zzb;
    private final zzcxa zzc;
    private final zzcxn zzd;
    private final zzcxz zze;
    private final zzdau zzf;
    private final Executor zzg;
    private final zzdds zzh;
    private final zzcnk zzi;
    private final com.google.android.gms.ads.internal.zzb zzj;
    private final zzbxv zzk;
    private final zzavl zzl;
    private final zzdal zzm;
    private final zzebt zzn;
    private final zzfjr zzo;
    private final zzdsd zzp;
    private final zzcmn zzq;
    private final zzdpi zzr;

    public zzdpc(zzcvr zzcvrVar, zzcxa zzcxaVar, zzcxn zzcxnVar, zzcxz zzcxzVar, zzdau zzdauVar, Executor executor, zzdds zzddsVar, zzcnk zzcnkVar, com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbxv zzbxvVar, zzavl zzavlVar, zzdal zzdalVar, zzebt zzebtVar, zzfjr zzfjrVar, zzdsd zzdsdVar, zzddw zzddwVar, zzcmn zzcmnVar, zzdpi zzdpiVar) {
        this.zza = zzcvrVar;
        this.zzc = zzcxaVar;
        this.zzd = zzcxnVar;
        this.zze = zzcxzVar;
        this.zzf = zzdauVar;
        this.zzg = executor;
        this.zzh = zzddsVar;
        this.zzi = zzcnkVar;
        this.zzj = zzbVar;
        this.zzk = zzbxvVar;
        this.zzl = zzavlVar;
        this.zzm = zzdalVar;
        this.zzn = zzebtVar;
        this.zzo = zzfjrVar;
        this.zzp = zzdsdVar;
        this.zzb = zzddwVar;
        this.zzq = zzcmnVar;
        this.zzr = zzdpiVar;
    }

    public static /* synthetic */ boolean zzh(zzdpc zzdpcVar, View view, MotionEvent motionEvent) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkp)).booleanValue() && motionEvent != null && motionEvent.getAction() == 0) {
            zzdpcVar.zzr.zzb(motionEvent);
        }
        zzdpcVar.zzj.zza();
        if (view != null) {
            view.performClick();
            return false;
        }
        return false;
    }

    public static final ListenableFuture zzj(zzcfb zzcfbVar, String str, String str2, final Bundle bundle) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzct)).booleanValue()) {
            bundle.putLong(zzdrl.RENDERING_WEBVIEW_LOAD_HTML_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        final zzcaf zzcafVar = new zzcaf();
        zzcfbVar.zzN().zzC(new zzcgr() { // from class: com.google.android.gms.internal.ads.zzdot
            @Override // com.google.android.gms.internal.ads.zzcgr
            public final void zza(boolean z, int i, String str3, String str4) {
                zzcaf zzcafVar2 = zzcafVar;
                if (z) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzct)).booleanValue()) {
                        bundle.putLong(zzdrl.RENDERING_WEBVIEW_LOAD_HTML_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
                    }
                    zzcafVar2.zzc(null);
                    return;
                }
                zzcafVar2.zzd(new Exception("Ad Web View failed to load. Error code: " + i + ", Description: " + str3 + ", Failing URL: " + str4));
            }
        });
        zzcfbVar.zzae(str, str2, null);
        return zzcafVar;
    }

    public final void zzi(final zzcfb zzcfbVar, boolean z, zzbjz zzbjzVar, Bundle bundle) {
        zzavg zzc;
        zzbcm zzbcmVar = zzbcv.zzct;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            bundle.putLong(zzdrl.RENDERING_CONFIGURE_WEBVIEW_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        zzcfbVar.zzN().zzX(new com.google.android.gms.ads.internal.client.zza() { // from class: com.google.android.gms.internal.ads.zzdou
            @Override // com.google.android.gms.ads.internal.client.zza
            public final void onAdClicked() {
                zzdpc.this.zza.onAdClicked();
            }
        }, this.zzd, this.zze, new zzbio() { // from class: com.google.android.gms.internal.ads.zzdov
            @Override // com.google.android.gms.internal.ads.zzbio
            public final void zzb(String str, String str2) {
                zzdpc.this.zzf.zzb(str, str2);
            }
        }, new com.google.android.gms.ads.internal.overlay.zzad() { // from class: com.google.android.gms.internal.ads.zzdow
            @Override // com.google.android.gms.ads.internal.overlay.zzad
            public final void zzg() {
                zzdpc.this.zzc.zzb();
            }
        }, z, zzbjzVar, this.zzj, new zzdpb(this), this.zzk, this.zzn, this.zzo, this.zzp, null, this.zzb, null, null, null, this.zzq);
        zzcfbVar.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.gms.internal.ads.zzdox
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                zzdpc.zzh(zzdpc.this, view, motionEvent);
                return false;
            }
        });
        zzcfbVar.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzdoy
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                zzdpc.this.zzj.zza();
            }
        });
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcT)).booleanValue() && (zzc = this.zzl.zzc()) != null) {
            zzc.zzo(zzcfbVar.zzF());
        }
        zzdds zzddsVar = this.zzh;
        Executor executor = this.zzg;
        zzddsVar.zzo(zzcfbVar, executor);
        zzddsVar.zzo(new zzayu() { // from class: com.google.android.gms.internal.ads.zzdoz
            @Override // com.google.android.gms.internal.ads.zzayu
            public final void zzdr(zzayt zzaytVar) {
                zzcgt zzN = zzcfb.this.zzN();
                Rect rect = zzaytVar.zzd;
                zzN.zzr(rect.left, rect.top, false);
            }
        }, executor);
        zzddsVar.zza(zzcfbVar.zzF());
        zzcfbVar.zzag("/trackActiveViewUnit", new zzbjw() { // from class: com.google.android.gms.internal.ads.zzdpa
            @Override // com.google.android.gms.internal.ads.zzbjw
            public final void zza(Object obj, Map map) {
                zzcfb zzcfbVar2 = (zzcfb) obj;
                zzdpc.this.zzi.zzh(zzcfbVar);
            }
        });
        this.zzi.zzi(zzcfbVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
            bundle.putLong(zzdrl.RENDERING_CONFIGURE_WEBVIEW_END.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
    }
}
