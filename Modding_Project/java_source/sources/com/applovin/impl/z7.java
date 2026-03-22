package com.applovin.impl;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class z7 {

    /* renamed from: a  reason: collision with root package name */
    private static String f3834a;
    private static int d;
    private static String e;
    private static String f;
    private static final Object b = new Object();
    private static final AtomicBoolean c = new AtomicBoolean();
    private static final AtomicBoolean g = new AtomicBoolean();

    static {
        com.applovin.impl.sdk.k kVar = com.applovin.impl.sdk.k.C0;
        if (kVar != null && ((Boolean) kVar.a(l4.T3)).booleanValue() && e()) {
            f3834a = (String) o4.a(n4.I, "", com.applovin.impl.sdk.k.o());
            return;
        }
        f3834a = "";
        o4.b(n4.I, (Object) null, com.applovin.impl.sdk.k.o());
    }

    public static void a(final com.applovin.impl.sdk.k kVar) {
        if (c.getAndSet(true)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sometimesNaive
            @Override // java.lang.Runnable
            public final void run() {
                z7.d(com.applovin.impl.sdk.k.this);
            }
        });
    }

    public static String b() {
        return f;
    }

    public static String c() {
        return e;
    }

    public static int d() {
        return d;
    }

    private static boolean e() {
        boolean isValidString;
        synchronized (b) {
            isValidString = StringUtils.isValidString((String) o4.a(n4.I, "", com.applovin.impl.sdk.k.o()));
        }
        return isValidString;
    }

    public static void b(com.applovin.impl.sdk.k kVar) {
        if (g.getAndSet(true)) {
            return;
        }
        PackageInfo c2 = c(kVar);
        if (c2 == null) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("WebViewDataCollector", "Failed to get WebView package info");
                return;
            }
            return;
        }
        d = c2.versionCode;
        e = c2.versionName;
        f = c2.packageName;
    }

    private static PackageInfo c(com.applovin.impl.sdk.k kVar) {
        PackageInfo currentWebViewPackage;
        PackageManager packageManager = com.applovin.impl.sdk.k.o().getPackageManager();
        if (k0.g()) {
            currentWebViewPackage = WebView.getCurrentWebViewPackage();
            return currentWebViewPackage;
        }
        Iterator it = kVar.c(l4.e4).iterator();
        while (it.hasNext()) {
            try {
                return packageManager.getPackageInfo((String) it.next(), 0);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(com.applovin.impl.sdk.k kVar) {
        try {
            synchronized (b) {
                String defaultUserAgent = WebSettings.getDefaultUserAgent(com.applovin.impl.sdk.k.o());
                if (TextUtils.isEmpty(defaultUserAgent)) {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        kVar.O().b("WebViewDataCollector", "Collected invalid user agent");
                    }
                    kVar.E().a(y1.D0, "collectedInvalidUserAgent");
                    return;
                }
                f3834a = defaultUserAgent;
                o4.b(n4.I, f3834a, com.applovin.impl.sdk.k.o());
            }
        } catch (Throwable th) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().a("WebViewDataCollector", "Failed to collect user agent", th);
            }
            kVar.E().a("WebViewDataCollector", "collectUserAgent", th);
        }
    }

    public static String a() {
        String str;
        synchronized (b) {
            str = f3834a;
        }
        return str;
    }
}
