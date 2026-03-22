package com.google.android.gms.internal.play_billing;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfb {
    public static zzev zza(ExecutorService executorService) {
        if (executorService instanceof zzev) {
            return (zzev) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            return new zzfa((ScheduledExecutorService) executorService);
        }
        return new zzex(executorService);
    }

    public static zzew zzb(ScheduledExecutorService scheduledExecutorService) {
        if (scheduledExecutorService instanceof zzew) {
            return (zzew) scheduledExecutorService;
        }
        return new zzfa(scheduledExecutorService);
    }
}
