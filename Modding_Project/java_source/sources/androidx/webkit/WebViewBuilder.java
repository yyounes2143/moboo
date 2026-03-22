package androidx.webkit;

import android.content.Context;
import android.webkit.WebView;
import androidx.annotation.RequiresOptIn;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.chromium.support_lib_boundary.WebViewBuilderBoundaryInterface;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class WebViewBuilder {
    WebViewBuilderBoundaryInterface mBuilderStateBoundary;
    private Policy mPolicy;

    /* compiled from: Proguard */
    @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
    @RequiresOptIn(level = RequiresOptIn.Level.ERROR)
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3.dex */
    public @interface Experimental {
    }

    @Experimental
    @UiThread
    public WebView build(Context context) throws WebViewBuilderException {
        if (WebViewFeatureInternal.WEBVIEW_BUILDER.isSupportedByWebView()) {
            if (this.mBuilderStateBoundary == null) {
                this.mBuilderStateBoundary = WebViewGlueCommunicator.getFactory().getWebViewBuilder();
            }
            WebViewBuilderBoundaryInterface.Config config = new WebViewBuilderBoundaryInterface.Config();
            this.mPolicy.configure(config);
            return this.mBuilderStateBoundary.build(context, config);
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Experimental
    public WebViewBuilder setPolicy(Policy policy) {
        this.mPolicy = policy;
        return this;
    }
}
