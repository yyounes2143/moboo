.class public Lcom/tencent/thumbplayer/tcmedia/api/TPDashFormat;
.super Ljava/lang/Object;


# instance fields
.field public audioChannels:I

.field public audioSamplingRate:I

.field public bandwidth:I

.field public codecs:Ljava/lang/String;

.field public frameRate:F

.field public height:I

.field public label:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public representationId:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPDashFormat;->width:I

    .line 6
    .line 7
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPDashFormat;->height:I

    .line 8
    .line 9
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPDashFormat;->bandwidth:I

    .line 10
    .line 11
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPDashFormat;->audioChannels:I

    .line 12
    .line 13
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPDashFormat;->audioSamplingRate:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPDashFormat;->frameRate:F

    .line 17
    .line 18
    return-void
.end method
