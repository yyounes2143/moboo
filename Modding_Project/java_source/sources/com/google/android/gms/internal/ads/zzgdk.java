package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface zzgdk extends ScheduledExecutorService, zzgdj {
    zzgdi zzc(Callable callable, long j, TimeUnit timeUnit);
}
