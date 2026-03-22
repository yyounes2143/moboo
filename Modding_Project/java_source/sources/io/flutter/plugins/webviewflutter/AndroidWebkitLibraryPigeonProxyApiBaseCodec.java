package io.flutter.plugins.webviewflutter;

import android.net.http.SslCertificate;
import android.net.http.SslError;
import android.os.Message;
import android.view.View;
import android.webkit.ClientCertRequest;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions;
import android.webkit.HttpAuthHandler;
import android.webkit.PermissionRequest;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.webkit.WebResourceErrorCompat;
import androidx.webkit.WebSettingsCompat;
import androidx.webkit.WebViewFeature;
import io.flutter.plugins.webviewflutter.WebChromeClientProxyApi;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\tH\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;", "registrar", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "<init>", "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V", "getRegistrar", "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "readValueOfType", "", "type", "", "buffer", "Ljava/nio/ByteBuffer;", "writeValue", "", "stream", "Ljava/io/ByteArrayOutputStream;", "value", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class AndroidWebkitLibraryPigeonProxyApiBaseCodec extends AndroidWebkitLibraryPigeonCodec {
    @NotNull
    private final AndroidWebkitLibraryPigeonProxyApiRegistrar registrar;

    public AndroidWebkitLibraryPigeonProxyApiBaseCodec(@NotNull AndroidWebkitLibraryPigeonProxyApiRegistrar androidWebkitLibraryPigeonProxyApiRegistrar) {
        this.registrar = androidWebkitLibraryPigeonProxyApiRegistrar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$0(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$1(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$10(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$11(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$12(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$13(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$14(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$15(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$16(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$17(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$18(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$19(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$2(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$20(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$21(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$22(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$23(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$24(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$25(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$26(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$27(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$28(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$29(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$3(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$30(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$31(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$4(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$5(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$6(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$7(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$8(Result result) {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeValue$lambda$9(Result result) {
        return Unit.INSTANCE;
    }

    @NotNull
    public final AndroidWebkitLibraryPigeonProxyApiRegistrar getRegistrar() {
        return this.registrar;
    }

    @Override // io.flutter.plugins.webviewflutter.AndroidWebkitLibraryPigeonCodec, io.flutter.plugin.common.StandardMessageCodec
    @Nullable
    public Object readValueOfType(byte b, @NotNull ByteBuffer byteBuffer) {
        if (b == Byte.MIN_VALUE) {
            return this.registrar.getInstanceManager().getInstance(((Long) readValue(byteBuffer)).longValue());
        }
        return super.readValueOfType(b, byteBuffer);
    }

    @Override // io.flutter.plugins.webviewflutter.AndroidWebkitLibraryPigeonCodec, io.flutter.plugin.common.StandardMessageCodec
    public void writeValue(@NotNull ByteArrayOutputStream byteArrayOutputStream, @Nullable Object obj) {
        if (!(obj instanceof Boolean) && !(obj instanceof byte[]) && !(obj instanceof Double) && !(obj instanceof double[]) && !(obj instanceof float[]) && !(obj instanceof Integer) && !(obj instanceof int[]) && !(obj instanceof List) && !(obj instanceof Long) && !(obj instanceof long[]) && !(obj instanceof Map) && !(obj instanceof String) && !(obj instanceof FileChooserMode) && !(obj instanceof ConsoleMessageLevel) && !(obj instanceof OverScrollMode) && !(obj instanceof SslErrorType) && !(obj instanceof MixedContentMode) && obj != null) {
            if (obj instanceof WebResourceRequest) {
                this.registrar.getPigeonApiWebResourceRequest().pigeon_newInstance((WebResourceRequest) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$0;
                        writeValue$lambda$0 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$0((Result) obj2);
                        return writeValue$lambda$0;
                    }
                });
            } else if (obj instanceof WebResourceResponse) {
                this.registrar.getPigeonApiWebResourceResponse().pigeon_newInstance((WebResourceResponse) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$1;
                        writeValue$lambda$1 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$1((Result) obj2);
                        return writeValue$lambda$1;
                    }
                });
            } else if (obj instanceof WebResourceError) {
                this.registrar.getPigeonApiWebResourceError().pigeon_newInstance((WebResourceError) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$2;
                        writeValue$lambda$2 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$2((Result) obj2);
                        return writeValue$lambda$2;
                    }
                });
            } else if (obj instanceof WebResourceErrorCompat) {
                this.registrar.getPigeonApiWebResourceErrorCompat().pigeon_newInstance((WebResourceErrorCompat) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$3;
                        writeValue$lambda$3 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$3((Result) obj2);
                        return writeValue$lambda$3;
                    }
                });
            } else if (obj instanceof WebViewPoint) {
                this.registrar.getPigeonApiWebViewPoint().pigeon_newInstance((WebViewPoint) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$4;
                        writeValue$lambda$4 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$4((Result) obj2);
                        return writeValue$lambda$4;
                    }
                });
            } else if (obj instanceof ConsoleMessage) {
                this.registrar.getPigeonApiConsoleMessage().pigeon_newInstance((ConsoleMessage) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$5;
                        writeValue$lambda$5 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$5((Result) obj2);
                        return writeValue$lambda$5;
                    }
                });
            } else if (obj instanceof CookieManager) {
                this.registrar.getPigeonApiCookieManager().pigeon_newInstance((CookieManager) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$6;
                        writeValue$lambda$6 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$6((Result) obj2);
                        return writeValue$lambda$6;
                    }
                });
            } else if (obj instanceof WebView) {
                this.registrar.getPigeonApiWebView().pigeon_newInstance((WebView) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$7;
                        writeValue$lambda$7 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$7((Result) obj2);
                        return writeValue$lambda$7;
                    }
                });
            } else if (obj instanceof WebSettings) {
                this.registrar.getPigeonApiWebSettings().pigeon_newInstance((WebSettings) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$8;
                        writeValue$lambda$8 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$8((Result) obj2);
                        return writeValue$lambda$8;
                    }
                });
            } else if (obj instanceof JavaScriptChannel) {
                this.registrar.getPigeonApiJavaScriptChannel().pigeon_newInstance((JavaScriptChannel) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$9;
                        writeValue$lambda$9 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$9((Result) obj2);
                        return writeValue$lambda$9;
                    }
                });
            } else if (obj instanceof WebViewClient) {
                this.registrar.getPigeonApiWebViewClient().pigeon_newInstance((WebViewClient) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$10;
                        writeValue$lambda$10 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$10((Result) obj2);
                        return writeValue$lambda$10;
                    }
                });
            } else if (obj instanceof DownloadListener) {
                this.registrar.getPigeonApiDownloadListener().pigeon_newInstance((DownloadListener) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$11;
                        writeValue$lambda$11 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$11((Result) obj2);
                        return writeValue$lambda$11;
                    }
                });
            } else if (obj instanceof WebChromeClientProxyApi.WebChromeClientImpl) {
                this.registrar.getPigeonApiWebChromeClient().pigeon_newInstance((WebChromeClientProxyApi.WebChromeClientImpl) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$12;
                        writeValue$lambda$12 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$12((Result) obj2);
                        return writeValue$lambda$12;
                    }
                });
            } else if (obj instanceof FlutterAssetManager) {
                this.registrar.getPigeonApiFlutterAssetManager().pigeon_newInstance((FlutterAssetManager) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Www
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$13;
                        writeValue$lambda$13 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$13((Result) obj2);
                        return writeValue$lambda$13;
                    }
                });
            } else if (obj instanceof WebStorage) {
                this.registrar.getPigeonApiWebStorage().pigeon_newInstance((WebStorage) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Kkkkkkkkkkkkkkkkkkkkkkkkkk
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$14;
                        writeValue$lambda$14 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$14((Result) obj2);
                        return writeValue$lambda$14;
                    }
                });
            } else if (obj instanceof WebChromeClient.FileChooserParams) {
                this.registrar.getPigeonApiFileChooserParams().pigeon_newInstance((WebChromeClient.FileChooserParams) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Kkkkkkkkkkkkkkkkkkkkkkkkk
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$15;
                        writeValue$lambda$15 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$15((Result) obj2);
                        return writeValue$lambda$15;
                    }
                });
            } else if (obj instanceof PermissionRequest) {
                this.registrar.getPigeonApiPermissionRequest().pigeon_newInstance((PermissionRequest) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Kkkkkkkkkkkkkkkkkkkkkkkk
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$16;
                        writeValue$lambda$16 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$16((Result) obj2);
                        return writeValue$lambda$16;
                    }
                });
            } else if (obj instanceof WebChromeClient.CustomViewCallback) {
                this.registrar.getPigeonApiCustomViewCallback().pigeon_newInstance((WebChromeClient.CustomViewCallback) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Kkkkkkkkkkkkkkkkkkkkkkk
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$17;
                        writeValue$lambda$17 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$17((Result) obj2);
                        return writeValue$lambda$17;
                    }
                });
            } else if (obj instanceof View) {
                this.registrar.getPigeonApiView().pigeon_newInstance((View) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Kkkkkkkkkkkkkkkkkkkkkk
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$18;
                        writeValue$lambda$18 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$18((Result) obj2);
                        return writeValue$lambda$18;
                    }
                });
            } else if (obj instanceof GeolocationPermissions.Callback) {
                this.registrar.getPigeonApiGeolocationPermissionsCallback().pigeon_newInstance((GeolocationPermissions.Callback) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$19;
                        writeValue$lambda$19 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$19((Result) obj2);
                        return writeValue$lambda$19;
                    }
                });
            } else if (obj instanceof HttpAuthHandler) {
                this.registrar.getPigeonApiHttpAuthHandler().pigeon_newInstance((HttpAuthHandler) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$20;
                        writeValue$lambda$20 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$20((Result) obj2);
                        return writeValue$lambda$20;
                    }
                });
            } else if (obj instanceof Message) {
                this.registrar.getPigeonApiAndroidMessage().pigeon_newInstance((Message) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$21;
                        writeValue$lambda$21 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$21((Result) obj2);
                        return writeValue$lambda$21;
                    }
                });
            } else if (obj instanceof ClientCertRequest) {
                this.registrar.getPigeonApiClientCertRequest().pigeon_newInstance((ClientCertRequest) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$22;
                        writeValue$lambda$22 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$22((Result) obj2);
                        return writeValue$lambda$22;
                    }
                });
            } else if (obj instanceof PrivateKey) {
                this.registrar.getPigeonApiPrivateKey().pigeon_newInstance((PrivateKey) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$23;
                        writeValue$lambda$23 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$23((Result) obj2);
                        return writeValue$lambda$23;
                    }
                });
            } else if (obj instanceof X509Certificate) {
                this.registrar.getPigeonApiX509Certificate().pigeon_newInstance((X509Certificate) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$24;
                        writeValue$lambda$24 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$24((Result) obj2);
                        return writeValue$lambda$24;
                    }
                });
            } else if (obj instanceof SslErrorHandler) {
                this.registrar.getPigeonApiSslErrorHandler().pigeon_newInstance((SslErrorHandler) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$25;
                        writeValue$lambda$25 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$25((Result) obj2);
                        return writeValue$lambda$25;
                    }
                });
            } else if (obj instanceof SslError) {
                this.registrar.getPigeonApiSslError().pigeon_newInstance((SslError) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$26;
                        writeValue$lambda$26 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$26((Result) obj2);
                        return writeValue$lambda$26;
                    }
                });
            } else if (obj instanceof SslCertificate.DName) {
                this.registrar.getPigeonApiSslCertificateDName().pigeon_newInstance((SslCertificate.DName) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$27;
                        writeValue$lambda$27 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$27((Result) obj2);
                        return writeValue$lambda$27;
                    }
                });
            } else if (obj instanceof SslCertificate) {
                this.registrar.getPigeonApiSslCertificate().pigeon_newInstance((SslCertificate) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$28;
                        writeValue$lambda$28 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$28((Result) obj2);
                        return writeValue$lambda$28;
                    }
                });
            } else if (obj instanceof Certificate) {
                this.registrar.getPigeonApiCertificate().pigeon_newInstance((Certificate) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$29;
                        writeValue$lambda$29 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$29((Result) obj2);
                        return writeValue$lambda$29;
                    }
                });
            } else if (obj instanceof WebSettingsCompat) {
                this.registrar.getPigeonApiWebSettingsCompat().pigeon_newInstance((WebSettingsCompat) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$30;
                        writeValue$lambda$30 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$30((Result) obj2);
                        return writeValue$lambda$30;
                    }
                });
            } else if (obj instanceof WebViewFeature) {
                this.registrar.getPigeonApiWebViewFeature().pigeon_newInstance((WebViewFeature) obj, new Function1() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwww
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Unit writeValue$lambda$31;
                        writeValue$lambda$31 = AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$31((Result) obj2);
                        return writeValue$lambda$31;
                    }
                });
            }
            if (this.registrar.getInstanceManager().containsInstance(obj)) {
                byteArrayOutputStream.write(128);
                writeValue(byteArrayOutputStream, this.registrar.getInstanceManager().getIdentifierForStrongReference(obj));
                return;
            }
            String name = obj.getClass().getName();
            throw new IllegalArgumentException("Unsupported value: '" + obj + "' of type '" + name + "'");
        }
        super.writeValue(byteArrayOutputStream, obj);
    }
}
