package com.facebook.ads.redexgen.X;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* loaded from: assets/audience_network.dex */
public class TZ extends WebViewClient {
    public final /* synthetic */ CallableC0992Ta A00;

    public TZ(CallableC0992Ta callableC0992Ta) {
        this.A00 = callableC0992Ta;
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AbstractC1148Ze.A0D(AbstractC0987Sv.A2j);
        return true;
    }
}
