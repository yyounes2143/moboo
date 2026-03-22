.class Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;-><init>(Ljava/util/UUID;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$1;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;[BII[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$1;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;->access$000(Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;)Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$1;->this$0:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;

    .line 10
    .line 11
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;->access$100(Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;[BII[B)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
