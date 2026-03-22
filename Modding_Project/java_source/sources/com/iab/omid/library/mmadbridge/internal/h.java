package com.iab.omid.library.mmadbridge.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class h {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static h f8308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new h();

    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ String f8310Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ WebView f8311Wwwwwwwwwwwwwwwwwwwwwwwww;

        public a(WebView webView, String str) {
            this.f8311Wwwwwwwwwwwwwwwwwwwwwwwww = webView;
            this.f8310Wwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.Wwwwwwwwwwwwwwwwwww(this.f8311Wwwwwwwwwwwwwwwwwwwwwwwww, this.f8310Wwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public static final h Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f8308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwww(WebView webView, String str, String str2) {
        if (str != null && !TextUtils.isEmpty(str2)) {
            Wwwwwwwwwwwwwwwwwww(webView, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};Object.defineProperty(this.omidVerificationProperties, 'injectionId', {get: function() {var currentScript = document && document.currentScript;return currentScript && currentScript.getAttribute('data-injection-id');}, configurable: true});var script = document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");script.setAttribute(\"data-injection-id\",\"%INJECTION_ID%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", str).replace("%INJECTION_ID%", str2));
        }
    }

    public boolean Wwwwwwwwwwwwwwwwwww(WebView webView, String str) {
        if (webView != null && !TextUtils.isEmpty(str)) {
            try {
                webView.evaluateJavascript(str, null);
                return true;
            } catch (IllegalStateException unused) {
                String str2 = "javascript: " + str;
                webView.loadUrl(str2);
                JSHookAop.loadUrl(webView, str2);
                return true;
            }
        }
        return false;
    }

    public void Wwwwwwwwwwwwwwwwwwww(WebView webView, String str, String str2) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "setState", str2, str);
    }

    public void Wwwwwwwwwwwwwwwwwwwww(WebView webView, String str, @Nullable JSONObject jSONObject) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "publishLoadedEvent", jSONObject, str);
    }

    public void Wwwwwwwwwwwwwwwwwwwwww(WebView webView, String str, String str2) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "setNativeViewHierarchy", str2, str);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww(WebView webView, String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "publishImpressionEvent", str);
    }

    @VisibleForTesting
    public void Wwwwwwwwwwwwwwwwwwwwwwww(StringBuilder sb, Object[] objArr) {
        String obj;
        if (objArr != null && objArr.length > 0) {
            for (Object obj2 : objArr) {
                if (obj2 == null) {
                    obj = AbstractJsonLexerKt.NULL;
                } else {
                    if (obj2 instanceof String) {
                        obj = obj2.toString();
                        if (!obj.startsWith("{")) {
                            sb.append('\"');
                            sb.append(obj);
                            sb.append('\"');
                        }
                    } else {
                        sb.append(obj2);
                    }
                    sb.append(",");
                }
                sb.append(obj);
                sb.append(",");
            }
            sb.setLength(sb.length() - 1);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww(WebView webView, @NonNull JSONObject jSONObject) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "setLastActivity", jSONObject);
    }

    @VisibleForTesting
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(WebView webView, StringBuilder sb) {
        String sb2 = sb.toString();
        Handler handler = webView.getHandler();
        if (handler != null && Looper.myLooper() != handler.getLooper()) {
            handler.post(new a(webView, sb2));
        } else {
            Wwwwwwwwwwwwwwwwwww(webView, sb2);
        }
    }

    @VisibleForTesting
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(WebView webView, String str, Object... objArr) {
        if (webView != null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append("if(window.omidBridge!==undefined){omidBridge.");
            sb.append(str);
            sb.append("(");
            Wwwwwwwwwwwwwwwwwwwwwwww(sb, objArr);
            sb.append(")}");
            Wwwwwwwwwwwwwwwwwwwwwwwwww(webView, sb);
            return;
        }
        com.iab.omid.library.mmadbridge.utils.d.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("The WebView is null for " + str);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebView webView, String str, JSONObject jSONObject) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "init", jSONObject, str);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebView webView, String str, String str2, @Nullable JSONObject jSONObject) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "publishMediaEvent", str2, jSONObject, str);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebView webView, String str, String str2) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "setDeviceLockState", str2);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebView webView, String str, float f) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "setDeviceVolume", Float.valueOf(f), str);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebView webView, String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "finishSession", str);
    }
}
