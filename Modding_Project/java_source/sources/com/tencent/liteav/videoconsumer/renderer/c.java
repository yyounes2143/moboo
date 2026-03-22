package com.tencent.liteav.videoconsumer.renderer;

import android.view.Surface;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final b f10428a;
    private final Surface b;

    private c(b bVar, Surface surface) {
        this.f10428a = bVar;
        this.b = surface;
    }

    public static Runnable a(b bVar, Surface surface) {
        return new c(bVar, surface);
    }

    @Override // java.lang.Runnable
    public final void run() {
        b.a(this.f10428a, this.b);
    }
}
