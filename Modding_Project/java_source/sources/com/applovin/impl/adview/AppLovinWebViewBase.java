package com.applovin.impl.adview;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.impl.k0;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinWebViewBase extends WebView {
    public AppLovinWebViewBase(Context context) {
        super(context);
    }

    public void applySettings(com.applovin.impl.sdk.ad.b bVar) {
        Boolean m;
        loadUrl(AndroidWebViewClient.BLANK_PAGE);
        JSHookAop.loadUrl(this, AndroidWebViewClient.BLANK_PAGE);
        int x0 = bVar.x0();
        if (x0 >= 0) {
            setLayerType(x0, null);
        }
        getSettings().setMediaPlaybackRequiresUserGesture(bVar.L());
        if (bVar.R0()) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        m y0 = bVar.y0();
        if (y0 != null) {
            WebSettings settings = getSettings();
            WebSettings.PluginState b = y0.b();
            if (b != null) {
                settings.setPluginState(b);
            }
            Boolean e = y0.e();
            if (e != null) {
                settings.setAllowFileAccess(e.booleanValue());
            }
            Boolean i = y0.i();
            if (i != null) {
                settings.setLoadWithOverviewMode(i.booleanValue());
            }
            Boolean q = y0.q();
            if (q != null) {
                settings.setUseWideViewPort(q.booleanValue());
            }
            Boolean d = y0.d();
            if (d != null) {
                settings.setAllowContentAccess(d.booleanValue());
            }
            Boolean p = y0.p();
            if (p != null) {
                settings.setBuiltInZoomControls(p.booleanValue());
            }
            Boolean h = y0.h();
            if (h != null) {
                settings.setDisplayZoomControls(h.booleanValue());
            }
            Boolean l = y0.l();
            if (l != null) {
                settings.setSaveFormData(l.booleanValue());
            }
            Boolean c = y0.c();
            if (c != null) {
                settings.setGeolocationEnabled(c.booleanValue());
            }
            Boolean j = y0.j();
            if (j != null) {
                settings.setNeedInitialFocus(j.booleanValue());
            }
            Boolean f = y0.f();
            if (f != null) {
                settings.setAllowFileAccessFromFileURLs(f.booleanValue());
            }
            Boolean g = y0.g();
            if (g != null) {
                settings.setAllowUniversalAccessFromFileURLs(g.booleanValue());
            }
            Boolean o = y0.o();
            if (o != null) {
                settings.setLoadsImagesAutomatically(o.booleanValue());
            }
            Boolean n = y0.n();
            if (n != null) {
                settings.setBlockNetworkImage(n.booleanValue());
            }
            if (k0.d()) {
                Integer a2 = y0.a();
                if (a2 != null) {
                    settings.setMixedContentMode(a2.intValue());
                }
                if (k0.e()) {
                    Boolean k = y0.k();
                    if (k != null) {
                        settings.setOffscreenPreRaster(k.booleanValue());
                    }
                    if (k0.j() && (m = y0.m()) != null) {
                        settings.setAlgorithmicDarkeningAllowed(m.booleanValue());
                    }
                }
            }
        }
    }
}
