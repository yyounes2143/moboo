package com.google.android.gms.internal.ads;

import android.os.Handler;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfne implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Handler handler2;
        Runnable runnable;
        Handler handler3;
        Runnable runnable2;
        handler = zzfnh.zzc;
        if (handler != null) {
            handler2 = zzfnh.zzc;
            runnable = zzfnh.zzd;
            handler2.post(runnable);
            handler3 = zzfnh.zzc;
            runnable2 = zzfnh.zze;
            handler3.postDelayed(runnable2, 200L);
        }
    }
}
