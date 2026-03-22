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
public final /* synthetic */ class Illllllllllllllllllll {
    public static void Wwwwwwwwwwwwwww(@NonNull BinaryMessenger binaryMessenger, @NonNull String str, @Nullable final FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI) {
        String str2;
        if (str.isEmpty()) {
            str2 = "";
        } else {
            str2 = "." + str;
        }
        BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.getPlatformVersion" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.createVodPlayer" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illllllllllllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel2.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.createLivePlayer" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illlllllllllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel3.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.setConsoleEnabled" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel4.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.releasePlayer" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel5.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.setGlobalMaxCacheSize" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel6.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.setGlobalCacheFolderPath" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel7.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.setGlobalCacheFolderCustomPath" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel8.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.setGlobalLicense" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel9.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.setLogLevel" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kkk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel10.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel11 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.getLiteAVSDKVersion" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel11.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Kk
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel11.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel12 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.getIOSSupportPIP" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel12.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illllllllllllllllllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel12.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel13 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.setGlobalEnv" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel13.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illlllllllllllllllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel13.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel14 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.startVideoOrientationService" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel14.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illllllllllllllllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel14.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel15 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.setUserId" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel15.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illlllllllllllllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel15.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel16 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.setLicenseFlexibleValid" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel16.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illllllllllllllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel16.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel17 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterSuperPlayerPluginAPI.setDrmProvisionEnv" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterSuperPlayerPluginAPI != null) {
            basicMessageChannel17.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illlllllllllllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    Illllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel17.setMessageHandler(null);
        }
    }

    public static void Wwwwwwwwwwwwwwww(@NonNull BinaryMessenger binaryMessenger, @Nullable FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI) {
        Wwwwwwwwwwwwwww(binaryMessenger, "", tXFlutterSuperPlayerPluginAPI);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterSuperPlayerPluginAPI.setLogLevel((FtxMessages.IntMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterSuperPlayerPluginAPI.setGlobalLicense((FtxMessages.LicenseMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterSuperPlayerPluginAPI.setGlobalCacheFolderCustomPath((FtxMessages.CachePathMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterSuperPlayerPluginAPI.setGlobalCacheFolderPath((FtxMessages.StringMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterSuperPlayerPluginAPI.setGlobalMaxCacheSize((FtxMessages.IntMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterSuperPlayerPluginAPI.releasePlayer((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterSuperPlayerPluginAPI.setConsoleEnabled((FtxMessages.BoolMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterSuperPlayerPluginAPI.createLivePlayer((Boolean) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterSuperPlayerPluginAPI.setDrmProvisionEnv((Long) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterSuperPlayerPluginAPI.setLicenseFlexibleValid((FtxMessages.BoolMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterSuperPlayerPluginAPI.setUserId((FtxMessages.StringMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterSuperPlayerPluginAPI.startVideoOrientationService());
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterSuperPlayerPluginAPI.setGlobalEnv((FtxMessages.StringMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterSuperPlayerPluginAPI.getIOSSupportPIP());
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterSuperPlayerPluginAPI.getLiteAVSDKVersion());
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterSuperPlayerPluginAPI.createVodPlayer((Boolean) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterSuperPlayerPluginAPI tXFlutterSuperPlayerPluginAPI, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterSuperPlayerPluginAPI.getPlatformVersion());
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
