package com.google.android.gms.internal.ads;

import java.util.Queue;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzabq {
    private final zzabl zza;
    private long zzj;
    private final zzaaj zzk;
    private final zzabj zzb = new zzabj();
    private final zzeq zzc = new zzeq(10);
    private final zzeq zzd = new zzeq(10);
    private final zzdz zze = new zzdz(16);
    private long zzf = -9223372036854775807L;
    private zzcd zzi = zzcd.zza;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;

    public zzabq(zzaaj zzaajVar, zzabl zzablVar) {
        this.zzk = zzaajVar;
        this.zza = zzablVar;
    }

    private static Object zzh(zzeq zzeqVar) {
        boolean z;
        if (zzeqVar.zza() > 0) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        while (zzeqVar.zza() > 1) {
            zzeqVar.zzb();
        }
        Object zzb = zzeqVar.zzb();
        zzb.getClass();
        return zzb;
    }

    public final void zza() {
        this.zze.zzd();
        this.zzf = -9223372036854775807L;
        this.zzg = -9223372036854775807L;
        this.zzh = -9223372036854775807L;
        zzeq zzeqVar = this.zzd;
        if (zzeqVar.zza() > 0) {
            this.zzj = ((Long) zzh(zzeqVar)).longValue();
        }
        zzeq zzeqVar2 = this.zzc;
        if (zzeqVar2.zza() > 0) {
            zzeqVar2.zzd(0L, (zzcd) zzh(zzeqVar2));
        }
    }

    public final void zzb(long j) {
        this.zze.zzc(j);
        this.zzf = j;
        this.zzh = -9223372036854775807L;
    }

    public final void zzc(int i, long j) {
        long j2;
        if (this.zze.zze()) {
            this.zza.zzf(i);
            this.zzj = j;
            return;
        }
        zzeq zzeqVar = this.zzd;
        long j3 = this.zzf;
        if (j3 == -9223372036854775807L) {
            j2 = 0;
        } else {
            j2 = j3 + 1;
        }
        zzeqVar.zzd(j2, Long.valueOf(j));
    }

    public final void zzd(int i, int i2) {
        long j;
        long j2 = this.zzf;
        if (j2 == -9223372036854775807L) {
            j = 0;
        } else {
            j = j2 + 1;
        }
        this.zzc.zzd(j, new zzcd(i, i2, 1.0f));
    }

    public final void zze(long j, long j2) throws zzik {
        long zzd;
        Executor executor;
        Queue queue;
        while (true) {
            zzdz zzdzVar = this.zze;
            if (!zzdzVar.zze()) {
                zzeq zzeqVar = this.zzd;
                long zza = zzdzVar.zza();
                Long l = (Long) zzeqVar.zzc(zza);
                if (l != null && l.longValue() != this.zzj) {
                    this.zzj = l.longValue();
                    this.zza.zzf(2);
                }
                zzabl zzablVar = this.zza;
                long j3 = this.zzj;
                zzabj zzabjVar = this.zzb;
                int zza2 = zzablVar.zza(zza, j, j2, j3, false, false, zzabjVar);
                if (zza2 != 0 && zza2 != 1) {
                    if (zza2 != 2 && zza2 != 3) {
                        if (zza2 == 4) {
                            this.zzg = zza;
                        } else {
                            return;
                        }
                    } else {
                        this.zzg = zza;
                        zzdzVar.zzb();
                        final zzaaj zzaajVar = this.zzk;
                        zzaal zzaalVar = zzaajVar.zza;
                        executor = zzaalVar.zzi;
                        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaah
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzace zzaceVar;
                                zzaceVar = zzaaj.this.zza.zzh;
                                zzaceVar.zzc();
                            }
                        });
                        queue = zzaalVar.zzc;
                        ((zzacf) queue.remove()).zzb();
                    }
                } else {
                    this.zzg = zza;
                    long zzb = zzdzVar.zzb();
                    zzcd zzcdVar = (zzcd) this.zzc.zzc(zzb);
                    if (zzcdVar != null && !zzcdVar.equals(zzcd.zza) && !zzcdVar.equals(this.zzi)) {
                        this.zzi = zzcdVar;
                        this.zzk.zza(zzcdVar);
                    }
                    if (zza2 == 0) {
                        zzd = System.nanoTime();
                    } else {
                        zzd = zzabjVar.zzd();
                    }
                    this.zzk.zzb(zzd, zzb, zzablVar.zzn());
                }
            } else {
                return;
            }
        }
    }

    public final void zzf() {
        long j = this.zzf;
        if (j == -9223372036854775807L) {
            j = Long.MIN_VALUE;
            this.zzf = Long.MIN_VALUE;
            this.zzg = Long.MIN_VALUE;
        }
        this.zzh = j;
    }

    public final boolean zzg() {
        long j = this.zzh;
        if (j != -9223372036854775807L && this.zzg == j) {
            return true;
        }
        return false;
    }
}
