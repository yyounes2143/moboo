package com.android.billingclient.api;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class zzas implements ThreadFactory {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ThreadFactory f2458Wwwwwwwwwwwwwwwwwwwwwwwww = Executors.defaultThreadFactory();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicInteger f2457Wwwwwwwwwwwwwwwwwwwwwwww = new AtomicInteger(1);

    public zzas(BillingClientImpl billingClientImpl) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        AtomicInteger atomicInteger = this.f2457Wwwwwwwwwwwwwwwwwwwwwwww;
        Thread newThread = this.f2458Wwwwwwwwwwwwwwwwwwwwwwwww.newThread(runnable);
        int andIncrement = atomicInteger.getAndIncrement();
        newThread.setName("PlayBillingLibrary-" + andIncrement);
        return newThread;
    }
}
