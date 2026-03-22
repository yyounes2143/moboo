package com.tencent.liteav.base.system;

import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class d implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final d f10228a = new d();

    private d() {
    }

    public static Callable a() {
        return f10228a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return a.b();
    }
}
