package com.tencent.liteav.base.util;

import com.tencent.liteav.base.util.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final m.a f10258a;
    private final Runnable b;

    private p(m.a aVar, Runnable runnable) {
        this.f10258a = aVar;
        this.b = runnable;
    }

    public static Runnable a(m.a aVar, Runnable runnable) {
        return new p(aVar, runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        m.a aVar = this.f10258a;
        this.b.run();
        synchronized (m.this) {
            m.this.c.remove(aVar);
        }
    }
}
