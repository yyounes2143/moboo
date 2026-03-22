package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgcv implements Runnable {
    final Future zza;
    final zzgcu zzb;

    public zzgcv(Future future, zzgcu zzgcuVar) {
        this.zza = future;
        this.zzb = zzgcuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable zza;
        Future future = this.zza;
        if ((future instanceof zzgec) && (zza = zzged.zza((zzgec) future)) != null) {
            this.zzb.zza(zza);
            return;
        }
        try {
            this.zzb.zzb(zzgcy.zzp(future));
        } catch (ExecutionException e) {
            this.zzb.zza(e.getCause());
        } catch (Throwable th) {
            this.zzb.zza(th);
        }
    }

    public final String toString() {
        zzfuw zza = zzfuy.zza(this);
        zza.zza(this.zzb);
        return zza.toString();
    }
}
