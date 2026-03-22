package io.flutter.plugins.webviewflutter;

import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient;
import io.flutter.plugins.webviewflutter.WebChromeClientProxyApi;
import java.util.List;
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
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000 72\u00020\u0001:\u00017B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH&J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH&J\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH&J\u0018\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH&J\u0018\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH&J\u0018\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH&J(\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0018\u0010\u0015\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0017\u0012\u0004\u0012\u00020\u000b0\u0016J8\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0018\u0010\u0015\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0017\u0012\u0004\u0012\u00020\u000b0\u0016J>\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u001e\u0010\u0015\u001a\u001a\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0 0\u0017\u0012\u0004\u0012\u00020\u000b0\u0016J0\u0010\"\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010#\u001a\u00020$2\u0018\u0010\u0015\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0017\u0012\u0004\u0012\u00020\u000b0\u0016J8\u0010%\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0018\u0010\u0015\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0017\u0012\u0004\u0012\u00020\u000b0\u0016J(\u0010*\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0018\u0010\u0015\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0017\u0012\u0004\u0012\u00020\u000b0\u0016J8\u0010+\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010,\u001a\u00020!2\u0006\u0010(\u001a\u00020-2\u0018\u0010\u0015\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0017\u0012\u0004\u0012\u00020\u000b0\u0016J(\u0010.\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0018\u0010\u0015\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0017\u0012\u0004\u0012\u00020\u000b0\u0016J0\u0010/\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u00100\u001a\u0002012\u0018\u0010\u0015\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0017\u0012\u0004\u0012\u00020\u000b0\u0016J@\u00102\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u00103\u001a\u00020!2\u0006\u00100\u001a\u00020!2\u0018\u0010\u0015\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0017\u0012\u0004\u0012\u00020\u000b0\u0016J@\u00104\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u00103\u001a\u00020!2\u0006\u00100\u001a\u00020!2\u0018\u0010\u0015\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0017\u0012\u0004\u0012\u00020\u000b0\u0016JJ\u00105\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u00103\u001a\u00020!2\u0006\u00100\u001a\u00020!2\u0006\u00106\u001a\u00020!2\u001a\u0010\u0015\u001a\u0016\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010!0\u0017\u0012\u0004\u0012\u00020\u000b0\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u00068"}, d2 = {"Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;", "", "pigeonRegistrar", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "<init>", "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V", "getPigeonRegistrar", "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "pigeon_defaultConstructor", "Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;", "setSynchronousReturnValueForOnShowFileChooser", "", "pigeon_instance", "value", "", "setSynchronousReturnValueForOnConsoleMessage", "setSynchronousReturnValueForOnJsAlert", "setSynchronousReturnValueForOnJsConfirm", "setSynchronousReturnValueForOnJsPrompt", "pigeon_newInstance", "pigeon_instanceArg", "callback", "Lkotlin/Function1;", "Lkotlin/Result;", "onProgressChanged", "webViewArg", "Landroid/webkit/WebView;", "progressArg", "", "onShowFileChooser", "paramsArg", "Landroid/webkit/WebChromeClient$FileChooserParams;", "", "", "onPermissionRequest", "requestArg", "Landroid/webkit/PermissionRequest;", "onShowCustomView", "viewArg", "Landroid/view/View;", "callbackArg", "Landroid/webkit/WebChromeClient$CustomViewCallback;", "onHideCustomView", "onGeolocationPermissionsShowPrompt", "originArg", "Landroid/webkit/GeolocationPermissions$Callback;", "onGeolocationPermissionsHidePrompt", "onConsoleMessage", "messageArg", "Landroid/webkit/ConsoleMessage;", "onJsAlert", "urlArg", "onJsConfirm", "onJsPrompt", "defaultValueArg", "Companion", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes6.dex */
public abstract class PigeonApiWebChromeClient {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t¨\u0006\n"}, d2 = {"Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient$Companion;", "", "<init>", "()V", "setUpMessageHandlers", "", "binaryMessenger", "Lio/flutter/plugin/common/BinaryMessenger;", "api", "Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$1$lambda$0(PigeonApiWebChromeClient pigeonApiWebChromeClient, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                pigeonApiWebChromeClient.getPigeonRegistrar().getInstanceManager().addDartCreatedInstance(pigeonApiWebChromeClient.pigeon_defaultConstructor(), ((Long) ((List) obj).get(0)).longValue());
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$11$lambda$10(PigeonApiWebChromeClient pigeonApiWebChromeClient, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebChromeClient.setSynchronousReturnValueForOnJsPrompt((WebChromeClientProxyApi.WebChromeClientImpl) list.get(0), ((Boolean) list.get(1)).booleanValue());
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$3$lambda$2(PigeonApiWebChromeClient pigeonApiWebChromeClient, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebChromeClient.setSynchronousReturnValueForOnShowFileChooser((WebChromeClientProxyApi.WebChromeClientImpl) list.get(0), ((Boolean) list.get(1)).booleanValue());
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$5$lambda$4(PigeonApiWebChromeClient pigeonApiWebChromeClient, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebChromeClient.setSynchronousReturnValueForOnConsoleMessage((WebChromeClientProxyApi.WebChromeClientImpl) list.get(0), ((Boolean) list.get(1)).booleanValue());
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$7$lambda$6(PigeonApiWebChromeClient pigeonApiWebChromeClient, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebChromeClient.setSynchronousReturnValueForOnJsAlert((WebChromeClientProxyApi.WebChromeClientImpl) list.get(0), ((Boolean) list.get(1)).booleanValue());
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$9$lambda$8(PigeonApiWebChromeClient pigeonApiWebChromeClient, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            List list = (List) obj;
            try {
                pigeonApiWebChromeClient.setSynchronousReturnValueForOnJsConfirm((WebChromeClientProxyApi.WebChromeClientImpl) list.get(0), ((Boolean) list.get(1)).booleanValue());
                wrapError = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        public final void setUpMessageHandlers(@NotNull BinaryMessenger binaryMessenger, @Nullable final PigeonApiWebChromeClient pigeonApiWebChromeClient) {
            MessageCodec<Object> androidWebkitLibraryPigeonCodec;
            AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar;
            if (pigeonApiWebChromeClient == null || (pigeonRegistrar = pigeonApiWebChromeClient.getPigeonRegistrar()) == null || (androidWebkitLibraryPigeonCodec = pigeonRegistrar.getCodec()) == null) {
                androidWebkitLibraryPigeonCodec = new AndroidWebkitLibraryPigeonCodec();
            }
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.pigeon_defaultConstructor", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebChromeClient != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.QQOOOOOOOO
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebChromeClient.Companion.setUpMessageHandlers$lambda$1$lambda$0(PigeonApiWebChromeClient.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.setSynchronousReturnValueForOnShowFileChooser", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebChromeClient != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.QQOOOOOOO
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebChromeClient.Companion.setUpMessageHandlers$lambda$3$lambda$2(PigeonApiWebChromeClient.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.setSynchronousReturnValueForOnConsoleMessage", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebChromeClient != null) {
                basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.QQOOOOOO
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebChromeClient.Companion.setUpMessageHandlers$lambda$5$lambda$4(PigeonApiWebChromeClient.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel3.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.setSynchronousReturnValueForOnJsAlert", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebChromeClient != null) {
                basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.QQOOOOO
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebChromeClient.Companion.setUpMessageHandlers$lambda$7$lambda$6(PigeonApiWebChromeClient.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel4.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.setSynchronousReturnValueForOnJsConfirm", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebChromeClient != null) {
                basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.QQOOOO
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebChromeClient.Companion.setUpMessageHandlers$lambda$9$lambda$8(PigeonApiWebChromeClient.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel5.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.setSynchronousReturnValueForOnJsPrompt", androidWebkitLibraryPigeonCodec);
            if (pigeonApiWebChromeClient != null) {
                basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.QQOOO
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiWebChromeClient.Companion.setUpMessageHandlers$lambda$11$lambda$10(PigeonApiWebChromeClient.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel6.setMessageHandler(null);
            }
        }

        private Companion() {
        }
    }

    public PigeonApiWebChromeClient(@NotNull AndroidWebkitLibraryPigeonProxyApiRegistrar androidWebkitLibraryPigeonProxyApiRegistrar) {
        this.pigeonRegistrar = androidWebkitLibraryPigeonProxyApiRegistrar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onConsoleMessage$lambda$7(Function1 function1, String str, Object obj) {
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
    public static final void onGeolocationPermissionsHidePrompt$lambda$6(Function1 function1, String str, Object obj) {
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
    public static final void onGeolocationPermissionsShowPrompt$lambda$5(Function1 function1, String str, Object obj) {
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
    public static final void onHideCustomView$lambda$4(Function1 function1, String str, Object obj) {
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
    public static final void onJsAlert$lambda$8(Function1 function1, String str, Object obj) {
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
    public static final void onJsConfirm$lambda$9(Function1 function1, String str, Object obj) {
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.size() > 1) {
                Result.Companion companion = Result.Companion;
                function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError((String) list.get(0), (String) list.get(1), (String) list.get(2))))));
                return;
            } else if (list.get(0) == null) {
                Result.Companion companion2 = Result.Companion;
                function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("null-error", "Flutter api returned null value for non-null return value.", "")))));
                return;
            } else {
                Boolean bool = (Boolean) list.get(0);
                bool.booleanValue();
                function1.invoke(Result.m437boximpl(Result.m438constructorimpl(bool)));
                return;
            }
        }
        Result.Companion companion3 = Result.Companion;
        function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(AndroidWebkitLibraryPigeonUtils.INSTANCE.createConnectionError(str)))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onJsPrompt$lambda$10(Function1 function1, String str, Object obj) {
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.size() > 1) {
                Result.Companion companion = Result.Companion;
                function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError((String) list.get(0), (String) list.get(1), (String) list.get(2))))));
                return;
            }
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl((String) list.get(0))));
            return;
        }
        Result.Companion companion2 = Result.Companion;
        function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(AndroidWebkitLibraryPigeonUtils.INSTANCE.createConnectionError(str)))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPermissionRequest$lambda$2(Function1 function1, String str, Object obj) {
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
    public static final void onProgressChanged$lambda$0(Function1 function1, String str, Object obj) {
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
    public static final void onShowCustomView$lambda$3(Function1 function1, String str, Object obj) {
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
    public static final void onShowFileChooser$lambda$1(Function1 function1, String str, Object obj) {
        if (obj instanceof List) {
            List list = (List) obj;
            if (list.size() > 1) {
                Result.Companion companion = Result.Companion;
                function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError((String) list.get(0), (String) list.get(1), (String) list.get(2))))));
                return;
            } else if (list.get(0) == null) {
                Result.Companion companion2 = Result.Companion;
                function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("null-error", "Flutter api returned null value for non-null return value.", "")))));
                return;
            } else {
                function1.invoke(Result.m437boximpl(Result.m438constructorimpl((List) list.get(0))));
                return;
            }
        }
        Result.Companion companion3 = Result.Companion;
        function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(AndroidWebkitLibraryPigeonUtils.INSTANCE.createConnectionError(str)))));
    }

    @NotNull
    public AndroidWebkitLibraryPigeonProxyApiRegistrar getPigeonRegistrar() {
        return this.pigeonRegistrar;
    }

    public final void onConsoleMessage(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, @NotNull ConsoleMessage consoleMessage, @NotNull final Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
            return;
        }
        new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.onConsoleMessage", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(webChromeClientImpl, consoleMessage), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.OO000
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                PigeonApiWebChromeClient.onConsoleMessage$lambda$7(Function1.this, r2, obj);
            }
        });
    }

    public final void onGeolocationPermissionsHidePrompt(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, @NotNull final Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
            return;
        }
        new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.onGeolocationPermissionsHidePrompt", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(webChromeClientImpl), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.QQOOOOOOOOO
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                PigeonApiWebChromeClient.onGeolocationPermissionsHidePrompt$lambda$6(Function1.this, r2, obj);
            }
        });
    }

    public final void onGeolocationPermissionsShowPrompt(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, @NotNull String str, @NotNull GeolocationPermissions.Callback callback, @NotNull final Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
            return;
        }
        new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.onGeolocationPermissionsShowPrompt", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(webChromeClientImpl, str, callback), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.OO00
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                PigeonApiWebChromeClient.onGeolocationPermissionsShowPrompt$lambda$5(Function1.this, r2, obj);
            }
        });
    }

    public final void onHideCustomView(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, @NotNull final Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
            return;
        }
        new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.onHideCustomView", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(webChromeClientImpl), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.O0
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                PigeonApiWebChromeClient.onHideCustomView$lambda$4(Function1.this, r2, obj);
            }
        });
    }

    public final void onJsAlert(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, @NotNull WebView webView, @NotNull String str, @NotNull String str2, @NotNull final Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
            return;
        }
        new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.onJsAlert", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(webChromeClientImpl, webView, str, str2), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.OO0000000
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                PigeonApiWebChromeClient.onJsAlert$lambda$8(Function1.this, r2, obj);
            }
        });
    }

    public final void onJsConfirm(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, @NotNull WebView webView, @NotNull String str, @NotNull String str2, @NotNull final Function1<? super Result<Boolean>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
            return;
        }
        new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.onJsConfirm", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(webChromeClientImpl, webView, str, str2), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.OO0
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                PigeonApiWebChromeClient.onJsConfirm$lambda$9(Function1.this, r2, obj);
            }
        });
    }

    public final void onJsPrompt(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, @NotNull WebView webView, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull final Function1<? super Result<String>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
            return;
        }
        new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.onJsPrompt", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(webChromeClientImpl, webView, str, str2, str3), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.OO00000000
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                PigeonApiWebChromeClient.onJsPrompt$lambda$10(Function1.this, r2, obj);
            }
        });
    }

    public final void onPermissionRequest(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, @NotNull PermissionRequest permissionRequest, @NotNull final Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
            return;
        }
        new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.onPermissionRequest", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(webChromeClientImpl, permissionRequest), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.OO00000
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                PigeonApiWebChromeClient.onPermissionRequest$lambda$2(Function1.this, r2, obj);
            }
        });
    }

    public final void onProgressChanged(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, @NotNull WebView webView, long j, @NotNull final Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
            return;
        }
        new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.onProgressChanged", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(webChromeClientImpl, webView, Long.valueOf(j)), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.OO000000000
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                PigeonApiWebChromeClient.onProgressChanged$lambda$0(Function1.this, r2, obj);
            }
        });
    }

    public final void onShowCustomView(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, @NotNull View view, @NotNull WebChromeClient.CustomViewCallback customViewCallback, @NotNull final Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
            return;
        }
        new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.onShowCustomView", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(webChromeClientImpl, view, customViewCallback), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.OO0000
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                PigeonApiWebChromeClient.onShowCustomView$lambda$3(Function1.this, r2, obj);
            }
        });
    }

    public final void onShowFileChooser(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, @NotNull WebView webView, @NotNull WebChromeClient.FileChooserParams fileChooserParams, @NotNull final Function1<? super Result<? extends List<String>>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
            return;
        }
        new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.WebChromeClient.onShowFileChooser", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(webChromeClientImpl, webView, fileChooserParams), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.OO000000
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) {
                PigeonApiWebChromeClient.onShowFileChooser$lambda$1(Function1.this, r2, obj);
            }
        });
    }

    @NotNull
    public abstract WebChromeClientProxyApi.WebChromeClientImpl pigeon_defaultConstructor();

    public final void pigeon_newInstance(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, @NotNull Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
        } else if (getPigeonRegistrar().getInstanceManager().containsInstance(webChromeClientImpl)) {
            Result.Companion companion2 = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(Unit.INSTANCE)));
        } else {
            Result.Companion companion3 = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("new-instance-error", "Attempting to create a new Dart instance of WebChromeClient, but the class has a nonnull callback method.", "")))));
        }
    }

    public abstract void setSynchronousReturnValueForOnConsoleMessage(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, boolean z);

    public abstract void setSynchronousReturnValueForOnJsAlert(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, boolean z);

    public abstract void setSynchronousReturnValueForOnJsConfirm(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, boolean z);

    public abstract void setSynchronousReturnValueForOnJsPrompt(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, boolean z);

    public abstract void setSynchronousReturnValueForOnShowFileChooser(@NotNull WebChromeClientProxyApi.WebChromeClientImpl webChromeClientImpl, boolean z);
}
