.class Lcom/tencent/vod/flutter/player/FTXLivePlayer$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/vod/flutter/FTXPIPManager$PipCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/player/FTXLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

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
    .locals 0

    .line 1
    return-void
.end method

.method public onPipResult(Lcom/tencent/vod/flutter/model/TXPipResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$000(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Lcom/tencent/live2/V2TXLivePlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$000(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Lcom/tencent/live2/V2TXLivePlayer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$100(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setObserver(Lcom/tencent/live2/V2TXLivePlayerObserver;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$200(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->getRenderView()Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->setRenderView(Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/model/TXPipResult;->isPlaying()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->getInstance()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;->isInForeground()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->resumePlayer()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$1;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$302(Lcom/tencent/vod/flutter/player/FTXLivePlayer;Z)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method
