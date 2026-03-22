package com.mbridge.msdk.click;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.common.net.HttpHeaders;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class o {
    private static final String r = "o";

    /* renamed from: a  reason: collision with root package name */
    private int f8785a;
    private int b;
    private com.mbridge.msdk.setting.g d;
    private f e;
    private String f;
    private String g;
    private WebView h;
    private boolean i;
    private String j;
    private int k;
    private boolean m;
    boolean n;
    boolean o;
    private boolean l = false;
    private final Runnable p = new d();
    private final Runnable q = new e();
    private Handler c = new Handler(Looper.getMainLooper());

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f8786a;
        final /* synthetic */ String b;
        final /* synthetic */ Context c;

        public a(String str, String str2, Context context) {
            this.f8786a = str;
            this.b = str2;
            this.c = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            o oVar = o.this;
            oVar.a(this.f8786a, this.b, this.c, oVar.f);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b extends WebViewClient {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f8787a;
        final /* synthetic */ String b;
        final /* synthetic */ Context c;

        public b(String str, String str2, Context context) {
            this.f8787a = str;
            this.b = str2;
            this.c = context;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            try {
                webView.loadUrl("javascript:window.navigator.vibrate([]);");
                JSHookAop.loadUrl(webView, "javascript:window.navigator.vibrate([]);");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            try {
                webView.loadUrl("javascript:window.navigator.vibrate([]);");
                JSHookAop.loadUrl(webView, "javascript:window.navigator.vibrate([]);");
                if (o.this.m) {
                    o.this.k = 0;
                    o.this.f();
                    return;
                }
                o.this.o = false;
                if (webView.getTag() == null) {
                    webView.setTag("has_first_started");
                } else {
                    o.this.n = true;
                }
                synchronized (o.r) {
                    o.this.f = str;
                    if (o.this.e == null || !o.this.e.a(str)) {
                        o.this.h();
                    } else {
                        o.this.m = true;
                        o.this.f();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            synchronized (o.r) {
                o.this.m = true;
                o.this.b();
                o.this.f();
            }
            if (o.this.e != null) {
                o.this.e.a(i, webView.getUrl(), str, o.this.j);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            try {
                if (MBridgeConstans.IS_SP_CBT_CF && sslErrorHandler != null) {
                    sslErrorHandler.cancel();
                }
                if (!TextUtils.isEmpty(this.f8787a) && !TextUtils.isEmpty(this.b)) {
                    new com.mbridge.msdk.foundation.same.report.h(this.c).a(this.b, this.f8787a, webView.getUrl());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            try {
                synchronized (o.r) {
                    o.this.m = true;
                    o.this.b();
                    o.this.f();
                }
                if (o.this.e != null) {
                    o.this.e.a(-1, webView.getUrl(), "WebView render process crash.", o.this.j);
                }
                if (webView != null) {
                    webView.destroy();
                }
                return true;
            } catch (Throwable th) {
                o0.b(o.r, th.getMessage());
                return true;
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            synchronized (o.r) {
                try {
                    o oVar = o.this;
                    oVar.o = true;
                    oVar.c();
                    if (o.this.m) {
                        o.this.d();
                        o.this.f();
                        return true;
                    }
                    o.this.f = str;
                    if (o.this.e != null && o.this.e.c(str)) {
                        o.this.m = true;
                        o.this.d();
                        o.this.f();
                        return true;
                    }
                    if (!o.this.i) {
                        WebView webView2 = o.this.h;
                        webView2.loadUrl(str);
                        JSHookAop.loadUrl(webView2, str);
                    } else {
                        HashMap hashMap = new HashMap();
                        if (o.this.h.getUrl() != null) {
                            hashMap.put(HttpHeaders.REFERER, o.this.h.getUrl());
                        }
                        WebView webView3 = o.this.h;
                        webView3.loadUrl(str, hashMap);
                        JSHookAop.loadUrl(webView3, str, hashMap);
                    }
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c extends WebChromeClient {
        public c() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            if (i == 100) {
                try {
                    webView.loadUrl("javascript:window.navigator.vibrate([]);");
                    JSHookAop.loadUrl(webView, "javascript:window.navigator.vibrate([]);");
                    if (!o.this.m) {
                        o oVar = o.this;
                        if (!oVar.o) {
                            oVar.g();
                        }
                    }
                    if (o.this.e != null) {
                        o.this.e.b(webView.getUrl());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.l = true;
            o.this.k = 1;
            o.this.e();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.l = true;
            o.this.k = 2;
            o.this.e();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface f {
        void a(int i, String str, String str2, String str3);

        void a(String str, boolean z, String str2);

        boolean a(String str);

        boolean b(String str);

        boolean c(String str);
    }

    public o() {
        this.f8785a = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
        this.b = 3000;
        com.mbridge.msdk.setting.g d2 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        this.d = d2;
        if (d2 == null) {
            this.d = com.mbridge.msdk.setting.h.b().a();
        }
        this.i = this.d.I0();
        this.f8785a = (int) this.d.o0();
        this.b = (int) this.d.o0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.c.removeCallbacks(this.p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.c.removeCallbacks(this.q);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        synchronized (r) {
            try {
                try {
                    b();
                    this.h.destroy();
                    f fVar = this.e;
                    if (fVar != null) {
                        fVar.a(this.f, this.l, this.j);
                    }
                } catch (Exception e2) {
                    o0.b(r, e2.getMessage());
                } catch (Throwable th) {
                    o0.b(r, th.getMessage());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        synchronized (r) {
            try {
                try {
                    b();
                    f fVar = this.e;
                    if (fVar != null) {
                        fVar.a(this.f, this.l, this.j);
                    }
                } catch (Exception e2) {
                    o0.b(r, e2.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        c();
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        d();
        j();
    }

    private void i() {
        this.c.postDelayed(this.p, this.b);
    }

    private void j() {
        this.c.postDelayed(this.q, this.f8785a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        c();
        d();
    }

    public void a(String str, String str2, Context context, String str3, String str4, f fVar) {
        if (fVar != null) {
            this.g = str4;
            this.f = str3;
            this.e = fVar;
            a(str, str2, context);
            return;
        }
        throw new NullPointerException("OverrideUrlLoadingListener can not be null");
    }

    public void a(String str, String str2, Context context, String str3, f fVar) {
        if (fVar != null) {
            this.f = str3;
            this.e = fVar;
            a(str, str2, context);
            return;
        }
        throw new NullPointerException("OverrideUrlLoadingListener can not be null");
    }

    private void a(String str, String str2, Context context) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            a(str, str2, context, this.f);
        } else {
            this.c.post(new a(str, str2, context));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, Context context, String str3) {
        try {
            a(context, str, str2);
            if (!TextUtils.isEmpty(this.g)) {
                this.h.getSettings().setDefaultTextEncodingName("utf-8");
                this.b = 2000;
                this.f8785a = 2000;
                o0.c(r, this.g);
                WebView webView = this.h;
                String str4 = this.g;
                webView.loadDataWithBaseURL(str3, str4, "*/*", "utf-8", str3);
                JSHookAop.loadDataWithBaseURL(webView, str3, str4, "*/*", "utf-8", str3);
            } else if (this.i) {
                HashMap hashMap = new HashMap();
                if (this.h.getUrl() != null) {
                    hashMap.put(HttpHeaders.REFERER, this.h.getUrl());
                }
                WebView webView2 = this.h;
                webView2.loadUrl(str3, hashMap);
                JSHookAop.loadUrl(webView2, str3, hashMap);
            } else {
                WebView webView3 = this.h;
                webView3.loadUrl(str3);
                JSHookAop.loadUrl(webView3, str3);
            }
        } catch (Throwable th) {
            try {
                f fVar = this.e;
                if (fVar != null) {
                    fVar.a(0, this.f, th.getMessage(), this.j);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void a(Context context, String str, String str2) {
        WebView webView = new WebView(context);
        this.h = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.h.getSettings().setCacheMode(2);
        this.h.getSettings().setLoadsImagesAutomatically(false);
        this.h.setWebViewClient(new b(str2, str, context));
        this.h.setWebChromeClient(new c());
    }
}
