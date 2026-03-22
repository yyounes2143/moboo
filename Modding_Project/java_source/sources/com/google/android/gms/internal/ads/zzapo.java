package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzapo extends Thread {
    private final BlockingQueue zza;
    private final zzapn zzb;
    private final zzape zzc;
    private volatile boolean zzd = false;
    private final zzapl zze;

    public zzapo(BlockingQueue blockingQueue, zzapn zzapnVar, zzape zzapeVar, zzapl zzaplVar) {
        this.zza = blockingQueue;
        this.zzb = zzapnVar;
        this.zzc = zzapeVar;
        this.zze = zzaplVar;
    }

    private void zzb() throws InterruptedException {
        zzapu zzapuVar = (zzapu) this.zza.take();
        SystemClock.elapsedRealtime();
        zzapuVar.zzt(3);
        try {
            try {
                zzapuVar.zzm("network-queue-take");
                zzapuVar.zzw();
                TrafficStats.setThreadStatsTag(zzapuVar.zzc());
                zzapq zza = this.zzb.zza(zzapuVar);
                zzapuVar.zzm("network-http-complete");
                if (zza.zze && zzapuVar.zzv()) {
                    zzapuVar.zzp("not-modified");
                    zzapuVar.zzr();
                } else {
                    zzaqa zzh = zzapuVar.zzh(zza);
                    zzapuVar.zzm("network-parse-complete");
                    zzapd zzapdVar = zzh.zzb;
                    if (zzapdVar != null) {
                        this.zzc.zzd(zzapuVar.zzj(), zzapdVar);
                        zzapuVar.zzm("network-cache-written");
                    }
                    zzapuVar.zzq();
                    this.zze.zzb(zzapuVar, zzh, null);
                    zzapuVar.zzs(zzh);
                }
            } catch (zzaqd e) {
                SystemClock.elapsedRealtime();
                this.zze.zza(zzapuVar, e);
                zzapuVar.zzr();
            } catch (Exception e2) {
                zzaqg.zzc(e2, "Unhandled exception %s", e2.toString());
                zzaqd zzaqdVar = new zzaqd(e2);
                SystemClock.elapsedRealtime();
                this.zze.zza(zzapuVar, zzaqdVar);
                zzapuVar.zzr();
            }
            zzapuVar.zzt(4);
        } catch (Throwable th) {
            zzapuVar.zzt(4);
            throw th;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                zzb();
            } catch (InterruptedException unused) {
                if (this.zzd) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzaqg.zzb("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    public final void zza() {
        this.zzd = true;
        interrupt();
    }
}
