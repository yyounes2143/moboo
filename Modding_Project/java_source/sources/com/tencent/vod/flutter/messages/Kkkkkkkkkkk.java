package com.tencent.vod.flutter.messages;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.vod.flutter.messages.FtxMessages;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class Kkkkkkkkkkk {
    public static void Wwwwwwwwwwwwwwwwwwwwww(@NonNull BinaryMessenger binaryMessenger, @NonNull String str, @Nullable final FtxMessages.TXFlutterNativeAPI tXFlutterNativeAPI) {
        String str2;
        if (str.isEmpty()) {
            str2 = "";
        } else {
            str2 = "." + str;
        }
        BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterNativeAPI.setBrightness" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterNativeAPI != null) {
            basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterNativeAPI.restorePageBrightness" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterNativeAPI != null) {
            basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel2.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterNativeAPI.getBrightness" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterNativeAPI != null) {
            basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel3.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterNativeAPI.getSysBrightness" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterNativeAPI != null) {
            basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel4.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterNativeAPI.setSystemVolume" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterNativeAPI != null) {
            basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel5.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterNativeAPI.getSystemVolume" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterNativeAPI != null) {
            basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel6.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterNativeAPI.abandonAudioFocus" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterNativeAPI != null) {
            basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel7.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterNativeAPI.requestAudioFocus" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterNativeAPI != null) {
            basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel8.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterNativeAPI.isDeviceSupportPip" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterNativeAPI != null) {
            basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel9.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterNativeAPI.registerSysBrightness" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterNativeAPI != null) {
            basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel10.setMessageHandler(null);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwww(@NonNull BinaryMessenger binaryMessenger, @Nullable FtxMessages.TXFlutterNativeAPI tXFlutterNativeAPI) {
        Wwwwwwwwwwwwwwwwwwwwww(binaryMessenger, "", tXFlutterNativeAPI);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI tXFlutterNativeAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterNativeAPI.registerSysBrightness((FtxMessages.BoolMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI tXFlutterNativeAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterNativeAPI.isDeviceSupportPip());
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI tXFlutterNativeAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterNativeAPI.requestAudioFocus();
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI tXFlutterNativeAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterNativeAPI.abandonAudioFocus();
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI tXFlutterNativeAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterNativeAPI.getSystemVolume());
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI tXFlutterNativeAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterNativeAPI.setSystemVolume((FtxMessages.DoubleMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI tXFlutterNativeAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterNativeAPI.getSysBrightness());
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI tXFlutterNativeAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterNativeAPI.getBrightness());
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI tXFlutterNativeAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterNativeAPI.restorePageBrightness();
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterNativeAPI tXFlutterNativeAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterNativeAPI.setBrightness((FtxMessages.DoubleMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    @NonNull
    public static MessageCodec<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return FtxMessages.PigeonCodec.INSTANCE;
    }
}
