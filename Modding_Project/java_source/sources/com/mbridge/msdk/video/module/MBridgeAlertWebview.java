package com.mbridge.msdk.video.module;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.videocommon.download.d;
import com.mbridge.msdk.videocommon.download.f;
import com.mbridge.msdk.videocommon.setting.b;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class MBridgeAlertWebview extends MBridgeH5EndCardView {
    private String P;

    public MBridgeAlertWebview(Context context) {
        super(context);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView
    public RelativeLayout.LayoutParams getContentLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        return layoutParams;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView
    public String getURL() {
        if (!TextUtils.isEmpty(this.unitId)) {
            String c = b.b().a(c.m().b(), this.unitId, false).c();
            this.P = c;
            if (!TextUtils.isEmpty(c)) {
                return d.a().a(this.P);
            }
            return "";
        }
        return "";
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView, com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        String url = getURL();
        if (this.e && this.b != null && !TextUtils.isEmpty(url)) {
            com.mbridge.msdk.foundation.same.webview.a aVar = new com.mbridge.msdk.foundation.same.webview.a(this.b);
            aVar.a(this.b.getAppName());
            this.p.setDownloadListener(aVar);
            this.p.setCampaignId(this.b.getId());
            setCloseVisible(8);
            this.p.setApiManagerJSFactory(bVar);
            this.p.setWebViewListener(new a());
            setHtmlSource(f.a().a(url));
            this.t = false;
            if (TextUtils.isEmpty(this.s)) {
                o0.a(MBridgeBaseView.TAG, "load url:" + url);
                WindVaneWebView windVaneWebView = this.p;
                windVaneWebView.loadUrl(url);
                JSHookAop.loadUrl(windVaneWebView, url);
            } else {
                o0.a(MBridgeBaseView.TAG, "load html...");
                WindVaneWebView windVaneWebView2 = this.p;
                String str = this.s;
                windVaneWebView2.loadDataWithBaseURL(url, str, "text/html", "UTF-8", null);
                JSHookAop.loadDataWithBaseURL(windVaneWebView2, url, str, "text/html", "UTF-8", null);
            }
            this.p.setBackgroundColor(0);
            setBackgroundColor(0);
            return;
        }
        this.notifyListener.a(101, "");
    }

    @Override // com.mbridge.msdk.video.module.MBridgeH5EndCardView, com.mbridge.msdk.video.module.MBridgeH5EndCardViewDiff
    public void webviewshow() {
        RelativeLayout relativeLayout = this.n;
        if (relativeLayout != null) {
            relativeLayout.setBackgroundColor(0);
        }
        super.webviewshow();
        j.a(this.f9822a, this.b, this.P, this.unitId, 2, 1);
    }

    public MBridgeAlertWebview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a extends com.mbridge.msdk.mbsignalcommon.listener.b {
        public a() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            o0.b("MBridgeAlertWebview", "finish+" + str);
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i, String str, String str2) {
            super.a(webView, i, str, str2);
            o0.b("MBridgeAlertWebview", "onReceivedError");
            if (MBridgeAlertWebview.this.u) {
                return;
            }
            o0.a(MBridgeBaseView.TAG, "onReceivedError,url:" + str2);
            MBridgeAlertWebview mBridgeAlertWebview = MBridgeAlertWebview.this;
            j.a(mBridgeAlertWebview.f9822a, mBridgeAlertWebview.b, mBridgeAlertWebview.P, MBridgeAlertWebview.this.unitId, 2, str, 1);
            MBridgeAlertWebview.this.u = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i) {
            String str;
            super.a(webView, i);
            o0.b("MBridgeAlertWebview", "readyState  :  " + i);
            MBridgeAlertWebview mBridgeAlertWebview = MBridgeAlertWebview.this;
            if (mBridgeAlertWebview.u) {
                return;
            }
            boolean z = i == 1;
            mBridgeAlertWebview.t = z;
            if (z) {
                str = "readyState state is " + i;
            } else {
                str = "";
            }
            String str2 = str;
            MBridgeAlertWebview mBridgeAlertWebview2 = MBridgeAlertWebview.this;
            j.a(mBridgeAlertWebview2.f9822a, mBridgeAlertWebview2.b, mBridgeAlertWebview2.P, MBridgeAlertWebview.this.unitId, i, str2, 1);
        }
    }
}
