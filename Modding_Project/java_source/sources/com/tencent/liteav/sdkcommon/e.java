package com.tencent.liteav.sdkcommon;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final DashboardManager f10278a;
    private final String b;
    private final String c;

    private e(DashboardManager dashboardManager, String str, String str2) {
        this.f10278a = dashboardManager;
        this.b = str;
        this.c = str2;
    }

    public static Runnable a(DashboardManager dashboardManager, String str, String str2) {
        return new e(dashboardManager, str, str2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10278a.setStatusInternal(this.b, this.c);
    }
}
