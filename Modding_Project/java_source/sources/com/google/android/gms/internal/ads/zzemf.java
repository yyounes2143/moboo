package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzemf implements zzetv {
    private final ListenableFuture zza;
    private final Executor zzb;
    private final ScheduledExecutorService zzc;

    public zzemf(ListenableFuture listenableFuture, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.zza = listenableFuture;
        this.zzb = executor;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 6;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzemd
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzgcy.zzh(new zzemg((String) obj));
            }
        };
        ListenableFuture listenableFuture = this.zza;
        Executor executor = this.zzb;
        ListenableFuture zzn = zzgcy.zzn(listenableFuture, zzgcfVar, executor);
        zzbcm zzbcmVar = zzbcv.zzmK;
        if (((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).intValue() > 0) {
            zzn = zzgcy.zzo(zzn, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).intValue(), TimeUnit.MILLISECONDS, this.zzc);
        }
        return zzgcy.zzf(zzn, Throwable.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzeme
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                if (((Throwable) obj) instanceof TimeoutException) {
                    return zzgcy.zzh(new zzemg(Integer.toString(17)));
                }
                return zzgcy.zzh(new zzemg(null));
            }
        }, executor);
    }
}
