package com.applovin.impl;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class h4 extends WebViewClient {
    public abstract Map a();

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        boolean didCrash;
        String str;
        int rendererPriorityAtExit;
        HashMap<String, String> hashMap = CollectionUtils.hashMap("top_main_method", "onRenderProcessGone");
        hashMap.putAll(a());
        if (k0.g()) {
            didCrash = renderProcessGoneDetail.didCrash();
            if (didCrash) {
                str = AppMeasurement.CRASH_ORIGIN;
            } else {
                str = "non_crash";
            }
            hashMap.put("source", str);
            StringBuilder sb = new StringBuilder();
            sb.append("renderer_priority_at_exit=");
            rendererPriorityAtExit = renderProcessGoneDetail.rendererPriorityAtExit();
            sb.append(rendererPriorityAtExit);
            hashMap.put("details", sb.toString());
        }
        com.applovin.impl.sdk.k kVar = com.applovin.impl.sdk.k.C0;
        if (kVar != null) {
            com.applovin.impl.sdk.k.C0.E().a(y1.D0, hashMap, ((Long) kVar.a(l4.i3)).longValue());
        }
        com.applovin.impl.sdk.o.g("RenderProcessGoneHandlingWebViewClient", "onRenderProcessGone() handled");
        return true;
    }
}
