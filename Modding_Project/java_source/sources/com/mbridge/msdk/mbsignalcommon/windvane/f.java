package com.mbridge.msdk.mbsignalcommon.windvane;

import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static f f9305a = new f();

    private f() {
    }

    public static f a() {
        return f9305a;
    }

    public void b(Object obj, String str) {
        String format;
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (TextUtils.isEmpty(str)) {
                format = String.format("javascript:window.WindVane.onSuccess(%s,'');", aVar.g);
            } else {
                format = String.format("javascript:window.WindVane.onSuccess(%s,'%s');", aVar.g, i.a(str));
            }
            WindVaneWebView windVaneWebView = aVar.b;
            if (windVaneWebView != null && !windVaneWebView.isDestoryed()) {
                try {
                    WindVaneWebView windVaneWebView2 = aVar.b;
                    windVaneWebView2.loadUrl(format);
                    JSHookAop.loadUrl(windVaneWebView2, format);
                } catch (Exception e) {
                    e.printStackTrace();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public void a(Object obj, String str, String str2) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            String format = TextUtils.isEmpty(str2) ? String.format("javascript:window.WindVane.fireEvent('%s', '');", str) : String.format("javascript:window.WindVane.fireEvent('%s','%s');", str, i.a(str2));
            WindVaneWebView windVaneWebView = aVar.b;
            if (windVaneWebView == null || windVaneWebView.isDestoryed()) {
                return;
            }
            try {
                WindVaneWebView windVaneWebView2 = aVar.b;
                windVaneWebView2.loadUrl(format);
                JSHookAop.loadUrl(windVaneWebView2, format);
            } catch (Exception e) {
                e.printStackTrace();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public void a(WebView webView, String str, String str2) {
        String format = TextUtils.isEmpty(str2) ? String.format("javascript:window.WindVane.fireEvent('%s', '');", str) : String.format("javascript:window.WindVane.fireEvent('%s','%s');", str, i.a(str2));
        if (webView != null) {
            if ((webView instanceof WindVaneWebView) && ((WindVaneWebView) webView).isDestoryed()) {
                return;
            }
            try {
                webView.loadUrl(format);
                JSHookAop.loadUrl(webView, format);
            } catch (Exception e) {
                e.printStackTrace();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public void a(Object obj, String str) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (TextUtils.isEmpty(str)) {
                String.format("javascript:window.WindVane.onFailure(%s,'');", aVar.g);
            } else {
                str = i.a(str);
            }
            String format = String.format("javascript:window.WindVane.onFailure(%s,'%s');", aVar.g, str);
            WindVaneWebView windVaneWebView = aVar.b;
            if (windVaneWebView == null || windVaneWebView.isDestoryed()) {
                return;
            }
            try {
                WindVaneWebView windVaneWebView2 = aVar.b;
                windVaneWebView2.loadUrl(format);
                JSHookAop.loadUrl(windVaneWebView2, format);
            } catch (Exception e) {
                e.printStackTrace();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public void a(WebView webView) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("api_version", "1.0.0");
            a().a(webView, com.mbridge.msdk.mbsignalcommon.base.e.j, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception unused) {
            a().a(webView, com.mbridge.msdk.mbsignalcommon.base.e.j, "");
        } catch (Throwable unused2) {
            a().a(webView, com.mbridge.msdk.mbsignalcommon.base.e.j, "");
        }
    }
}
