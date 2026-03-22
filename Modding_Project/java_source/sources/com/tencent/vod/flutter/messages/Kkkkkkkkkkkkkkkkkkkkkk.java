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
public final /* synthetic */ class Kkkkkkkkkkkkkkkkkkkkkk {
    public static void Wwwwwwwww(@NonNull BinaryMessenger binaryMessenger, @NonNull String str, @Nullable final FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi) {
        String str2;
        if (str.isEmpty()) {
            str2 = "";
        } else {
            str2 = "." + str;
        }
        BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.initialize" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.startLivePlay" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel2.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.stop" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel3.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.isPlaying" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel4.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.pause" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel5.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.resume" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel6.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.setLiveMode" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel7.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.setVolume" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel8.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.setMute" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel9.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.switchStream" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel10.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel11 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.setAppID" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel11.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel11.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel12 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.setConfig" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel12.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel12.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel13 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.enableHardwareDecode" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel13.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel13.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel14 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.enterPictureInPictureMode" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel14.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel14.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel15 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.exitPictureInPictureMode" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel15.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Www
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel15.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel16 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.enableReceiveSeiMessage" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel16.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkkkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel16.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel17 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.showDebugView" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel17.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel17.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel18 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.setProperty" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel18.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel18.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel19 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.getSupportedBitrate" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel19.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkkkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel19.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel20 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.setCacheParams" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel20.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel20.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel21 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.enablePictureInPicture" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel21.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel21.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel22 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.setPlayerView" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel22.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel22.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel23 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterLivePlayerApi.setRenderMode" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterLivePlayerApi != null) {
            basicMessageChannel23.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel23.setMessageHandler(null);
        }
    }

    public static void Wwwwwwwwww(@NonNull BinaryMessenger binaryMessenger, @Nullable FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi) {
        Wwwwwwwww(binaryMessenger, "", tXFlutterLivePlayerApi);
    }

    public static /* synthetic */ void Wwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterLivePlayerApi.switchStream((FtxMessages.StringPlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterLivePlayerApi.setMute((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterLivePlayerApi.setVolume((FtxMessages.IntPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterLivePlayerApi.setLiveMode((FtxMessages.IntPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterLivePlayerApi.resume((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterLivePlayerApi.pause((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterLivePlayerApi.isPlaying((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterLivePlayerApi.setRenderMode((Long) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterLivePlayerApi.setPlayerView((Long) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterLivePlayerApi.enablePictureInPicture((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterLivePlayerApi.stop((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        ArrayList arrayList2 = (ArrayList) obj;
        try {
            arrayList.add(0, tXFlutterLivePlayerApi.setCacheParams((FtxMessages.PlayerMsg) arrayList2.get(0), (Double) arrayList2.get(1), (Double) arrayList2.get(2)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterLivePlayerApi.getSupportedBitrate((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        ArrayList arrayList2 = (ArrayList) obj;
        try {
            arrayList.add(0, tXFlutterLivePlayerApi.setProperty((FtxMessages.PlayerMsg) arrayList2.get(0), (String) arrayList2.get(1), arrayList2.get(2)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        ArrayList arrayList2 = (ArrayList) obj;
        try {
            tXFlutterLivePlayerApi.showDebugView((FtxMessages.PlayerMsg) arrayList2.get(0), (Boolean) arrayList2.get(1));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        ArrayList arrayList2 = (ArrayList) obj;
        try {
            arrayList.add(0, tXFlutterLivePlayerApi.enableReceiveSeiMessage((FtxMessages.PlayerMsg) arrayList2.get(0), (Boolean) arrayList2.get(1), (Long) arrayList2.get(2)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterLivePlayerApi.exitPictureInPictureMode((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterLivePlayerApi.enterPictureInPictureMode((FtxMessages.PipParamsPlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterLivePlayerApi.enableHardwareDecode((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterLivePlayerApi.setConfig((FtxMessages.FTXLivePlayConfigPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterLivePlayerApi.setAppID((FtxMessages.StringPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterLivePlayerApi.startLivePlay((FtxMessages.StringPlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterLivePlayerApi tXFlutterLivePlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterLivePlayerApi.initialize((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0)));
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
