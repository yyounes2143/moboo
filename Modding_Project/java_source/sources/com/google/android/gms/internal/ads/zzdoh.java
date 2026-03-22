package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdoh extends zzcqx {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzdgi zze;
    private final zzddc zzf;
    private final zzcwg zzg;
    private final zzcxn zzh;
    private final zzcrs zzi;
    private final zzbwn zzj;
    private final zzfoi zzk;
    private final zzfci zzl;
    private boolean zzm;

    public zzdoh(zzcqw zzcqwVar, Context context, @Nullable zzcfb zzcfbVar, zzdgi zzdgiVar, zzddc zzddcVar, zzcwg zzcwgVar, zzcxn zzcxnVar, zzcrs zzcrsVar, zzfbu zzfbuVar, zzfoi zzfoiVar, zzfci zzfciVar) {
        super(zzcqwVar);
        String str;
        int i;
        this.zzm = false;
        this.zzc = context;
        this.zze = zzdgiVar;
        this.zzd = new WeakReference(zzcfbVar);
        this.zzf = zzddcVar;
        this.zzg = zzcwgVar;
        this.zzh = zzcxnVar;
        this.zzi = zzcrsVar;
        this.zzk = zzfoiVar;
        zzbwj zzbwjVar = zzfbuVar.zzl;
        if (zzbwjVar != null) {
            str = zzbwjVar.zza;
        } else {
            str = "";
        }
        if (zzbwjVar != null) {
            i = zzbwjVar.zzb;
        } else {
            i = 1;
        }
        this.zzj = new zzbxh(str, i);
        this.zzl = zzfciVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcfb zzcfbVar = (zzcfb) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgR)).booleanValue()) {
                if (!this.zzm && zzcfbVar != null) {
                    zzcaa.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdog
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

    public final Bundle zza() {
        return this.zzh.zzb();
    }

    public final zzbwn zzc() {
        return this.zzj;
    }

    public final zzfci zzd() {
        return this.zzl;
    }

    public final boolean zze() {
        return this.zzi.zzg();
    }

    public final boolean zzf() {
        return this.zzm;
    }

    public final boolean zzg() {
        zzcfb zzcfbVar = (zzcfb) this.zzd.get();
        if (zzcfbVar != null && !zzcfbVar.zzaG()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [android.content.Context] */
    public final boolean zzh(boolean z, @Nullable Activity activity) {
        com.google.android.gms.ads.internal.zzv.zzr();
        zzdgi zzdgiVar = this.zze;
        if (!com.google.android.gms.ads.internal.util.zzs.zzO(zzdgiVar.zza())) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaQ)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzr();
                if (com.google.android.gms.ads.internal.util.zzs.zzH(this.zzc)) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies");
                    this.zzg.zzd();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzaR)).booleanValue()) {
                        this.zzk.zza(this.zza.zzb.zzb.zzb);
                    }
                    return false;
                }
            }
        }
        if (this.zzm) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The rewarded ad have been showed.");
            this.zzg.zzc(zzfdq.zzd(10, null, null));
            return false;
        }
        this.zzm = true;
        zzddc zzddcVar = this.zzf;
        zzddcVar.zzb();
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.zzc;
        }
        try {
            zzdgiVar.zzb(z, activity2, this.zzg);
            zzddcVar.zza();
            return true;
        } catch (zzdgh e) {
            this.zzg.zze(e);
            return false;
        }
    }
}
