package com.unity3d.ads.adplayer;

import android.net.Uri;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import androidx.media3.common.MimeTypes;
import androidx.webkit.WebResourceErrorCompat;
import androidx.webkit.WebViewClientCompat;
import androidx.webkit.WebViewFeature;
import com.mbridge.msdk.MBridgeConstans;
import com.unity3d.ads.adplayer.model.ErrorReason;
import com.unity3d.ads.adplayer.model.WebViewClientError;
import com.unity3d.ads.core.domain.GetCachedAsset;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.IntExtensionKt;
import com.unity3d.ads.core.extensions.ViewExtensionsKt;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 )2\u00020\u0001:\u0001)B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0017H\u0016J \u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0017J \u0010\"\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010%\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020'H\u0016J\u001a\u0010(\u001a\u0004\u0018\u00010$2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0010R\u001a\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcom/unity3d/ads/adplayer/AndroidWebViewClient;", "Landroidx/webkit/WebViewClientCompat;", "getCachedAsset", "Lcom/unity3d/ads/core/domain/GetCachedAsset;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "(Lcom/unity3d/ads/core/domain/GetCachedAsset;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V", "_isRenderProcessGone", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "_onLoadFinished", "Lkotlinx/coroutines/CompletableDeferred;", "", "Lcom/unity3d/ads/adplayer/model/WebViewClientError;", "isRenderProcessGone", "Lkotlinx/coroutines/flow/StateFlow;", "()Lkotlinx/coroutines/flow/StateFlow;", "loadErrors", "onLoadFinished", "Lkotlinx/coroutines/Deferred;", "getOnLoadFinished", "()Lkotlinx/coroutines/Deferred;", "webviewType", "", "onPageFinished", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/webkit/WebView;", "url", "onReceivedError", AdActivity.REQUEST_KEY_EXTRA, "Landroid/webkit/WebResourceRequest;", "error", "Landroidx/webkit/WebResourceErrorCompat;", "onReceivedHttpError", "errorResponse", "Landroid/webkit/WebResourceResponse;", "onRenderProcessGone", "detail", "Landroid/webkit/RenderProcessGoneDetail;", "shouldInterceptRequest", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidWebViewClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWebViewClient.kt\ncom/unity3d/ads/adplayer/AndroidWebViewClient\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n230#2,5:141\n230#2,5:146\n230#2,5:151\n230#2,5:157\n1#3:156\n*S KotlinDebug\n*F\n+ 1 AndroidWebViewClient.kt\ncom/unity3d/ads/adplayer/AndroidWebViewClient\n*L\n41#1:141,5\n62#1:146,5\n82#1:151,5\n122#1:157,5\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidWebViewClient extends WebViewClientCompat {
    @NotNull
    public static final String BLANK_PAGE = "about:blank";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final MutableStateFlow<Boolean> _isRenderProcessGone;
    @NotNull
    private final CompletableDeferred<List<WebViewClientError>> _onLoadFinished;
    @NotNull
    private final GetCachedAsset getCachedAsset;
    @NotNull
    private final StateFlow<Boolean> isRenderProcessGone;
    @NotNull
    private final MutableStateFlow<List<WebViewClientError>> loadErrors = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
    @NotNull
    private final Deferred<List<WebViewClientError>> onLoadFinished;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final MutableStateFlow<String> webviewType;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/unity3d/ads/adplayer/AndroidWebViewClient$Companion;", "", "()V", "BLANK_PAGE", "", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AndroidWebViewClient(@NotNull GetCachedAsset getCachedAsset, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        this.getCachedAsset = getCachedAsset;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        CompletableDeferred<List<WebViewClientError>> CompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        this._onLoadFinished = CompletableDeferred$default;
        this.onLoadFinished = CompletableDeferred$default;
        MutableStateFlow<Boolean> MutableStateFlow = StateFlowKt.MutableStateFlow(Boolean.FALSE);
        this._isRenderProcessGone = MutableStateFlow;
        this.isRenderProcessGone = FlowKt.asStateFlow(MutableStateFlow);
        this.webviewType = StateFlowKt.MutableStateFlow("");
    }

    @NotNull
    public final Deferred<List<WebViewClientError>> getOnLoadFinished() {
        return this.onLoadFinished;
    }

    @NotNull
    public final StateFlow<Boolean> isRenderProcessGone() {
        return this.isRenderProcessGone;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(@NotNull WebView webView, @NotNull String str) {
        String str2;
        if (Intrinsics.areEqual(str, BLANK_PAGE)) {
            MutableStateFlow<List<WebViewClientError>> mutableStateFlow = this.loadErrors;
            while (true) {
                List<WebViewClientError> value = mutableStateFlow.getValue();
                str2 = str;
                if (mutableStateFlow.compareAndSet(value, CollectionsKt.plus((Collection<? extends WebViewClientError>) value, new WebViewClientError(str2, ErrorReason.REASON_WEB_BLANK, null, 4, null)))) {
                    break;
                }
                str = str2;
            }
        } else {
            str2 = str;
        }
        super.onPageFinished(webView, str2);
        this._onLoadFinished.complete(this.loadErrors.getValue());
    }

    @Override // androidx.webkit.WebViewClientCompat
    @RequiresApi(21)
    public void onReceivedError(@NotNull WebView webView, @NotNull WebResourceRequest webResourceRequest, @NotNull WebResourceErrorCompat webResourceErrorCompat) {
        ErrorReason errorReason;
        List<WebViewClientError> value;
        super.onReceivedError(webView, webResourceRequest, webResourceErrorCompat);
        if (WebViewFeature.isFeatureSupported(WebViewFeature.WEB_RESOURCE_ERROR_GET_CODE)) {
            errorReason = IntExtensionKt.webResourceToErrorReason(webResourceErrorCompat.getErrorCode());
        } else {
            errorReason = ErrorReason.REASON_UNKNOWN;
        }
        ErrorReason errorReason2 = errorReason;
        MutableStateFlow<List<WebViewClientError>> mutableStateFlow = this.loadErrors;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, CollectionsKt.plus((Collection<? extends WebViewClientError>) value, new WebViewClientError(webResourceRequest.getUrl().toString(), errorReason2, null, 4, null))));
    }

    @Override // androidx.webkit.WebViewClientCompat, android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    public void onReceivedHttpError(@NotNull WebView webView, @NotNull WebResourceRequest webResourceRequest, @NotNull WebResourceResponse webResourceResponse) {
        List<WebViewClientError> value;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        WebViewClientError webViewClientError = new WebViewClientError(webResourceRequest.getUrl().toString(), ErrorReason.REASON_WEB_ERROR_RECEIVED_HTTP, Integer.valueOf(webResourceResponse.getStatusCode()));
        MutableStateFlow<List<WebViewClientError>> mutableStateFlow = this.loadErrors;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, CollectionsKt.plus((Collection<? extends WebViewClientError>) value, webViewClientError)));
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(@NotNull WebView webView, @NotNull RenderProcessGoneDetail renderProcessGoneDetail) {
        List<WebViewClientError> value;
        ViewExtensionsKt.removeViewFromParent(webView);
        webView.destroy();
        if (!this._onLoadFinished.isCompleted()) {
            MutableStateFlow<List<WebViewClientError>> mutableStateFlow = this.loadErrors;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.compareAndSet(value, CollectionsKt.plus((Collection<? extends WebViewClientError>) value, new WebViewClientError(String.valueOf(webView.getUrl()), ErrorReason.REASON_WEBVIEW_RENDER_PROCESS_GONE, null, 4, null))));
            this._onLoadFinished.complete(this.loadErrors.getValue());
            return true;
        }
        this._isRenderProcessGone.setValue(Boolean.TRUE);
        return true;
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public WebResourceResponse shouldInterceptRequest(@NotNull WebView webView, @NotNull WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest.getUrl();
        if (url == null) {
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
        try {
            Result.Companion companion = Result.Companion;
            Object m438constructorimpl = Result.m438constructorimpl(url.getQueryParameter("webviewType"));
            if (Result.m444isFailureimpl(m438constructorimpl)) {
                m438constructorimpl = null;
            }
            String str = (String) m438constructorimpl;
            if (str != null && !StringsKt.isBlank(str)) {
                this.webviewType.setValue(str);
            }
            if (Intrinsics.areEqual(url.getLastPathSegment(), "favicon.ico")) {
                return new WebResourceResponse(MimeTypes.IMAGE_PNG, null, null);
            }
            return this.getCachedAsset.invoke(webResourceRequest.getUrl(), this.webviewType.getValue());
        }
    }
}
