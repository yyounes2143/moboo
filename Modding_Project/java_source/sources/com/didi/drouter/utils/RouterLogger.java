package com.didi.drouter.utils;

import android.util.Log;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RouterLogger {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5840Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5841Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ILogPrinter f5839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new InnerLogPrinter();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final RouterLogger f5838Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new RouterLogger("DRouterCore");

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface ILogPrinter {
        void d(String str, String str2);

        void e(String str, String str2);

        void w(String str, String str2);
    }

    public RouterLogger(String str) {
        this.f5841Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if ((SystemUtil.f5842Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww || f5840Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && f5839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return true;
        }
        return false;
    }

    public static RouterLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f5838Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Object... objArr) {
        if (objArr == null) {
            return str;
        }
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj instanceof Throwable) {
                objArr[i] = Log.getStackTraceString((Throwable) obj);
            }
        }
        return String.format(str, objArr);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Object... objArr) {
        if (str != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            f5839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.w(this.f5841Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, objArr));
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Object... objArr) {
        if (str != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            f5839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.e(this.f5841Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, objArr));
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, boolean z, Object... objArr) {
        if (str != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            if (z) {
                f5839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.w(this.f5841Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, objArr));
            } else {
                f5839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.d(this.f5841Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, objArr));
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Object... objArr) {
        if (str != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            f5839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.d(this.f5841Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, objArr));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class InnerLogPrinter implements ILogPrinter {
        public InnerLogPrinter() {
        }

        @Override // com.didi.drouter.utils.RouterLogger.ILogPrinter
        public void d(String str, String str2) {
        }

        @Override // com.didi.drouter.utils.RouterLogger.ILogPrinter
        public void e(String str, String str2) {
        }

        @Override // com.didi.drouter.utils.RouterLogger.ILogPrinter
        public void w(String str, String str2) {
        }
    }
}
