package com.vungle.ads.internal.platform;

import android.content.Context;
import android.util.AndroidRuntimeException;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.core.util.Consumer;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.util.Logger;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u001e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/vungle/ads/internal/platform/WebViewUtil;", "", "()V", "TAG", "", "applyWebSettings", "", "webView", "Landroid/webkit/WebView;", "webViewSettings", "Lcom/vungle/ads/internal/model/AdPayload$WebViewSettings;", "getUserAgent", "context", "Landroid/content/Context;", "consumer", "Landroidx/core/util/Consumer;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class WebViewUtil {
    @NotNull
    public static final WebViewUtil INSTANCE = new WebViewUtil();
    @NotNull
    private static final String TAG = "WebViewUtil";

    private WebViewUtil() {
    }

    public final void applyWebSettings(@NotNull WebView webView, @Nullable AdPayload.WebViewSettings webViewSettings) {
        boolean z;
        boolean z2;
        Boolean allowUniversalAccessFromFileUrls;
        Boolean allowFileAccessFromFileUrls;
        WebSettings settings = webView.getSettings();
        settings.setBuiltInZoomControls(false);
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSaveFormData(true);
        settings.setUseWideViewPort(false);
        settings.setAllowFileAccess(true);
        if (webViewSettings != null && (allowFileAccessFromFileUrls = webViewSettings.getAllowFileAccessFromFileUrls()) != null) {
            z = allowFileAccessFromFileUrls.booleanValue();
        } else {
            z = false;
        }
        settings.setAllowFileAccessFromFileURLs(z);
        if (webViewSettings != null && (allowUniversalAccessFromFileUrls = webViewSettings.getAllowUniversalAccessFromFileUrls()) != null) {
            z2 = allowUniversalAccessFromFileUrls.booleanValue();
        } else {
            z2 = false;
        }
        settings.setAllowUniversalAccessFromFileURLs(z2);
        webView.setVisibility(4);
        settings.setMediaPlaybackRequiresUserGesture(false);
    }

    public final void getUserAgent(@NotNull Context context, @NotNull Consumer<String> consumer) {
        try {
            consumer.accept(WebSettings.getDefaultUserAgent(context));
        } catch (Exception e) {
            if (e instanceof AndroidRuntimeException) {
                Logger.Companion.e(TAG, "WebView could be missing here");
            }
            consumer.accept(null);
        }
    }
}
