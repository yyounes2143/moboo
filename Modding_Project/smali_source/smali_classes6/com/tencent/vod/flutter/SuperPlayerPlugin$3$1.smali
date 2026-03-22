.class Lcom/tencent/vod/flutter/SuperPlayerPlugin$3$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;->onLicenceLoaded(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$result:I


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3$1;->this$1:Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3$1;->val$result:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3$1;->val$reason:Ljava/lang/String;

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
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "result"

    .line 7
    .line 8
    iget v2, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3$1;->val$result:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v1, "reason"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3$1;->val$reason:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3$1;->this$1:Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->access$200(Lcom/tencent/vod/flutter/SuperPlayerPlugin;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v2, 0x1f7

    .line 29
    .line 30
    invoke-static {v2, v0}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->access$100(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3$1;->this$1:Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/tencent/vod/flutter/SuperPlayerPlugin$3;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 37
    .line 38
    invoke-virtual {v1, v0, v2}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPluginFlutterAPI;->onSDKListener(Ljava/util/Map;Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
