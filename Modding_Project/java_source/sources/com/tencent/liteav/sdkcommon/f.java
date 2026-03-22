package com.tencent.liteav.sdkcommon;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final DashboardManager f10279a;
    private final String b;
    private final String c;

    private f(DashboardManager dashboardManager, String str, String str2) {
        this.f10279a = dashboardManager;
        this.b = str;
        this.c = str2;
    }

    public static Runnable a(DashboardManager dashboardManager, String str, String str2) {
        return new f(dashboardManager, str, str2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10279a.appendLogInternal(this.b, this.c);
    }
}
