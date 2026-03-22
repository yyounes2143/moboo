package io.flutter.plugins.webviewflutter;

import android.webkit.SslErrorHandler;
import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class SslErrorHandlerProxyApi extends PigeonApiSslErrorHandler {
    public SslErrorHandlerProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiSslErrorHandler
    public void cancel(@NonNull SslErrorHandler sslErrorHandler) {
        sslErrorHandler.cancel();
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiSslErrorHandler
    public void proceed(@NonNull SslErrorHandler sslErrorHandler) {
        sslErrorHandler.proceed();
    }
}
