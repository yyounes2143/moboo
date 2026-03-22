package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbzu {
    @Nullable
    private zzgdj zza;
    @Nullable
    private zzdsd zzb;
    private final AtomicBoolean zzc = new AtomicBoolean(false);
    private final AtomicBoolean zzd = new AtomicBoolean(false);
    private long zze = -1;
    private long zzf = -1;

    public static /* synthetic */ void zza(zzbzu zzbzuVar) {
        zzdsd zzdsdVar;
        while (zzbzuVar.zzd.get()) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbzs
                @Override // java.lang.Runnable
                public final void run() {
                    atomicBoolean.getAndSet(true);
                }
            });
            try {
                Thread.sleep(zzbzuVar.zze);
                if (!atomicBoolean.get()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznK)).booleanValue() && (zzdsdVar = zzbzuVar.zzb) != null) {
                        zzdsc zza = zzdsdVar.zza();
                        zza.zzb("action", "paa");
                        zza.zzi();
                    }
                }
                do {
                    try {
                        Thread.sleep(zzbzuVar.zzf);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                } while (!atomicBoolean.get());
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
                return;
            }
        }
    }

    public final void zzb(zzgdj zzgdjVar, zzdsd zzdsdVar) {
        if (this.zzc.getAndSet(true)) {
            return;
        }
        this.zza = zzgdjVar;
        this.zzb = zzdsdVar;
        this.zze = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznI)).longValue();
        this.zzf = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznJ)).longValue();
    }

    public final void zzc() {
        zzgdj zzgdjVar;
        if (this.zzc.get() && this.zze >= 0 && this.zzf >= 0 && this.zzd.compareAndSet(false, true) && (zzgdjVar = this.zza) != null) {
            zzgdjVar.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbzt
                @Override // java.lang.Runnable
                public final void run() {
                    zzbzu.zza(zzbzu.this);
                }
            });
        }
    }
}
