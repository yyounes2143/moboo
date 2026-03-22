package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeyg implements zzelh {
    private final Context zza;
    private final Executor zzb;
    private final zzchb zzc;
    private final zzekr zzd;
    private final zzekv zze;
    private final ViewGroup zzf;
    @Nullable
    private zzbdq zzg;
    private final zzcyq zzh;
    private final zzfhq zzi;
    private final zzdaw zzj;
    private final zzfcn zzk;
    @Nullable
    private ListenableFuture zzl;
    private boolean zzm;
    @Nullable
    private com.google.android.gms.ads.internal.client.zze zzn;
    @Nullable
    private zzelg zzo;

    public zzeyg(Context context, Executor executor, com.google.android.gms.ads.internal.client.zzr zzrVar, zzchb zzchbVar, zzekr zzekrVar, zzekv zzekvVar, zzfcn zzfcnVar, zzdaw zzdawVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzchbVar;
        this.zzd = zzekrVar;
        this.zze = zzekvVar;
        this.zzk = zzfcnVar;
        this.zzh = zzchbVar.zze();
        this.zzi = zzchbVar.zzy();
        this.zzf = new FrameLayout(context);
        this.zzj = zzdawVar;
        zzfcnVar.zzs(zzrVar);
        this.zzm = true;
        this.zzn = null;
        this.zzo = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzt() {
        this.zzl = null;
        final com.google.android.gms.ads.internal.client.zze zzeVar = this.zzn;
        this.zzn = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziu)).booleanValue() && zzeVar != null) {
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeyc
                @Override // java.lang.Runnable
                public final void run() {
                    zzeyg.this.zzd.zzdD(zzeVar);
                }
            });
        }
        zzelg zzelgVar = this.zzo;
        if (zzelgVar != null) {
            zzelgVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    public final boolean zza() {
        ListenableFuture listenableFuture = this.zzl;
        if (listenableFuture != null && !listenableFuture.isDone()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, @Nullable zzelf zzelfVar, zzelg zzelgVar) throws RemoteException {
        zzcpu zzk;
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Ad unit ID should not be null for banner ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeye
                @Override // java.lang.Runnable
                public final void run() {
                    zzeyg.this.zzd.zzdD(zzfdq.zzd(6, null, null));
                }
            });
            return false;
        }
        if (zza()) {
            if (!this.zzk.zzS()) {
                this.zzm = true;
            }
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzji)).booleanValue() && zzmVar.zzf) {
                this.zzc.zzk().zzo(true);
            }
            Bundle zza = zzdrn.zza(new Pair(zzdrl.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar.zzz)), new Pair(zzdrl.DYNAMITE_ENTER.zza(), Long.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis())));
            zzfcn zzfcnVar = this.zzk;
            zzfcnVar.zzt(str);
            zzfcnVar.zzH(zzmVar);
            zzfcnVar.zzA(zza);
            Context context = this.zza;
            zzfcp zzJ = zzfcnVar.zzJ();
            zzfhc zzb = zzfhb.zzb(context, zzfhm.zzf(zzJ), 3, zzmVar);
            zzfhn zzfhnVar = null;
            if (((Boolean) zzbfb.zzd.zze()).booleanValue() && zzfcnVar.zzh().zzk) {
                zzekr zzekrVar = this.zzd;
                if (zzekrVar != null) {
                    zzekrVar.zzdD(zzfdq.zzd(7, null, null));
                }
            } else {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziu)).booleanValue()) {
                    zzcpt zzd = this.zzc.zzd();
                    zzcva zzcvaVar = new zzcva();
                    zzcvaVar.zzf(context);
                    zzcvaVar.zzk(zzJ);
                    zzd.zzi(zzcvaVar.zzl());
                    zzdbp zzdbpVar = new zzdbp();
                    zzekr zzekrVar2 = this.zzd;
                    Executor executor = this.zzb;
                    zzdbpVar.zzj(zzekrVar2, executor);
                    zzdbpVar.zzk(zzekrVar2, executor);
                    zzd.zzf(zzdbpVar.zzn());
                    zzd.zze(new zzeja(this.zzg));
                    zzd.zzd(new zzdgr(zzdiz.zza, null));
                    zzd.zzg(new zzcqp(this.zzh, this.zzj));
                    zzd.zzc(new zzcom(this.zzf));
                    zzk = zzd.zzk();
                } else {
                    zzcpt zzd2 = this.zzc.zzd();
                    zzcva zzcvaVar2 = new zzcva();
                    zzcvaVar2.zzf(context);
                    zzcvaVar2.zzk(zzJ);
                    zzd2.zzi(zzcvaVar2.zzl());
                    zzdbp zzdbpVar2 = new zzdbp();
                    zzekr zzekrVar3 = this.zzd;
                    Executor executor2 = this.zzb;
                    zzdbpVar2.zzj(zzekrVar3, executor2);
                    zzdbpVar2.zza(zzekrVar3, executor2);
                    zzdbpVar2.zza(this.zze, executor2);
                    zzdbpVar2.zzl(zzekrVar3, executor2);
                    zzdbpVar2.zzd(zzekrVar3, executor2);
                    zzdbpVar2.zze(zzekrVar3, executor2);
                    zzdbpVar2.zzf(zzekrVar3, executor2);
                    zzdbpVar2.zzb(zzekrVar3, executor2);
                    zzdbpVar2.zzk(zzekrVar3, executor2);
                    zzdbpVar2.zzi(zzekrVar3, executor2);
                    zzd2.zzf(zzdbpVar2.zzn());
                    zzd2.zze(new zzeja(this.zzg));
                    zzd2.zzd(new zzdgr(zzdiz.zza, null));
                    zzd2.zzg(new zzcqp(this.zzh, this.zzj));
                    zzd2.zzc(new zzcom(this.zzf));
                    zzk = zzd2.zzk();
                }
                if (((Boolean) zzbeo.zzc.zze()).booleanValue()) {
                    zzfhnVar = zzk.zzh();
                    zzfhnVar.zzi(3);
                    zzfhnVar.zzb(zzmVar.zzp);
                    zzfhnVar.zzf(zzmVar.zzm);
                }
                this.zzo = zzelgVar;
                zzcsb zzc = zzk.zzc();
                ListenableFuture zzh = zzc.zzh(zzc.zzi());
                this.zzl = zzh;
                zzgcy.zzr(zzh, new zzeyf(this, zzfhnVar, zzb, zzk), this.zzb);
                return true;
            }
        }
        return false;
    }

    public final ViewGroup zzc() {
        return this.zzf;
    }

    public final zzfcn zzf() {
        return this.zzk;
    }

    public final void zzl() {
        this.zzh.zzd(this.zzj.zzc());
    }

    public final void zzm() {
        this.zzh.zze(this.zzj.zzd());
    }

    public final void zzn(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        this.zze.zza(zzbhVar);
    }

    public final void zzo(zzcyk zzcykVar) {
        this.zzh.zzo(zzcykVar, this.zzb);
    }

    public final void zzp(zzbdq zzbdqVar) {
        this.zzg = zzbdqVar;
    }

    public final void zzq() {
        synchronized (this) {
            try {
                ListenableFuture listenableFuture = this.zzl;
                if (listenableFuture != null && listenableFuture.isDone()) {
                    try {
                        zzcop zzcopVar = (zzcop) this.zzl.get();
                        this.zzl = null;
                        ViewGroup viewGroup = this.zzf;
                        viewGroup.removeAllViews();
                        zzcopVar.zzd();
                        ViewParent parent = zzcopVar.zzd().getParent();
                        if (parent instanceof ViewGroup) {
                            String str = "";
                            if (zzcopVar.zzl() != null) {
                                str = zzcopVar.zzl().zzg();
                            }
                            int i = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzj("Banner view provided from " + str + " already has a parent view. Removing its old parent.");
                            ((ViewGroup) parent).removeView(zzcopVar.zzd());
                        }
                        zzbcm zzbcmVar = zzbcv.zziu;
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
                            zzdae zzn = zzcopVar.zzn();
                            zzn.zza(this.zzd);
                            zzn.zzc(this.zze);
                        }
                        viewGroup.addView(zzcopVar.zzd());
                        zzelg zzelgVar = this.zzo;
                        if (zzelgVar != null) {
                            zzelgVar.zzb(zzcopVar);
                        }
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
                            Executor executor = this.zzb;
                            final zzekr zzekrVar = this.zzd;
                            Objects.requireNonNull(zzekrVar);
                            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeyd
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzekr.this.zzt();
                                }
                            });
                        }
                        if (zzcopVar.zza() >= 0) {
                            this.zzm = false;
                            zzcyq zzcyqVar = this.zzh;
                            zzcyqVar.zzd(zzcopVar.zza());
                            zzcyqVar.zze(zzcopVar.zzc());
                        } else {
                            this.zzm = true;
                            this.zzh.zzd(zzcopVar.zzc());
                        }
                    } catch (InterruptedException e) {
                        e = e;
                        zzt();
                        com.google.android.gms.ads.internal.util.zze.zzb("Error occurred while refreshing the ad. Making a new ad request.", e);
                        this.zzm = true;
                        this.zzh.zza();
                    } catch (ExecutionException e2) {
                        e = e2;
                        zzt();
                        com.google.android.gms.ads.internal.util.zze.zzb("Error occurred while refreshing the ad. Making a new ad request.", e);
                        this.zzm = true;
                        this.zzh.zza();
                    }
                } else if (this.zzl != null) {
                    com.google.android.gms.ads.internal.util.zze.zza("Show timer went off but there is an ongoing ad request.");
                    this.zzm = true;
                } else {
                    com.google.android.gms.ads.internal.util.zze.zza("No ad request was in progress or an ad was cached when show timer went off. Hence requesting a new ad.");
                    this.zzm = true;
                    this.zzh.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzs() {
        ViewParent parent = this.zzf.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        com.google.android.gms.ads.internal.zzv.zzr();
        return com.google.android.gms.ads.internal.util.zzs.zzX(view, view.getContext());
    }
}
