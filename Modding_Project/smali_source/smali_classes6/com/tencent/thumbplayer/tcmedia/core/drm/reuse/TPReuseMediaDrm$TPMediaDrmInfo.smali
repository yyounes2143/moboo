.class Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TPMediaDrmInfo"
.end annotation


# instance fields
.field sessionId:[B

.field final tpMediaDrm:Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;->tpMediaDrm:Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;->sessionId:[B

    .line 7
    .line 8
    return-void
.end method
