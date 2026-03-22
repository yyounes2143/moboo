package com.changdu.component.core.googleadid;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class k implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public final String f5308a = "GoogleAdId";

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
        newThread.setPriority(9);
        newThread.setName("CDComponent-" + newThread.getName() + "-Thread-" + this.f5308a);
        newThread.setDaemon(true);
        newThread.setUncaughtExceptionHandler(new j());
        return newThread;
    }
}
