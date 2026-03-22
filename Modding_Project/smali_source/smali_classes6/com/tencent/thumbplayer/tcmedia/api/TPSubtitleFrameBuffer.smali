.class public Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer$TP_SUBTITLE_FRAME_FORMAT_ID;
    }
.end annotation


# static fields
.field public static final TP_PLAYER_SUBTITLE_OUTPUT_FORMAT_NONE:I = -0x1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapSubtitleFormat;
        value = -0x1
    .end annotation
.end field

.field public static final TP_PLAYER_SUBTITLE_OUTPUT_FORMAT_RGBA:I = 0x1a
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapSubtitleFormat;
        value = 0x1a
    .end annotation
.end field


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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->data:[[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getDstHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->dstHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getDstWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->dstWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->flags:I

    .line 2
    .line 3
    return v0
.end method

.method public getFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->format:I

    .line 2
    .line 3
    return v0
.end method

.method public getLineSize()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->lineSize:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getPtsMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->ptsMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->rotation:I

    .line 2
    .line 3
    return v0
.end method

.method public getSrcHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->srcHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getSrcWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->srcWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getTrackID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;->trackID:I

    .line 2
    .line 3
    return v0
.end method
