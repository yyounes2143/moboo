package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzesh implements zzetv {
    private final zzetv zza;
    private final long zzb;
    private final ScheduledExecutorService zzc;

    public zzesh(zzetv zzetvVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzetvVar;
        this.zzb = j;
        this.zzc = scheduledExecutorService;
    }

    public static /* synthetic */ ListenableFuture zzc(zzesh zzeshVar, Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcz)).booleanValue()) {
            zzetv zzetvVar = zzeshVar.zza;
            zzbzn zzp = com.google.android.gms.ads.internal.zzv.zzp();
            int zza = zzetvVar.zza();
            zzp.zzw(th, "OptionalSignalTimeout:" + zza);
        }
        return zzgcy.zzh(null);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        ListenableFuture zzb = this.zza.zzb();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcA)).booleanValue()) {
            timeUnit = TimeUnit.MICROSECONDS;
        }
        long j = this.zzb;
        if (j > 0) {
            zzb = zzgcy.zzo(zzb, j, timeUnit, this.zzc);
        }
        return zzgcy.zzf(zzb, Throwable.class, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzesg
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzesh.zzc(zzesh.this, (Throwable) obj);
            }
        }, zzcaa.zzg);
    }
}
