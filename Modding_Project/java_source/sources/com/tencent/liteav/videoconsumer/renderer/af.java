package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.videobase.base.GLConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class af implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final v f10425a;
    private final GLConstants.GLScaleType b;

    private af(v vVar, GLConstants.GLScaleType gLScaleType) {
        this.f10425a = vVar;
        this.b = gLScaleType;
    }

    public static Runnable a(v vVar, GLConstants.GLScaleType gLScaleType) {
        return new af(vVar, gLScaleType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        v.a(this.f10425a, this.b);
    }
}
