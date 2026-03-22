.class Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/player/FTXLivePlayer;->notifyPlayerEvent(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$evtId:I


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;->val$evtId:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;->val$bundle:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;->val$evtId:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$402(Lcom/tencent/vod/flutter/player/FTXLivePlayer;I)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$500(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;->val$evtId:I

    .line 15
    .line 16
    iget-object v2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;->val$bundle:Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/tencent/vod/flutter/tools/TXCommonUtil;->getParams(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;->this$0:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;->onPlayerEvent(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "onLivePlayEvent:"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;->val$evtId:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ","

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$3;->val$bundle:Landroid/os/Bundle;

    .line 48
    .line 49
    const-string v2, "EVT_MSG"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "FTXLivePlayer"

    .line 63
    .line 64
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
