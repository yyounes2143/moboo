package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdew extends zzcqx {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzddc zze;
    private final zzdgi zzf;
    private final zzcrs zzg;
    private final zzfoi zzh;
    private final zzcwg zzi;
    private final zzbzr zzj;
    private boolean zzk;

    public zzdew(zzcqw zzcqwVar, Context context, @Nullable zzcfb zzcfbVar, zzddc zzddcVar, zzdgi zzdgiVar, zzcrs zzcrsVar, zzfoi zzfoiVar, zzcwg zzcwgVar, zzbzr zzbzrVar) {
        super(zzcqwVar);
        this.zzk = false;
        this.zzc = context;
        this.zzd = new WeakReference(zzcfbVar);
        this.zze = zzddcVar;
        this.zzf = zzdgiVar;
        this.zzg = zzcrsVar;
        this.zzh = zzfoiVar;
        this.zzi = zzcwgVar;
        this.zzj = zzbzrVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcfb zzcfbVar = (zzcfb) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgR)).booleanValue()) {
                if (!this.zzk && zzcfbVar != null) {
                    zzcaa.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdev
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcfb.this.destroy();
                        }
                    });
                }
            } else if (zzcfbVar != null) {
                zzcfbVar.destroy();
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
            throw th;
        }
    }

    public final boolean zza() {
        return this.zzg.zzg();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [android.content.Context] */
    public final boolean zzc(boolean z, @Nullable Activity activity) {
        zzfbu zzD;
        zzddc zzddcVar = this.zze;
        zzddcVar.zzb();
        com.google.android.gms.ads.internal.zzv.zzr();
        zzdgi zzdgiVar = this.zzf;
        if (!com.google.android.gms.ads.internal.util.zzs.zzO(zzdgiVar.zza())) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaQ)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzr();
                if (com.google.android.gms.ads.internal.util.zzs.zzH(this.zzc)) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://goo.gle/admob-interstitial-policies");
                    this.zzi.zzd();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaR)).booleanValue()) {
                        this.zzh.zza(this.zza.zzb.zzb.zzb);
                    }
                    return false;
                }
            }
        }
        zzcfb zzcfbVar = (zzcfb) this.zzd.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmh)).booleanValue() && zzcfbVar != null && (zzD = zzcfbVar.zzD()) != null && zzD.zzar && zzD.zzas != this.zzj.zzb()) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The interstitial consent form has been shown.");
            this.zzi.zzc(zzfdq.zzd(12, "The consent form has already been shown.", null));
        } else {
            if (this.zzk) {
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("The interstitial ad has been shown.");
                this.zzi.zzc(zzfdq.zzd(10, null, null));
            }
            Activity activity2 = activity;
            if (!this.zzk) {
                if (activity == null) {
                    activity2 = this.zzc;
                }
                try {
                    zzdgiVar.zzb(z, activity2, this.zzi);
                    zzddcVar.zza();
                    this.zzk = true;
                    return true;
                } catch (zzdgh e) {
                    this.zzi.zze(e);
                }
            }
        }
        return false;
    }
}
