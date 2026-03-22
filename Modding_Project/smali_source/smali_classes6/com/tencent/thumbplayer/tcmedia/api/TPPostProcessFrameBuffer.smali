.class public Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;
.super Ljava/lang/Object;


# static fields
.field public static final EVENT_EOS:I = 0x1

.field public static final EVENT_FLUSH:I = 0x2


# instance fields
.field public channelLayout:J

.field public channels:I

.field public data:[[B

.field public eventFlag:I

.field public format:I

.field public height:I

.field public mediaType:I

.field public nbSamples:I

.field public perfData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public ptsMs:J

.field public rotation:I

.field public sampleAspectRatioDen:I

.field public sampleAspectRatioNum:I

.field public sampleRate:I

.field public size:[I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getChannelLayout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;->channelLayout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getData()[[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;->data:[[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;->format:I

    .line 2
    .line 3
    return v0
.end method

.method public getPtsMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;->ptsMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;->sampleRate:I

    .line 2
    .line 3
    return v0
.end method

.method public getSize()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;->size:[I

    .line 2
    .line 3
    return-object v0
.end method
