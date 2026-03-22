package com.tencent.liteav.base.system;

import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class f implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final f f10230a = new f();

    private f() {
    }

    public static Callable a() {
        return f10230a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String a2;
        a2 = p.a(LiteavSystemInfo.sAppPackageName.a());
        return a2;
    }
}
