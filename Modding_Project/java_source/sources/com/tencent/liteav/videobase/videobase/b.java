package com.tencent.liteav.videobase.videobase;

import android.view.View;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final View f10409a;

    private b(View view) {
        this.f10409a = view;
    }

    public static Runnable a(View view) {
        return new b(view);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10409a.requestLayout();
    }
}
