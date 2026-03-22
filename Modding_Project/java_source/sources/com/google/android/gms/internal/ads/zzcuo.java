package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcuo implements zzcvt, zzddd, zzdas, zzcwj, zzayu {
    private final zzcwl zza;
    private final zzcyh zzb;
    private final zzfbu zzc;
    private final ScheduledExecutorService zzd;
    private final Executor zze;
    private ScheduledFuture zzg;
    @Nullable
    private final String zzi;
    private final zzgds zzf = zzgds.zze();
    private final AtomicBoolean zzh = new AtomicBoolean();

    public zzcuo(zzcwl zzcwlVar, zzfbu zzfbuVar, ScheduledExecutorService scheduledExecutorService, Executor executor, @Nullable String str, zzcyh zzcyhVar) {
        this.zza = zzcwlVar;
        this.zzc = zzfbuVar;
        this.zzd = scheduledExecutorService;
        this.zze = executor;
        this.zzi = str;
        this.zzb = zzcyhVar;
    }

    public static /* synthetic */ void zzh(zzcuo zzcuoVar) {
        synchronized (zzcuoVar) {
            try {
                zzgds zzgdsVar = zzcuoVar.zzf;
                if (zzgdsVar.isDone()) {
                    return;
                }
                zzgdsVar.zzc(Boolean.TRUE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final boolean zzk() {
        if (this.zzi.equals("com.google.ads.mediation.admob.AdMobAdapter")) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzc() {
        zzfbu zzfbuVar = this.zzc;
        if (zzfbuVar.zze != 3) {
            int i = zzfbuVar.zzY;
            if (i == 0 || i == 1) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlL)).booleanValue() && zzk()) {
                    return;
                }
                this.zza.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdas
    public final synchronized void zzdq() {
        if (this.zzc.zze == 4) {
            this.zza.zza();
            return;
        }
        zzgds zzgdsVar = this.zzf;
        if (zzgdsVar.isDone()) {
            return;
        }
        ScheduledFuture scheduledFuture = this.zzg;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        zzgdsVar.zzc(Boolean.TRUE);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zzdr(zzayt zzaytVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlL)).booleanValue() && zzk() && zzaytVar.zzj && this.zzh.compareAndSet(false, true) && this.zzc.zze != 3) {
            com.google.android.gms.ads.internal.util.zze.zza("Full screen 1px impression occurred");
            this.zza.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddd
    public final void zzi() {
        zzfbu zzfbuVar = this.zzc;
        int i = zzfbuVar.zze;
        if (i != 3) {
            if (i == 4) {
                this.zzb.zza();
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbI)).booleanValue() && zzfbuVar.zzY == 2) {
                int i2 = zzfbuVar.zzq;
                if (i2 == 0) {
                    this.zza.zza();
                    return;
                }
                zzgcy.zzr(this.zzf, new zzcun(this), this.zze);
                this.zzg = this.zzd.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcum
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcuo.zzh(zzcuo.this);
                    }
                }, i2, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwj
    public final synchronized void zzr(com.google.android.gms.ads.internal.client.zze zzeVar) {
        try {
            zzgds zzgdsVar = this.zzf;
            if (zzgdsVar.isDone()) {
                return;
            }
            ScheduledFuture scheduledFuture = this.zzg;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            zzgdsVar.zzd(new Exception());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzdas
    public final void zzdp() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzddd
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzdu(zzbvx zzbvxVar, String str, String str2) {
    }
}
