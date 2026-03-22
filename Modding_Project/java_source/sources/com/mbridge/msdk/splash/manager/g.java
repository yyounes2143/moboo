package com.mbridge.msdk.splash.manager;

import android.content.Context;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.splash.view.MBSplashView;
import com.mbridge.msdk.splash.view.MBSplashWebview;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private boolean f9483a;
    private boolean b;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final g f9485a = new g(null);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface c {
        void a();

        void a(int i);

        void onError(String str);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private String f9486a;
        private String b;
        private CampaignEx c;
        private String d;
        private boolean e;
        private int f;

        public void a(String str) {
            this.d = str;
        }

        public void b(String str) {
            this.f9486a = str;
        }

        public String c() {
            return this.d;
        }

        public String d() {
            return this.f9486a;
        }

        public String e() {
            return this.b;
        }

        public boolean f() {
            return this.e;
        }

        public CampaignEx a() {
            return this.c;
        }

        public int b() {
            return this.f;
        }

        public void c(String str) {
            this.b = str;
        }

        public void a(CampaignEx campaignEx) {
            this.c = campaignEx;
        }

        public void a(boolean z) {
            this.e = z;
        }

        public void a(int i) {
            this.f = i;
        }
    }

    public /* synthetic */ g(a aVar) {
        this();
    }

    private g() {
        this.f9483a = false;
        this.b = false;
    }

    public static g a() {
        return b.f9485a;
    }

    public void b() {
        this.f9483a = false;
        this.b = false;
    }

    public void a(MBSplashView mBSplashView, d dVar, c cVar) {
        String requestId;
        if (mBSplashView == null || dVar == null) {
            return;
        }
        String e = dVar.e();
        String d2 = dVar.d();
        CampaignEx a2 = dVar.a();
        String c2 = dVar.c();
        boolean f = dVar.f();
        int b2 = dVar.b();
        MBSplashWebview splashWebview = mBSplashView.getSplashWebview();
        if (splashWebview == null) {
            return;
        }
        com.mbridge.msdk.splash.signal.b bVar = new com.mbridge.msdk.splash.signal.b(mBSplashView.getContext(), d2, e);
        ArrayList arrayList = new ArrayList();
        arrayList.add(a2);
        bVar.a(arrayList);
        bVar.a(f ? 1 : 0);
        bVar.b(b2);
        mBSplashView.setSplashSignalCommunicationImpl(bVar);
        if (TextUtils.isEmpty(a2.getRequestId())) {
            requestId = a2.getRequestIdNotice();
        } else {
            requestId = a2.getRequestId();
        }
        String requestId2 = splashWebview.getRequestId();
        o0.b("WebViewRenderManager", "CampaignEx RequestId = " + requestId + " WebView RequestId = " + requestId2);
        if (!TextUtils.isEmpty(requestId2) && requestId2.equals(requestId) && (this.f9483a || this.b)) {
            mBSplashView.setH5Ready(true);
            if (cVar != null) {
                cVar.a(1);
                return;
            }
            return;
        }
        b();
        splashWebview.setRequestId(requestId);
        com.mbridge.msdk.splash.report.a.b(e, a2);
        long currentTimeMillis = System.currentTimeMillis();
        splashWebview.setWebViewListener(new a(cVar, mBSplashView, a2, e, currentTimeMillis));
        if (!splashWebview.isDestoryed()) {
            splashWebview.loadUrl(c2);
            JSHookAop.loadUrl(splashWebview, c2);
            return;
        }
        mBSplashView.setH5Ready(false);
        com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), a2, e, "webview had destory", currentTimeMillis, 3);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f9484a;
        final /* synthetic */ MBSplashView b;
        final /* synthetic */ CampaignEx c;
        final /* synthetic */ String d;
        final /* synthetic */ long e;

        public a(c cVar, MBSplashView mBSplashView, CampaignEx campaignEx, String str, long j) {
            this.f9484a = cVar;
            this.b = mBSplashView;
            this.c = campaignEx;
            this.d = str;
            this.e = j;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i) {
            super.a(webView, i);
            c cVar = this.f9484a;
            if (cVar != null) {
                cVar.a(i);
            }
            if (i == 1) {
                g.this.f9483a = true;
                this.b.setH5Ready(true);
                com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.c, this.d, "", this.e, 1);
                com.mbridge.msdk.splash.report.a.a(1, "", this.d, this.c);
                return;
            }
            g.this.f9483a = false;
            this.b.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(2, "readyState 2", this.d, this.c);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.c, this.d, "readyState 2", this.e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i, String str, String str2) {
            super.a(webView, i, str, str2);
            c cVar = this.f9484a;
            if (cVar != null) {
                cVar.onError(str);
            }
            g.this.b();
            this.b.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(2, "error code:" + i + str, this.d, this.c);
            Context d = com.mbridge.msdk.foundation.controller.c.m().d();
            CampaignEx campaignEx = this.c;
            String str3 = this.d;
            com.mbridge.msdk.splash.report.a.a(d, campaignEx, str3, "error code:" + i + str, this.e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            c cVar = this.f9484a;
            if (cVar != null) {
                cVar.onError(sslError.toString());
            }
            g.this.b();
            this.b.setH5Ready(false);
            com.mbridge.msdk.splash.report.a.a(2, "error url:" + sslError.getUrl(), this.d, this.c);
            Context d = com.mbridge.msdk.foundation.controller.c.m().d();
            CampaignEx campaignEx = this.c;
            String str = this.d;
            com.mbridge.msdk.splash.report.a.a(d, campaignEx, str, "error url:" + sslError.getUrl(), this.e, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            c cVar = this.f9484a;
            if (cVar != null) {
                cVar.a();
            }
            g.this.b = true;
            if (!this.c.isHasMBTplMark()) {
                this.b.setH5Ready(true);
                com.mbridge.msdk.splash.report.a.a(1, "", this.d, this.c);
                com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.c, this.d, "", this.e, 1);
            }
            com.mbridge.msdk.splash.signal.c.a(webView);
        }
    }
}
