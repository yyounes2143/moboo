.class Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->onStatisticsUpdate(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;

.field final synthetic val$statistics:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver$1;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver$1;->val$statistics:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver$1;->val$statistics:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/tools/FTXV2LiveTools;->buildNetBundle(Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver$1;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->access$900(Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v2, v0}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver$1;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;->onNetEvent(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
