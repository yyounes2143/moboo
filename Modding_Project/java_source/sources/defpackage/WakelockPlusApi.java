package defpackage;

import androidx.core.app.NotificationCompat;
import defpackage.WakelockPlusApi;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"LWakelockPlusApi;", "", "LToggleMessage;", NotificationCompat.CATEGORY_MESSAGE, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(LToggleMessage;)V", "LIsEnabledMessage;", "isEnabled", "()LIsEnabledMessage;", "Companion", "wakelock_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* renamed from: WakelockPlusApi  reason: default package */
/* loaded from: classes.dex */
public interface WakelockPlusApi {
    @NotNull
    public static final Companion Companion = Companion.f54Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nR#\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"LWakelockPlusApi$Companion;", "", "<init>", "()V", "Lio/flutter/plugin/common/BinaryMessenger;", "binaryMessenger", "LWakelockPlusApi;", "api", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/BinaryMessenger;LWakelockPlusApi;)V", "Lio/flutter/plugin/common/MessageCodec;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlin/Lazy;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lio/flutter/plugin/common/MessageCodec;", "codec", "wakelock_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* renamed from: WakelockPlusApi$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ Companion f54Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion();
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Lazy<WakelockPlusApiCodec> f53Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(new Function0() { // from class: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                WakelockPlusApiCodec Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = WakelockPlusApi.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        });

        public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(WakelockPlusApi wakelockPlusApi, Object obj, BasicMessageChannel.Reply reply) {
            List Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CollectionsKt.listOf(wakelockPlusApi.isEnabled());
            } catch (Throwable th) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = WakelockPlusMessages_gKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th);
            }
            reply.reply(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }

        public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(WakelockPlusApi wakelockPlusApi, Object obj, BasicMessageChannel.Reply reply) {
            List Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            try {
                wakelockPlusApi.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ToggleMessage) ((List) obj).get(0));
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CollectionsKt.listOf((Object) null);
            } catch (Throwable th) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = WakelockPlusMessages_gKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th);
            }
            reply.reply(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }

        public static final WakelockPlusApiCodec Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return WakelockPlusApiCodec.INSTANCE;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull BinaryMessenger binaryMessenger, @Nullable final WakelockPlusApi wakelockPlusApi) {
            BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (wakelockPlusApi != null) {
                basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        WakelockPlusApi.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(WakelockPlusApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel.setMessageHandler(null);
            }
            BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.isEnabled", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (wakelockPlusApi != null) {
                basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                    public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                        WakelockPlusApi.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(WakelockPlusApi.this, obj, reply);
                    }
                });
            } else {
                basicMessageChannel2.setMessageHandler(null);
            }
        }

        @NotNull
        public final MessageCodec<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return f53Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue();
        }
    }

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ToggleMessage toggleMessage);

    @NotNull
    IsEnabledMessage isEnabled();
}
