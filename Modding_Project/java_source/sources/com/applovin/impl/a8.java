package com.applovin.impl;

import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class a8 {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(WebView webView) {
        ViewParent parent = webView.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(webView);
        }
        webView.removeAllViews();
        webView.loadUrl(AndroidWebViewClient.BLANK_PAGE);
        JSHookAop.loadUrl(webView, AndroidWebViewClient.BLANK_PAGE);
        webView.onPause();
        webView.destroyDrawingCache();
        webView.destroy();
    }

    public static void b(final WebView webView) {
        if (webView == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                a8.a(webView);
            }
        });
    }

    public static String c(String str, Map map) {
        String str2;
        str.getClass();
        if (str.equals("com.applovin.preload_success")) {
            str2 = FirebaseAnalytics.Param.SUCCESS;
        } else if (!str.equals("com.applovin.preload_failure")) {
            return null;
        } else {
            str2 = "failure";
        }
        return a("al_onPreloadEvent", str2, map);
    }

    public static String b(String str, Map map) {
        String str2;
        str.getClass();
        if (str.equals("com.applovin.external_redirect_success")) {
            str2 = FirebaseAnalytics.Param.SUCCESS;
        } else if (!str.equals("com.applovin.external_redirect_failure")) {
            return null;
        } else {
            str2 = "failure";
        }
        return a("al_onExternalRedirectEvent", str2, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(WebView webView, String str) {
        webView.loadUrl(str);
        JSHookAop.loadUrl(webView, str);
    }

    public static String a(String str, Map map) {
        String str2;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -859884819:
                if (str.equals("com.applovin.custom_tabs_failure")) {
                    c = 0;
                    break;
                }
                break;
            case -794532889:
                if (str.equals("com.applovin.custom_tabs_hidden")) {
                    c = 1;
                    break;
                }
                break;
            case -292584652:
                if (str.equals("com.applovin.custom_tabs_shown")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                str2 = "failure";
                break;
            case 1:
                str2 = "hidden";
                break;
            case 2:
                str2 = "shown";
                break;
            default:
                return null;
        }
        return a("al_onInAppBrowserEvent", str2, map);
    }

    private static String a(String str, String str2, Map map) {
        JSONObject jSONObject;
        try {
            jSONObject = CollectionUtils.toJson(map);
        } catch (JSONException unused) {
            jSONObject = new JSONObject();
        }
        return "javascript:" + str + "('" + str2 + "'," + jSONObject + ");";
    }

    public static void a(final WebView webView, final String str, String str2, com.applovin.impl.sdk.k kVar) {
        if (webView == null) {
            return;
        }
        try {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.a(str2, "Forwarding \"" + str + "\" to WebView");
            }
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    a8.c(webView, str);
                }
            });
        } catch (Throwable th) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().a(str2, "Unable to forward to WebView", th);
            }
            kVar.E().a(str2, th, CollectionUtils.hashMap("operation", str));
        }
    }

    public static void a(final WebView webView, final String str) {
        if (webView == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                webView.evaluateJavascript(str, null);
            }
        });
    }
}
