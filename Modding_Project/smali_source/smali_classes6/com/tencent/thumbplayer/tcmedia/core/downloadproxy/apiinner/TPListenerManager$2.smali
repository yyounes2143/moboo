.class Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager;->handleCallbackMessage(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager;

.field final synthetic val$arg1:Ljava/lang/Object;

.field final synthetic val$arg2:Ljava/lang/Object;

.field final synthetic val$arg3:Ljava/lang/Object;

.field final synthetic val$arg4:Ljava/lang/Object;

.field final synthetic val$arg5:Ljava/lang/Object;

.field final synthetic val$message:I

.field final synthetic val$taskId:I


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager;

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$message:I

    .line 4
    .line 5
    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$taskId:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$arg1:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$arg2:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$arg3:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$arg4:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$arg5:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$message:I

    .line 4
    .line 5
    iget v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$taskId:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$arg1:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$arg2:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$arg3:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$arg4:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager$2;->val$arg5:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static/range {v0 .. v7}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager;->access$600(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/apiinner/TPListenerManager;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
