package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzevy implements zzetv {
    final ScheduledExecutorService zza;

    public zzevy(zzbtp zzbtpVar, ScheduledExecutorService scheduledExecutorService, Context context) {
        this.zza = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 49;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return zzgcy.zzm(zzgcy.zzo(zzgcy.zzh(new Bundle()), ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeu)).longValue(), TimeUnit.MILLISECONDS, this.zza), new zzfur() { // from class: com.google.android.gms.internal.ads.zzevx
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                return new zzevz((Bundle) obj);
            }
        }, zzcaa.zza);
    }
}
