package com.tencent.liteav.audio2;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class g implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final e f10193a;

    private g(e eVar) {
        this.f10193a = eVar;
    }

    public static Executor a(e eVar) {
        return new g(eVar);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f10193a.h.a(runnable);
    }
}
