package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcrm {
    private final Executor zza;
    private final ScheduledExecutorService zzb;
    private final ListenableFuture zzc;
    private volatile boolean zzd = true;

    public zzcrm(Executor executor, ScheduledExecutorService scheduledExecutorService, ListenableFuture listenableFuture) {
        this.zza = executor;
        this.zzb = scheduledExecutorService;
        this.zzc = listenableFuture;
    }

    public static /* synthetic */ ListenableFuture zza(zzcrm zzcrmVar, zzgcu zzgcuVar, ListenableFuture listenableFuture, zzcqx zzcqxVar) {
        if (zzcqxVar != null) {
            zzgcuVar.zzb(zzcqxVar);
        }
        return zzgcy.zzo(listenableFuture, ((Long) zzbfi.zza.zze()).longValue(), TimeUnit.MILLISECONDS, zzcrmVar.zzb);
    }

    public static /* bridge */ /* synthetic */ void zzc(final zzcrm zzcrmVar, List list, final zzgcu zzgcuVar) {
        if (list != null && !list.isEmpty()) {
            ListenableFuture zzh = zzgcy.zzh(null);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                final ListenableFuture listenableFuture = (ListenableFuture) it.next();
                zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzcri
                    @Override // com.google.android.gms.internal.ads.zzgcf
                    public final ListenableFuture zza(Object obj) {
                        zzgcu.this.zza((Throwable) obj);
                        return zzgcy.zzh(null);
                    }
                };
                Executor executor = zzcrmVar.zza;
                zzh = zzgcy.zzn(zzgcy.zzf(zzh, Throwable.class, zzgcfVar, executor), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzcrj
                    @Override // com.google.android.gms.internal.ads.zzgcf
                    public final ListenableFuture zza(Object obj) {
                        return zzcrm.zza(zzcrm.this, zzgcuVar, listenableFuture, (zzcqx) obj);
                    }
                }, executor);
            }
            zzgcy.zzr(zzh, new zzcrl(zzcrmVar, zzgcuVar), zzcrmVar.zza);
            return;
        }
        zzcrmVar.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcrh
            @Override // java.lang.Runnable
            public final void run() {
                zzgcu.this.zza(new zzdwf(3));
            }
        });
    }

    public final void zze(zzgcu zzgcuVar) {
        zzgcy.zzr(this.zzc, new zzcrk(this, zzgcuVar), this.zza);
    }

    public final boolean zzf() {
        return this.zzd;
    }
}
