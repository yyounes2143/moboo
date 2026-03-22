package com.google.android.gms.internal.ads;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeon implements zzetv {
    private final AtomicReference zza = new AtomicReference();
    private final AtomicReference zzb = new AtomicReference(Boolean.FALSE);
    private final Clock zzc;
    private final Executor zzd;
    private final zzetv zze;
    private final long zzf;
    private final zzdsd zzg;

    public zzeon(zzetv zzetvVar, long j, Clock clock, Executor executor, zzdsd zzdsdVar) {
        this.zzc = clock;
        this.zze = zzetvVar;
        this.zzf = j;
        this.zzd = executor;
        this.zzg = zzdsdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return this.zze.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        zzeom zzeomVar;
        zzeom zzeomVar2;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmb)).booleanValue()) {
            AtomicReference atomicReference = this.zza;
            zzeomVar = (zzeom) atomicReference.get();
            if (zzeomVar == null || zzeomVar.zza()) {
                zzetv zzetvVar = this.zze;
                zzeomVar2 = new zzeom(zzetvVar.zzb(), this.zzf, this.zzc);
                atomicReference.set(zzeomVar2);
                zzeomVar = zzeomVar2;
            }
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzma)).booleanValue() && !((Boolean) this.zzb.getAndSet(Boolean.TRUE)).booleanValue()) {
                ScheduledExecutorService scheduledExecutorService = zzcaa.zzd;
                Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzeok
                    @Override // java.lang.Runnable
                    public final void run() {
                        r0.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeol
                            @Override // java.lang.Runnable
                            public final void run() {
                                r0.zza.set(new zzeom(r0.zze.zzb(), r0.zzf, zzeon.this.zzc));
                            }
                        });
                    }
                };
                long j = this.zzf;
                scheduledExecutorService.scheduleWithFixedDelay(runnable, j, j, TimeUnit.MILLISECONDS);
            }
            synchronized (this) {
                try {
                    AtomicReference atomicReference2 = this.zza;
                    zzeomVar = (zzeom) atomicReference2.get();
                    if (zzeomVar == null) {
                        zzeom zzeomVar3 = new zzeom(this.zze.zzb(), this.zzf, this.zzc);
                        atomicReference2.set(zzeomVar3);
                        return zzeomVar3.zza;
                    } else if (!((Boolean) this.zzb.get()).booleanValue() && zzeomVar.zza()) {
                        ListenableFuture listenableFuture = zzeomVar.zza;
                        zzetv zzetvVar2 = this.zze;
                        zzeomVar2 = new zzeom(zzetvVar2.zzb(), this.zzf, this.zzc);
                        this.zza.set(zzeomVar2);
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmc)).booleanValue()) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmd)).booleanValue()) {
                                zzdsc zza = this.zzg.zza();
                                zza.zzb("action", "scs");
                                zza.zzb(CmcdConfiguration.KEY_SESSION_ID, String.valueOf(zzetvVar2.zza()));
                                zza.zzj();
                            }
                            return listenableFuture;
                        }
                        zzeomVar = zzeomVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzeomVar.zza;
    }
}
