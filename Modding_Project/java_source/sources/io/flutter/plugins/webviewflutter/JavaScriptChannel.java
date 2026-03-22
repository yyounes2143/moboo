package io.flutter.plugins.webviewflutter;

import android.webkit.JavascriptInterface;
import androidx.annotation.NonNull;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class JavaScriptChannel {
    private final JavaScriptChannelProxyApi api;
    final String javaScriptChannelName;

    public JavaScriptChannel(@NonNull String str, @NonNull JavaScriptChannelProxyApi javaScriptChannelProxyApi) {
        this.javaScriptChannelName = str;
        this.api = javaScriptChannelProxyApi;
    }

    public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
        return null;
    }

    @JavascriptInterface
    public void postMessage(@NonNull final String str) {
        this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.Kkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                r0.api.postMessage(JavaScriptChannel.this, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.Kkkkkkkkkkkkkkkkk
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return JavaScriptChannel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                    }
                });
            }
        });
    }
}
