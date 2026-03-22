package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzapg extends Thread {
    private static final boolean zza = zzaqg.zzb;
    private final BlockingQueue zzb;
    private final BlockingQueue zzc;
    private final zzape zzd;
    private volatile boolean zze = false;
    private final zzaqh zzf;
    private final zzapl zzg;

    public zzapg(BlockingQueue blockingQueue, BlockingQueue blockingQueue2, zzape zzapeVar, zzapl zzaplVar) {
        this.zzb = blockingQueue;
        this.zzc = blockingQueue2;
        this.zzd = zzapeVar;
        this.zzg = zzaplVar;
        this.zzf = new zzaqh(this, blockingQueue2, zzaplVar);
    }

    private void zzc() throws InterruptedException {
        zzapu zzapuVar = (zzapu) this.zzb.take();
        zzapuVar.zzm("cache-queue-take");
        zzapuVar.zzt(1);
        try {
            zzapuVar.zzw();
            zzape zzapeVar = this.zzd;
            zzapd zza2 = zzapeVar.zza(zzapuVar.zzj());
            if (zza2 == null) {
                zzapuVar.zzm("cache-miss");
                if (!this.zzf.zzc(zzapuVar)) {
                    this.zzc.put(zzapuVar);
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                if (zza2.zza(currentTimeMillis)) {
                    zzapuVar.zzm("cache-hit-expired");
                    zzapuVar.zze(zza2);
                    if (!this.zzf.zzc(zzapuVar)) {
                        this.zzc.put(zzapuVar);
                    }
                } else {
                    zzapuVar.zzm("cache-hit");
                    zzaqa zzh = zzapuVar.zzh(new zzapq(zza2.zza, zza2.zzg));
                    zzapuVar.zzm("cache-hit-parsed");
                    if (!zzh.zzc()) {
                        zzapuVar.zzm("cache-parsing-failed");
                        zzapeVar.zzc(zzapuVar.zzj(), true);
                        zzapuVar.zze(null);
                        if (!this.zzf.zzc(zzapuVar)) {
                            this.zzc.put(zzapuVar);
                        }
                    } else if (zza2.zzf < currentTimeMillis) {
                        zzapuVar.zzm("cache-hit-refresh-needed");
                        zzapuVar.zze(zza2);
                        zzh.zzd = true;
                        if (!this.zzf.zzc(zzapuVar)) {
                            this.zzg.zzb(zzapuVar, zzh, new zzapf(this, zzapuVar));
                        } else {
                            this.zzg.zzb(zzapuVar, zzh, null);
                        }
                    } else {
                        this.zzg.zzb(zzapuVar, zzh, null);
                    }
                }
            }
            zzapuVar.zzt(2);
        } catch (Throwable th) {
            zzapuVar.zzt(2);
            throw th;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (zza) {
            zzaqg.zzd("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.zzd.zzb();
        while (true) {
            try {
                zzc();
            } catch (InterruptedException unused) {
                if (this.zze) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzaqg.zzb("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    public final void zzb() {
        this.zze = true;
        interrupt();
    }
}
