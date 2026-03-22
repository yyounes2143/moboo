package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgbm;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgdo extends zzgbm.zzf implements Runnable {
    private final Runnable zza;

    public zzgdo(Runnable runnable) {
        runnable.getClass();
        this.zza = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zza.run();
        } catch (Throwable th) {
            zzd(th);
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgbm
    public final String zza() {
        String obj = this.zza.toString();
        return "task=[" + obj + "]";
    }
}
