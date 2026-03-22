.class Lcom/tencent/vod/flutter/player/FTXVodPlayer$7;
.super Lcom/tencent/rtmp/ITXVodPlayListener$ITXVodSubtitleDataListener;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/player/FTXVodPlayer;->init(Z)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$7;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/tencent/rtmp/ITXVodPlayListener$ITXVodSubtitleDataListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSubtitleData(Lcom/tencent/rtmp/TXVodDef$TXVodSubtitleData;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "callback subtitle ,index:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p1, Lcom/tencent/rtmp/TXVodDef$TXVodSubtitleData;->trackIndex:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " ,startMs:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p1, Lcom/tencent/rtmp/TXVodDef$TXVodSubtitleData;->startPositionMs:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " ,durationMs:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p1, Lcom/tencent/rtmp/TXVodDef$TXVodSubtitleData;->durationMs:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " ,content:"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p1, Lcom/tencent/rtmp/TXVodDef$TXVodSubtitleData;->subtitleData:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "FTXVodPlayer"

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Landroid/os/Bundle;

    .line 56
    .line 57
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v1, "subtitleData"

    .line 61
    .line 62
    iget-object v2, p1, Lcom/tencent/rtmp/TXVodDef$TXVodSubtitleData;->subtitleData:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v1, "startPositionMs"

    .line 68
    .line 69
    iget-wide v2, p1, Lcom/tencent/rtmp/TXVodDef$TXVodSubtitleData;->startPositionMs:J

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 72
    .line 73
    .line 74
    const-string v1, "durationMs"

    .line 75
    .line 76
    iget-wide v2, p1, Lcom/tencent/rtmp/TXVodDef$TXVodSubtitleData;->durationMs:J

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 79
    .line 80
    .line 81
    const-string v1, "trackIndex"

    .line 82
    .line 83
    iget-wide v2, p1, Lcom/tencent/rtmp/TXVodDef$TXVodSubtitleData;->trackIndex:J

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$7;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->access$400(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodPlayerFlutterAPI;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const/16 v1, 0x259

    .line 95
    .line 96
    invoke-static {v1, v0}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$7;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodPlayerFlutterAPI;->onPlayerEvent(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
