package io.flutter.plugins.webviewflutter;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class WebViewPointProxyApi extends PigeonApiWebViewPoint {
    public WebViewPointProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebViewPoint
    public long x(@NonNull WebViewPoint webViewPoint) {
        return webViewPoint.getX();
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebViewPoint
    public long y(@NonNull WebViewPoint webViewPoint) {
        return webViewPoint.getY();
    }
}
