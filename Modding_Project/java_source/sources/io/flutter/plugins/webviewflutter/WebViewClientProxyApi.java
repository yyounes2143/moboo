package io.flutter.plugins.webviewflutter;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.webkit.WebResourceErrorCompat;
import androidx.webkit.WebViewClientCompat;
import io.flutter.plugins.webviewflutter.WebViewClientProxyApi;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class WebViewClientProxyApi extends PigeonApiWebViewClient {
    public WebViewClientProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebViewClient
    @NonNull
    public WebViewClient pigeon_defaultConstructor() {
        if (getPigeonRegistrar().sdkIsAtLeast(24)) {
            return new WebViewClientImpl(this);
        }
        return new WebViewClientCompatImpl(this);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebViewClient
    public void setSynchronousReturnValueForShouldOverrideUrlLoading(@NonNull WebViewClient webViewClient, boolean z) {
        if (webViewClient instanceof WebViewClientCompatImpl) {
            ((WebViewClientCompatImpl) webViewClient).setReturnValueForShouldOverrideUrlLoading(z);
        } else if (getPigeonRegistrar().sdkIsAtLeast(24) && (webViewClient instanceof WebViewClientImpl)) {
            ((WebViewClientImpl) webViewClient).setReturnValueForShouldOverrideUrlLoading(z);
        } else {
            throw new IllegalStateException("This WebViewClient doesn't support setting the returnValueForShouldOverrideUrlLoading.");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class WebViewClientCompatImpl extends WebViewClientCompat {
        private final WebViewClientProxyApi api;
        private boolean returnValueForShouldOverrideUrlLoading = false;

        public WebViewClientCompatImpl(@NonNull WebViewClientProxyApi webViewClientProxyApi) {
            this.api = webViewClientProxyApi;
        }

        public static /* synthetic */ Unit Www(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        @Override // android.webkit.WebViewClient
        public void doUpdateVisitedHistory(@NonNull final WebView webView, @NonNull final String str, final boolean z) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.I
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.doUpdateVisitedHistory(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, str, z, new Function1() { // from class: io.flutter.plugins.webviewflutter.x
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onFormResubmission(@NonNull final WebView webView, @NonNull final Message message, @NonNull final Message message2) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.g
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onFormResubmission(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, message, message2, new Function1() { // from class: io.flutter.plugins.webviewflutter.D
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(@NonNull final WebView webView, @NonNull final String str) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.H
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onLoadResource(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.z
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // androidx.webkit.WebViewClientCompat, android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
        public void onPageCommitVisible(@NonNull final WebView webView, @NonNull final String str) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.C
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onPageCommitVisible(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.A
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(@NonNull final WebView webView, @NonNull final String str) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.J
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onPageFinished(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.p
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Www((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(@NonNull final WebView webView, @NonNull final String str, @NonNull Bitmap bitmap) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.i
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onPageStarted(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.v
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedClientCertRequest(@NonNull final WebView webView, @NonNull final ClientCertRequest clientCertRequest) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.n
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedClientCertRequest(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, clientCertRequest, new Function1() { // from class: io.flutter.plugins.webviewflutter.u
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // androidx.webkit.WebViewClientCompat
        public void onReceivedError(@NonNull final WebView webView, @NonNull final WebResourceRequest webResourceRequest, @NonNull final WebResourceErrorCompat webResourceErrorCompat) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.o
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedRequestErrorCompat(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, webResourceRequest, webResourceErrorCompat, new Function1() { // from class: io.flutter.plugins.webviewflutter.G
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpAuthRequest(@NonNull final WebView webView, final HttpAuthHandler httpAuthHandler, final String str, final String str2) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.m
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedHttpAuthRequest(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, httpAuthHandler, str, str2, new Function1() { // from class: io.flutter.plugins.webviewflutter.E
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // androidx.webkit.WebViewClientCompat, android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
        public void onReceivedHttpError(@NonNull final WebView webView, @NonNull final WebResourceRequest webResourceRequest, @NonNull final WebResourceResponse webResourceResponse) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.s
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedHttpError(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, webResourceRequest, webResourceResponse, new Function1() { // from class: io.flutter.plugins.webviewflutter.t
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedLoginRequest(@NonNull final WebView webView, @NonNull final String str, @Nullable final String str2, @NonNull final String str3) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.r
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedLoginRequest(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, str, str2, str3, new Function1() { // from class: io.flutter.plugins.webviewflutter.w
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(@NonNull final WebView webView, @NonNull final SslErrorHandler sslErrorHandler, @NonNull final SslError sslError) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.k
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedSslError(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, sslErrorHandler, sslError, new Function1() { // from class: io.flutter.plugins.webviewflutter.q
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onScaleChanged(@NonNull final WebView webView, final float f, final float f2) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.h
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onScaleChanged(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, f, f2, new Function1() { // from class: io.flutter.plugins.webviewflutter.j
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        public void setReturnValueForShouldOverrideUrlLoading(boolean z) {
            this.returnValueForShouldOverrideUrlLoading = z;
        }

        @Override // androidx.webkit.WebViewClientCompat, android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
        public boolean shouldOverrideUrlLoading(@NonNull final WebView webView, @NonNull final WebResourceRequest webResourceRequest) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.F
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.requestLoading(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, webResourceRequest, new Function1() { // from class: io.flutter.plugins.webviewflutter.l
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
            return webResourceRequest.isForMainFrame() && this.returnValueForShouldOverrideUrlLoading;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(@NonNull final WebView webView, final int i, @NonNull final String str, @NonNull final String str2) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.e
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedError(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, i, str, str2, new Function1() { // from class: io.flutter.plugins.webviewflutter.f
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(@NonNull final WebView webView, @NonNull final String str) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.y
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.urlLoading(WebViewClientProxyApi.WebViewClientCompatImpl.this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.B
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientCompatImpl.Wwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
            return this.returnValueForShouldOverrideUrlLoading;
        }

        @Override // android.webkit.WebViewClient
        public void onUnhandledKeyEvent(@NonNull WebView webView, @NonNull KeyEvent keyEvent) {
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(24)
    /* loaded from: classes6.dex */
    public static class WebViewClientImpl extends WebViewClient {
        private final WebViewClientProxyApi api;
        private boolean returnValueForShouldOverrideUrlLoading = false;

        public WebViewClientImpl(@NonNull WebViewClientProxyApi webViewClientProxyApi) {
            this.api = webViewClientProxyApi;
        }

        public static /* synthetic */ Unit Www(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        @Override // android.webkit.WebViewClient
        public void doUpdateVisitedHistory(@NonNull final WebView webView, @NonNull final String str, final boolean z) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.T
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.doUpdateVisitedHistory(WebViewClientProxyApi.WebViewClientImpl.this, webView, str, z, new Function1() { // from class: io.flutter.plugins.webviewflutter.S
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onFormResubmission(@NonNull final WebView webView, @NonNull final Message message, @NonNull final Message message2) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.d0
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onFormResubmission(WebViewClientProxyApi.WebViewClientImpl.this, webView, message, message2, new Function1() { // from class: io.flutter.plugins.webviewflutter.O
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(@NonNull final WebView webView, @NonNull final String str) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.g0
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onLoadResource(WebViewClientProxyApi.WebViewClientImpl.this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.N
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onPageCommitVisible(@NonNull final WebView webView, @NonNull final String str) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.Q
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onPageCommitVisible(WebViewClientProxyApi.WebViewClientImpl.this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.K
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(@NonNull final WebView webView, @NonNull final String str) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.L
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onPageFinished(WebViewClientProxyApi.WebViewClientImpl.this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.p0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(@NonNull final WebView webView, @NonNull final String str, @NonNull Bitmap bitmap) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.W
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onPageStarted(WebViewClientProxyApi.WebViewClientImpl.this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.U
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedClientCertRequest(@NonNull final WebView webView, @NonNull final ClientCertRequest clientCertRequest) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.a0
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedClientCertRequest(WebViewClientProxyApi.WebViewClientImpl.this, webView, clientCertRequest, new Function1() { // from class: io.flutter.plugins.webviewflutter.i0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(@NonNull final WebView webView, @NonNull final WebResourceRequest webResourceRequest, @NonNull final WebResourceError webResourceError) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.l0
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedRequestError(WebViewClientProxyApi.WebViewClientImpl.this, webView, webResourceRequest, webResourceError, new Function1() { // from class: io.flutter.plugins.webviewflutter.X
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpAuthRequest(@NonNull final WebView webView, @NonNull final HttpAuthHandler httpAuthHandler, @NonNull final String str, @NonNull final String str2) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.o0
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedHttpAuthRequest(WebViewClientProxyApi.WebViewClientImpl.this, webView, httpAuthHandler, str, str2, new Function1() { // from class: io.flutter.plugins.webviewflutter.h0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(@NonNull final WebView webView, @NonNull final WebResourceRequest webResourceRequest, @NonNull final WebResourceResponse webResourceResponse) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.q0
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedHttpError(WebViewClientProxyApi.WebViewClientImpl.this, webView, webResourceRequest, webResourceResponse, new Function1() { // from class: io.flutter.plugins.webviewflutter.m0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedLoginRequest(@NonNull final WebView webView, @NonNull final String str, @Nullable final String str2, @NonNull final String str3) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.k0
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedLoginRequest(WebViewClientProxyApi.WebViewClientImpl.this, webView, str, str2, str3, new Function1() { // from class: io.flutter.plugins.webviewflutter.c0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(@NonNull final WebView webView, @NonNull final SslErrorHandler sslErrorHandler, @NonNull final SslError sslError) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.j0
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedSslError(WebViewClientProxyApi.WebViewClientImpl.this, webView, sslErrorHandler, sslError, new Function1() { // from class: io.flutter.plugins.webviewflutter.Y
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwww((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onScaleChanged(@NonNull final WebView webView, final float f, final float f2) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.V
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onScaleChanged(WebViewClientProxyApi.WebViewClientImpl.this, webView, f, f2, new Function1() { // from class: io.flutter.plugins.webviewflutter.n0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }

        public void setReturnValueForShouldOverrideUrlLoading(boolean z) {
            this.returnValueForShouldOverrideUrlLoading = z;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(@NonNull final WebView webView, @NonNull final WebResourceRequest webResourceRequest) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.P
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.requestLoading(WebViewClientProxyApi.WebViewClientImpl.this, webView, webResourceRequest, new Function1() { // from class: io.flutter.plugins.webviewflutter.f0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
            return webResourceRequest.isForMainFrame() && this.returnValueForShouldOverrideUrlLoading;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(@NonNull final WebView webView, final int i, @NonNull final String str, @NonNull final String str2) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.e0
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onReceivedError(WebViewClientProxyApi.WebViewClientImpl.this, webView, i, str, str2, new Function1() { // from class: io.flutter.plugins.webviewflutter.M
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Www((Result) obj);
                        }
                    });
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(@NonNull final WebView webView, @NonNull final String str) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.Z
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.urlLoading(WebViewClientProxyApi.WebViewClientImpl.this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.b0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WebViewClientProxyApi.WebViewClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
            return this.returnValueForShouldOverrideUrlLoading;
        }

        @Override // android.webkit.WebViewClient
        public void onUnhandledKeyEvent(@NonNull WebView webView, @NonNull KeyEvent keyEvent) {
        }
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebViewClient
    @NonNull
    public ProxyApiRegistrar getPigeonRegistrar() {
        return (ProxyApiRegistrar) super.getPigeonRegistrar();
    }
}
