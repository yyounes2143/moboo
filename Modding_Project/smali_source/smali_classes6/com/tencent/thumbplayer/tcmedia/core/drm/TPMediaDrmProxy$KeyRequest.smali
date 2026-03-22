.class public final Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$KeyRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyRequest"
.end annotation


# instance fields
.field mData:[B

.field mRequestType:I

.field mStatus:I


# direct methods
.method public constructor <init>(I[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$KeyRequest;->mRequestType:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$KeyRequest;->mData:[B

    .line 7
    .line 8
    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$KeyRequest;->mStatus:I

    .line 9
    .line 10
    return-void
.end method
