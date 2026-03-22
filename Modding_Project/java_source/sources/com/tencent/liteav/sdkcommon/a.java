package com.tencent.liteav.sdkcommon;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final DashboardManager f10274a;
    private final boolean b;

    private a(DashboardManager dashboardManager, boolean z) {
        this.f10274a = dashboardManager;
        this.b = z;
    }

    public static Runnable a(DashboardManager dashboardManager, boolean z) {
        return new a(dashboardManager, z);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10274a.showDashboardInternal(this.b);
    }
}
