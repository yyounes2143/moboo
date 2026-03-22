package io.flutter.plugins.webviewflutter;

import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugins.webviewflutter.PigeonApiWebView;
import io.flutter.plugins.webviewflutter.WebChromeClientProxyApi;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 G2\u00020\u0001:\u0001GB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tH&J,\u0010\r\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0010H&J@\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\t2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u0010H&J,\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00102\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u0019H&J \u0010\u001a\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u001bH&J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00102\u0006\u0010\f\u001a\u00020\tH&J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\f\u001a\u00020\tH&J\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\f\u001a\u00020\tH&J\u0010\u0010 \u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\tH&J\u0010\u0010!\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\tH&J\u0010\u0010\"\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\tH&J\u0018\u0010#\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u001eH&J4\u0010%\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u00102\u001a\u0010'\u001a\u0016\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100)\u0012\u0004\u0012\u00020\u000e0(H&J\u0012\u0010*\u001a\u0004\u0018\u00010\u00102\u0006\u0010\f\u001a\u00020\tH&J\u0010\u0010+\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020\u001eH&J\u001a\u0010-\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\t2\b\u0010.\u001a\u0004\u0018\u00010/H&J\u0018\u00100\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\t2\u0006\u00101\u001a\u000202H&J\u0018\u00103\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\t2\u0006\u00104\u001a\u00020\u0010H&J\u001a\u00105\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\t2\b\u00106\u001a\u0004\u0018\u000107H&J\u001a\u00108\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\t2\b\u0010.\u001a\u0004\u0018\u000109H&J\u0018\u0010:\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010;\u001a\u00020<H&J\u0010\u0010=\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\tH&J(\u0010>\u001a\u00020\u000e2\u0006\u0010?\u001a\u00020\t2\u0018\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0)\u0012\u0004\u0012\u00020\u000e0(JH\u0010@\u001a\u00020\u000e2\u0006\u0010?\u001a\u00020\t2\u0006\u0010A\u001a\u00020<2\u0006\u0010B\u001a\u00020<2\u0006\u0010C\u001a\u00020<2\u0006\u0010D\u001a\u00020<2\u0018\u0010'\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0)\u0012\u0004\u0012\u00020\u000e0(J\u0006\u0010E\u001a\u00020FR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006H"}, d2 = {"Lio/flutter/plugins/webviewflutter/PigeonApiWebView;", "", "pigeonRegistrar", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "<init>", "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V", "getPigeonRegistrar", "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "pigeon_defaultConstructor", "Landroid/webkit/WebView;", "settings", "Landroid/webkit/WebSettings;", "pigeon_instance", "loadData", "", "data", "", "mimeType", "encoding", "loadDataWithBaseUrl", "baseUrl", "historyUrl", "loadUrl", "url", "headers", "", "postUrl", "", "getUrl", "canGoBack", "", "canGoForward", "goBack", "goForward", "reload", "clearCache", "includeDiskFiles", "evaluateJavascript", "javascriptString", "callback", "Lkotlin/Function1;", "Lkotlin/Result;", "getTitle", "setWebContentsDebuggingEnabled", "enabled", "setWebViewClient", "client", "Landroid/webkit/WebViewClient;", "addJavaScriptChannel", AppsFlyerProperties.CHANNEL, "Lio/flutter/plugins/webviewflutter/JavaScriptChannel;", "removeJavaScriptChannel", "name", "setDownloadListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/webkit/DownloadListener;", "setWebChromeClient", "Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;", "setBackgroundColor", "color", "", "destroy", "pigeon_newInstance", "pigeon_instanceArg", "onScrollChanged", "leftArg", "topArg", "oldLeftArg", "oldTopArg", "pigeon_getPigeonApiView", "Lio/flutter/plugins/webviewflutter/PigeonApiView;", "Companion", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes6.dex */
public abstract class PigeonApiWebView {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t¨\u0006\n"}, d2 = {"Lio/flutter/plugins/webviewflutter/PigeonApiWebView$Companion;", "", "<init>", "()V", "setUpMessageHandlers", "", "binaryMessenger", "Lio/flutter/plugin/common/BinaryMessenger;", "api", "Lio/flutter/plugins/webviewflutter/PigeonApiWebView;", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$1$lambda$0(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                pigeonApiWebView.getPigeonRegistrar().getInstanceManager().addDartCreatedInstance(pigeonApiWebView.pigeon_defaultConstructor(), ((Long) ((List) obj).get(0)).longValue());
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$11$lambda$10(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebView.postUrl((WebView) list.get(0), (String) list.get(1), (byte[]) list.get(2));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$13$lambda$12(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                wrapError = CollectionsKt.listOf(pigeonApiWebView.getUrl((WebView) ((List) obj).get(0)));
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$15$lambda$14(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                wrapError = CollectionsKt.listOf(Boolean.valueOf(pigeonApiWebView.canGoBack((WebView) ((List) obj).get(0))));
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$17$lambda$16(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                wrapError = CollectionsKt.listOf(Boolean.valueOf(pigeonApiWebView.canGoForward((WebView) ((List) obj).get(0))));
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$19$lambda$18(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                pigeonApiWebView.goBack((WebView) ((List) obj).get(0));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$21$lambda$20(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                pigeonApiWebView.goForward((WebView) ((List) obj).get(0));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$23$lambda$22(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                pigeonApiWebView.reload((WebView) ((List) obj).get(0));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$25$lambda$24(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebView.clearCache((WebView) list.get(0), ((Boolean) list.get(1)).booleanValue());
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$28$lambda$27(PigeonApiWebView pigeonApiWebView, Object obj, final BasicMessageChannel.Reply reply) {
            List list = (List) obj;
            pigeonApiWebView.evaluateJavascript((WebView) list.get(0), (String) list.get(1), new Function1() { // from class: io.flutter.plugins.webviewflutter.Xxxxxxxxxx
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit upMessageHandlers$lambda$28$lambda$27$lambda$26;
                    upMessageHandlers$lambda$28$lambda$27$lambda$26 = PigeonApiWebView.Companion.setUpMessageHandlers$lambda$28$lambda$27$lambda$26(BasicMessageChannel.Reply.this, (Result) obj2);
                    return upMessageHandlers$lambda$28$lambda$27$lambda$26;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit setUpMessageHandlers$lambda$28$lambda$27$lambda$26(BasicMessageChannel.Reply reply, Result result) {
            Throwable m441exceptionOrNullimpl = Result.m441exceptionOrNullimpl(result.m447unboximpl());
            if (m441exceptionOrNullimpl != null) {
                reply.reply(AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(m441exceptionOrNullimpl));
            } else {
                Object m447unboximpl = result.m447unboximpl();
                if (Result.m444isFailureimpl(m447unboximpl)) {
                    m447unboximpl = null;
                }
                reply.reply(AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapResult((String) m447unboximpl));
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$3$lambda$2(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            WebView webView = (WebView) list.get(0);
            try {
                pigeonApiWebView.getPigeonRegistrar().getInstanceManager().addDartCreatedInstance(pigeonApiWebView.settings(webView), ((Long) list.get(1)).longValue());
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$30$lambda$29(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                wrapError = CollectionsKt.listOf(pigeonApiWebView.getTitle((WebView) ((List) obj).get(0)));
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$32$lambda$31(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                pigeonApiWebView.setWebContentsDebuggingEnabled(((Boolean) ((List) obj).get(0)).booleanValue());
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$34$lambda$33(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebView.setWebViewClient((WebView) list.get(0), (WebViewClient) list.get(1));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$36$lambda$35(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebView.addJavaScriptChannel((WebView) list.get(0), (JavaScriptChannel) list.get(1));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$38$lambda$37(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebView.removeJavaScriptChannel((WebView) list.get(0), (String) list.get(1));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$40$lambda$39(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebView.setDownloadListener((WebView) list.get(0), (DownloadListener) list.get(1));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$42$lambda$41(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebView.setWebChromeClient((WebView) list.get(0), (WebChromeClientProxyApi.WebChromeClientImpl) list.get(1));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$44$lambda$43(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebView.setBackgroundColor((WebView) list.get(0), ((Long) list.get(1)).longValue());
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$46$lambda$45(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                pigeonApiWebView.destroy((WebView) ((List) obj).get(0));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$5$lambda$4(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebView.loadData((WebView) list.get(0), (String) list.get(1), (String) list.get(2), (String) list.get(3));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$7$lambda$6(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebView.loadDataWithBaseUrl((WebView) list.get(0), (String) list.get(1), (String) list.get(2), (String) list.get(3), (String) list.get(4), (String) list.get(5));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$9$lambda$8(PigeonApiWebView pigeonApiWebView, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebView.loadUrl((WebView) list.get(0), (String) list.get(1), (Map) list.get(2));
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        public final void setUpMessageHandlers(@NotNull BinaryMessenger binaryMessenger, @Nullable final PigeonApiWebView pigeonApiWebView) {
            MessageCodec<Object> androidWebkitLibraryPigeonCodec;
            AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar;
            if (pigeonApiWebView == null || (pigeonRegistrar = pigeonApiWebView.getPigeonRegistrar()) == null || (androidWebkitLibraryPigeonCodec = pigeonRegistrar.getCodec()) == null) {
                androidWebkitLibraryPigeonCodec = new AndroidWebkitLibraryPigeonCodec();
            }
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.pigeon_defaultConstructor", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Llll
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$1$lambda$0(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.settings", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Ll
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$3$lambda$2(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.loadData", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Uuuuuuuuu
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$5$lambda$4(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel3.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.loadDataWithBaseUrl", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Uuuuuuuu
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$7$lambda$6(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel4.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.loadUrl", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Uuuuuuu
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$9$lambda$8(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel5.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.postUrl", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Uuuuuu
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$11$lambda$10(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel6.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.getUrl", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Uuuuu
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$13$lambda$12(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel7.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.canGoBack", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Uuu
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$15$lambda$14(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel8.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.canGoForward", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Uu
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$17$lambda$16(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel9.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.goBack", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Xxxxxxxxxxx
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$19$lambda$18(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel10.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel11 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.goForward", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel11.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Uuuu
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$21$lambda$20(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel11.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel12 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.reload", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel12.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Xxxxxxxxx
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$23$lambda$22(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel12.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel13 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.clearCache", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel13.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Xxxxxxxx
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$25$lambda$24(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel13.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel14 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.evaluateJavascript", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel14.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Xxxxxxx
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$28$lambda$27(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel14.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel15 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.getTitle", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel15.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Xxxxxx
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$30$lambda$29(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel15.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel16 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.setWebContentsDebuggingEnabled", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel16.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Xxxxx
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$32$lambda$31(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel16.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel17 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.setWebViewClient", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel17.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Xxxx
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$34$lambda$33(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel17.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel18 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.addJavaScriptChannel", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel18.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Xxx
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$36$lambda$35(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel18.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel19 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.removeJavaScriptChannel", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel19.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Xx
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$38$lambda$37(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel19.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel20 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.setDownloadListener", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel20.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Lll
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$40$lambda$39(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel20.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel21 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.setWebChromeClient", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel21.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Uuuuuuuuuuuu
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$42$lambda$41(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel21.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel22 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.setBackgroundColor", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel22.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Uuuuuuuuuuu
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$44$lambda$43(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel22.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel23 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebView.destroy", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebView != null) {
                basicMessageChannel23.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.Uuuuuuuuuu
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebView.Companion.setUpMessageHandlers$lambda$46$lambda$45(PigeonApiWebView.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel23.setMessageHandler(null);
            }
        }

        private Companion() {
        }
    }

    public PigeonApiWebView(@NotNull AndroidWebkitLibraryPigeonProxyApiRegistrar androidWebkitLibraryPigeonProxyApiRegistrar) {
        this.pigeonRegistrar = androidWebkitLibraryPigeonProxyApiRegistrar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onScrollChanged$lambda$1(Function1 function1, String str, Object obj) {
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.size() > 1) {
                Result.Companion companion = Result.Companion;
                function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError((String) list.get(0), (String) list.get(1), (String) list.get(2))))));
                return;
            }
            Result.Companion companion2 = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(Unit.INSTANCE)));
            return;
        }
        Result.Companion companion3 = Result.Companion;
        function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(AndroidWebkitLibraryPigeonUtils.INSTANCE.createConnectionError(str)))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void pigeon_newInstance$lambda$0(Function1 function1, String str, Object obj) {
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.size() > 1) {
                Result.Companion companion = Result.Companion;
                function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError((String) list.get(0), (String) list.get(1), (String) list.get(2))))));
                return;
            }
            Result.Companion companion2 = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(Unit.INSTANCE)));
            return;
        }
        Result.Companion companion3 = Result.Companion;
        function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(AndroidWebkitLibraryPigeonUtils.INSTANCE.createConnectionError(str)))));
    }

    public abstract void addJavaScriptChannel(@NotNull WebView webView, @NotNull JavaScriptChannel javaScriptChannel);

    public abstract boolean canGoBack(@NotNull WebView webView);

    public abstract boolean canGoForward(@NotNull WebView webView);

    public abstract void clearCache(@NotNull WebView webView, boolean z);

    public abstract void destroy(@NotNull WebView webView);

    public abstract void evaluateJavascript(@NotNull WebView webView, @NotNull String str, @NotNull Function1<? super Result<String>, Unit> function1);

    @NotNull
    public AndroidWebkitLibraryPigeonProxyApiRegistrar getPigeonRegistrar() {
        return this.pigeonRegistrar;
    }

    @Nullable
    public abstract String getTitle(@NotNull WebView webView);

    @Nullable
    public abstract String getUrl(@NotNull WebView webView);

    public abstract void goBack(@NotNull WebView webView);

    public abstract void goForward(@NotNull WebView webView);

    public abstract void loadData(@NotNull WebView webView, @NotNull String str, @Nullable String str2, @Nullable String str3);

    public abstract void loadDataWithBaseUrl(@NotNull WebView webView, @Nullable String str, @NotNull String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5);

    public abstract void loadUrl(@NotNull WebView webView, @NotNull String str, @NotNull Map<String, String> map);

    public final void onScrollChanged(@NotNull WebView webView, long j, long j2, long j3, long j4, @NotNull final Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
            return;
        }
        new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebView.onScrollChanged", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(webView, Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(j4)), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.Llllll
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                PigeonApiWebView.onScrollChanged$lambda$1(Function1.this, r2, obj);
            }
        });
    }

    @NotNull
    public abstract WebView pigeon_defaultConstructor();

    @NotNull
    public final PigeonApiView pigeon_getPigeonApiView() {
        return getPigeonRegistrar().getPigeonApiView();
    }

    public final void pigeon_newInstance(@NotNull WebView webView, @NotNull final Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
        } else if (getPigeonRegistrar().getInstanceManager().containsInstance(webView)) {
            Result.Companion companion2 = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(Unit.INSTANCE)));
        } else {
            new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebView.pigeon_newInstance", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(Long.valueOf(getPigeonRegistrar().getInstanceManager().addHostCreatedInstance(webView))), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.Lllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    PigeonApiWebView.pigeon_newInstance$lambda$0(Function1.this, r2, obj);
                }
            });
        }
    }

    public abstract void postUrl(@NotNull WebView webView, @NotNull String str, @NotNull byte[] bArr);

    public abstract void reload(@NotNull WebView webView);

    public abstract void removeJavaScriptChannel(@NotNull WebView webView, @NotNull String str);

    public abstract void setBackgroundColor(@NotNull WebView webView, long j);

    public abstract void setDownloadListener(@NotNull WebView webView, @Nullable DownloadListener downloadListener);

    public abstract void setWebChromeClient(@NotNull WebView webView, @Nullable WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl);

    public abstract void setWebContentsDebuggingEnabled(boolean z);

    public abstract void setWebViewClient(@NotNull WebView webView, @Nullable WebViewClient webViewClient);

    @NotNull
    public abstract WebSettings settings(@NotNull WebView webView);
}
