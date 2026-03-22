package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcwg extends zzdbo implements zzcvx {
    private final ScheduledExecutorService zzb;
    private ScheduledFuture zzc;
    private boolean zzd;

    public zzcwg(zzcwf zzcwfVar, Set set, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        super(set);
        this.zzd = false;
        this.zzb = scheduledExecutorService;
        super.zzo(zzcwfVar, executor);
    }

    public static /* synthetic */ void zza(zzcwg zzcwgVar) {
        synchronized (zzcwgVar) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Timeout waiting for show call succeed to be called.");
            zzcwgVar.zze(new zzdgh("Timeout for show call succeed."));
            zzcwgVar.zzd = true;
        }
    }

    public final synchronized void zzb() {
        ScheduledFuture scheduledFuture = this.zzc;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final void zzc(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzcvy
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                ((zzcvx) obj).zzc(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final void zzd() {
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzcvz
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                ((zzcvx) obj).zzd();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final void zze(final zzdgh zzdghVar) {
        if (this.zzd) {
            return;
        }
        ScheduledFuture scheduledFuture = this.zzc;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzcwb
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                ((zzcvx) obj).zze(zzdgh.this);
            }
        });
    }

    public final void zzf() {
        int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkX)).intValue();
        this.zzc = this.zzb.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwa
            @Override // java.lang.Runnable
            public final void run() {
                zzcwg.zza(zzcwg.this);
            }
        }, intValue, TimeUnit.MILLISECONDS);
    }
}
