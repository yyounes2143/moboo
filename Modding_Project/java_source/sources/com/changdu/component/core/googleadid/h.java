package com.changdu.component.core.googleadid;

import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class h implements Callable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Callable f5306a;

    public h(Callable callable) {
        this.f5306a = callable;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        try {
            return this.f5306a.call();
        } catch (Throwable unused) {
            return null;
        }
    }
}
