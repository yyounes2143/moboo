package com.applovin.impl.adview;

import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.view.MotionEvent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.a2;
import com.applovin.impl.a7;
import com.applovin.impl.d7;
import com.applovin.impl.h4;
import com.applovin.impl.l4;
import com.applovin.impl.m7;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.w6;
import com.applovin.impl.y1;
import com.applovin.impl.z6;
import com.applovin.sdk.AppLovinAdSize;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class c extends h4 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3065a;
    private final o b;
    private final a c;

    public c(a aVar, com.applovin.impl.sdk.k kVar) {
        this.f3065a = kVar;
        this.b = kVar.O();
        this.c = aVar;
    }

    private void b() {
        this.c.z();
    }

    private void c() {
        this.c.a();
    }

    @Override // com.applovin.impl.h4
    public Map a() {
        HashMap<String, String> hashMap = CollectionUtils.hashMap("name", "AdWebViewClient");
        hashMap.putAll(a2.a((AppLovinAdImpl) this.c.g()));
        return hashMap;
    }

    public a d() {
        return this.c;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
        if (o.a()) {
            o oVar = this.b;
            oVar.d("AdWebView", "Loaded resource: " + str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (o.a()) {
            o oVar = this.b;
            oVar.d("AdWebView", "Loaded URL: " + str);
        }
        this.c.a(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        com.applovin.impl.sdk.ad.b g = this.c.g();
        if (o.a()) {
            o oVar = this.b;
            oVar.b("AdWebView", "Received HTTP error: " + webResourceResponse + "for url: " + webResourceRequest.getUrl() + " and ad: " + g);
        }
        if (z6.a(webResourceRequest.getUrl().toString(), this.f3065a)) {
            this.f3065a.E().a("adWebViewReceivedHttpError", webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode(), webResourceResponse.getReasonPhrase());
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        com.applovin.impl.sdk.ad.b g = this.c.g();
        String str = "Received SSL error: " + sslError;
        if (o.a()) {
            this.b.b("AdWebView", str + " for ad: " + g);
        }
    }

    @Override // com.applovin.impl.h4, android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        boolean didCrash;
        AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.render_process_gone"), null);
        com.applovin.impl.sdk.ad.b g = this.c.g();
        StringBuilder sb = new StringBuilder();
        sb.append("Render process gone for ad: ");
        sb.append(g);
        sb.append(". Process did crash: ");
        didCrash = renderProcessGoneDetail.didCrash();
        sb.append(didCrash);
        o.h("AdWebView", sb.toString());
        boolean onRenderProcessGone = super.onRenderProcessGone(webView, renderProcessGoneDetail);
        if (((Boolean) this.f3065a.a(l4.p5)).booleanValue()) {
            a(webView, renderProcessGoneDetail, g);
        }
        return onRenderProcessGone;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest.getUrl();
        if (url != null) {
            return a(webView, url.toString());
        }
        if (o.a()) {
            this.b.b("AdWebView", "No url found for request");
            return false;
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        com.applovin.impl.sdk.ad.b g = this.c.g();
        String str3 = "Received error with error code: " + i + " with description \\'" + str + "\\' for URL: " + str2;
        if (o.a()) {
            this.b.b("AdWebView", str3 + " for ad: " + g);
        }
        if (z6.a(str2, this.f3065a)) {
            this.f3065a.E().a("adWebViewReceivedError", str2, i, str);
        }
    }

    public boolean a(WebView webView, String str) {
        boolean z;
        if (this.c == null) {
            return true;
        }
        if (o.a()) {
            this.b.d("AdWebView", "Processing click on ad URL \"" + str + "\"");
        }
        if (str != null && (webView instanceof b)) {
            Uri parse = Uri.parse(str);
            b bVar = (b) webView;
            String scheme = parse.getScheme();
            String host = parse.getHost();
            String path = parse.getPath();
            com.applovin.impl.sdk.ad.b g = this.c.g();
            if (g == null) {
                if (o.a()) {
                    this.b.b("AdWebView", "Unable to process click, ad not found!");
                }
                return true;
            }
            boolean a2 = bVar.a();
            if ("applovin".equals(scheme) && AppLovinMediationAdapter.APPLOVIN_SDK_ERROR_DOMAIN.equals(host)) {
                if ("/vibrate".equals(path)) {
                    long parseLong = StringUtils.parseLong(parse.getQueryParameter("duration_ms"), 0L);
                    if (parseLong > 0) {
                        z6.a(StringUtils.parseFloat(parse.getQueryParameter("intensity"), 0.5f), parseLong, this.f3065a.O());
                    }
                } else if ("/adservice/close_ad".equals(path)) {
                    b();
                } else if ("/adservice/expand_ad".equals(path)) {
                    if (a(a2, g, parse)) {
                        if (o.a()) {
                            this.b.b("AdWebView", "Skipping expand command without user interaction");
                        }
                        return true;
                    }
                    a(bVar.getLastClickEvent());
                } else if ("/adservice/contract_ad".equals(path)) {
                    c();
                } else if ("/adservice/no_op".equals(path)) {
                    return true;
                } else {
                    if ("/adservice/load_url".equals(path)) {
                        if (a(a2, g, parse)) {
                            if (o.a()) {
                                this.b.b("AdWebView", "Skipping URL load command without user interaction");
                            }
                            return true;
                        }
                        w6.a(parse, this.c, this.f3065a);
                    } else if ("/adservice/track_click_now".equals(path)) {
                        if (a(a2, g, parse)) {
                            if (o.a()) {
                                this.b.b("AdWebView", "Skipping click tracking command without user interaction");
                            }
                            return true;
                        } else if (g instanceof a7) {
                            a((a7) g, bVar);
                        } else {
                            a(bVar, Uri.parse("/adservice/track_click_now"));
                        }
                    } else if ("/adservice/deeplink".equals(path)) {
                        if (a(a2, g, parse)) {
                            if (o.a()) {
                                this.b.b("AdWebView", "Skipping deep link plus command without user interaction");
                            }
                            return true;
                        }
                        if (g instanceof a7) {
                            a7 a7Var = (a7) g;
                            if (a7Var.E1()) {
                                a(a7Var, bVar);
                            }
                        }
                        a(bVar, parse);
                    } else if ("/adservice/postback".equals(path)) {
                        w6.a(parse, g, this.f3065a);
                    } else if ("/ga_init".equals(path)) {
                        this.c.b(parse);
                    } else if ("/ga_event".equals(path)) {
                        this.c.a(parse);
                    } else if ("/playable_event".equals(path)) {
                        a(parse);
                    } else if ("/adservice/direct_download".equals(path)) {
                        Bundle a3 = w6.a(parse);
                        if (g instanceof a7) {
                            a7 a7Var2 = (a7) g;
                            if (a7Var2.E1()) {
                                a(a7Var2, bVar, a3);
                            }
                        }
                        a(bVar, g.m(), a3);
                    } else if ("/save_template_state".equals(path)) {
                        g.b(parse.getQueryParameter("state"));
                    } else if ("/template_error".equals(path)) {
                        w6.c(parse, g, this.f3065a);
                    } else if ("/adservice/fully_watched".equals(path)) {
                        this.c.A();
                    } else if ("/adservice/preload".equals(path)) {
                        w6.b(parse, g, this.f3065a);
                    } else {
                        if (o.a()) {
                            this.b.k("AdWebView", "Unknown URL: " + str);
                        }
                        if (o.a()) {
                            this.b.k("AdWebView", "Path: " + path);
                        }
                    }
                }
            } else {
                Iterator it = g.f0().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    String str2 = (String) it.next();
                    if (StringUtils.isValidString(path) && path.contains(str2)) {
                        z = false;
                        break;
                    }
                }
                if (!a2) {
                    boolean g1 = g.g1();
                    boolean z2 = g1 ? false : z;
                    a(parse, g1, g, this.f3065a);
                    z = z2;
                }
                if (z) {
                    List A0 = g.A0();
                    List z0 = g.z0();
                    if ((!A0.isEmpty() && !A0.contains(scheme)) || (!z0.isEmpty() && !z0.contains(host))) {
                        if (o.a()) {
                            this.b.b("AdWebView", "URL is not whitelisted - bypassing click");
                        }
                    } else {
                        if (g instanceof a7) {
                            a7 a7Var3 = (a7) g;
                            if (a7Var3.E1()) {
                                a(a7Var3, bVar);
                            }
                        }
                        a(bVar, parse);
                    }
                }
            }
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return a(webView, str);
    }

    private void a(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail, com.applovin.impl.sdk.ad.b bVar) {
        boolean didCrash;
        didCrash = renderProcessGoneDetail.didCrash();
        if (didCrash && ((Boolean) this.f3065a.a(l4.v5)).booleanValue()) {
            String valueOf = bVar != null ? String.valueOf(bVar.getAdIdNumber()) : AbstractJsonLexerKt.NULL;
            throw new RuntimeException("Render process crashed. This is likely caused by a crash in an AppLovin ad with ID: " + valueOf);
        } else if (webView == null || !webView.equals(this.c.f())) {
        } else {
            this.c.b();
            AppLovinAdSize k = this.c.k();
            if (z6.a(k)) {
                this.c.a(k);
                this.c.F();
            }
        }
    }

    private boolean a(boolean z, com.applovin.impl.sdk.ad.b bVar, Uri uri) {
        if (z) {
            return false;
        }
        boolean h1 = bVar.h1();
        a(uri, h1, bVar, this.f3065a);
        return h1;
    }

    private static void a(Uri uri, boolean z, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.k kVar) {
        if (kVar.c(l4.m6).contains(uri.getScheme())) {
            return;
        }
        kVar.E().d(y1.n0, a(bVar, uri, z));
    }

    private static Map a(com.applovin.impl.sdk.ad.b bVar, Uri uri, boolean z) {
        Map a2 = a2.a((AppLovinAdImpl) bVar);
        CollectionUtils.putStringIfValid("url", uri.toString(), a2);
        CollectionUtils.putStringIfValid("is_blocked_auto_redirect", String.valueOf(z), a2);
        return a2;
    }

    private void a(MotionEvent motionEvent) {
        this.c.a(motionEvent);
    }

    private void a(a7 a7Var, b bVar) {
        a(a7Var, bVar, (Bundle) null);
    }

    private void a(a7 a7Var, b bVar, Bundle bundle) {
        d7 o1 = a7Var.o1();
        if (o1 != null) {
            m7.a(o1.b(), this.c.j());
            a(bVar, o1.c(), bundle);
        }
    }

    private void a(b bVar, Uri uri) {
        a(bVar, uri, (Bundle) null);
    }

    private void a(b bVar, Uri uri, Bundle bundle) {
        com.applovin.impl.sdk.ad.b currentAd = bVar.getCurrentAd();
        AppLovinAdView i = this.c.i();
        if (i != null && currentAd != null) {
            if (currentAd instanceof a7) {
                ((a7) currentAd).getAdEventTracker().v();
            }
            this.c.a(currentAd, i, uri, bVar.getAndClearLastClickEvent(), bundle);
        } else if (o.a()) {
            o oVar = this.b;
            oVar.b("AdWebView", "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = " + uri);
        }
    }

    private void a(Uri uri) {
        String str;
        boolean booleanQueryParameter = uri.getBooleanQueryParameter(FirebaseAnalytics.Param.SUCCESS, false);
        String queryParameter = uri.getQueryParameter("type");
        if (booleanQueryParameter) {
            str = "Tracked event: " + queryParameter;
        } else {
            str = "Failed to track event: " + queryParameter;
        }
        z6.a(str, com.applovin.impl.sdk.k.o());
    }
}
