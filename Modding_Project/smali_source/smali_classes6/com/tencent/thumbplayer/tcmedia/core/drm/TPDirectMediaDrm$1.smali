.class Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;->setOnKeyStatusChangeListener(Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm$1;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm;",
            "[B",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm$1;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;->access$000(Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;)Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm$OnKeyStatusChangeListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm$1;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;

    .line 10
    .line 11
    invoke-interface {p1, v0, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;[BLjava/util/List;Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
