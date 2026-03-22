package io.flutter.plugins.webviewflutter;

import android.net.http.SslCertificate;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugins.webviewflutter.PigeonApiSslCertificateDName;
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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0014\u0010\b\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bR\u00020\fH&J\u0014\u0010\r\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bR\u00020\fH&J\u0014\u0010\u000e\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bR\u00020\fH&J\u0014\u0010\u000f\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bR\u00020\fH&J,\u0010\u0010\u001a\u00020\u00112\n\u0010\u0012\u001a\u00060\u000bR\u00020\f2\u0018\u0010\u0013\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u0015\u0012\u0004\u0012\u00020\u00110\u0014R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0017"}, d2 = {"Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;", "", "pigeonRegistrar", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "<init>", "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V", "getPigeonRegistrar", "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "getCName", "", "pigeon_instance", "Landroid/net/http/SslCertificate$DName;", "Landroid/net/http/SslCertificate;", "getDName", "getOName", "getUName", "pigeon_newInstance", "", "pigeon_instanceArg", "callback", "Lkotlin/Function1;", "Lkotlin/Result;", "Companion", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes6.dex */
public abstract class PigeonApiSslCertificateDName {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t¨\u0006\n"}, d2 = {"Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName$Companion;", "", "<init>", "()V", "setUpMessageHandlers", "", "binaryMessenger", "Lio/flutter/plugin/common/BinaryMessenger;", "api", "Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$1$lambda$0(PigeonApiSslCertificateDName pigeonApiSslCertificateDName, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                wrapError = CollectionsKt.listOf(pigeonApiSslCertificateDName.getCName((SslCertificate.DName) ((List) obj).get(0)));
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$3$lambda$2(PigeonApiSslCertificateDName pigeonApiSslCertificateDName, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                wrapError = CollectionsKt.listOf(pigeonApiSslCertificateDName.getDName((SslCertificate.DName) ((List) obj).get(0)));
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$5$lambda$4(PigeonApiSslCertificateDName pigeonApiSslCertificateDName, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                wrapError = CollectionsKt.listOf(pigeonApiSslCertificateDName.getOName((SslCertificate.DName) ((List) obj).get(0)));
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setUpMessageHandlers$lambda$7$lambda$6(PigeonApiSslCertificateDName pigeonApiSslCertificateDName, Object obj, BasicMessageChannel.Reply reply) {
            List<Object> wrapError;
            try {
                wrapError = CollectionsKt.listOf(pigeonApiSslCertificateDName.getUName((SslCertificate.DName) ((List) obj).get(0)));
            } catch (Throwable th) {
                wrapError = AndroidWebkitLibraryPigeonUtils.INSTANCE.wrapError(th);
            }
            reply.reply(wrapError);
        }

        public final void setUpMessageHandlers(@NotNull BinaryMessenger binaryMessenger, @Nullable final PigeonApiSslCertificateDName pigeonApiSslCertificateDName) {
            MessageCodec<Object> androidWebkitLibraryPigeonCodec;
            AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar;
            if (pigeonApiSslCertificateDName == null || (pigeonRegistrar = pigeonApiSslCertificateDName.getPigeonRegistrar()) == null || (androidWebkitLibraryPigeonCodec = pigeonRegistrar.getCodec()) == null) {
                androidWebkitLibraryPigeonCodec = new AndroidWebkitLibraryPigeonCodec();
            }
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.SslCertificateDName.getCName", androidWebkitLibraryPigeonCodec);
            if (pigeonApiSslCertificateDName != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.IIllllllll
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiSslCertificateDName.Companion.setUpMessageHandlers$lambda$1$lambda$0(PigeonApiSslCertificateDName.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.SslCertificateDName.getDName", androidWebkitLibraryPigeonCodec);
            if (pigeonApiSslCertificateDName != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.IIlllllll
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiSslCertificateDName.Companion.setUpMessageHandlers$lambda$3$lambda$2(PigeonApiSslCertificateDName.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.SslCertificateDName.getOName", androidWebkitLibraryPigeonCodec);
            if (pigeonApiSslCertificateDName != null) {
                basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.IIllllll
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiSslCertificateDName.Companion.setUpMessageHandlers$lambda$5$lambda$4(PigeonApiSslCertificateDName.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel3.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.webview_flutter_android.SslCertificateDName.getUName", androidWebkitLibraryPigeonCodec);
            if (pigeonApiSslCertificateDName != null) {
                basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.webviewflutter.IIlllll
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        PigeonApiSslCertificateDName.Companion.setUpMessageHandlers$lambda$7$lambda$6(PigeonApiSslCertificateDName.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel4.setMessageHandler(null);
            }
        }

        private Companion() {
        }
    }

    public PigeonApiSslCertificateDName(@NotNull AndroidWebkitLibraryPigeonProxyApiRegistrar androidWebkitLibraryPigeonProxyApiRegistrar) {
        this.pigeonRegistrar = androidWebkitLibraryPigeonProxyApiRegistrar;
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

    @NotNull
    public abstract String getCName(@NotNull SslCertificate.DName dName);

    @NotNull
    public abstract String getDName(@NotNull SslCertificate.DName dName);

    @NotNull
    public abstract String getOName(@NotNull SslCertificate.DName dName);

    @NotNull
    public AndroidWebkitLibraryPigeonProxyApiRegistrar getPigeonRegistrar() {
        return this.pigeonRegistrar;
    }

    @NotNull
    public abstract String getUName(@NotNull SslCertificate.DName dName);

    public final void pigeon_newInstance(@NotNull SslCertificate.DName dName, @NotNull final Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
        } else if (getPigeonRegistrar().getInstanceManager().containsInstance(dName)) {
            Result.Companion companion2 = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(Unit.INSTANCE)));
        } else {
            new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.SslCertificateDName.pigeon_newInstance", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(Long.valueOf(getPigeonRegistrar().getInstanceManager().addHostCreatedInstance(dName))), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.IIlllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    PigeonApiSslCertificateDName.pigeon_newInstance$lambda$0(Function1.this, r2, obj);
                }
            });
        }
    }
}
