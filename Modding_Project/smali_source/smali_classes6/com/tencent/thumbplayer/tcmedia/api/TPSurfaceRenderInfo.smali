.class public Lcom/tencent/thumbplayer/tcmedia/api/TPSurfaceRenderInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/api/TPSurfaceRenderInfo$TPVideoCropInfo;
    }
.end annotation


# instance fields
.field public displayHeight:I

.field public displayWidth:I

.field public videoCropInfo:Lcom/tencent/thumbplayer/tcmedia/api/TPSurfaceRenderInfo$TPVideoCropInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSurfaceRenderInfo;->displayWidth:I

    .line 6
    .line 7
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSurfaceRenderInfo;->displayHeight:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSurfaceRenderInfo;->videoCropInfo:Lcom/tencent/thumbplayer/tcmedia/api/TPSurfaceRenderInfo$TPVideoCropInfo;

    .line 11
    .line 12
    return-void
.end method
