package com.mbridge.msdk.thrid.okhttp.internal;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    protected final String f9554a;

    public b(String str, Object... objArr) {
        this.f9554a = c.a(str, objArr);
    }

    public abstract void b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f9554a);
        try {
            b();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
