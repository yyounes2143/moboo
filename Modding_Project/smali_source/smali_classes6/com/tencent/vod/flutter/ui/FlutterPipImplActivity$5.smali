.class Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$5;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->onPlayEvent(Lcom/tencent/rtmp/TXVodPlayer;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

.field final synthetic val$progressToShow:I


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$5;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$5;->val$progressToShow:I

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$5;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->access$600(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)Landroid/widget/ProgressBar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$5;->val$progressToShow:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
