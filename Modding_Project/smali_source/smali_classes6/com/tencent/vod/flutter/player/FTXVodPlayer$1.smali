.class Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/player/FTXVodPlayer;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPipPlayerEvent(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->access$000(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Lcom/tencent/rtmp/TXVodPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->onPlayEvent(Lcom/tencent/rtmp/TXVodPlayer;ILandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onPipResult(Lcom/tencent/vod/flutter/model/TXPipResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->access$000(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Lcom/tencent/rtmp/TXVodPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->access$100(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->access$200(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->setPlayer(Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->access$000(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Lcom/tencent/rtmp/TXVodPlayer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/model/TXPipResult;->isPlaying()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->isInForeground()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->playerResume()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->access$302(Lcom/tencent/vod/flutter/player/FTXVodPlayer;Z)Z

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method
