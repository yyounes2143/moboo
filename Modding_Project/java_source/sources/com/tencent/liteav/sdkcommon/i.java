package com.tencent.liteav.sdkcommon;

import android.widget.ScrollView;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final g f10284a;

    private i(g gVar) {
        this.f10284a = gVar;
    }

    public static Runnable a(g gVar) {
        return new i(gVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScrollView scrollView = this.f10284a.k;
        if (scrollView != null) {
            scrollView.fullScroll(130);
        }
    }
}
