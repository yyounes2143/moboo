package com.applovin.impl;

import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebView;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import java.lang.ref.WeakReference;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class y7 extends h4 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f3821a;
    private WeakReference b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void a(Uri uri, com.applovin.impl.adview.l lVar);

        void a(com.applovin.impl.adview.l lVar);

        void a(com.applovin.impl.adview.l lVar, Bundle bundle);

        void b(Uri uri, com.applovin.impl.adview.l lVar);

        void b(com.applovin.impl.adview.l lVar);

        void c(com.applovin.impl.adview.l lVar);

        void d(com.applovin.impl.adview.l lVar);
    }

    public y7(com.applovin.impl.sdk.k kVar) {
        this.f3821a = kVar.O();
    }

    public void a(WeakReference weakReference) {
        this.b = weakReference;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        a(webView, str);
        return true;
    }

    @Override // com.applovin.impl.h4
    public Map a() {
        return CollectionUtils.hashMap("name", "WebViewButtonClient");
    }

    private void a(WebView webView, String str) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f3821a;
            oVar.d("WebViewButtonClient", "Processing click on ad URL \"" + str + "\"");
        }
        if (str == null || !(webView instanceof com.applovin.impl.adview.l)) {
            return;
        }
        com.applovin.impl.adview.l lVar = (com.applovin.impl.adview.l) webView;
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        String host = parse.getHost();
        String path = parse.getPath();
        a aVar = (a) this.b.get();
        if ("applovin".equalsIgnoreCase(scheme) && AppLovinMediationAdapter.APPLOVIN_SDK_ERROR_DOMAIN.equalsIgnoreCase(host) && aVar != null) {
            if ("/track_click".equals(path)) {
                aVar.b(lVar);
            } else if ("/close_ad".equals(path)) {
                aVar.a(lVar);
            } else if ("/skip_ad".equals(path)) {
                aVar.d(lVar);
            } else if ("/direct_download".equals(path)) {
                aVar.a(lVar, w6.a(parse));
            } else if ("/load_url".equals(path)) {
                aVar.a(parse, lVar);
            } else if ("/template_error".equals(path)) {
                aVar.b(parse, lVar);
            } else if ("/fully_watched".equals(path)) {
                aVar.c(lVar);
            } else {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar2 = this.f3821a;
                    oVar2.k("WebViewButtonClient", "Unknown URL: " + str);
                }
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar3 = this.f3821a;
                    oVar3.k("WebViewButtonClient", "Path: " + path);
                }
            }
        }
    }
}
