.class public Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;
.super Ljava/lang/Object;


# static fields
.field public static final TP_NATIVE_MEDIA_CONTAINER_TYPE_DASH:I = 0x2

.field public static final TP_NATIVE_MEDIA_CONTAINER_TYPE_HLS:I = 0x1

.field public static final TP_NATIVE_MEDIA_CONTAINER_TYPE_UNKNOWN:I = 0x0

.field public static final TP_NATIVE_MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final TP_NATIVE_MEDIA_TRACK_TYPE_SUBTITLE:I = 0x3

.field public static final TP_NATIVE_MEDIA_TRACK_TYPE_UNKNOW:I = 0x0

.field public static final TP_NATIVE_MEDIA_TRACK_TYPE_VIDEO:I = 0x1


# instance fields
.field public contianerType:I

.field public dashFormat:Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackDashFormat;

.field public hlsTag:Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackHlsTag;

.field public isExclusive:Z

.field public isInternal:Z

.field public isSelected:Z

.field public trackName:Ljava/lang/String;

.field public trackType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;->trackType:I

    .line 6
    .line 7
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;->contianerType:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;->isSelected:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;->isExclusive:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;->isInternal:Z

    .line 15
    .line 16
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackHlsTag;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackHlsTag;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;->hlsTag:Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackHlsTag;

    .line 22
    .line 23
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackDashFormat;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackDashFormat;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackInfo;->dashFormat:Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackDashFormat;

    .line 29
    .line 30
    return-void
.end method
