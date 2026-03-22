package com.applovin.impl.adview;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import com.applovin.impl.sdk.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3066a;
    private final WebViewRenderProcessClient b = new a();

    public d(com.applovin.impl.sdk.k kVar) {
        this.f3066a = kVar;
    }

    public WebViewRenderProcessClient a() {
        return this.b;
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends WebViewRenderProcessClient {
        public a() {
        }

        public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            if (webView instanceof b) {
                com.applovin.impl.sdk.ad.b currentAd = ((b) webView).getCurrentAd();
                d.this.f3066a.O();
                if (o.a()) {
                    o O = d.this.f3066a.O();
                    O.b("AdWebViewRenderProcessClient", "WebView render process unresponsive for ad: " + currentAd);
                }
            }
        }

        public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        }
    }
}
