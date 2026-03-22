package com.tencent.liteav.base.util;

import com.tencent.liteav.base.util.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final m.a f10259a;

    private q(m.a aVar) {
        this.f10259a = aVar;
    }

    public static Runnable a(m.a aVar) {
        return new q(aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        m.a aVar = this.f10259a;
        m.this.f10254a.execute(aVar.f10255a);
    }
}
