package io.flutter.plugins.webviewflutter;

import android.net.Uri;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import io.flutter.plugins.webviewflutter.WebChromeClientProxyApi;
import j$.util.Objects;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class WebChromeClientProxyApi extends PigeonApiWebChromeClient {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class SecureWebChromeClient extends WebChromeClient {
        @Nullable
        WebViewClient webViewClient;

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(@NonNull WebView webView, boolean z, boolean z2, @NonNull Message message) {
            return onCreateWindow(webView, message, new WebView(webView.getContext()));
        }

        public void setWebViewClient(@NonNull WebViewClient webViewClient) {
            this.webViewClient = webViewClient;
        }

        @VisibleForTesting
        public boolean onCreateWindow(@NonNull final WebView webView, @NonNull Message message, @Nullable WebView webView2) {
            if (this.webViewClient == null) {
                return false;
            }
            WebViewClient webViewClient = new WebViewClient() { // from class: io.flutter.plugins.webviewflutter.WebChromeClientProxyApi.SecureWebChromeClient.1
                @Override // android.webkit.WebViewClient
                @RequiresApi(api = 24)
                public boolean shouldOverrideUrlLoading(@NonNull WebView webView3, @NonNull WebResourceRequest webResourceRequest) {
                    boolean shouldOverrideUrlLoading;
                    shouldOverrideUrlLoading = SecureWebChromeClient.this.webViewClient.shouldOverrideUrlLoading(webView, webResourceRequest);
                    if (shouldOverrideUrlLoading) {
                        return true;
                    }
                    WebView webView4 = webView;
                    String uri = webResourceRequest.getUrl().toString();
                    webView4.loadUrl(uri);
                    JSHookAop.loadUrl(webView4, uri);
                    return true;
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView3, String str) {
                    if (SecureWebChromeClient.this.webViewClient.shouldOverrideUrlLoading(webView, str)) {
                        return true;
                    }
                    WebView webView4 = webView;
                    webView4.loadUrl(str);
                    JSHookAop.loadUrl(webView4, str);
                    return true;
                }
            };
            if (webView2 == null) {
                webView2 = new WebView(webView.getContext());
            }
            webView2.setWebViewClient(webViewClient);
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            return true;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class WebChromeClientImpl extends SecureWebChromeClient {
        private static final String TAG = "WebChromeClientImpl";
        private final WebChromeClientProxyApi api;
        private boolean returnValueForOnShowFileChooser = false;
        private boolean returnValueForOnConsoleMessage = false;
        private boolean returnValueForOnJsAlert = false;
        private boolean returnValueForOnJsConfirm = false;
        private boolean returnValueForOnJsPrompt = false;

        public WebChromeClientImpl(@NonNull WebChromeClientProxyApi webChromeClientProxyApi) {
            this.api = webChromeClientProxyApi;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwww(WebChromeClientImpl webChromeClientImpl, boolean z, ValueCallback valueCallback, ResultCompat resultCompat) {
            webChromeClientImpl.getClass();
            if (resultCompat.isFailure()) {
                ProxyApiRegistrar pigeonRegistrar = webChromeClientImpl.api.getPigeonRegistrar();
                Throwable exceptionOrNull = resultCompat.exceptionOrNull();
                Objects.requireNonNull(exceptionOrNull);
                pigeonRegistrar.logError(TAG, exceptionOrNull);
                return null;
            }
            List list = (List) resultCompat.getOrNull();
            Objects.requireNonNull(list);
            List list2 = list;
            if (z) {
                Uri[] uriArr = new Uri[list2.size()];
                for (int i = 0; i < list2.size(); i++) {
                    uriArr[i] = Uri.parse((String) list2.get(i));
                }
                valueCallback.onReceiveValue(uriArr);
            }
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebChromeClientImpl webChromeClientImpl, JsResult jsResult, ResultCompat resultCompat) {
            webChromeClientImpl.getClass();
            if (resultCompat.isFailure()) {
                ProxyApiRegistrar pigeonRegistrar = webChromeClientImpl.api.getPigeonRegistrar();
                Throwable exceptionOrNull = resultCompat.exceptionOrNull();
                Objects.requireNonNull(exceptionOrNull);
                pigeonRegistrar.logError(TAG, exceptionOrNull);
                return null;
            } else if (Boolean.TRUE.equals(resultCompat.getOrNull())) {
                jsResult.confirm();
                return null;
            } else {
                jsResult.cancel();
                return null;
            }
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebChromeClientImpl webChromeClientImpl, JsResult jsResult, ResultCompat resultCompat) {
            webChromeClientImpl.getClass();
            if (resultCompat.isFailure()) {
                ProxyApiRegistrar pigeonRegistrar = webChromeClientImpl.api.getPigeonRegistrar();
                Throwable exceptionOrNull = resultCompat.exceptionOrNull();
                Objects.requireNonNull(exceptionOrNull);
                pigeonRegistrar.logError(TAG, exceptionOrNull);
                return null;
            }
            jsResult.confirm();
            return null;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebChromeClientImpl webChromeClientImpl, JsPromptResult jsPromptResult, ResultCompat resultCompat) {
            webChromeClientImpl.getClass();
            if (resultCompat.isFailure()) {
                ProxyApiRegistrar pigeonRegistrar = webChromeClientImpl.api.getPigeonRegistrar();
                Throwable exceptionOrNull = resultCompat.exceptionOrNull();
                Objects.requireNonNull(exceptionOrNull);
                pigeonRegistrar.logError(TAG, exceptionOrNull);
                return null;
            }
            String str = (String) resultCompat.getOrNull();
            if (str != null) {
                jsPromptResult.confirm(str);
                return null;
            }
            jsPromptResult.cancel();
            return null;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            this.api.onConsoleMessage(this, consoleMessage, new Function1() { // from class: io.flutter.plugins.webviewflutter.Mm
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                }
            });
            return this.returnValueForOnConsoleMessage;
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsHidePrompt() {
            this.api.onGeolocationPermissionsHidePrompt(this, new Function1() { // from class: io.flutter.plugins.webviewflutter.Mmmm
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(@NonNull String str, @NonNull GeolocationPermissions.Callback callback) {
            this.api.onGeolocationPermissionsShowPrompt(this, str, callback, new Function1() { // from class: io.flutter.plugins.webviewflutter.tooSimple
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            this.api.onHideCustomView(this, new Function1() { // from class: io.flutter.plugins.webviewflutter.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
            if (this.returnValueForOnJsAlert) {
                this.api.onJsAlert(this, webView, str, str2, ResultCompat.asCompatCallback(new Function1() { // from class: io.flutter.plugins.webviewflutter.sometimesNaive
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return WebChromeClientProxyApi.WebChromeClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebChromeClientProxyApi.WebChromeClientImpl.this, jsResult, (ResultCompat) obj);
                    }
                }));
                return true;
            }
            return false;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
            if (this.returnValueForOnJsConfirm) {
                this.api.onJsConfirm(this, webView, str, str2, ResultCompat.asCompatCallback(new Function1() { // from class: io.flutter.plugins.webviewflutter.Mmmmm
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return WebChromeClientProxyApi.WebChromeClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebChromeClientProxyApi.WebChromeClientImpl.this, jsResult, (ResultCompat) obj);
                    }
                }));
                return true;
            }
            return false;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, final JsPromptResult jsPromptResult) {
            if (this.returnValueForOnJsPrompt) {
                this.api.onJsPrompt(this, webView, str, str2, str3, ResultCompat.asCompatCallback(new Function1() { // from class: io.flutter.plugins.webviewflutter.Mmm
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return WebChromeClientProxyApi.WebChromeClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebChromeClientProxyApi.WebChromeClientImpl.this, jsPromptResult, (ResultCompat) obj);
                    }
                }));
                return true;
            }
            return false;
        }

        @Override // android.webkit.WebChromeClient
        public void onPermissionRequest(@NonNull PermissionRequest permissionRequest) {
            this.api.onPermissionRequest(this, permissionRequest, new Function1() { // from class: io.flutter.plugins.webviewflutter.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(@NonNull WebView webView, int i) {
            this.api.onProgressChanged(this, webView, i, new Function1() { // from class: io.flutter.plugins.webviewflutter.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            this.api.onShowCustomView(this, view, customViewCallback, new Function1() { // from class: io.flutter.plugins.webviewflutter.tooYoung
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(@NonNull WebView webView, @NonNull final ValueCallback<Uri[]> valueCallback, @NonNull WebChromeClient.FileChooserParams fileChooserParams) {
            final boolean z = this.returnValueForOnShowFileChooser;
            this.api.onShowFileChooser(this, webView, fileChooserParams, ResultCompat.asCompatCallback(new Function1() { // from class: io.flutter.plugins.webviewflutter.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.Wwwwwwwwwwwwwwwwwwwwwwww(WebChromeClientProxyApi.WebChromeClientImpl.this, z, valueCallback, (ResultCompat) obj);
                }
            }));
            return z;
        }

        public void setReturnValueForOnConsoleMessage(boolean z) {
            this.returnValueForOnConsoleMessage = z;
        }

        public void setReturnValueForOnJsAlert(boolean z) {
            this.returnValueForOnJsAlert = z;
        }

        public void setReturnValueForOnJsConfirm(boolean z) {
            this.returnValueForOnJsConfirm = z;
        }

        public void setReturnValueForOnJsPrompt(boolean z) {
            this.returnValueForOnJsPrompt = z;
        }

        public void setReturnValueForOnShowFileChooser(boolean z) {
            this.returnValueForOnShowFileChooser = z;
        }
    }

    public WebChromeClientProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    @NonNull
    public WebChromeClientImpl pigeon_defaultConstructor() {
        return new WebChromeClientImpl(this);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    public void setSynchronousReturnValueForOnConsoleMessage(@NonNull WebChromeClientImpl webChromeClientImpl, boolean z) {
        webChromeClientImpl.setReturnValueForOnConsoleMessage(z);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    public void setSynchronousReturnValueForOnJsAlert(@NonNull WebChromeClientImpl webChromeClientImpl, boolean z) {
        webChromeClientImpl.setReturnValueForOnJsAlert(z);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    public void setSynchronousReturnValueForOnJsConfirm(@NonNull WebChromeClientImpl webChromeClientImpl, boolean z) {
        webChromeClientImpl.setReturnValueForOnJsConfirm(z);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    public void setSynchronousReturnValueForOnJsPrompt(@NonNull WebChromeClientImpl webChromeClientImpl, boolean z) {
        webChromeClientImpl.setReturnValueForOnJsPrompt(z);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    public void setSynchronousReturnValueForOnShowFileChooser(@NonNull WebChromeClientImpl webChromeClientImpl, boolean z) {
        webChromeClientImpl.setReturnValueForOnShowFileChooser(z);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    @NonNull
    public ProxyApiRegistrar getPigeonRegistrar() {
        return (ProxyApiRegistrar) super.getPigeonRegistrar();
    }
}
