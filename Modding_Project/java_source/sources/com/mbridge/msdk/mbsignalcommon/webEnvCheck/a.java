package com.mbridge.msdk.mbsignalcommon.webEnvCheck;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.base.b;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile Boolean f9298a;
    private static volatile Handler b;
    private static Boolean c;

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.mbsignalcommon.webEnvCheck.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0132a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f9299a;

        public RunnableC0132a(Context context) {
            this.f9299a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.f9298a == null) {
                try {
                    Boolean unused = a.f9298a = Boolean.valueOf(a.a(this.f9299a));
                } catch (Exception unused2) {
                    Boolean unused3 = a.f9298a = Boolean.FALSE;
                }
            }
        }
    }

    public static boolean b(Context context) {
        g gVar;
        try {
            gVar = h.b().b(c.m().b());
        } catch (Exception unused) {
            gVar = null;
        }
        if (gVar != null) {
            c = Boolean.valueOf(gVar.C0());
        } else {
            c = Boolean.FALSE;
        }
        Boolean bool = c;
        if (bool == null || !bool.booleanValue()) {
            return true;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            if (f9298a == null) {
                try {
                    f9298a = Boolean.valueOf(a(context));
                } catch (Exception unused2) {
                    f9298a = Boolean.FALSE;
                }
            }
            if (f9298a == null) {
                f9298a = new Boolean(false);
            }
            return f9298a.booleanValue();
        }
        if (f9298a == null && b == null) {
            b = new Handler(Looper.getMainLooper());
            b.post(new RunnableC0132a(context));
        }
        if (f9298a == null) {
            return true;
        }
        return f9298a.booleanValue();
    }

    public static boolean a(Context context) {
        WebView webView;
        try {
            webView = new WebView(context);
            webView.setWebViewClient(new b());
        } catch (Exception unused) {
            webView = null;
        }
        if (webView != null) {
            a(webView);
            return true;
        }
        return false;
    }

    private static void a(WebView webView) {
        try {
            webView.destroy();
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                o0.b("MBWebViewChecker", "destroy webview error", e);
            }
        }
    }
}
