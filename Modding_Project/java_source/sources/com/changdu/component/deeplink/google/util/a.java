package com.changdu.component.deeplink.google.util;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class a implements ThreadFactory {
    public static final AtomicInteger f = new AtomicInteger(1);

    /* renamed from: a  reason: collision with root package name */
    public final AtomicInteger f5327a;
    public final ThreadGroup b;
    public final String c;
    public final boolean d;
    public final int e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(java.lang.String r2) {
        /*
            r1 = this;
            java.lang.SecurityManager r0 = java.lang.System.getSecurityManager()
            if (r0 == 0) goto Lc
            java.lang.ThreadGroup r0 = r0.getThreadGroup()
            if (r0 != 0) goto L14
        Lc:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.ThreadGroup r0 = r0.getThreadGroup()
        L14:
            r1.<init>(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.deeplink.google.util.a.<init>(java.lang.String):void");
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        ThreadGroup threadGroup = this.b;
        Thread thread = new Thread(threadGroup, runnable, this.c + this.f5327a.getAndIncrement());
        try {
            boolean isDaemon = thread.isDaemon();
            boolean z = this.d;
            if (isDaemon != z) {
                thread.setDaemon(z);
            }
            int priority = thread.getPriority();
            int i = this.e;
            if (priority != i) {
                thread.setPriority(i);
            }
        } catch (Exception unused) {
        }
        return thread;
    }

    public a(String str, ThreadGroup threadGroup) {
        this.f5327a = new AtomicInteger(1);
        this.c = str + '-' + f.getAndIncrement() + "-thread-";
        this.d = false;
        this.e = 5;
        this.b = threadGroup;
    }
}
