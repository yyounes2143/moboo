.class public Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;
.super Ljava/lang/Object;


# instance fields
.field public data:[[B

.field public dstHeight:I

.field public dstWidth:I

.field public flags:I

.field public format:I

.field public lineSize:[I

.field public ptsMs:J

.field public rotation:I

.field public srcHeight:I

.field public srcWidth:I

.field public trackID:I


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
.method public getData()[[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;->data:[[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getDstHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;->dstHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getDstWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;->dstWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;->flags:I

    .line 2
    .line 3
    return v0
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;->format:I

    .line 2
    .line 3
    return v0
.end method

.method public getLineSize()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;->lineSize:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getPtsMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;->ptsMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;->rotation:I

    .line 2
    .line 3
    return v0
.end method

.method public getSrcHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;->srcHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getSrcWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;->srcWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getTrackID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;->trackID:I

    .line 2
    .line 3
    return v0
.end method
