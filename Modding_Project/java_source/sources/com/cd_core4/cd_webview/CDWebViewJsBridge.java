package com.cd_core4.cd_webview;

import android.os.Handler;
import android.os.Looper;
import com.appsflyer.AppsFlyerProperties;
import com.cd_core4.cd_webview.CDWebViewJsBridge;
import com.changdu.component.webviewcache.CDJsInterfaceParamsData;
import com.changdu.component.webviewcache.CDWebViewJsBridgeListener;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00100\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJG\u0010\"\u001a\"\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0010\u0018\u00010 j\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0010\u0018\u0001`!2\u0006\u0010\u001d\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\"\u0010#J\u001f\u0010%\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\rH\u0016¢\u0006\u0004\b%\u0010\u001cJ\r\u0010&\u001a\u00020\n¢\u0006\u0004\b&\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006-"}, d2 = {"Lcom/cd_core4/cd_webview/CDWebViewJsBridge;", "Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;", "Lio/flutter/plugin/common/MethodChannel;", AppsFlyerProperties.CHANNEL, "Lcom/changdu/component/webviewcache/CDWebView;", "webview", "Landroid/os/Handler;", "handler", "<init>", "(Lio/flutter/plugin/common/MethodChannel;Lcom/changdu/component/webviewcache/CDWebView;Landroid/os/Handler;)V", "", "closePage", "()V", "", "eventName", "", "", "eventParams", "firebaseDataReport", "(Ljava/lang/String;Ljava/util/Map;)V", "", "visible", "nativeTitleBarVisible", "(Z)Z", "Lorg/json/JSONObject;", "jsRequestParamJson", "ndActionStr", "ndAction", "(Lorg/json/JSONObject;Ljava/lang/String;)V", "methodName", "Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;", "jsInterfaceParamsData", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "onReceiveJsBridgeRequest", "(Ljava/lang/String;Lorg/json/JSONObject;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;)Ljava/util/HashMap;", "url", "openWebView", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/changdu/component/webviewcache/CDWebView;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "cd_webview_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDWebViewJsBridge extends CDWebViewJsBridgeListener {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Handler f5286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final com.changdu.component.webviewcache.CDWebView f5287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MethodChannel f5288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ CDWebViewJsBridge(MethodChannel methodChannel, com.changdu.component.webviewcache.CDWebView cDWebView, Handler handler, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(methodChannel, cDWebView, (i & 4) != 0 ? new Handler(Looper.getMainLooper()) : handler);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(CDWebViewJsBridge cDWebViewJsBridge, String str) {
        cDWebViewJsBridge.f5288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.invokeMethod("openWebView", str, null);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(CDWebViewJsBridge cDWebViewJsBridge, String str) {
        cDWebViewJsBridge.f5288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.invokeMethod("ndAction", str, null);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(CDWebViewJsBridge cDWebViewJsBridge, boolean z) {
        cDWebViewJsBridge.f5288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.invokeMethod("nativeTitleBarVisible", Boolean.valueOf(z), null);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(CDWebViewJsBridge cDWebViewJsBridge) {
        cDWebViewJsBridge.f5288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.invokeMethod("closePage", null, null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f5286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // com.changdu.component.webviewcache.CDWebViewJsBridgeListener
    public void closePage() {
        try {
            Handler handler = this.f5286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (handler != null) {
                handler.post(new Runnable() { // from class: Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        CDWebViewJsBridge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(CDWebViewJsBridge.this);
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.changdu.component.webviewcache.CDWebViewJsBridgeListener
    public boolean nativeTitleBarVisible(final boolean z) {
        try {
            Handler handler = this.f5286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (handler != null) {
                handler.post(new Runnable() { // from class: Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        CDWebViewJsBridge.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(CDWebViewJsBridge.this, z);
                    }
                });
                return true;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    @Override // com.changdu.component.webviewcache.CDWebViewJsBridgeListener
    public void ndAction(@NotNull JSONObject jSONObject, @NotNull final String str) {
        try {
            Handler handler = this.f5286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (handler != null) {
                handler.post(new Runnable() { // from class: Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        CDWebViewJsBridge.Wwwwwwwwwwwwwwwwwwwwwwwwwww(CDWebViewJsBridge.this, str);
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.changdu.component.webviewcache.CDWebViewJsBridgeListener
    @Nullable
    public HashMap<String, Object> onReceiveJsBridgeRequest(@NotNull String str, @NotNull JSONObject jSONObject, @NotNull final CDJsInterfaceParamsData cDJsInterfaceParamsData) {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("methodName", str);
            linkedHashMap.put("jsRequestParamJson", jSONObject.toString());
            this.f5288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.invokeMethod("onReceiveJsBridgeRequest", linkedHashMap, new MethodChannel.Result() { // from class: com.cd_core4.cd_webview.CDWebViewJsBridge$onReceiveJsBridgeRequest$1
                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void success(Object obj) {
                    HashMap hashMap;
                    com.changdu.component.webviewcache.CDWebView cDWebView;
                    if (obj instanceof HashMap) {
                        hashMap = (HashMap) obj;
                    } else {
                        hashMap = null;
                    }
                    if (hashMap != null) {
                        cDWebView = CDWebViewJsBridge.this.f5287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        cDWebView.responseBizJavaScript(hashMap, cDJsInterfaceParamsData);
                    }
                }

                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void notImplemented() {
                }

                @Override // io.flutter.plugin.common.MethodChannel.Result
                public void error(String str2, String str3, Object obj) {
                }
            });
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.changdu.component.webviewcache.CDWebViewJsBridgeListener
    public void openWebView(@NotNull JSONObject jSONObject, @NotNull final String str) {
        try {
            Handler handler = this.f5286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (handler != null) {
                handler.post(new Runnable() { // from class: Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        CDWebViewJsBridge.Wwwwwwwwwwwwwwwwwwwwwwwwww(CDWebViewJsBridge.this, str);
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public CDWebViewJsBridge(@NotNull MethodChannel methodChannel, @NotNull com.changdu.component.webviewcache.CDWebView cDWebView, @Nullable Handler handler) {
        this.f5288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        this.f5287Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cDWebView;
        this.f5286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = handler;
    }

    @Override // com.changdu.component.webviewcache.CDWebViewJsBridgeListener
    public void firebaseDataReport(@NotNull String str, @NotNull Map<String, ? extends Object> map) {
    }
}
