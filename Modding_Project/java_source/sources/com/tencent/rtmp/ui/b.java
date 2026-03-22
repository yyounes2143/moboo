package com.tencent.rtmp.ui;

import android.graphics.Color;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXCloudVideoView f10481a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;

    private b(TXCloudVideoView tXCloudVideoView, int i, int i2, int i3, int i4) {
        this.f10481a = tXCloudVideoView;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
    }

    public static Runnable a(TXCloudVideoView tXCloudVideoView, int i, int i2, int i3, int i4) {
        return new b(tXCloudVideoView, i, i2, i3, i4);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10481a.setBackgroundColor(Color.argb(this.b, this.c, this.d, this.e));
    }
}
