package com.tencent.liteav.base.system;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.util.r;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final r<PackageInfo> f10225a = new r<>(b.a());

    public static String a() {
        PackageInfo a2 = f10225a.a();
        if (a2 == null) {
            return "";
        }
        return a2.packageName;
    }

    public static String b() {
        PackageInfo a2;
        Context applicationContext = ContextUtils.getApplicationContext();
        if (applicationContext == null || (a2 = f10225a.a()) == null) {
            return "";
        }
        return applicationContext.getPackageManager().getApplicationLabel(a2.applicationInfo).toString();
    }

    public static String c() {
        PackageInfo a2 = f10225a.a();
        if (a2 == null) {
            return "";
        }
        return a2.versionName;
    }

    public static /* synthetic */ PackageInfo d() throws Exception {
        Context applicationContext = ContextUtils.getApplicationContext();
        if (applicationContext == null) {
            return null;
        }
        return applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0);
    }
}
