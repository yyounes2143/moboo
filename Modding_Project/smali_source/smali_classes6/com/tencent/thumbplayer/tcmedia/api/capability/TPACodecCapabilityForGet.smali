.class public Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForGet;
.super Ljava/lang/Object;


# instance fields
.field private maxBitrate:I

.field private maxChannels:I

.field private maxLevel:I

.field private maxProfile:I

.field private maxSamplerate:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForGet;->maxSamplerate:I

    .line 5
    .line 6
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForGet;->maxChannels:I

    .line 7
    .line 8
    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForGet;->maxBitrate:I

    .line 9
    .line 10
    iput p4, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForGet;->maxProfile:I

    .line 11
    .line 12
    iput p5, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForGet;->maxLevel:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getMaxBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForGet;->maxBitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxChannels()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForGet;->maxChannels:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForGet;->maxLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxProfile()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForGet;->maxProfile:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxSamplerate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForGet;->maxSamplerate:I

    .line 2
    .line 3
    return v0
.end method
