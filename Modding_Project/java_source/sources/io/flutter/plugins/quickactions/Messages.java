package io.flutter.plugins.quickactions;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugins.quickactions.Messages;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class Messages {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface AndroidQuickActionsApi {

        /* compiled from: Proguard */
        /* renamed from: io.flutter.plugins.quickactions.Messages$AndroidQuickActionsApi$-CC  reason: invalid class name */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull BinaryMessenger binaryMessenger, @NonNull String str, @Nullable final AndroidQuickActionsApi androidQuickActionsApi) {
                String str2;
                if (str.isEmpty()) {
                    str2 = "";
                } else {
                    str2 = "." + str;
                }
                BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.quick_actions_android.AndroidQuickActionsApi.getLaunchAction" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                if (androidQuickActionsApi != null) {
                    basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.quickactions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.AndroidQuickActionsApi.CC.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messages.AndroidQuickActionsApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.quick_actions_android.AndroidQuickActionsApi.setShortcutItems" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                if (androidQuickActionsApi != null) {
                    basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.quickactions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.AndroidQuickActionsApi.CC.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messages.AndroidQuickActionsApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel2.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.quick_actions_android.AndroidQuickActionsApi.clearShortcutItems" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                if (androidQuickActionsApi != null) {
                    basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.quickactions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.AndroidQuickActionsApi.CC.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messages.AndroidQuickActionsApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel3.setMessageHandler(null);
                }
            }

            public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull BinaryMessenger binaryMessenger, @Nullable AndroidQuickActionsApi androidQuickActionsApi) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(binaryMessenger, "", androidQuickActionsApi);
            }

            public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AndroidQuickActionsApi androidQuickActionsApi, Object obj, BasicMessageChannel.Reply reply) {
                ArrayList<Object> arrayList = new ArrayList<>();
                try {
                    androidQuickActionsApi.clearShortcutItems();
                    arrayList.add(0, null);
                } catch (Throwable th) {
                    arrayList = Messages.wrapError(th);
                }
                reply.reply(arrayList);
            }

            public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AndroidQuickActionsApi androidQuickActionsApi, Object obj, final BasicMessageChannel.Reply reply) {
                final ArrayList arrayList = new ArrayList();
                androidQuickActionsApi.setShortcutItems((List) ((ArrayList) obj).get(0), new VoidResult() { // from class: io.flutter.plugins.quickactions.Messages.AndroidQuickActionsApi.1
                    @Override // io.flutter.plugins.quickactions.Messages.VoidResult
                    public void error(Throwable th) {
                        reply.reply(Messages.wrapError(th));
                    }

                    @Override // io.flutter.plugins.quickactions.Messages.VoidResult
                    public void success() {
                        arrayList.add(0, null);
                        reply.reply(arrayList);
                    }
                });
            }

            public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AndroidQuickActionsApi androidQuickActionsApi, Object obj, BasicMessageChannel.Reply reply) {
                ArrayList<Object> arrayList = new ArrayList<>();
                try {
                    arrayList.add(0, androidQuickActionsApi.getLaunchAction());
                } catch (Throwable th) {
                    arrayList = Messages.wrapError(th);
                }
                reply.reply(arrayList);
            }

            @NonNull
            public static MessageCodec<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                return PigeonCodec.INSTANCE;
            }
        }

        void clearShortcutItems();

        @Nullable
        String getLaunchAction();

        void setShortcutItems(@NonNull List<ShortcutItemMessage> list, @NonNull VoidResult voidResult);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class AndroidQuickActionsFlutterApi {
        @NonNull
        private final BinaryMessenger binaryMessenger;
        private final String messageChannelSuffix;

        public AndroidQuickActionsFlutterApi(@NonNull BinaryMessenger binaryMessenger) {
            this(binaryMessenger, "");
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(Messages.createConnectionError(str));
        }

        @NonNull
        public static MessageCodec<Object> getCodec() {
            return PigeonCodec.INSTANCE;
        }

        public void launchAction(@NonNull String str, @NonNull final VoidResult voidResult) {
            final String str2 = "dev.flutter.pigeon.quick_actions_android.AndroidQuickActionsFlutterApi.launchAction" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str2, getCodec()).send(new ArrayList(Collections.singletonList(str)), new BasicMessageChannel.Reply() { // from class: io.flutter.plugins.quickactions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    Messages.AndroidQuickActionsFlutterApi.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messages.VoidResult.this, str2, obj);
                }
            });
        }

        public AndroidQuickActionsFlutterApi(@NonNull BinaryMessenger binaryMessenger, @NonNull String str) {
            String str2;
            this.binaryMessenger = binaryMessenger;
            if (str.isEmpty()) {
                str2 = "";
            } else {
                str2 = "." + str;
            }
            this.messageChannelSuffix = str2;
        }
    }

    /* compiled from: Proguard */
    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes6.dex */
    public @interface CanIgnoreReturnValue {
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class FlutterError extends RuntimeException {
        public final String code;
        public final Object details;

        public FlutterError(@NonNull String str, @Nullable String str2, @Nullable Object obj) {
            super(str2);
            this.code = str;
            this.details = obj;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface NullableResult<T> {
        void error(@NonNull Throwable th);

        void success(@Nullable T t);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class PigeonCodec extends StandardMessageCodec {
        public static final PigeonCodec INSTANCE = new PigeonCodec();

        private PigeonCodec() {
        }

        @Override // io.flutter.plugin.common.StandardMessageCodec
        public Object readValueOfType(byte b, @NonNull ByteBuffer byteBuffer) {
            if (b != -127) {
                return super.readValueOfType(b, byteBuffer);
            }
            return ShortcutItemMessage.fromList((ArrayList) readValue(byteBuffer));
        }

        @Override // io.flutter.plugin.common.StandardMessageCodec
        public void writeValue(@NonNull ByteArrayOutputStream byteArrayOutputStream, Object obj) {
            if (obj instanceof ShortcutItemMessage) {
                byteArrayOutputStream.write(129);
                writeValue(byteArrayOutputStream, ((ShortcutItemMessage) obj).toList());
                return;
            }
            super.writeValue(byteArrayOutputStream, obj);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface Result<T> {
        void error(@NonNull Throwable th);

        void success(@NonNull T t);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class ShortcutItemMessage {
        @Nullable
        private String icon;
        @NonNull
        private String localizedTitle;
        @NonNull
        private String type;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private String icon;
            @Nullable
            private String localizedTitle;
            @Nullable
            private String type;

            @NonNull
            public ShortcutItemMessage build() {
                ShortcutItemMessage shortcutItemMessage = new ShortcutItemMessage();
                shortcutItemMessage.setType(this.type);
                shortcutItemMessage.setLocalizedTitle(this.localizedTitle);
                shortcutItemMessage.setIcon(this.icon);
                return shortcutItemMessage;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setIcon(@Nullable String str) {
                this.icon = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setLocalizedTitle(@NonNull String str) {
                this.localizedTitle = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setType(@NonNull String str) {
                this.type = str;
                return this;
            }
        }

        @NonNull
        public static ShortcutItemMessage fromList(@NonNull ArrayList<Object> arrayList) {
            ShortcutItemMessage shortcutItemMessage = new ShortcutItemMessage();
            shortcutItemMessage.setType((String) arrayList.get(0));
            shortcutItemMessage.setLocalizedTitle((String) arrayList.get(1));
            shortcutItemMessage.setIcon((String) arrayList.get(2));
            return shortcutItemMessage;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && ShortcutItemMessage.class == obj.getClass()) {
                ShortcutItemMessage shortcutItemMessage = (ShortcutItemMessage) obj;
                if (this.type.equals(shortcutItemMessage.type) && this.localizedTitle.equals(shortcutItemMessage.localizedTitle) && Objects.equals(this.icon, shortcutItemMessage.icon)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public String getIcon() {
            return this.icon;
        }

        @NonNull
        public String getLocalizedTitle() {
            return this.localizedTitle;
        }

        @NonNull
        public String getType() {
            return this.type;
        }

        public int hashCode() {
            return Objects.hash(this.type, this.localizedTitle, this.icon);
        }

        public void setIcon(@Nullable String str) {
            this.icon = str;
        }

        public void setLocalizedTitle(@NonNull String str) {
            if (str != null) {
                this.localizedTitle = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"localizedTitle\" is null.");
        }

        public void setType(@NonNull String str) {
            if (str != null) {
                this.type = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"type\" is null.");
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.type);
            arrayList.add(this.localizedTitle);
            arrayList.add(this.icon);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface VoidResult {
        void error(@NonNull Throwable th);

        void success();
    }

    @NonNull
    public static FlutterError createConnectionError(@NonNull String str) {
        return new FlutterError("channel-error", "Unable to establish connection on channel: " + str + ".", "");
    }

    @NonNull
    public static ArrayList<Object> wrapError(@NonNull Throwable th) {
        ArrayList<Object> arrayList = new ArrayList<>(3);
        if (th instanceof FlutterError) {
            FlutterError flutterError = (FlutterError) th;
            arrayList.add(flutterError.code);
            arrayList.add(flutterError.getMessage());
            arrayList.add(flutterError.details);
            return arrayList;
        }
        arrayList.add(th.toString());
        arrayList.add(th.getClass().getSimpleName());
        arrayList.add("Cause: " + th.getCause() + ", Stacktrace: " + Log.getStackTraceString(th));
        return arrayList;
    }
}
