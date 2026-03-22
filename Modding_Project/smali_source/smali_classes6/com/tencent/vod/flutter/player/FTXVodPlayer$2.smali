.class Lcom/tencent/vod/flutter/player/FTXVodPlayer$2;
.super Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;
.source "Proguard"


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
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$2;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$TXAppStatusListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEnterBack()V
    .locals 0

    .line 1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$2;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->access$300(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$2;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->access$302(Lcom/tencent/vod/flutter/player/FTXVodPlayer;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$2;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->playerResume()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
