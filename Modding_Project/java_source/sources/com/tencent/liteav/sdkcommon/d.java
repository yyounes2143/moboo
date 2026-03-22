package com.tencent.liteav.sdkcommon;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final DashboardManager f10277a;

    private d(DashboardManager dashboardManager) {
        this.f10277a = dashboardManager;
    }

    public static Runnable a(DashboardManager dashboardManager) {
        return new d(dashboardManager);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10277a.removeAllDashboardInternal();
    }
}
