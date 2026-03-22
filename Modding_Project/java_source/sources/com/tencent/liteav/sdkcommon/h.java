package com.tencent.liteav.sdkcommon;

import android.widget.ScrollView;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final g f10283a;

    private h(g gVar) {
        this.f10283a = gVar;
    }

    public static Runnable a(g gVar) {
        return new h(gVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScrollView scrollView = this.f10283a.k;
        if (scrollView != null) {
            scrollView.fullScroll(130);
        }
    }
}
