package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Clock;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcyq extends zzdbo {
    private final ScheduledExecutorService zzb;
    private final Clock zzc;
    private long zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private boolean zzh;
    @Nullable
    private ScheduledFuture zzi;
    @Nullable
    private ScheduledFuture zzj;

    public zzcyq(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        super(Collections.EMPTY_SET);
        this.zzd = -1L;
        this.zze = -1L;
        this.zzf = -1L;
        this.zzg = -1L;
        this.zzh = false;
        this.zzb = scheduledExecutorService;
        this.zzc = clock;
    }

    private final synchronized void zzf(long j) {
        try {
            ScheduledFuture scheduledFuture = this.zzi;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.zzi.cancel(false);
            }
            this.zzd = this.zzc.elapsedRealtime() + j;
            this.zzi = this.zzb.schedule(new zzcyn(this, null), j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized void zzg(long j) {
        try {
            ScheduledFuture scheduledFuture = this.zzj;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.zzj.cancel(false);
            }
            this.zze = this.zzc.elapsedRealtime() + j;
            this.zzj = this.zzb.schedule(new zzcyo(this, null), j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zza() {
        this.zzh = false;
        zzf(0L);
    }

    public final synchronized void zzb() {
        try {
            if (!this.zzh) {
                ScheduledFuture scheduledFuture = this.zzi;
                if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                    this.zzi.cancel(false);
                    this.zzf = this.zzd - this.zzc.elapsedRealtime();
                } else {
                    this.zzf = -1L;
                }
                ScheduledFuture scheduledFuture2 = this.zzj;
                if (scheduledFuture2 != null && !scheduledFuture2.isCancelled()) {
                    this.zzj.cancel(false);
                    this.zzg = this.zze - this.zzc.elapsedRealtime();
                } else {
                    this.zzg = -1L;
                }
                this.zzh = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc() {
        ScheduledFuture scheduledFuture;
        ScheduledFuture scheduledFuture2;
        try {
            if (this.zzh) {
                if (this.zzf > 0 && (scheduledFuture2 = this.zzi) != null && scheduledFuture2.isCancelled()) {
                    zzf(this.zzf);
                }
                if (this.zzg > 0 && (scheduledFuture = this.zzj) != null && scheduledFuture.isCancelled()) {
                    zzg(this.zzg);
                }
                this.zzh = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzd(int i) {
        com.google.android.gms.ads.internal.util.zze.zza("In scheduleRefresh: " + i);
        if (i > 0) {
            long millis = TimeUnit.SECONDS.toMillis(i);
            if (this.zzh) {
                long j = this.zzf;
                if (j <= 0 || millis >= j) {
                    millis = j;
                }
                this.zzf = millis;
                return;
            }
            long elapsedRealtime = this.zzc.elapsedRealtime();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznv)).booleanValue()) {
                long j2 = this.zzd;
                if (elapsedRealtime >= j2 || j2 - elapsedRealtime > millis) {
                    zzf(millis);
                }
            } else {
                long j3 = this.zzd;
                if (elapsedRealtime > j3 || j3 - elapsedRealtime > millis) {
                    zzf(millis);
                }
            }
        }
    }

    public final synchronized void zze(int i) {
        com.google.android.gms.ads.internal.util.zze.zza("In scheduleShowRefreshedAd: " + i);
        if (i > 0) {
            long millis = TimeUnit.SECONDS.toMillis(i);
            if (this.zzh) {
                long j = this.zzg;
                if (j <= 0 || millis >= j) {
                    millis = j;
                }
                this.zzg = millis;
                return;
            }
            long elapsedRealtime = this.zzc.elapsedRealtime();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznv)).booleanValue()) {
                if (elapsedRealtime == this.zze) {
                    com.google.android.gms.ads.internal.util.zze.zza("In scheduleShowRefreshedAd: currentTimeMs = scheduledShowTimeMs");
                }
                long j2 = this.zze;
                if (elapsedRealtime >= j2 || j2 - elapsedRealtime > millis) {
                    zzg(millis);
                }
            } else {
                long j3 = this.zze;
                if (elapsedRealtime > j3 || j3 - elapsedRealtime > millis) {
                    zzg(millis);
                }
            }
        }
    }
}
