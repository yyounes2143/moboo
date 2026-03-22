.class Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;->moveCurActToFront()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$3;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$3;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 2
    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$3;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    const/high16 v0, 0x20000

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string v0, "com.tencent.flutter.doExitPip"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity$3;->this$0:Lcom/tencent/vod/flutter/ui/FlutterPipImplActivity;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
