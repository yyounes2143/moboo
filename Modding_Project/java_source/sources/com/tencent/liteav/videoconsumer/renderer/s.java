package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.base.util.LiteavLog;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final k f10446a;

    private s(k kVar) {
        this.f10446a = kVar;
    }

    public static Runnable a(k kVar) {
        return new s(kVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        LiteavLog.i(this.f10446a.f10438a, "first frame rendered");
    }
}
