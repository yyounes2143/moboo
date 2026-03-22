package com.tencent.liteav.base.util;

import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class a<T> {
    private final InterfaceC0206a<T> b;

    /* renamed from: a  reason: collision with root package name */
    private final ThreadLocal<T> f10245a = new ThreadLocal<>();
    private WeakReference<T> c = new WeakReference<>(null);

    /* compiled from: Proguard */
    /* renamed from: com.tencent.liteav.base.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public interface InterfaceC0206a<T> {
        T a();
    }

    public a(InterfaceC0206a<T> interfaceC0206a) {
        this.b = interfaceC0206a;
    }

    private T b() {
        T t;
        T t2 = this.c.get();
        if (t2 == null) {
            synchronized (this) {
                try {
                    t = this.c.get();
                    if (t == null) {
                        t = this.b.a();
                        this.c = new WeakReference<>(t);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return t;
        }
        return t2;
    }

    public final T a() {
        T t = this.f10245a.get();
        if (t == null) {
            T b = b();
            this.f10245a.set(b);
            return b;
        }
        return t;
    }
}
