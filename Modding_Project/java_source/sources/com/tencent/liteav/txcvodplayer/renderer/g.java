package com.tencent.liteav.txcvodplayer.renderer;

import com.tencent.liteav.videobase.videobase.DisplayTarget;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f10354a;
    private final DisplayTarget b;

    private g(d dVar, DisplayTarget displayTarget) {
        this.f10354a = dVar;
        this.b = displayTarget;
    }

    public static Runnable a(d dVar, DisplayTarget displayTarget) {
        return new g(dVar, displayTarget);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f10354a, this.b);
    }
}
