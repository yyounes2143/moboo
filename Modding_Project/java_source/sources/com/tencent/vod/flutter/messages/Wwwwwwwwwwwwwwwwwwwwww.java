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
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwww {
    public static void Wwwwwwwwwwwwwwwwwwwwww(@NonNull BinaryMessenger binaryMessenger, @NonNull String str, @Nullable final FtxMessages.TXFlutterDownloadApi tXFlutterDownloadApi) {
        String str2;
        if (str.isEmpty()) {
            str2 = "";
        } else {
            str2 = "." + str;
        }
        BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterDownloadApi.startPreLoad" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterDownloadApi != null) {
            basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterDownloadApi.startPreLoadByParams" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterDownloadApi != null) {
            basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel2.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterDownloadApi.stopPreLoad" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterDownloadApi != null) {
            basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel3.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterDownloadApi.startDownload" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterDownloadApi != null) {
            basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel4.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterDownloadApi.resumeDownload" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterDownloadApi != null) {
            basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel5.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterDownloadApi.stopDownload" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterDownloadApi != null) {
            basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel6.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterDownloadApi.setDownloadHeaders" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterDownloadApi != null) {
            basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel7.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterDownloadApi.getDownloadList" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterDownloadApi != null) {
            basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel8.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterDownloadApi.getDownloadInfo" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterDownloadApi != null) {
            basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel9.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterDownloadApi.deleteDownloadMediaInfo" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterDownloadApi != null) {
            basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel10.setMessageHandler(null);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwww(@NonNull BinaryMessenger binaryMessenger, @Nullable FtxMessages.TXFlutterDownloadApi tXFlutterDownloadApi) {
        Wwwwwwwwwwwwwwwwwwwwww(binaryMessenger, "", tXFlutterDownloadApi);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi tXFlutterDownloadApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterDownloadApi.deleteDownloadMediaInfo((FtxMessages.TXVodDownloadMediaMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi tXFlutterDownloadApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterDownloadApi.getDownloadInfo((FtxMessages.TXVodDownloadMediaMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi tXFlutterDownloadApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterDownloadApi.getDownloadList());
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi tXFlutterDownloadApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterDownloadApi.setDownloadHeaders((FtxMessages.MapMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi tXFlutterDownloadApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterDownloadApi.stopDownload((FtxMessages.TXVodDownloadMediaMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi tXFlutterDownloadApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterDownloadApi.resumeDownload((FtxMessages.TXVodDownloadMediaMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi tXFlutterDownloadApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterDownloadApi.startDownload((FtxMessages.TXVodDownloadMediaMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi tXFlutterDownloadApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterDownloadApi.stopPreLoad((FtxMessages.IntMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi tXFlutterDownloadApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterDownloadApi.startPreLoadByParams((FtxMessages.PreLoadInfoMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterDownloadApi tXFlutterDownloadApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterDownloadApi.startPreLoad((FtxMessages.PreLoadMsg) ((ArrayList) obj).get(0)));
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
