package com.iab.omid.library.mmadbridge.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.iab.omid.library.mmadbridge.adsession.AdSessionContext;
import com.iab.omid.library.mmadbridge.adsession.VerificationScriptResource;
import com.iab.omid.library.mmadbridge.internal.g;
import com.iab.omid.library.mmadbridge.internal.h;
import com.iab.omid.library.mmadbridge.utils.c;
import com.iab.omid.library.mmadbridge.utils.f;
import j$.util.Objects;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8335Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, VerificationScriptResource> f8336Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Long f8337Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public WebView f8338Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* loaded from: classes5.dex */
    public class a extends WebViewClient {
        public a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            renderProcessGoneDetail.toString();
            Objects.toString(webView);
            if (b.this.Wwwwwwwwwwww() == webView) {
                b.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            }
            webView.destroy();
            return true;
        }
    }

    /* renamed from: com.iab.omid.library.mmadbridge.publisher.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0071b implements Runnable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final WebView f8341Wwwwwwwwwwwwwwwwwwwwwwwww;

        public RunnableC0071b() {
            this.f8341Wwwwwwwwwwwwwwwwwwwwwwwww = b.this.f8338Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8341Wwwwwwwwwwwwwwwwwwwwwwwww.destroy();
        }
    }

    public b(String str, Map<String, VerificationScriptResource> map, String str2) {
        super(str);
        this.f8337Wwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f8336Wwwwwwwwwwwwwwwwwwwwwwwwww = map;
        this.f8335Wwwwwwwwwwwwwwwwwwwwwwwww = str2;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void Wwwwwwww() {
        WebView webView = new WebView(g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f8338Wwwwwwwwwwwwwwwwwwwwwwwwwwww = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f8338Wwwwwwwwwwwwwwwwwwwwwwwwwwww.getSettings().setAllowContentAccess(false);
        this.f8338Wwwwwwwwwwwwwwwwwwwwwwwwwwww.getSettings().setAllowFileAccess(false);
        this.f8338Wwwwwwwwwwwwwwwwwwwwwwwwwwww.setWebViewClient(new a());
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8338Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwww(this.f8338Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8335Wwwwwwwwwwwwwwwwwwwwwwwww);
        for (String str : this.f8336Wwwwwwwwwwwwwwwwwwwwwwwwww.keySet()) {
            h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww(this.f8338Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8336Wwwwwwwwwwwwwwwwwwwwwwwwww.get(str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toExternalForm(), str);
        }
        this.f8337Wwwwwwwwwwwwwwwwwwwwwwwwwww = Long.valueOf(f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher
    public void Wwwwwwwwww() {
        super.Wwwwwwwwww();
        Wwwwwwww();
    }

    @Override // com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher
    public void Wwwwwwwwwwwwwwwwwwww() {
        long convert;
        super.Wwwwwwwwwwwwwwwwwwww();
        if (this.f8337Wwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            convert = 4000;
        } else {
            convert = TimeUnit.MILLISECONDS.convert(f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - this.f8337Wwwwwwwwwwwwwwwwwwwwwwwwwww.longValue(), TimeUnit.NANOSECONDS);
        }
        new Handler().postDelayed(new RunnableC0071b(), Math.max(4000 - convert, 2000L));
        this.f8338Wwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        for (String str : Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.keySet()) {
            c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, str, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar, adSessionContext, jSONObject);
    }
}
