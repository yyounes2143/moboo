.class public final Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$MediaDrmProxyCreateResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaDrmProxyCreateResult"
.end annotation


# instance fields
.field mErrorCode:I

.field mMediaDrmProxy:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$MediaDrmProxyCreateResult;->mMediaDrmProxy:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;

    .line 5
    .line 6
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$MediaDrmProxyCreateResult;->mErrorCode:I

    .line 7
    .line 8
    return-void
.end method
