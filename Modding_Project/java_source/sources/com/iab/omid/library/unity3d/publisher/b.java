package com.iab.omid.library.unity3d.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.unity3d.adsession.AdSessionContext;
import com.iab.omid.library.unity3d.adsession.VerificationScriptResource;
import com.iab.omid.library.unity3d.internal.f;
import com.iab.omid.library.unity3d.internal.g;
import com.iab.omid.library.unity3d.utils.c;
import j$.util.Objects;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8474Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, VerificationScriptResource> f8475Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Long f8476Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public WebView f8477Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* loaded from: classes5.dex */
    public class a extends WebViewClient {
        public a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            renderProcessGoneDetail.toString();
            Objects.toString(webView);
            if (b.this.Wwwwwwwwwwwwwwwww() == webView) {
                b.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            }
            webView.destroy();
            return true;
        }
    }

    /* renamed from: com.iab.omid.library.unity3d.publisher.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0075b implements Runnable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final WebView f8480Wwwwwwwwwwwwwwwwwwwwwwwww;

        public RunnableC0075b() {
            this.f8480Wwwwwwwwwwwwwwwwwwwwwwwww = b.this.f8477Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8480Wwwwwwwwwwwwwwwwwwwwwwwww.destroy();
        }
    }

    public b(String str, Map<String, VerificationScriptResource> map, String str2) {
        super(str);
        this.f8476Wwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f8475Wwwwwwwwwwwwwwwwwwwwwwwwwww = map;
        this.f8474Wwwwwwwwwwwwwwwwwwwwwwwwww = str2;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void Wwwwwwwwwwwww() {
        WebView webView = new WebView(f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f8477Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f8477Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSettings().setAllowContentAccess(false);
        this.f8477Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSettings().setAllowFileAccess(false);
        this.f8477Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.setWebViewClient(new a());
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8477Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww(this.f8477Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8474Wwwwwwwwwwwwwwwwwwwwwwwwww);
        for (String str : this.f8475Wwwwwwwwwwwwwwwwwwwwwwwwwww.keySet()) {
            g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwww(this.f8477Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8475Wwwwwwwwwwwwwwwwwwwwwwwwwww.get(str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toExternalForm(), str);
        }
        this.f8476Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Long.valueOf(com.iab.omid.library.unity3d.utils.f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // com.iab.omid.library.unity3d.publisher.AdSessionStatePublisher
    public void Wwwwwwwwwwwwwww() {
        super.Wwwwwwwwwwwwwww();
        Wwwwwwwwwwwww();
    }

    @Override // com.iab.omid.library.unity3d.publisher.AdSessionStatePublisher
    public void Wwwwwwwwwwwwwwwwwwwwwww() {
        long convert;
        super.Wwwwwwwwwwwwwwwwwwwwwww();
        if (this.f8476Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            convert = 4000;
        } else {
            convert = TimeUnit.MILLISECONDS.convert(com.iab.omid.library.unity3d.utils.f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - this.f8476Wwwwwwwwwwwwwwwwwwwwwwwwwwww.longValue(), TimeUnit.NANOSECONDS);
        }
        new Handler().postDelayed(new RunnableC0075b(), Math.max(4000 - convert, 2000L));
        this.f8477Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // com.iab.omid.library.unity3d.publisher.AdSessionStatePublisher
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.unity3d.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        for (String str : Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.keySet()) {
            c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar, adSessionContext, jSONObject);
    }
}
