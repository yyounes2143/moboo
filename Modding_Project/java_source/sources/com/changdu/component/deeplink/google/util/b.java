package com.changdu.component.deeplink.google.util;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    public static final int f5328a = Runtime.getRuntime().availableProcessors();

    static {
        new AtomicInteger(1);
    }

    public static ThreadPoolExecutor a(String str, int i, int i2, long j, TimeUnit timeUnit, boolean z, BlockingQueue blockingQueue, RejectedExecutionHandler rejectedExecutionHandler) {
        ThreadPoolExecutor.DiscardPolicy discardPolicy;
        a aVar = new a(str);
        if (rejectedExecutionHandler == null) {
            discardPolicy = new ThreadPoolExecutor.DiscardPolicy();
        } else {
            discardPolicy = rejectedExecutionHandler;
        }
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i2, j, timeUnit, blockingQueue, aVar, discardPolicy);
        threadPoolExecutor.allowCoreThreadTimeOut(z);
        return threadPoolExecutor;
    }
}
