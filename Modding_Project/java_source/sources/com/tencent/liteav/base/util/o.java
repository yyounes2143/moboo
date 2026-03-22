package com.tencent.liteav.base.util;

import java.util.concurrent.CountDownLatch;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f10257a;
    private final CountDownLatch b;

    private o(Runnable runnable, CountDownLatch countDownLatch) {
        this.f10257a = runnable;
        this.b = countDownLatch;
    }

    public static Runnable a(Runnable runnable, CountDownLatch countDownLatch) {
        return new o(runnable, countDownLatch);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = this.f10257a;
        CountDownLatch countDownLatch = this.b;
        runnable.run();
        countDownLatch.countDown();
    }
}
