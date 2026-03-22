package com.cd_core4.cd_webview;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import androidx.core.app.ActivityCompat;
import androidx.core.content.FileProvider;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.cd_core4.cd_webview.CDWebView;
import com.cd_core4.cd_webview.CdWebViewPlugin;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.platform.PlatformView;
import j$.util.Objects;
import java.io.File;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0003\n\u0002\b\u0005*\u0002NQ\u0018\u0000 T2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001TB;\b\u0017\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0013J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001b\u0010\u0013J\u000f\u0010\u001c\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001c\u0010\u0013J\u001f\u0010!\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J)\u0010(\u001a\u00020'2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00072\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\u00112\u0006\u0010*\u001a\u00020'H\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010.\u001a\u00020\u00112\u0006\u0010-\u001a\u00020\u001fH\u0002¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0011H\u0002¢\u0006\u0004\b0\u0010\u0013J\u000f\u00101\u001a\u00020\u0011H\u0002¢\u0006\u0004\b1\u0010\u0013R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010?\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010>R\u0018\u0010A\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010@R\u0016\u0010D\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010F\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010>R$\u0010K\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020I0H\u0018\u00010G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010JR\u0014\u0010M\u001a\u00020\n8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0014\u0010LR\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010OR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010R¨\u0006U"}, d2 = {"Lcom/cd_core4/cd_webview/CDWebView;", "Lio/flutter/plugin/platform/PlatformView;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;", "Landroid/content/Context;", "context", "", "id", "", "", "", "args", "Lio/flutter/plugin/common/BinaryMessenger;", "messenger", "<init>", "(Landroid/content/Context;ILjava/util/Map;Lio/flutter/plugin/common/BinaryMessenger;)V", "", "Wwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwww", "Landroid/view/View;", "getView", "()Landroid/view/View;", "flutterView", "onFlutterViewAttached", "(Landroid/view/View;)V", "onFlutterViewDetached", "dispose", "Lio/flutter/plugin/common/MethodCall;", "p0", "Lio/flutter/plugin/common/MethodChannel$Result;", "p1", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "", "onActivityResult", "(IILandroid/content/Intent;)Z", "visible", "Wwwwwwwwwwwwwwwwwwwww", "(Z)V", "result", "Wwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodChannel$Result;)V", "Wwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwww", "Lcom/changdu/component/webviewcache/CDWebView;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/changdu/component/webviewcache/CDWebView;", "webView", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "methodChannel", "Lcom/cd_core4/cd_webview/CDWebViewJsBridge;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/cd_core4/cd_webview/CDWebViewJsBridge;", "cdWebViewJsBridge", "Z", "mHasShowedSslError", "Landroid/content/Context;", "mContext", "Wwwwwwwwwwwwwwwwwwww", "I", "mId", "Wwwwwwwwwwwwwwwwwww", "mErrorLoad", "Landroid/webkit/ValueCallback;", "", "Landroid/net/Uri;", "Landroid/webkit/ValueCallback;", "mFilePathCallback", "Ljava/lang/String;", "TAG", "com/cd_core4/cd_webview/CDWebView$mWebViewClient$1", "Lcom/cd_core4/cd_webview/CDWebView$mWebViewClient$1;", "mWebViewClient", "com/cd_core4/cd_webview/CDWebView$mWebChromeClient$1", "Lcom/cd_core4/cd_webview/CDWebView$mWebChromeClient$1;", "mWebChromeClient", "Companion", "cd_webview_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCDWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDWebView.kt\ncom/cd_core4/cd_webview/CDWebView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,358:1\n1#2:359\n*E\n"})
/* loaded from: classes3.dex */
public final class CDWebView implements PlatformView, MethodChannel.MethodCallHandler, DefaultLifecycleObserver, PluginRegistry.ActivityResultListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final CDWebView$mWebChromeClient$1 f5272Wwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CDWebView$mWebViewClient$1 f5273Wwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5274Wwwwwwwwwwwwwwwww = "CDWebview";
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ValueCallback<Uri[]> f5275Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5276Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5277Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f5278Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5279Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CDWebViewJsBridge f5280Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f5281Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.changdu.component.webviewcache.CDWebView f5282Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/cd_core4/cd_webview/CDWebView$Companion;", "", "<init>", "()V", "channelId", "", "JAVASCRIPT_BRIDGE_NAME", "RESPONSE_JS_FUNC_NAME", "REQUEST_CODE_GALLERY", "", "cd_webview_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.cd_core4.cd_webview.CDWebView$mWebChromeClient$1, android.webkit.WebChromeClient] */
    @RequiresApi(19)
    @SuppressLint({"AddJavascriptInterface"})
    public CDWebView(@Nullable Context context, int i, @Nullable Map<String, ? extends Object> map, @Nullable BinaryMessenger binaryMessenger) {
        Object obj;
        com.changdu.component.webviewcache.CDWebView cDWebView;
        Object obj2;
        com.changdu.component.webviewcache.CDWebView cDWebView2;
        Object obj3;
        com.changdu.component.webviewcache.CDWebView cDWebView3;
        Object obj4;
        com.changdu.component.webviewcache.CDWebView cDWebView4;
        CDWebView$mWebViewClient$1 cDWebView$mWebViewClient$1 = new CDWebView$mWebViewClient$1(this);
        this.f5273Wwwwwwwwwwwwwwww = cDWebView$mWebViewClient$1;
        ?? r1 = new WebChromeClient() { // from class: com.cd_core4.cd_webview.CDWebView$mWebChromeClient$1
            @Override // android.webkit.WebChromeClient
            public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
                int i2;
                CDWebView.this.f5275Wwwwwwwwwwwwwwwwww = valueCallback;
                CdWebViewPlugin.Companion companion = CdWebViewPlugin.Companion;
                i2 = CDWebView.this.f5277Wwwwwwwwwwwwwwwwwwww;
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2, CDWebView.this);
                CDWebView.this.Wwwwwwwwwwwwwwww();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i2) {
            }

            @Override // android.webkit.WebChromeClient
            public void onReceivedTitle(WebView webView, String str) {
            }
        };
        this.f5272Wwwwwwwwwwwwwww = r1;
        this.f5277Wwwwwwwwwwwwwwwwwwww = i;
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "com.cd_core4.cd_webView/webView_" + i);
        this.f5281Wwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.f5278Wwwwwwwwwwwwwwwwwwwww = context;
        this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww = new com.changdu.component.webviewcache.CDWebView(context);
        if (map != null && (obj4 = map.get("cache")) != null && (cDWebView4 = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
            cDWebView4.setEnableCustomCache(((Boolean) obj4).booleanValue());
        }
        if (map != null && (obj3 = map.get("cacheBlackList")) != null && (cDWebView3 = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
            cDWebView3.setCacheBlackList((ArrayList) obj3);
        }
        if (map != null && (obj2 = map.get("cacheSize")) != null && (cDWebView2 = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
            cDWebView2.setCacheSize(Long.parseLong(obj2.toString()));
        }
        com.changdu.component.webviewcache.CDWebView cDWebView5 = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (cDWebView5 != null) {
            cDWebView5.setWebViewClient(cDWebView$mWebViewClient$1);
        }
        com.changdu.component.webviewcache.CDWebView cDWebView6 = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (cDWebView6 != 0) {
            cDWebView6.setWebChromeClient(r1);
        }
        if (map != null && (obj = map.get("url")) != null && (cDWebView = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
            String obj5 = obj.toString();
            cDWebView.loadUrl(obj5);
            JSHookAop.loadUrl(cDWebView, obj5);
        }
        MethodChannel methodChannel2 = this.f5281Wwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel2 != null) {
            this.f5280Wwwwwwwwwwwwwwwwwwwwwww = new CDWebViewJsBridge(methodChannel2, this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww, null, 4, null);
        }
        com.changdu.component.webviewcache.CDWebView cDWebView7 = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (cDWebView7 != null) {
            cDWebView7.setCdJsBridgeListener(this.f5280Wwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    private final void Wwwwwwwwwwwwwwwww() {
        try {
            Wwwwwwwwwwwwwwwwwwwww(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private final void Wwwwwwwwwwwwwwwwww() {
        try {
            Wwwwwwwwwwwwwwwwwwwww(false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwww(MethodChannel.Result result, String str) {
        result.success(str);
    }

    public static final void Wwwwwwwwwwwwwwwwwwww(MethodChannel.Result result, String str) {
        result.success(str);
    }

    public final void Wwwwwwwwwwwwwww() {
        com.changdu.component.webviewcache.CDWebView cDWebView = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (cDWebView != null && cDWebView.canGoBack()) {
            this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww.goBack();
        }
    }

    public final void Wwwwwwwwwwwwwwww() {
        try {
            Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CdWebViewPlugin.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Intent intent = new Intent("android.intent.action.PICK");
                intent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
                ActivityCompat.startActivityForResult(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, intent, 12, null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(boolean z) {
        com.changdu.component.webviewcache.CDWebView cDWebView = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (cDWebView != null) {
            cDWebView.notifyVisible(z);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        com.changdu.component.webviewcache.CDWebView cDWebView = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (cDWebView != null && cDWebView.canGoBack()) {
            result.success(Boolean.TRUE);
        } else {
            result.success(Boolean.FALSE);
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
        try {
            CdWebViewPlugin.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5277Wwwwwwwwwwwwwwwwwwww);
            com.changdu.component.webviewcache.CDWebView cDWebView = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (cDWebView != null) {
                cDWebView.setCdJsBridgeListener(null);
            }
            CDWebViewJsBridge cDWebViewJsBridge = this.f5280Wwwwwwwwwwwwwwwwwwwwwww;
            if (cDWebViewJsBridge != null) {
                cDWebViewJsBridge.Wwwwwwwwwwwwwwwwwwwwwwwww();
            }
            com.changdu.component.webviewcache.CDWebView cDWebView2 = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (cDWebView2 != null) {
                cDWebView2.removeJavascriptInterface("cdbridge");
            }
            com.changdu.component.webviewcache.CDWebView cDWebView3 = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (cDWebView3 != null) {
                cDWebView3.release();
            }
            com.changdu.component.webviewcache.CDWebView cDWebView4 = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (cDWebView4 != null) {
                cDWebView4.destroy();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    @Nullable
    public View getView() {
        return this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, @Nullable Intent intent) {
        Uri fromFile;
        CdWebViewPlugin.Companion companion = CdWebViewPlugin.Companion;
        Activity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || i != 12) {
            return false;
        }
        if (intent != null && intent.getData() != null) {
            try {
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 29) {
                    ValueCallback<Uri[]> valueCallback = this.f5275Wwwwwwwwwwwwwwwwww;
                    if (valueCallback != null) {
                        valueCallback.onReceiveValue(new Uri[]{intent.getData()});
                        Unit unit = Unit.INSTANCE;
                    }
                } else {
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PhotoUriUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, intent.getData());
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        if (i3 >= 24) {
                            fromFile = FileProvider.getUriForFile(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getPackageName() + ".fileProvider", new File(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
                        } else {
                            fromFile = Uri.fromFile(new File(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
                        }
                        ValueCallback<Uri[]> valueCallback2 = this.f5275Wwwwwwwwwwwwwwwwww;
                        if (valueCallback2 != null) {
                            valueCallback2.onReceiveValue(new Uri[]{fromFile});
                        }
                    }
                    Unit unit2 = Unit.INSTANCE;
                }
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5277Wwwwwwwwwwwwwwwwwwww);
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    Unit unit3 = Unit.INSTANCE;
                } finally {
                    CdWebViewPlugin.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5277Wwwwwwwwwwwwwwwwwwww);
                }
            }
        } else {
            ValueCallback<Uri[]> valueCallback3 = this.f5275Wwwwwwwwwwwwwwwwww;
            if (valueCallback3 != null) {
                valueCallback3.onReceiveValue(new Uri[0]);
            }
        }
        return true;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, lifecycleOwner);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onFlutterViewAttached(@NotNull View view) {
        io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, view);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void onFlutterViewDetached() {
        io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onInputConnectionLocked() {
        io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onInputConnectionUnlocked() {
        io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NotNull MethodCall methodCall, @NotNull final MethodChannel.Result result) {
        try {
            if (Intrinsics.areEqual(methodCall.method, "runJavaScript")) {
                JSONObject jSONObject = new JSONObject((String) methodCall.arguments);
                String str = "javascript:" + jSONObject.get("methodName") + '(' + jSONObject.get("arguments") + ')';
                com.changdu.component.webviewcache.CDWebView cDWebView = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (cDWebView != null) {
                    cDWebView.evaluateJavascript(str, new ValueCallback() { // from class: Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // android.webkit.ValueCallback
                        public final void onReceiveValue(Object obj) {
                            CDWebView.Wwwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, (String) obj);
                        }
                    });
                }
            } else if (Intrinsics.areEqual(methodCall.method, "reload")) {
                com.changdu.component.webviewcache.CDWebView cDWebView2 = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (cDWebView2 != null) {
                    cDWebView2.reload();
                }
            } else if (Intrinsics.areEqual(methodCall.method, "loadUrl")) {
                com.changdu.component.webviewcache.CDWebView cDWebView3 = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (cDWebView3 != null) {
                    String str2 = (String) methodCall.arguments;
                    cDWebView3.loadUrl(str2);
                    JSHookAop.loadUrl(cDWebView3, str2);
                }
            } else if (Intrinsics.areEqual(methodCall.method, "onPause")) {
                Wwwwwwwwwwwwwwwwww();
            } else if (Intrinsics.areEqual(methodCall.method, "onResume")) {
                Wwwwwwwwwwwwwwwww();
            } else if (Intrinsics.areEqual(methodCall.method, "notifyVisible")) {
                Objects.toString(methodCall.arguments);
                Wwwwwwwwwwwwwwwwwwwww(((Boolean) methodCall.arguments).booleanValue());
            } else if (Intrinsics.areEqual(methodCall.method, "canPop")) {
                Wwwwwwwwwwwwwwwwwwwwww(result);
            } else if (Intrinsics.areEqual(methodCall.method, "pop")) {
                Wwwwwwwwwwwwwww();
            } else if (Intrinsics.areEqual(methodCall.method, "invokeJavaScriptStr")) {
                try {
                    String str3 = (String) methodCall.arguments;
                    com.changdu.component.webviewcache.CDWebView cDWebView4 = this.f5282Wwwwwwwwwwwwwwwwwwwwwwwww;
                    if (cDWebView4 != null) {
                        cDWebView4.evaluateJavascript(str3, new ValueCallback() { // from class: Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // android.webkit.ValueCallback
                            public final void onReceiveValue(Object obj) {
                                CDWebView.Wwwwwwwwwwwwwwwwwww(MethodChannel.Result.this, (String) obj);
                            }
                        });
                    }
                } catch (Throwable unused) {
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, lifecycleOwner);
    }
}
