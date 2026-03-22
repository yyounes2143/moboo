package io.flutter.plugins.webviewflutter;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugins.webviewflutter.AndroidWebkitLibraryPigeonInstanceManager;
import io.flutter.plugins.webviewflutter.AndroidWebkitLibraryPigeonProxyApiRegistrar;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000ò\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0017\u001a\u00020\u0018H&J\b\u0010\u0019\u001a\u00020\u001aH&J\b\u0010\u001b\u001a\u00020\u001cH&J\b\u0010\u001d\u001a\u00020\u001eH&J\b\u0010\u001f\u001a\u00020 H&J\b\u0010!\u001a\u00020\"H&J\b\u0010#\u001a\u00020$H&J\b\u0010%\u001a\u00020&H&J\b\u0010'\u001a\u00020(H&J\b\u0010)\u001a\u00020*H&J\b\u0010+\u001a\u00020,H&J\b\u0010-\u001a\u00020.H&J\b\u0010/\u001a\u000200H&J\b\u00101\u001a\u000202H&J\b\u00103\u001a\u000204H&J\b\u00105\u001a\u000206H&J\b\u00107\u001a\u000208H&J\b\u00109\u001a\u00020:H&J\b\u0010;\u001a\u00020<H&J\b\u0010=\u001a\u00020>H&J\b\u0010?\u001a\u00020@H&J\b\u0010A\u001a\u00020BH&J\b\u0010C\u001a\u00020DH&J\b\u0010E\u001a\u00020FH\u0016J\b\u0010G\u001a\u00020HH\u0016J\b\u0010I\u001a\u00020JH&J\b\u0010K\u001a\u00020LH&J\b\u0010M\u001a\u00020NH&J\b\u0010O\u001a\u00020PH&J\b\u0010Q\u001a\u00020RH&J\b\u0010S\u001a\u00020TH&J\b\u0010U\u001a\u00020VH&J\u0006\u0010W\u001a\u00020XJ\u0006\u0010Y\u001a\u00020XR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0012\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0019\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00138F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006Z"}, d2 = {"Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "", "binaryMessenger", "Lio/flutter/plugin/common/BinaryMessenger;", "<init>", "(Lio/flutter/plugin/common/BinaryMessenger;)V", "getBinaryMessenger", "()Lio/flutter/plugin/common/BinaryMessenger;", "ignoreCallsToDart", "", "getIgnoreCallsToDart", "()Z", "setIgnoreCallsToDart", "(Z)V", "instanceManager", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;", "getInstanceManager", "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;", "_codec", "Lio/flutter/plugin/common/MessageCodec;", "codec", "getCodec", "()Lio/flutter/plugin/common/MessageCodec;", "getPigeonApiWebResourceRequest", "Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;", "getPigeonApiWebResourceResponse", "Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceResponse;", "getPigeonApiWebResourceError", "Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;", "getPigeonApiWebResourceErrorCompat", "Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;", "getPigeonApiWebViewPoint", "Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;", "getPigeonApiConsoleMessage", "Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;", "getPigeonApiCookieManager", "Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;", "getPigeonApiWebView", "Lio/flutter/plugins/webviewflutter/PigeonApiWebView;", "getPigeonApiWebSettings", "Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;", "getPigeonApiJavaScriptChannel", "Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;", "getPigeonApiWebViewClient", "Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;", "getPigeonApiDownloadListener", "Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;", "getPigeonApiWebChromeClient", "Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;", "getPigeonApiFlutterAssetManager", "Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;", "getPigeonApiWebStorage", "Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;", "getPigeonApiFileChooserParams", "Lio/flutter/plugins/webviewflutter/PigeonApiFileChooserParams;", "getPigeonApiPermissionRequest", "Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;", "getPigeonApiCustomViewCallback", "Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;", "getPigeonApiView", "Lio/flutter/plugins/webviewflutter/PigeonApiView;", "getPigeonApiGeolocationPermissionsCallback", "Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;", "getPigeonApiHttpAuthHandler", "Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;", "getPigeonApiAndroidMessage", "Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;", "getPigeonApiClientCertRequest", "Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;", "getPigeonApiPrivateKey", "Lio/flutter/plugins/webviewflutter/PigeonApiPrivateKey;", "getPigeonApiX509Certificate", "Lio/flutter/plugins/webviewflutter/PigeonApiX509Certificate;", "getPigeonApiSslErrorHandler", "Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;", "getPigeonApiSslError", "Lio/flutter/plugins/webviewflutter/PigeonApiSslError;", "getPigeonApiSslCertificateDName", "Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;", "getPigeonApiSslCertificate", "Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;", "getPigeonApiCertificate", "Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;", "getPigeonApiWebSettingsCompat", "Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;", "getPigeonApiWebViewFeature", "Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;", "setUp", "", "tearDown", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes6.dex */
public abstract class AndroidWebkitLibraryPigeonProxyApiRegistrar {
    @Nullable
    private MessageCodec<Object> _codec;
    @NotNull
    private final BinaryMessenger binaryMessenger;
    private boolean ignoreCallsToDart;
    @NotNull
    private final AndroidWebkitLibraryPigeonInstanceManager instanceManager;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"io/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar$1", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;", "onFinalize", "", "identifier", "", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* renamed from: io.flutter.plugins.webviewflutter.AndroidWebkitLibraryPigeonProxyApiRegistrar$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass1 implements AndroidWebkitLibraryPigeonInstanceManager.PigeonFinalizationListener {
        final /* synthetic */ AndroidWebkitLibraryPigeonInstanceManagerApi $api;

        public AnonymousClass1(AndroidWebkitLibraryPigeonInstanceManagerApi androidWebkitLibraryPigeonInstanceManagerApi) {
            this.$api = androidWebkitLibraryPigeonInstanceManagerApi;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit onFinalize$lambda$0(long j, Result result) {
            Result.m444isFailureimpl(result.m447unboximpl());
            return Unit.INSTANCE;
        }

        @Override // io.flutter.plugins.webviewflutter.AndroidWebkitLibraryPigeonInstanceManager.PigeonFinalizationListener
        public void onFinalize(final long j) {
            this.$api.removeStrongReference(j, new Function1() { // from class: io.flutter.plugins.webviewflutter.Kkkkkkkkkkkkkkkkkkkkk
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit onFinalize$lambda$0;
                    onFinalize$lambda$0 = AndroidWebkitLibraryPigeonProxyApiRegistrar.AnonymousClass1.onFinalize$lambda$0(j, (Result) obj);
                    return onFinalize$lambda$0;
                }
            });
        }
    }

    public AndroidWebkitLibraryPigeonProxyApiRegistrar(@NotNull BinaryMessenger binaryMessenger) {
        this.binaryMessenger = binaryMessenger;
        this.instanceManager = AndroidWebkitLibraryPigeonInstanceManager.Companion.create(new AnonymousClass1(new AndroidWebkitLibraryPigeonInstanceManagerApi(binaryMessenger)));
    }

    @NotNull
    public final BinaryMessenger getBinaryMessenger() {
        return this.binaryMessenger;
    }

    @NotNull
    public final MessageCodec<Object> getCodec() {
        if (this._codec == null) {
            this._codec = new AndroidWebkitLibraryPigeonProxyApiBaseCodec(this);
        }
        return this._codec;
    }

    public final boolean getIgnoreCallsToDart() {
        return this.ignoreCallsToDart;
    }

    @NotNull
    public final AndroidWebkitLibraryPigeonInstanceManager getInstanceManager() {
        return this.instanceManager;
    }

    @NotNull
    public abstract PigeonApiAndroidMessage getPigeonApiAndroidMessage();

    @NotNull
    public abstract PigeonApiCertificate getPigeonApiCertificate();

    @NotNull
    public abstract PigeonApiClientCertRequest getPigeonApiClientCertRequest();

    @NotNull
    public abstract PigeonApiConsoleMessage getPigeonApiConsoleMessage();

    @NotNull
    public abstract PigeonApiCookieManager getPigeonApiCookieManager();

    @NotNull
    public abstract PigeonApiCustomViewCallback getPigeonApiCustomViewCallback();

    @NotNull
    public abstract PigeonApiDownloadListener getPigeonApiDownloadListener();

    @NotNull
    public abstract PigeonApiFileChooserParams getPigeonApiFileChooserParams();

    @NotNull
    public abstract PigeonApiFlutterAssetManager getPigeonApiFlutterAssetManager();

    @NotNull
    public abstract PigeonApiGeolocationPermissionsCallback getPigeonApiGeolocationPermissionsCallback();

    @NotNull
    public abstract PigeonApiHttpAuthHandler getPigeonApiHttpAuthHandler();

    @NotNull
    public abstract PigeonApiJavaScriptChannel getPigeonApiJavaScriptChannel();

    @NotNull
    public abstract PigeonApiPermissionRequest getPigeonApiPermissionRequest();

    @NotNull
    public PigeonApiPrivateKey getPigeonApiPrivateKey() {
        return new PigeonApiPrivateKey(this);
    }

    @NotNull
    public abstract PigeonApiSslCertificate getPigeonApiSslCertificate();

    @NotNull
    public abstract PigeonApiSslCertificateDName getPigeonApiSslCertificateDName();

    @NotNull
    public abstract PigeonApiSslError getPigeonApiSslError();

    @NotNull
    public abstract PigeonApiSslErrorHandler getPigeonApiSslErrorHandler();

    @NotNull
    public abstract PigeonApiView getPigeonApiView();

    @NotNull
    public abstract PigeonApiWebChromeClient getPigeonApiWebChromeClient();

    @NotNull
    public abstract PigeonApiWebResourceError getPigeonApiWebResourceError();

    @NotNull
    public abstract PigeonApiWebResourceErrorCompat getPigeonApiWebResourceErrorCompat();

    @NotNull
    public abstract PigeonApiWebResourceRequest getPigeonApiWebResourceRequest();

    @NotNull
    public abstract PigeonApiWebResourceResponse getPigeonApiWebResourceResponse();

    @NotNull
    public abstract PigeonApiWebSettings getPigeonApiWebSettings();

    @NotNull
    public abstract PigeonApiWebSettingsCompat getPigeonApiWebSettingsCompat();

    @NotNull
    public abstract PigeonApiWebStorage getPigeonApiWebStorage();

    @NotNull
    public abstract PigeonApiWebView getPigeonApiWebView();

    @NotNull
    public abstract PigeonApiWebViewClient getPigeonApiWebViewClient();

    @NotNull
    public abstract PigeonApiWebViewFeature getPigeonApiWebViewFeature();

    @NotNull
    public abstract PigeonApiWebViewPoint getPigeonApiWebViewPoint();

    @NotNull
    public PigeonApiX509Certificate getPigeonApiX509Certificate() {
        return new PigeonApiX509Certificate(this);
    }

    public final void setIgnoreCallsToDart(boolean z) {
        this.ignoreCallsToDart = z;
    }

    public final void setUp() {
        AndroidWebkitLibraryPigeonInstanceManagerApi.Companion.setUpMessageHandlers(this.binaryMessenger, this.instanceManager);
        PigeonApiCookieManager.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiCookieManager());
        PigeonApiWebView.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebView());
        PigeonApiWebSettings.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebSettings());
        PigeonApiJavaScriptChannel.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiJavaScriptChannel());
        PigeonApiWebViewClient.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebViewClient());
        PigeonApiDownloadListener.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiDownloadListener());
        PigeonApiWebChromeClient.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebChromeClient());
        PigeonApiFlutterAssetManager.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiFlutterAssetManager());
        PigeonApiWebStorage.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebStorage());
        PigeonApiPermissionRequest.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiPermissionRequest());
        PigeonApiCustomViewCallback.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiCustomViewCallback());
        PigeonApiView.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiView());
        PigeonApiGeolocationPermissionsCallback.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiGeolocationPermissionsCallback());
        PigeonApiHttpAuthHandler.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiHttpAuthHandler());
        PigeonApiAndroidMessage.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiAndroidMessage());
        PigeonApiClientCertRequest.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiClientCertRequest());
        PigeonApiSslErrorHandler.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiSslErrorHandler());
        PigeonApiSslError.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiSslError());
        PigeonApiSslCertificateDName.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiSslCertificateDName());
        PigeonApiSslCertificate.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiSslCertificate());
        PigeonApiCertificate.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiCertificate());
        PigeonApiWebSettingsCompat.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebSettingsCompat());
        PigeonApiWebViewFeature.Companion.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebViewFeature());
    }

    public final void tearDown() {
        AndroidWebkitLibraryPigeonInstanceManagerApi.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiCookieManager.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebView.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebSettings.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiJavaScriptChannel.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebViewClient.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiDownloadListener.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebChromeClient.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiFlutterAssetManager.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebStorage.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiPermissionRequest.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiCustomViewCallback.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiView.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiGeolocationPermissionsCallback.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiHttpAuthHandler.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiAndroidMessage.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiClientCertRequest.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiSslErrorHandler.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiSslError.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiSslCertificateDName.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiSslCertificate.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiCertificate.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebSettingsCompat.Companion.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebViewFeature.Companion.setUpMessageHandlers(this.binaryMessenger, null);
    }
}
