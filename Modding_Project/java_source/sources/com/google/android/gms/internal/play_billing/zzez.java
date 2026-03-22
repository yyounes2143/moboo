package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzdy;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzez extends zzdy.zzi implements Runnable {
    private final Runnable zzc;

    public zzez(Runnable runnable) {
        runnable.getClass();
        this.zzc = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzc.run();
        } catch (Throwable th) {
            zzo(th);
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzdy
    public final String zzg() {
        String obj = this.zzc.toString();
        return "task=[" + obj + "]";
    }
}
