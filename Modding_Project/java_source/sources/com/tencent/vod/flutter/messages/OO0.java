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
public final /* synthetic */ class OO0 {
    public static void Kkkkkkkkkk(@NonNull BinaryMessenger binaryMessenger, @NonNull String str, @Nullable final FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi) {
        String str2;
        if (str.isEmpty()) {
            str2 = "";
        } else {
            str2 = "." + str;
        }
        BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.initialize" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illlllllllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.startVodPlay" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illlllllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel2.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.startVodPlayWithParams" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illlll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel3.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.startPlayDrm" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.IIll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel4.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel5 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setAutoPlay" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel5.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.O0000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel5.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel6 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.stop" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel6.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.O000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel6.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel7 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.isPlaying" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel7.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.O00
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel7.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel8 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.pause" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel8.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.O0
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel8.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel9 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.resume" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel9.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.OO000000000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel9.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel10 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setMute" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel10.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.OO00000000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel10.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel11 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setLoop" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel11.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel11.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel12 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.seek" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel12.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.IIllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel12.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel13 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.seekToPdtTime" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel13.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.O00000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel13.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel14 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setRate" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel14.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.OO0000000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel14.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel15 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.getSupportedBitrate" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel15.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.OO000000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel15.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel16 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.getBitrateIndex" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel16.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.OO00000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel16.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel17 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setBitrateIndex" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel17.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.OO0000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel17.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel18 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setStartTime" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel18.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.OO000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel18.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel19 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setAudioPlayOutVolume" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel19.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.OO00
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel19.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel20 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setRequestAudioFocus" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel20.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illllllllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel20.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel21 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setConfig" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel21.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illllllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel21.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel22 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.getCurrentPlaybackTime" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel22.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illlllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel22.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel23 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.getBufferDuration" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel23.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illllllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel23.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel24 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.getPlayableDuration" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel24.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illlllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel24.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel25 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.getWidth" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel25.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illllllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel25.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel26 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.getHeight" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel26.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illlllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel26.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel27 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setToken" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel27.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel27.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel28 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.isLoop" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel28.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illlllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel28.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel29 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.enableHardwareDecode" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel29.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illlllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel29.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel30 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.enterPictureInPictureMode" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel30.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel30.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel31 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.autoEnterPictureInPictureMode" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel31.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel31.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel32 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.isInPIPMode" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel32.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Illl
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel32.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel33 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.exitPictureInPictureMode" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel33.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Ill
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel33.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel34 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.initImageSprite" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel34.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.Il
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel34.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel35 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.getImageSprite" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel35.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.IIlllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel35.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel36 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.getDuration" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel36.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.IIllllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Wwww(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel36.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel37 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.addSubtitleSource" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel37.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.IIlllllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Www(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel37.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel38 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.getSubtitleTrackInfo" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel38.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.IIlllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel38.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel39 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.getAudioTrackInfo" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel39.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.IIllll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel39.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel40 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.selectTrack" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel40.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.IIlll
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel40.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel41 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.deselectTrack" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel41.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.IIl
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel41.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel42 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setSubtitleStyle" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel42.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.O0000000000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel42.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel43 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setStringOption" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel43.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.O000000000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel43.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel44 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setPlayerView" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel44.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.O00000000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel44.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel45 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.setRenderMode" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel45.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.O0000000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel45.setMessageHandler(null);
        }
        BasicMessageChannel basicMessageChannel46 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.super_player.TXFlutterVodPlayerApi.reDraw" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (tXFlutterVodPlayerApi != null) {
            basicMessageChannel46.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: com.tencent.vod.flutter.messages.O000000
                @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                    OO0.Kkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi.this, obj, reply);
                }
            });
        } else {
            basicMessageChannel46.setMessageHandler(null);
        }
    }

    public static void Kkkkkkkkkkk(@NonNull BinaryMessenger binaryMessenger, @Nullable FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi) {
        Kkkkkkkkkk(binaryMessenger, "", tXFlutterVodPlayerApi);
    }

    public static /* synthetic */ void Kkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setMute((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.resume((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.pause((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.isPlaying((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.stop((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.reDraw();
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setRenderMode((Long) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setPlayerView((Long) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setStringOption((FtxMessages.StringOptionPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setSubtitleStyle((FtxMessages.SubTitleRenderModelPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.deselectTrack((FtxMessages.IntPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setAutoPlay((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.selectTrack((FtxMessages.IntPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.getAudioTrackInfo((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Kkkkkkkkkkkkkkkkkkkkkkkkkk(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.getSubtitleTrackInfo((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Www(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.addSubtitleSource((FtxMessages.SubTitlePlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.getDuration((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.getImageSprite((FtxMessages.DoublePlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.initImageSprite((FtxMessages.StringListPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.exitPictureInPictureMode((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.isInPIPMode((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.autoEnterPictureInPictureMode((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.startPlayDrm((FtxMessages.TXPlayerDrmMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.enterPictureInPictureMode((FtxMessages.PipParamsPlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.enableHardwareDecode((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.isLoop((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setToken((FtxMessages.StringPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.getHeight((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.getWidth((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.getPlayableDuration((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.getBufferDuration((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.getCurrentPlaybackTime((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setConfig((FtxMessages.FTXVodPlayConfigPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.startVodPlayWithParams((FtxMessages.TXPlayInfoParamsPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.setRequestAudioFocus((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setAudioPlayOutVolume((FtxMessages.IntPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setStartTime((FtxMessages.DoublePlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setBitrateIndex((FtxMessages.IntPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.getBitrateIndex((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.getSupportedBitrate((FtxMessages.PlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setRate((FtxMessages.DoublePlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.seekToPdtTime((FtxMessages.IntPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.seek((FtxMessages.DoublePlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            tXFlutterVodPlayerApi.setLoop((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0));
            arrayList.add(0, null);
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.startVodPlay((FtxMessages.StringPlayerMsg) ((ArrayList) obj).get(0)));
        } catch (Throwable th) {
            arrayList = FtxMessages.wrapError(th);
        }
        reply.reply(arrayList);
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.TXFlutterVodPlayerApi tXFlutterVodPlayerApi, Object obj, BasicMessageChannel.Reply reply) {
        ArrayList<Object> arrayList = new ArrayList<>();
        try {
            arrayList.add(0, tXFlutterVodPlayerApi.initialize((FtxMessages.BoolPlayerMsg) ((ArrayList) obj).get(0)));
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
