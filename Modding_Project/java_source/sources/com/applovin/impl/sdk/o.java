package com.applovin.impl.sdk;

import android.text.TextUtils;
import com.applovin.impl.l4;
import com.applovin.impl.n2;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class o {
    private static boolean b;

    /* renamed from: a  reason: collision with root package name */
    private final k f3726a;

    public o(k kVar) {
        this.f3726a = kVar;
        a("SDK Session Begin");
    }

    public static void c(String str, String str2, Throwable th) {
        if (b) {
            a();
        }
    }

    public static void e(String str, String str2) {
        g(str, str2);
    }

    public static void g(String str, String str2) {
        if (b) {
            a();
        }
    }

    public static void h(String str, String str2) {
        c(str, str2, null);
    }

    public static void i(String str, String str2) {
        if (b) {
            a();
        }
    }

    public static void j(String str, String str2) {
        if (b) {
            a();
        }
    }

    public static void l(String str, String str2) {
        k kVar = k.C0;
        if (kVar != null) {
            kVar.O();
            if (a()) {
                k.C0.O().k(str, str2);
            }
        }
    }

    public void a(String str, String str2) {
    }

    public void b(String str, String str2) {
        a(str, str2, null);
    }

    public void d(String str, String str2) {
    }

    public void f(String str, String str2) {
        int intValue;
        if (a(this.f3726a) && !TextUtils.isEmpty(str2) && (intValue = ((Integer) this.f3726a.a(l4.r)).intValue()) > 0) {
            int length = str2.length();
            int i = ((length + intValue) - 1) / intValue;
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = i2 * intValue;
                a(str, str2.substring(i3, Math.min(length, i3 + intValue)));
            }
        }
    }

    public void k(String str, String str2) {
        d(str, str2, null);
    }

    public static void b(String str, String str2, Throwable th) {
        k kVar = k.C0;
        if (kVar == null) {
            return;
        }
        kVar.O();
        if (a()) {
            k.C0.O().a(str, str2, th);
        }
    }

    public static void c(String str, String str2) {
        b(str, str2, null);
    }

    public void a(String str, String str2, Throwable th) {
    }

    public void d(String str, String str2, Throwable th) {
    }

    public static void a(boolean z) {
        b = z;
    }

    private void a(String str) {
        n2 n2Var = new n2();
        n2Var.a().a(str).a();
        g("AppLovinSdk", n2Var.toString());
    }

    public void a(String str, Throwable th) {
        for (Throwable th2 : th.getSuppressed()) {
            b(str, th2.toString());
        }
    }

    public static boolean a() {
        return a(k.C0);
    }

    public static boolean a(k kVar) {
        return kVar != null && kVar.o0().c();
    }
}
