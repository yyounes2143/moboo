package io.flutter.plugins.webviewflutter;

import android.webkit.DownloadListener;
import androidx.annotation.NonNull;
import io.flutter.plugins.webviewflutter.DownloadListenerProxyApi;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class DownloadListenerProxyApi extends PigeonApiDownloadListener {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class DownloadListenerImpl implements DownloadListener {
        private final DownloadListenerProxyApi api;

        public DownloadListenerImpl(@NonNull DownloadListenerProxyApi downloadListenerProxyApi) {
            this.api = downloadListenerProxyApi;
        }

        public static /* synthetic */ Unit Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Result result) {
            return null;
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(@NonNull final String str, @NonNull final String str2, @NonNull final String str3, @NonNull final String str4, final long j) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.Kkkkkkkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    r0.api.onDownloadStart(DownloadListenerProxyApi.DownloadListenerImpl.this, str, str2, str3, str4, j, new Function1() { // from class: io.flutter.plugins.webviewflutter.Kkkkkkkkkkkkkkkkkkk
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return DownloadListenerProxyApi.DownloadListenerImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Result) obj);
                        }
                    });
                }
            });
        }
    }

    public DownloadListenerProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiDownloadListener
    @NonNull
    public DownloadListener pigeon_defaultConstructor() {
        return new DownloadListenerImpl(this);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiDownloadListener
    @NonNull
    public ProxyApiRegistrar getPigeonRegistrar() {
        return (ProxyApiRegistrar) super.getPigeonRegistrar();
    }
}
