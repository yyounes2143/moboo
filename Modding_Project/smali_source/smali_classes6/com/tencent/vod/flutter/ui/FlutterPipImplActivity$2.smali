.class Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->configPipMode(Landroid/app/PictureInPictureParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

.field final synthetic val$params:Landroid/app/PictureInPictureParams;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;Landroid/app/PictureInPictureParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$2;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$2;->val$params:Landroid/app/PictureInPictureParams;

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
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x1a

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$2;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$2;->val$params:Landroid/app/PictureInPictureParams;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$2;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/tencent/vod/flutter/ui/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
