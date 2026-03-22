package io.flutter.plugins.webviewflutter;

import android.webkit.WebStorage;
import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class WebStorageProxyApi extends PigeonApiWebStorage {
    public WebStorageProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebStorage
    public void deleteAllData(@NonNull WebStorage webStorage) {
        webStorage.deleteAllData();
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebStorage
    @NonNull
    public WebStorage instance() {
        return WebStorage.getInstance();
    }
}
