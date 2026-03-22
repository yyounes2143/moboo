package com.tencent.liteav.sdkcommon;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final DashboardManager f10276a;
    private final String b;

    private c(DashboardManager dashboardManager, String str) {
        this.f10276a = dashboardManager;
        this.b = str;
    }

    public static Runnable a(DashboardManager dashboardManager, String str) {
        return new c(dashboardManager, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10276a.removeDashboardInternal(this.b);
    }
}
