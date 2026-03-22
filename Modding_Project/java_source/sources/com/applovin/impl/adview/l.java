package com.applovin.impl.adview;

import android.content.Context;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.impl.f0;
import com.applovin.impl.y7;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaCodecProfileLevel;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class l extends f0 {
    private final String c;

    public l(String str, com.applovin.impl.sdk.ad.b bVar, y7 y7Var, Context context) {
        super(context);
        this.c = str;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        if (bVar.U0()) {
            applySettings(bVar);
        } else {
            settings.setAllowFileAccess(true);
            if (bVar.R0()) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
        }
        setWebViewClient(y7Var);
        setWebChromeClient(new WebChromeClient());
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setScrollBarStyle(TPMediaCodecProfileLevel.HEVCHighTierLevel62);
    }

    public void a(String str) {
        String str2 = this.c;
        loadDataWithBaseURL(str2, str, "text/html", null, "");
        JSHookAop.loadDataWithBaseURL(this, str2, str, "text/html", null, "");
    }
}
