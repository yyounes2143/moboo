package com.tencent.liteav.txcvodplayer.renderer;

import com.tencent.liteav.videobase.base.GLConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f10356a;
    private final GLConstants.GLScaleType b;

    private i(d dVar, GLConstants.GLScaleType gLScaleType) {
        this.f10356a = dVar;
        this.b = gLScaleType;
    }

    public static Runnable a(d dVar, GLConstants.GLScaleType gLScaleType) {
        return new i(dVar, gLScaleType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f10356a, this.b);
    }
}
