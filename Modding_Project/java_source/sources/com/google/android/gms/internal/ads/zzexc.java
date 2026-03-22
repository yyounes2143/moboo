package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzexc implements zzelh {
    protected final zzchb zza;
    private final Context zzb;
    private final Executor zzc;
    private final zzexs zzd;
    private final zzezl zze;
    private final VersionInfoParcel zzf;
    private final ViewGroup zzg;
    private final zzfhq zzh;
    private final zzfcn zzi;
    @Nullable
    private ListenableFuture zzj;

    public zzexc(Context context, Executor executor, zzchb zzchbVar, zzezl zzezlVar, zzexs zzexsVar, zzfcn zzfcnVar, VersionInfoParcel versionInfoParcel) {
        this.zzb = context;
        this.zzc = executor;
        this.zza = zzchbVar;
        this.zze = zzezlVar;
        this.zzd = zzexsVar;
        this.zzi = zzfcnVar;
        this.zzf = versionInfoParcel;
        this.zzg = new FrameLayout(context);
        this.zzh = zzchbVar.zzy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized zzcuy zzm(zzezj zzezjVar) {
        zzexa zzexaVar = (zzexa) zzezjVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziv)).booleanValue()) {
            zzcom zzcomVar = new zzcom(this.zzg);
            zzcva zzcvaVar = new zzcva();
            zzcvaVar.zzf(this.zzb);
            zzcvaVar.zzk(zzexaVar.zza);
            zzcvc zzl = zzcvaVar.zzl();
            zzdbp zzdbpVar = new zzdbp();
            zzexs zzexsVar = this.zzd;
            Executor executor = this.zzc;
            zzdbpVar.zzc(zzexsVar, executor);
            zzdbpVar.zzl(zzexsVar, executor);
            return zze(zzcomVar, zzl, zzdbpVar.zzn());
        }
        zzexs zzi = zzexs.zzi(this.zzd);
        zzdbp zzdbpVar2 = new zzdbp();
        Executor executor2 = this.zzc;
        zzdbpVar2.zzb(zzi, executor2);
        zzdbpVar2.zzg(zzi, executor2);
        zzdbpVar2.zzh(zzi, executor2);
        zzdbpVar2.zzi(zzi, executor2);
        zzdbpVar2.zzc(zzi, executor2);
        zzdbpVar2.zzl(zzi, executor2);
        zzdbpVar2.zzm(zzi);
        zzcom zzcomVar2 = new zzcom(this.zzg);
        zzcva zzcvaVar2 = new zzcva();
        zzcvaVar2.zzf(this.zzb);
        zzcvaVar2.zzk(zzexaVar.zza);
        return zze(zzcomVar2, zzcvaVar2.zzl(), zzdbpVar2.zzn());
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    public final boolean zza() {
        ListenableFuture listenableFuture = this.zzj;
        if (listenableFuture != null && !listenableFuture.isDone()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    public final synchronized boolean zzb(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzelf zzelfVar, zzelg zzelgVar) throws RemoteException {
        Throwable th;
        boolean z;
        zzfhn zzfhnVar;
        zzcnz zzcnzVar;
        try {
            try {
                if (!zzmVar.zzb()) {
                    if (((Boolean) zzbet.zzd.zze()).booleanValue()) {
                        try {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlw)).booleanValue()) {
                                z = true;
                                if (this.zzf.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlx)).intValue() || !z) {
                                    Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                    z = false;
                    if (this.zzf.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlx)).intValue()) {
                    }
                    Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
                }
                if (str == null) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Ad unit ID should not be null for app open ad.");
                    this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeww
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzexc.this.zzd.zzdD(zzfdq.zzd(6, null, null));
                        }
                    });
                    return false;
                } else if (this.zzj != null) {
                    return false;
                } else {
                    if (((Boolean) zzbeo.zzc.zze()).booleanValue() && (zzcnzVar = (zzcnz) this.zze.zzd()) != null) {
                        zzfhn zzg = zzcnzVar.zzg();
                        zzg.zzi(7);
                        zzg.zzb(zzmVar.zzp);
                        zzg.zzf(zzmVar.zzm);
                        zzfhnVar = zzg;
                    } else {
                        zzfhnVar = null;
                    }
                    Context context = this.zzb;
                    boolean z2 = zzmVar.zzf;
                    zzfdm.zza(context, z2);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzji)).booleanValue() && z2) {
                        this.zza.zzk().zzo(true);
                    }
                    Bundle zza = zzdrn.zza(new Pair(zzdrl.PUBLIC_API_CALL.zza(), Long.valueOf(zzmVar.zzz)), new Pair(zzdrl.DYNAMITE_ENTER.zza(), Long.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis())));
                    zzfcn zzfcnVar = this.zzi;
                    zzfcnVar.zzt(str);
                    zzfcnVar.zzs(com.google.android.gms.ads.internal.client.zzr.zzb());
                    zzfcnVar.zzH(zzmVar);
                    zzfcnVar.zzA(zza);
                    zzfcp zzJ = zzfcnVar.zzJ();
                    zzfhc zzb = zzfhb.zzb(context, zzfhm.zzf(zzJ), 7, zzmVar);
                    zzexa zzexaVar = new zzexa(null);
                    zzexaVar.zza = zzJ;
                    ListenableFuture zzc = this.zze.zzc(new zzezm(zzexaVar, null), new zzezk() { // from class: com.google.android.gms.internal.ads.zzewx
                        @Override // com.google.android.gms.internal.ads.zzezk
                        public final zzcuy zza(zzezj zzezjVar) {
                            zzcuy zzm;
                            zzm = zzexc.this.zzm(zzezjVar);
                            return zzm;
                        }
                    }, null);
                    this.zzj = zzc;
                    zzgcy.zzr(zzc, new zzewz(this, zzelgVar, zzfhnVar, zzb, zzexaVar), this.zzc);
                    return true;
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    public abstract zzcuy zze(zzcom zzcomVar, zzcvc zzcvcVar, zzdbr zzdbrVar);

    public final void zzl(com.google.android.gms.ads.internal.client.zzx zzxVar) {
        this.zzi.zzu(zzxVar);
    }
}
