package com.tencent.liteav.sdkcommon;

import android.widget.ScrollView;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final g f10287a;

    private l(g gVar) {
        this.f10287a = gVar;
    }

    public static Runnable a(g gVar) {
        return new l(gVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScrollView scrollView = this.f10287a.k;
        if (scrollView != null) {
            scrollView.fullScroll(130);
        }
    }
}
