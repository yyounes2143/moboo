package io.flutter.plugins.webviewflutter;

import android.webkit.ConsoleMessage;
import io.flutter.plugin.common.BasicMessageChannel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000bH&J(\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000b2\u0018\u0010\u0014\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u0016\u0012\u0004\u0012\u00020\u00120\u0015R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0017"}, d2 = {"Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;", "", "pigeonRegistrar", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "<init>", "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V", "getPigeonRegistrar", "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "lineNumber", "", "pigeon_instance", "Landroid/webkit/ConsoleMessage;", "message", "", "level", "Lio/flutter/plugins/webviewflutter/ConsoleMessageLevel;", "sourceId", "pigeon_newInstance", "", "pigeon_instanceArg", "callback", "Lkotlin/Function1;", "Lkotlin/Result;", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes6.dex */
public abstract class PigeonApiConsoleMessage {
    @NotNull
    private final AndroidWebkitLibraryPigeonProxyApiRegistrar pigeonRegistrar;

    public PigeonApiConsoleMessage(@NotNull AndroidWebkitLibraryPigeonProxyApiRegistrar androidWebkitLibraryPigeonProxyApiRegistrar) {
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
    public AndroidWebkitLibraryPigeonProxyApiRegistrar getPigeonRegistrar() {
        return this.pigeonRegistrar;
    }

    @NotNull
    public abstract ConsoleMessageLevel level(@NotNull ConsoleMessage consoleMessage);

    public abstract long lineNumber(@NotNull ConsoleMessage consoleMessage);

    @NotNull
    public abstract String message(@NotNull ConsoleMessage consoleMessage);

    public final void pigeon_newInstance(@NotNull ConsoleMessage consoleMessage, @NotNull final Function1<? super Result<Unit>, Unit> function1) {
        if (getPigeonRegistrar().getIgnoreCallsToDart()) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(ResultKt.createFailure(new AndroidWebKitError("ignore-calls-error", "Calls to Dart are being ignored.", "")))));
        } else if (getPigeonRegistrar().getInstanceManager().containsInstance(consoleMessage)) {
            Result.Companion companion2 = Result.Companion;
            function1.invoke(Result.m437boximpl(Result.m438constructorimpl(Unit.INSTANCE)));
        } else {
            long addHostCreatedInstance = getPigeonRegistrar().getInstanceManager().addHostCreatedInstance(consoleMessage);
            long lineNumber = lineNumber(consoleMessage);
            new BasicMessageChannel(getPigeonRegistrar().getBinaryMessenger(), "dev.flutter.pigeon.webview_flutter_android.ConsoleMessage.pigeon_newInstance", getPigeonRegistrar().getCodec()).send(CollectionsKt.listOf(Long.valueOf(addHostCreatedInstance), Long.valueOf(lineNumber), message(consoleMessage), level(consoleMessage), sourceId(consoleMessage)), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.webviewflutter.Kkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    PigeonApiConsoleMessage.pigeon_newInstance$lambda$0(Function1.this, r2, obj);
                }
            });
        }
    }

    @NotNull
    public abstract String sourceId(@NotNull ConsoleMessage consoleMessage);
}
