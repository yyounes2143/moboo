.class public Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackHlsTag;
.super Ljava/lang/Object;


# instance fields
.field public bandwidth:J

.field public codecs:Ljava/lang/String;

.field public framerate:F

.field public groupId:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public resolution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackHlsTag;->framerate:F

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPMediaTrackHlsTag;->bandwidth:J

    .line 11
    .line 12
    return-void
.end method
