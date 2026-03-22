.class Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;
.super Lcom/tencent/rtmp/TXLiveBaseListener;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/SuperPlayerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/SuperPlayerPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/tencent/rtmp/TXLiveBaseListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCustomHttpDNS(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/rtmp/TXLiveBaseListener;->onCustomHttpDNS(Ljava/lang/String;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLicenceLoaded(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/rtmp/TXLiveBaseListener;->onLicenceLoaded(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "onLicenceLoaded,result:"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ",reason:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "SuperPlayerPlugin"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->access$300(Lcom/tencent/vod/flutter/SuperPlayerPlugin;)Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3$1;

    .line 41
    .line 42
    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3$1;-><init>(Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/rtmp/TXLiveBaseListener;->onLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUpdateNetworkTime(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/rtmp/TXLiveBaseListener;->onUpdateNetworkTime(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
