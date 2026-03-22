package com.vungle.ads.internal.ui;

import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AdRevenueScheme;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.unity3d.services.core.device.reader.JsonStorageKeyNames;
import com.vungle.ads.BuildConfig;
import com.vungle.ads.EvaluateJsError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.omsdk.WebViewObserver;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.ui.view.WebViewAPI;
import com.vungle.ads.internal.util.Logger;
import java.util.concurrent.ExecutorService;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.JsonElementBuildersKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonObjectBuilder;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 |2\u00020\u00012\u00020\u0002:\u0002|}B5\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rJ \u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\u001e2\u0006\u0010S\u001a\u00020\u001e2\u0006\u0010T\u001a\u00020\u000fH\u0002J\u0010\u0010U\u001a\u00020\u000f2\u0006\u0010S\u001a\u00020\u001eH\u0002J\u000e\u0010V\u001a\u00020Q2\u0006\u0010W\u001a\u00020XJ\u0010\u0010Y\u001a\u00020Q2\u0006\u0010Z\u001a\u00020\u000fH\u0016J\u000e\u0010[\u001a\u00020Q2\u0006\u0010\\\u001a\u00020\u000fJ\u001c\u0010]\u001a\u00020Q2\b\u0010^\u001a\u0004\u0018\u0001082\b\u0010S\u001a\u0004\u0018\u00010\u001eH\u0016J&\u0010_\u001a\u00020Q2\b\u0010^\u001a\u0004\u0018\u0001082\b\u0010`\u001a\u0004\u0018\u00010a2\b\u0010b\u001a\u0004\u0018\u00010cH\u0016J*\u0010_\u001a\u00020Q2\b\u0010^\u001a\u0004\u0018\u0001082\u0006\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020\u001e2\u0006\u0010g\u001a\u00020\u001eH\u0017J&\u0010h\u001a\u00020Q2\b\u0010^\u001a\u0004\u0018\u0001082\b\u0010`\u001a\u0004\u0018\u00010a2\b\u0010i\u001a\u0004\u0018\u00010jH\u0016J\u001c\u0010k\u001a\u00020\u000f2\b\u0010^\u001a\u0004\u0018\u0001082\b\u0010l\u001a\u0004\u0018\u00010mH\u0016J\u001a\u0010n\u001a\u00020Q2\b\u0010o\u001a\u0004\u0018\u0001082\u0006\u0010p\u001a\u00020\u001eH\u0002J\u0010\u0010q\u001a\u00020Q2\u0006\u00100\u001a\u00020\u000fH\u0016J8\u0010r\u001a\u00020Q2\u0006\u0010s\u001a\u00020\u000f2\b\u0010t\u001a\u0004\u0018\u00010\u001e2\b\u0010u\u001a\u0004\u0018\u00010\u001e2\b\u0010v\u001a\u0004\u0018\u00010\u001e2\b\u0010w\u001a\u0004\u0018\u00010\u001eH\u0016J\u0010\u0010x\u001a\u00020Q2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010y\u001a\u00020Q2\b\u0010>\u001a\u0004\u0018\u00010?H\u0016J\u0012\u0010z\u001a\u00020Q2\b\u0010I\u001a\u0004\u0018\u00010JH\u0016J\u001c\u0010{\u001a\u00020\u000f2\b\u0010^\u001a\u0004\u0018\u0001082\b\u0010S\u001a\u0004\u0018\u00010\u001eH\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u00020\u000f8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R&\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR&\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001f\u0010\u0011\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R&\u0010$\u001a\u0004\u0018\u00010\u001e8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b%\u0010\u0011\u001a\u0004\b&\u0010!\"\u0004\b'\u0010#R&\u0010(\u001a\u0004\u0018\u00010\u001e8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b)\u0010\u0011\u001a\u0004\b*\u0010!\"\u0004\b+\u0010#R&\u0010,\u001a\u0004\u0018\u00010\u001e8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b-\u0010\u0011\u001a\u0004\b.\u0010!\"\u0004\b/\u0010#R(\u00100\u001a\u0004\u0018\u00010\u000f8\u0000@\u0000X\u0081\u000e¢\u0006\u0016\n\u0002\u00106\u0012\u0004\b1\u0010\u0011\u001a\u0004\b2\u00103\"\u0004\b4\u00105R&\u00107\u001a\u0004\u0018\u0001088\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b9\u0010\u0011\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R&\u0010>\u001a\u0004\u0018\u00010?8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b@\u0010\u0011\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010E\u001a\u00020\u000f8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bF\u0010\u0011\u001a\u0004\bG\u0010\u0013\"\u0004\bH\u0010\u0015R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010I\u001a\u0004\u0018\u00010J8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bK\u0010\u0011\u001a\u0004\bL\u0010M\"\u0004\bN\u0010O¨\u0006~"}, d2 = {"Lcom/vungle/ads/internal/ui/VungleWebClient;", "Landroid/webkit/WebViewClient;", "Lcom/vungle/ads/internal/ui/view/WebViewAPI;", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", AdRevenueScheme.PLACEMENT, "Lcom/vungle/ads/internal/model/Placement;", "offloadExecutor", "Ljava/util/concurrent/ExecutorService;", "signalManager", "Lcom/vungle/ads/internal/signals/SignalManager;", TPDownloadProxyEnum.USER_PLATFORM, "Lcom/vungle/ads/internal/platform/Platform;", "(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/Placement;Ljava/util/concurrent/ExecutorService;Lcom/vungle/ads/internal/signals/SignalManager;Lcom/vungle/ads/internal/platform/Platform;)V", "collectConsent", "", "getCollectConsent$vungle_ads_release$annotations", "()V", "getCollectConsent$vungle_ads_release", "()Z", "setCollectConsent$vungle_ads_release", "(Z)V", "errorHandler", "Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;", "getErrorHandler$vungle_ads_release$annotations", "getErrorHandler$vungle_ads_release", "()Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;", "setErrorHandler$vungle_ads_release", "(Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;)V", "gdprAccept", "", "getGdprAccept$vungle_ads_release$annotations", "getGdprAccept$vungle_ads_release", "()Ljava/lang/String;", "setGdprAccept$vungle_ads_release", "(Ljava/lang/String;)V", "gdprBody", "getGdprBody$vungle_ads_release$annotations", "getGdprBody$vungle_ads_release", "setGdprBody$vungle_ads_release", "gdprDeny", "getGdprDeny$vungle_ads_release$annotations", "getGdprDeny$vungle_ads_release", "setGdprDeny$vungle_ads_release", "gdprTitle", "getGdprTitle$vungle_ads_release$annotations", "getGdprTitle$vungle_ads_release", "setGdprTitle$vungle_ads_release", "isViewable", "isViewable$vungle_ads_release$annotations", "isViewable$vungle_ads_release", "()Ljava/lang/Boolean;", "setViewable$vungle_ads_release", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "loadedWebView", "Landroid/webkit/WebView;", "getLoadedWebView$vungle_ads_release$annotations", "getLoadedWebView$vungle_ads_release", "()Landroid/webkit/WebView;", "setLoadedWebView$vungle_ads_release", "(Landroid/webkit/WebView;)V", "mraidDelegate", "Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;", "getMraidDelegate$vungle_ads_release$annotations", "getMraidDelegate$vungle_ads_release", "()Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;", "setMraidDelegate$vungle_ads_release", "(Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;)V", "ready", "getReady$vungle_ads_release$annotations", "getReady$vungle_ads_release", "setReady$vungle_ads_release", "webViewObserver", "Lcom/vungle/ads/internal/omsdk/WebViewObserver;", "getWebViewObserver$vungle_ads_release$annotations", "getWebViewObserver$vungle_ads_release", "()Lcom/vungle/ads/internal/omsdk/WebViewObserver;", "setWebViewObserver$vungle_ads_release", "(Lcom/vungle/ads/internal/omsdk/WebViewObserver;)V", "handleWebViewError", "", "errorMsg", "url", "didCrash", "isCriticalAsset", "notifyDiskAvailableSize", "size", "", "notifyPropertiesChange", "skipCmdQueue", "notifySilentModeChange", "silentModeEnabled", "onPageFinished", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onReceivedError", AdActivity.REQUEST_KEY_EXTRA, "Landroid/webkit/WebResourceRequest;", "error", "Landroid/webkit/WebResourceError;", "errorCode", "", "description", "failingUrl", "onReceivedHttpError", "errorResponse", "Landroid/webkit/WebResourceResponse;", "onRenderProcessGone", "detail", "Landroid/webkit/RenderProcessGoneDetail;", "runJavascriptOnWebView", "webView", "injectJs", "setAdVisibility", "setConsentStatus", "collectedConsent", CampaignEx.JSON_KEY_TITLE, "message", "accept", "deny", "setErrorHandler", "setMraidDelegate", "setWebViewObserver", "shouldOverrideUrlLoading", "Companion", "VungleWebViewRenderProcessClient", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class VungleWebClient extends WebViewClient implements WebViewAPI {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "VungleWebClient";
    @NotNull
    private final AdPayload advertisement;
    private boolean collectConsent;
    @Nullable
    private WebViewAPI.WebClientErrorHandler errorHandler;
    @Nullable
    private String gdprAccept;
    @Nullable
    private String gdprBody;
    @Nullable
    private String gdprDeny;
    @Nullable
    private String gdprTitle;
    @Nullable
    private Boolean isViewable;
    @Nullable
    private WebView loadedWebView;
    @Nullable
    private WebViewAPI.MraidDelegate mraidDelegate;
    @NotNull
    private final ExecutorService offloadExecutor;
    @NotNull
    private final Placement placement;
    @Nullable
    private final Platform platform;
    private boolean ready;
    @Nullable
    private final SignalManager signalManager;
    @Nullable
    private WebViewObserver webViewObserver;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/ui/VungleWebClient$Companion;", "", "()V", "TAG", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ VungleWebClient(AdPayload adPayload, Placement placement, ExecutorService executorService, SignalManager signalManager, Platform platform, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(adPayload, placement, executorService, (i & 8) != 0 ? null : signalManager, (i & 16) != 0 ? null : platform);
    }

    private final void handleWebViewError(String str, String str2, boolean z) {
        String str3 = str2 + ' ' + str;
        WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.errorHandler;
        if (webClientErrorHandler != null) {
            webClientErrorHandler.onReceivedError(str3, z);
        }
    }

    private final boolean isCriticalAsset(String str) {
        if (str.length() > 0) {
            return this.advertisement.isCriticalAsset(str);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runJavascriptOnWebView(WebView webView, String str) {
        try {
            Logger.Companion companion = Logger.Companion;
            companion.w(TAG, "mraid Injecting JS " + str);
            if (webView != null) {
                webView.evaluateJavascript(str, null);
            }
        } catch (Throwable th) {
            new EvaluateJsError("Evaluate js failed " + th.getLocalizedMessage()).setLogEntry$vungle_ads_release(this.advertisement.getLogEntry$vungle_ads_release()).logErrorNoReturnValue$vungle_ads_release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: shouldOverrideUrlLoading$lambda-6$lambda-1  reason: not valid java name */
    public static final void m355shouldOverrideUrlLoading$lambda6$lambda1(final VungleWebClient vungleWebClient, Handler handler, final WebView webView) {
        final String str = "window.vungle.mraidBridge.notifyReadyEvent(" + vungleWebClient.advertisement.createMRAIDArgs() + ')';
        handler.post(new Runnable() { // from class: com.vungle.ads.internal.ui.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                VungleWebClient.this.runJavascriptOnWebView(webView, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: shouldOverrideUrlLoading$lambda-6$lambda-5$lambda-4  reason: not valid java name */
    public static final void m357shouldOverrideUrlLoading$lambda6$lambda5$lambda4(WebViewAPI.MraidDelegate mraidDelegate, String str, JsonObject jsonObject, Handler handler, final VungleWebClient vungleWebClient, final WebView webView) {
        if (mraidDelegate.processCommand(str, jsonObject)) {
            handler.post(new Runnable() { // from class: com.vungle.ads.internal.ui.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    VungleWebClient.this.runJavascriptOnWebView(webView, "window.vungle.mraidBridge.notifyCommandComplete()");
                }
            });
        }
    }

    public final boolean getCollectConsent$vungle_ads_release() {
        return this.collectConsent;
    }

    @Nullable
    public final WebViewAPI.WebClientErrorHandler getErrorHandler$vungle_ads_release() {
        return this.errorHandler;
    }

    @Nullable
    public final String getGdprAccept$vungle_ads_release() {
        return this.gdprAccept;
    }

    @Nullable
    public final String getGdprBody$vungle_ads_release() {
        return this.gdprBody;
    }

    @Nullable
    public final String getGdprDeny$vungle_ads_release() {
        return this.gdprDeny;
    }

    @Nullable
    public final String getGdprTitle$vungle_ads_release() {
        return this.gdprTitle;
    }

    @Nullable
    public final WebView getLoadedWebView$vungle_ads_release() {
        return this.loadedWebView;
    }

    @Nullable
    public final WebViewAPI.MraidDelegate getMraidDelegate$vungle_ads_release() {
        return this.mraidDelegate;
    }

    public final boolean getReady$vungle_ads_release() {
        return this.ready;
    }

    @Nullable
    public final WebViewObserver getWebViewObserver$vungle_ads_release() {
        return this.webViewObserver;
    }

    @Nullable
    public final Boolean isViewable$vungle_ads_release() {
        return this.isViewable;
    }

    public final void notifyDiskAvailableSize(long j) {
        WebView webView = this.loadedWebView;
        if (webView != null) {
            runJavascriptOnWebView(webView, "window.vungle.mraidBridgeExt.notifyAvailableDiskSpace(" + j + ')');
        }
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI
    public void notifyPropertiesChange(boolean z) {
        String str;
        WebView webView = this.loadedWebView;
        if (webView != null) {
            JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
            JsonObjectBuilder jsonObjectBuilder2 = new JsonObjectBuilder();
            JsonElementBuildersKt.put(jsonObjectBuilder2, "width", Integer.valueOf(webView.getWidth()));
            JsonElementBuildersKt.put(jsonObjectBuilder2, "height", Integer.valueOf(webView.getHeight()));
            JsonObject build = jsonObjectBuilder2.build();
            JsonObjectBuilder jsonObjectBuilder3 = new JsonObjectBuilder();
            JsonElementBuildersKt.put(jsonObjectBuilder3, "x", (Number) 0);
            JsonElementBuildersKt.put(jsonObjectBuilder3, "y", (Number) 0);
            JsonElementBuildersKt.put(jsonObjectBuilder3, "width", Integer.valueOf(webView.getWidth()));
            JsonElementBuildersKt.put(jsonObjectBuilder3, "height", Integer.valueOf(webView.getHeight()));
            JsonObject build2 = jsonObjectBuilder3.build();
            JsonObjectBuilder jsonObjectBuilder4 = new JsonObjectBuilder();
            Boolean bool = Boolean.FALSE;
            JsonElementBuildersKt.put(jsonObjectBuilder4, "sms", bool);
            JsonElementBuildersKt.put(jsonObjectBuilder4, "tel", bool);
            JsonElementBuildersKt.put(jsonObjectBuilder4, "calendar", bool);
            JsonElementBuildersKt.put(jsonObjectBuilder4, "storePicture", bool);
            JsonElementBuildersKt.put(jsonObjectBuilder4, "inlineVideo", bool);
            JsonObject build3 = jsonObjectBuilder4.build();
            jsonObjectBuilder.put("maxSize", build);
            jsonObjectBuilder.put("screenSize", build);
            jsonObjectBuilder.put("defaultPosition", build2);
            jsonObjectBuilder.put("currentPosition", build2);
            jsonObjectBuilder.put("supports", build3);
            JsonElementBuildersKt.put(jsonObjectBuilder, "placementType", this.advertisement.templateType());
            Boolean bool2 = this.isViewable;
            if (bool2 != null) {
                JsonElementBuildersKt.put(jsonObjectBuilder, "isViewable", bool2);
            }
            JsonElementBuildersKt.put(jsonObjectBuilder, "os", "android");
            JsonElementBuildersKt.put(jsonObjectBuilder, "osVersion", String.valueOf(Build.VERSION.SDK_INT));
            JsonElementBuildersKt.put(jsonObjectBuilder, "incentivized", Boolean.valueOf(this.placement.isRewardedVideo()));
            JsonElementBuildersKt.put(jsonObjectBuilder, "version", "1.0");
            Platform platform = this.platform;
            if (platform != null) {
                JsonElementBuildersKt.put(jsonObjectBuilder, "isSilent", Boolean.valueOf(platform.isSilentModeEnabled()));
            }
            if (this.collectConsent) {
                JsonElementBuildersKt.put(jsonObjectBuilder, "consentRequired", Boolean.TRUE);
                JsonElementBuildersKt.put(jsonObjectBuilder, "consentTitleText", this.gdprTitle);
                JsonElementBuildersKt.put(jsonObjectBuilder, "consentBodyText", this.gdprBody);
                JsonElementBuildersKt.put(jsonObjectBuilder, "consentAcceptButtonText", this.gdprAccept);
                JsonElementBuildersKt.put(jsonObjectBuilder, "consentDenyButtonText", this.gdprDeny);
            } else {
                JsonElementBuildersKt.put(jsonObjectBuilder, "consentRequired", bool);
            }
            if (!ConfigManager.INSTANCE.signalsDisabled()) {
                SignalManager signalManager = this.signalManager;
                String str2 = null;
                if (signalManager != null) {
                    str = signalManager.getUuid();
                } else {
                    str = null;
                }
                if (str != null && str.length() != 0) {
                    SignalManager signalManager2 = this.signalManager;
                    if (signalManager2 != null) {
                        str2 = signalManager2.getUuid();
                    }
                    JsonElementBuildersKt.put(jsonObjectBuilder, JsonStorageKeyNames.SESSION_ID_KEY, str2);
                }
            }
            JsonElementBuildersKt.put(jsonObjectBuilder, RemoteConfigConstants.RequestFieldKey.SDK_VERSION, BuildConfig.VERSION_NAME);
            runJavascriptOnWebView(webView, "window.vungle.mraidBridge.notifyPropertiesChange(" + jsonObjectBuilder.build() + AbstractJsonLexerKt.COMMA + z + ')');
        }
    }

    public final void notifySilentModeChange(boolean z) {
        WebView webView = this.loadedWebView;
        if (webView != null) {
            JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
            JsonElementBuildersKt.put(jsonObjectBuilder, "isSilent", Boolean.valueOf(z));
            JsonObject build = jsonObjectBuilder.build();
            runJavascriptOnWebView(webView, "window.vungle.mraidBridge.notifyPropertiesChange(" + build + ')');
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(@Nullable WebView webView, @Nullable String str) {
        super.onPageFinished(webView, str);
        if (webView != null) {
            this.loadedWebView = webView;
            webView.setVisibility(0);
            notifyPropertiesChange(true);
            if (Build.VERSION.SDK_INT >= 29) {
                webView.setWebViewRenderProcessClient(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new VungleWebViewRenderProcessClient(this.errorHandler)));
            }
            WebViewObserver webViewObserver = this.webViewObserver;
            if (webViewObserver != null) {
                webViewObserver.onPageFinished(webView);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    @Deprecated(message = "Deprecated in Java")
    public void onReceivedError(@Nullable WebView webView, int i, @NotNull String str, @NotNull String str2) {
        super.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(@Nullable WebView webView, @Nullable WebResourceRequest webResourceRequest, @Nullable WebResourceResponse webResourceResponse) {
        Integer num;
        boolean z;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        Uri uri = null;
        if (webResourceResponse != null) {
            num = Integer.valueOf(webResourceResponse.getStatusCode());
        } else {
            num = null;
        }
        String valueOf = String.valueOf(num);
        if (webResourceRequest != null) {
            uri = webResourceRequest.getUrl();
        }
        String valueOf2 = String.valueOf(uri);
        boolean z2 = false;
        if (webResourceRequest != null && webResourceRequest.isForMainFrame()) {
            z = true;
        } else {
            z = false;
        }
        Logger.Companion.e(TAG, "Http Error desc " + valueOf + ' ' + z + " for URL " + valueOf2);
        if (isCriticalAsset(valueOf2) && z) {
            z2 = true;
        }
        handleWebViewError(valueOf, valueOf2, z2);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(@Nullable WebView webView, @Nullable RenderProcessGoneDetail renderProcessGoneDetail) {
        String str;
        Boolean bool;
        boolean didCrash;
        boolean didCrash2;
        Boolean bool2 = null;
        String str2 = null;
        this.loadedWebView = null;
        if (Build.VERSION.SDK_INT < 26) {
            Logger.Companion companion = Logger.Companion;
            StringBuilder sb = new StringBuilder();
            sb.append("onRenderProcessGone url: ");
            if (webView != null) {
                str2 = webView.getUrl();
            }
            sb.append(str2);
            companion.w(TAG, sb.toString());
            WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.errorHandler;
            if (webClientErrorHandler != null) {
                return webClientErrorHandler.onWebRenderingProcessGone(webView, Boolean.TRUE);
            }
            return true;
        }
        Logger.Companion companion2 = Logger.Companion;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onRenderProcessGone url: ");
        if (webView != null) {
            str = webView.getUrl();
        } else {
            str = null;
        }
        sb2.append(str);
        sb2.append(", did crash: ");
        if (renderProcessGoneDetail != null) {
            didCrash2 = renderProcessGoneDetail.didCrash();
            bool = Boolean.valueOf(didCrash2);
        } else {
            bool = null;
        }
        sb2.append(bool);
        companion2.w(TAG, sb2.toString());
        WebViewAPI.WebClientErrorHandler webClientErrorHandler2 = this.errorHandler;
        if (webClientErrorHandler2 != null) {
            if (renderProcessGoneDetail != null) {
                didCrash = renderProcessGoneDetail.didCrash();
                bool2 = Boolean.valueOf(didCrash);
            }
            return webClientErrorHandler2.onWebRenderingProcessGone(webView, bool2);
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI
    public void setAdVisibility(boolean z) {
        this.isViewable = Boolean.valueOf(z);
        notifyPropertiesChange(false);
    }

    public final void setCollectConsent$vungle_ads_release(boolean z) {
        this.collectConsent = z;
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI
    public void setConsentStatus(boolean z, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        this.collectConsent = z;
        this.gdprTitle = str;
        this.gdprBody = str2;
        this.gdprAccept = str3;
        this.gdprDeny = str4;
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI
    public void setErrorHandler(@NotNull WebViewAPI.WebClientErrorHandler webClientErrorHandler) {
        this.errorHandler = webClientErrorHandler;
    }

    public final void setErrorHandler$vungle_ads_release(@Nullable WebViewAPI.WebClientErrorHandler webClientErrorHandler) {
        this.errorHandler = webClientErrorHandler;
    }

    public final void setGdprAccept$vungle_ads_release(@Nullable String str) {
        this.gdprAccept = str;
    }

    public final void setGdprBody$vungle_ads_release(@Nullable String str) {
        this.gdprBody = str;
    }

    public final void setGdprDeny$vungle_ads_release(@Nullable String str) {
        this.gdprDeny = str;
    }

    public final void setGdprTitle$vungle_ads_release(@Nullable String str) {
        this.gdprTitle = str;
    }

    public final void setLoadedWebView$vungle_ads_release(@Nullable WebView webView) {
        this.loadedWebView = webView;
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI
    public void setMraidDelegate(@Nullable WebViewAPI.MraidDelegate mraidDelegate) {
        this.mraidDelegate = mraidDelegate;
    }

    public final void setMraidDelegate$vungle_ads_release(@Nullable WebViewAPI.MraidDelegate mraidDelegate) {
        this.mraidDelegate = mraidDelegate;
    }

    public final void setReady$vungle_ads_release(boolean z) {
        this.ready = z;
    }

    public final void setViewable$vungle_ads_release(@Nullable Boolean bool) {
        this.isViewable = bool;
    }

    @Override // com.vungle.ads.internal.ui.view.WebViewAPI
    public void setWebViewObserver(@Nullable WebViewObserver webViewObserver) {
        this.webViewObserver = webViewObserver;
    }

    public final void setWebViewObserver$vungle_ads_release(@Nullable WebViewObserver webViewObserver) {
        this.webViewObserver = webViewObserver;
    }

    @Override // android.webkit.WebViewClient
    @Deprecated(message = "Deprecated in Java")
    public boolean shouldOverrideUrlLoading(@Nullable final WebView webView, @Nullable String str) {
        boolean z;
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "MRAID Command " + str);
        if (str != null && str.length() != 0) {
            Uri parse = Uri.parse(str);
            if (parse == null || parse.getScheme() == null) {
                return false;
            }
            String scheme = parse.getScheme();
            if (Intrinsics.areEqual(scheme, CampaignEx.JSON_KEY_MRAID)) {
                z = false;
                final String host = parse.getHost();
                if (host != null) {
                    if (Intrinsics.areEqual("propertiesChangeCompleted", host)) {
                        if (!this.ready) {
                            this.ready = true;
                            final Handler handler = new Handler(Looper.getMainLooper());
                            this.offloadExecutor.submit(new Runnable() { // from class: com.vungle.ads.internal.ui.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // java.lang.Runnable
                                public final void run() {
                                    VungleWebClient.m355shouldOverrideUrlLoading$lambda6$lambda1(VungleWebClient.this, handler, webView);
                                }
                            });
                        }
                    } else {
                        final WebViewAPI.MraidDelegate mraidDelegate = this.mraidDelegate;
                        if (mraidDelegate != null) {
                            JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
                            for (String str2 : parse.getQueryParameterNames()) {
                                JsonElementBuildersKt.put(jsonObjectBuilder, str2, parse.getQueryParameter(str2));
                            }
                            final JsonObject build = jsonObjectBuilder.build();
                            final Handler handler2 = new Handler(Looper.getMainLooper());
                            this.offloadExecutor.submit(new Runnable() { // from class: com.vungle.ads.internal.ui.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // java.lang.Runnable
                                public final void run() {
                                    VungleWebClient.m357shouldOverrideUrlLoading$lambda6$lambda5$lambda4(WebViewAPI.MraidDelegate.this, host, build, handler2, this, webView);
                                }
                            });
                        }
                    }
                    return true;
                }
            } else {
                z = false;
                if (StringsKt.equals("http", scheme, true) || StringsKt.equals("https", scheme, true)) {
                    companion.d(TAG, "Open URL" + str);
                    WebViewAPI.MraidDelegate mraidDelegate2 = this.mraidDelegate;
                    if (mraidDelegate2 != null) {
                        JsonObjectBuilder jsonObjectBuilder2 = new JsonObjectBuilder();
                        JsonElementBuildersKt.put(jsonObjectBuilder2, "url", str);
                        mraidDelegate2.processCommand("openNonMraid", jsonObjectBuilder2.build());
                    }
                    return true;
                }
            }
            return z;
        }
        companion.e(TAG, "Invalid URL ");
        return false;
    }

    public VungleWebClient(@NotNull AdPayload adPayload, @NotNull Placement placement, @NotNull ExecutorService executorService, @Nullable SignalManager signalManager, @Nullable Platform platform) {
        this.advertisement = adPayload;
        this.placement = placement;
        this.offloadExecutor = executorService;
        this.signalManager = signalManager;
        this.platform = platform;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(@Nullable WebView webView, @Nullable WebResourceRequest webResourceRequest, @Nullable WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        String valueOf = String.valueOf(webResourceError != null ? webResourceError.getDescription() : null);
        String valueOf2 = String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null);
        boolean z = false;
        boolean z2 = webResourceRequest != null && webResourceRequest.isForMainFrame();
        Logger.Companion.e(TAG, "Error desc " + valueOf + ' ' + z2 + " for URL " + valueOf2);
        if (isCriticalAsset(valueOf2) && z2) {
            z = true;
        }
        handleWebViewError(valueOf, valueOf2, z);
    }

    @VisibleForTesting
    public static /* synthetic */ void getCollectConsent$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getErrorHandler$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGdprAccept$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGdprBody$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGdprDeny$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getGdprTitle$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getLoadedWebView$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getMraidDelegate$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getReady$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getWebViewObserver$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isViewable$vungle_ads_release$annotations() {
    }

    /* compiled from: Proguard */
    @RequiresApi(29)
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/vungle/ads/internal/ui/VungleWebClient$VungleWebViewRenderProcessClient;", "Landroid/webkit/WebViewRenderProcessClient;", "errorHandler", "Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;", "(Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;)V", "onRenderProcessResponsive", "", "webView", "Landroid/webkit/WebView;", "webViewRenderProcess", "Landroid/webkit/WebViewRenderProcess;", "onRenderProcessUnresponsive", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class VungleWebViewRenderProcessClient extends WebViewRenderProcessClient {
        @Nullable
        private WebViewAPI.WebClientErrorHandler errorHandler;

        public VungleWebViewRenderProcessClient(@Nullable WebViewAPI.WebClientErrorHandler webClientErrorHandler) {
            this.errorHandler = webClientErrorHandler;
        }

        public void onRenderProcessUnresponsive(@NotNull WebView webView, @Nullable WebViewRenderProcess webViewRenderProcess) {
            boolean z;
            Logger.Companion companion = Logger.Companion;
            StringBuilder sb = new StringBuilder();
            sb.append("onRenderProcessUnresponsive(Title = ");
            sb.append(webView.getTitle());
            sb.append(", URL = ");
            sb.append(webView.getOriginalUrl());
            sb.append(", (webViewRenderProcess != null) = ");
            if (webViewRenderProcess != null) {
                z = true;
            } else {
                z = false;
            }
            sb.append(z);
            companion.w(VungleWebClient.TAG, sb.toString());
            WebViewAPI.WebClientErrorHandler webClientErrorHandler = this.errorHandler;
            if (webClientErrorHandler != null) {
                webClientErrorHandler.onRenderProcessUnresponsive(webView, webViewRenderProcess);
            }
        }

        public void onRenderProcessResponsive(@NotNull WebView webView, @Nullable WebViewRenderProcess webViewRenderProcess) {
        }
    }
}
