package com.tencent.liteav.base.util;

import java.util.concurrent.CountDownLatch;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f10246a;
    private final CountDownLatch b;

    private b(Runnable runnable, CountDownLatch countDownLatch) {
        this.f10246a = runnable;
        this.b = countDownLatch;
    }

    public static Runnable a(Runnable runnable, CountDownLatch countDownLatch) {
        return new b(runnable, countDownLatch);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CustomHandler.lambda$runAndWaitDone$0(this.f10246a, this.b);
    }
}
