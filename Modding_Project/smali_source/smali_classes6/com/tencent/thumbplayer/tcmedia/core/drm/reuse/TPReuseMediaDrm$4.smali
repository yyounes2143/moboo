.class Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$4;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$4;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;->access$300(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;)Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$4;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;->access$400(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;)Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$4;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;

    .line 14
    .line 15
    invoke-static {v3}, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;->access$500(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;->access$600(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;Ljava/util/UUID;Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
