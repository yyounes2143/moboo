package com.appsflyer.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@JvmName(name = "AFExecutors")
/* loaded from: classes3.dex */
public final class AFc1kSDK {
    @NotNull
    private static final Lazy getMediationNetwork = LazyKt.lazy(new Function0<ExecutorService>() { // from class: com.appsflyer.internal.AFc1kSDK.5
        @Override // kotlin.jvm.functions.Function0
        /* renamed from: AFAdRevenueData */
        public final ExecutorService invoke() {
            return Executors.newSingleThreadExecutor();
        }
    });

    @NotNull
    public static final ExecutorService getCurrencyIso4217Code() {
        AFc1jSDK aFc1jSDK = new AFc1jSDK(1, 4, 30L, TimeUnit.SECONDS, new SynchronousQueue(), null, 32, null);
        aFc1jSDK.allowCoreThreadTimeOut(true);
        return aFc1jSDK;
    }

    @NotNull
    public static final ExecutorService getMediationNetwork() {
        return (ExecutorService) getMediationNetwork.getValue();
    }

    @NotNull
    public static final ScheduledExecutorService getMonetizationNetwork() {
        return Executors.newScheduledThreadPool(1);
    }

    @NotNull
    public static final ScheduledExecutorService getRevenue() {
        return Executors.newSingleThreadScheduledExecutor();
    }
}
