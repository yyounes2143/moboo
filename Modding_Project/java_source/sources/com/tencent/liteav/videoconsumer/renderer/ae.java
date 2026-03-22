package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.videobase.videobase.DisplayTarget;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class ae implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final v f10424a;
    private final DisplayTarget b;
    private final boolean c;

    private ae(v vVar, DisplayTarget displayTarget, boolean z) {
        this.f10424a = vVar;
        this.b = displayTarget;
        this.c = z;
    }

    public static Runnable a(v vVar, DisplayTarget displayTarget, boolean z) {
        return new ae(vVar, displayTarget, z);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10424a.b(this.b, this.c);
    }
}
