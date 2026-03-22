package com.mbridge.msdk.mbsignalcommon.webEnvCheck;

import android.content.Context;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.setting.util.b;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class WebEnvCheckEntry {
    public void check(Context context) {
        WindVaneWebView windVaneWebView = new WindVaneWebView(context);
        String str = "<html><script>" + b.c().d() + "</script></html>";
        windVaneWebView.loadDataWithBaseURL(null, str, "text/html", "utf-8", null);
        JSHookAop.loadDataWithBaseURL(windVaneWebView, null, str, "text/html", "utf-8", null);
    }
}
