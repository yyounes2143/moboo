package com.tencent.liteav.sdkcommon;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final DashboardManager f10275a;
    private final String b;

    private b(DashboardManager dashboardManager, String str) {
        this.f10275a = dashboardManager;
        this.b = str;
    }

    public static Runnable a(DashboardManager dashboardManager, String str) {
        return new b(dashboardManager, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10275a.addDashboardInternal(this.b);
    }
}
