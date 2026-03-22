package io.flutter.plugins.webviewflutter;

import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.embedding.engine.FlutterEngine;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class r0 {
    @Nullable
    public static WebView Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull FlutterEngine flutterEngine, long j) {
        WebViewFlutterPlugin webViewFlutterPlugin = (WebViewFlutterPlugin) flutterEngine.getPlugins().get(WebViewFlutterPlugin.class);
        if (webViewFlutterPlugin != null && webViewFlutterPlugin.getInstanceManager() != null) {
            Object androidWebkitLibraryPigeonInstanceManager = webViewFlutterPlugin.getInstanceManager().getInstance(j);
            if (androidWebkitLibraryPigeonInstanceManager instanceof WebView) {
                return (WebView) androidWebkitLibraryPigeonInstanceManager;
            }
            return null;
        }
        return null;
    }
}
