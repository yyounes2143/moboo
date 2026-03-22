package com.applovin.impl;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.x7;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class x7 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3813a;
    private final com.applovin.impl.sdk.o b;
    private WebView c;
    private boolean d;
    private final Set e = Collections.synchronizedSet(new HashSet());

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends h4 {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f3814a;

        public a(boolean z) {
            this.f3814a = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            x7.this.c.destroy();
            x7.this.c = null;
        }

        @Override // com.applovin.impl.h4
        public Map a() {
            return CollectionUtils.hashMap("name", "WebTrackerManagerWebViewClient");
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (this.f3814a) {
                com.applovin.impl.sdk.o unused = x7.this.b;
                if (com.applovin.impl.sdk.o.a()) {
                    x7.this.b.a("WebTrackerManager", "Successfully initialized web view for postbacks");
                }
                x7.this.d = true;
            }
        }

        @Override // com.applovin.impl.h4, android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (webView != x7.this.c) {
                x7.this.b(webView);
            } else {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Zzzzzzzz
                    @Override // java.lang.Runnable
                    public final void run() {
                        x7.a.this.b();
                    }
                });
            }
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }
    }

    public x7(com.applovin.impl.sdk.k kVar) {
        this.f3813a = kVar;
        this.b = kVar.O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        final WebView a2 = a(str);
        if (a2 == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.b.b("WebTrackerManager", "Failed to fire tracker since web view could not be created");
                return;
            }
            return;
        }
        this.e.add(a2);
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.Zzzzzzzzzzz
            @Override // java.lang.Runnable
            public final void run() {
                x7.this.b(a2);
            }
        }, ((Integer) this.f3813a.a(l4.E2)).intValue());
    }

    public void b() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Xx
            @Override // java.lang.Runnable
            public final void run() {
                x7.this.a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        WebView a2 = a("<script>window.al_firePostback = function(url) {\n    setTimeout(function() {\n        var img = new Image();\n        img.src = url;\n    }, 100);\n}\n</script>", true);
        this.c = a2;
        if (a2 == null && com.applovin.impl.sdk.o.a()) {
            this.b.b("WebTrackerManager", "Failed to preload postback web view");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(com.applovin.impl.sdk.network.e eVar, AppLovinPostbackListener appLovinPostbackListener) {
        String appendQueryParameters = StringUtils.appendQueryParameters(eVar.f(), eVar.i(), ((Boolean) this.f3813a.a(l4.a3)).booleanValue());
        if (this.c == null) {
            WebView a2 = a("<script>window.al_firePostback = function(url) {\n    setTimeout(function() {\n        var img = new Image();\n        img.src = url;\n    }, 100);\n}\n</script>", true);
            this.c = a2;
            if (a2 == null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.b.b("WebTrackerManager", "Failed to fire postback since web view could not be created");
                }
                appLovinPostbackListener.onPostbackFailure(appendQueryParameters, -1);
                return;
            }
        }
        if (c() && !this.d) {
            if (com.applovin.impl.sdk.o.a()) {
                this.b.b("WebTrackerManager", "Failed to fire postback since web view was not initialized in time");
            }
            HashMap<String, String> hashMap = CollectionUtils.hashMap("top_main_method", "firePostback");
            hashMap.put("url", appendQueryParameters);
            this.f3813a.E().d(y1.D0, hashMap);
            appLovinPostbackListener.onPostbackFailure(appendQueryParameters, -1);
            return;
        }
        a8.a(this.c, "al_firePostback('" + appendQueryParameters + "')");
        appLovinPostbackListener.onPostbackSuccess(appendQueryParameters);
    }

    public void a(final com.applovin.impl.sdk.network.e eVar, final AppLovinPostbackListener appLovinPostbackListener) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Zzzzzzzzz
            @Override // java.lang.Runnable
            public final void run() {
                x7.this.b(eVar, appLovinPostbackListener);
            }
        });
    }

    private WebView a(String str) {
        return a(str, false);
    }

    private boolean c() {
        return ((Boolean) this.f3813a.a(l4.J2)).booleanValue();
    }

    private WebView a(String str, boolean z) {
        z6.b();
        WebView b = z6.b(com.applovin.impl.sdk.k.o(), "web tracker");
        if (b == null) {
            return null;
        }
        boolean z2 = true;
        b.getSettings().setJavaScriptEnabled(true);
        b.setWebViewClient(new a((z && c()) ? false : false));
        String str2 = "<html><head><link rel=\"icon\" href=\"data:,\">" + str + "</head><body></body></html>";
        b.loadData(str2, "text/html", "UTF-8");
        JSHookAop.loadData(b, str2, "text/html", "UTF-8");
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void b(final WebView webView) {
        if (webView == null || !this.e.remove(webView)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Zzzzzzzzzz
            @Override // java.lang.Runnable
            public final void run() {
                webView.destroy();
            }
        });
    }

    public void b(final String str) {
        if (!AppLovinSdkUtils.isValidString(str)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.b.b("WebTrackerManager", "Failed to fire tracker due to empty script string");
            }
        } else if (!str.startsWith("<script")) {
            if (com.applovin.impl.sdk.o.a()) {
                this.b.b("WebTrackerManager", "Failed to fire tracker due to improperly formatted script tag");
            }
        } else {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Xxx
                @Override // java.lang.Runnable
                public final void run() {
                    x7.this.c(str);
                }
            });
        }
    }
}
