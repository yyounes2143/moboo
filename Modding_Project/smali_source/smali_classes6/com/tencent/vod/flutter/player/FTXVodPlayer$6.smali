.class Lcom/tencent/vod/flutter/player/FTXVodPlayer$6;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/player/FTXVodPlayer;->onNetStatus(Lcom/tencent/rtmp/TXVodPlayer;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/player/FTXVodPlayer;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$6;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$6;->val$bundle:Landroid/os/Bundle;

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
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$6;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/FTXVodPlayer;->access$400(Lcom/tencent/vod/flutter/player/FTXVodPlayer;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodPlayerFlutterAPI;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$6;->val$bundle:Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/tencent/vod/flutter/player/FTXVodPlayer$6;->this$0:Lcom/tencent/vod/flutter/player/FTXVodPlayer;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodPlayerFlutterAPI;->onNetEvent(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
