package com.iab.omid.library.vungle.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.vungle.adsession.AdSessionContext;
import com.iab.omid.library.vungle.adsession.VerificationScriptResource;
import com.iab.omid.library.vungle.internal.g;
import com.iab.omid.library.vungle.internal.h;
import com.iab.omid.library.vungle.utils.c;
import com.iab.omid.library.vungle.utils.f;
import j$.util.Objects;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8635Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, VerificationScriptResource> f8636Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Long f8637Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public WebView f8638Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* loaded from: classes5.dex */
    public class a extends WebViewClient {
        public a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            renderProcessGoneDetail.toString();
            Objects.toString(webView);
            if (b.this.Wwwwwwwwwwwwwwww() == webView) {
                b.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            }
            webView.destroy();
            return true;
        }
    }

    /* renamed from: com.iab.omid.library.vungle.publisher.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0079b implements Runnable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final WebView f8641Wwwwwwwwwwwwwwwwwwwwwwwww;

        public RunnableC0079b() {
            this.f8641Wwwwwwwwwwwwwwwwwwwwwwwww = b.this.f8638Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8641Wwwwwwwwwwwwwwwwwwwwwwwww.destroy();
        }
    }

    public b(String str, Map<String, VerificationScriptResource> map, String str2) {
        super(str);
        this.f8637Wwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f8636Wwwwwwwwwwwwwwwwwwwwwwwwwww = map;
        this.f8635Wwwwwwwwwwwwwwwwwwwwwwwwww = str2;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void Wwwwwwwwwwww() {
        WebView webView = new WebView(g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f8638Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f8638Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSettings().setAllowContentAccess(false);
        this.f8638Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSettings().setAllowFileAccess(false);
        this.f8638Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.setWebViewClient(new a());
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8638Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww(this.f8638Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8635Wwwwwwwwwwwwwwwwwwwwwwwwww);
        for (String str : this.f8636Wwwwwwwwwwwwwwwwwwwwwwwwwww.keySet()) {
            h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwww(this.f8638Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8636Wwwwwwwwwwwwwwwwwwwwwwwwwww.get(str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toExternalForm(), str);
        }
        this.f8637Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Long.valueOf(f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // com.iab.omid.library.vungle.publisher.AdSessionStatePublisher
    public void Wwwwwwwwwwwwww() {
        super.Wwwwwwwwwwwwww();
        Wwwwwwwwwwww();
    }

    @Override // com.iab.omid.library.vungle.publisher.AdSessionStatePublisher
    public void Wwwwwwwwwwwwwwwwwwwwwww() {
        long convert;
        super.Wwwwwwwwwwwwwwwwwwwwwww();
        if (this.f8637Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            convert = 4000;
        } else {
            convert = TimeUnit.MILLISECONDS.convert(f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - this.f8637Wwwwwwwwwwwwwwwwwwwwwwwwwwww.longValue(), TimeUnit.NANOSECONDS);
        }
        new Handler().postDelayed(new RunnableC0079b(), Math.max(4000 - convert, 2000L));
        this.f8638Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // com.iab.omid.library.vungle.publisher.AdSessionStatePublisher
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        for (String str : Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.keySet()) {
            c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, str, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar, adSessionContext, jSONObject);
    }
}
