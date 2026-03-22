.class public Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;
.super Ljava/lang/Object;


# instance fields
.field private level:I

.field private lowerboundBitrate:I

.field private lowerboundChannels:I

.field private lowerboundSamplerate:I

.field private profile:I

.field private upperboundBitrate:I

.field private upperboundChannels:I

.field private upperboundSamplerate:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->upperboundSamplerate:I

    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->upperboundChannels:I

    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->upperboundBitrate:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->lowerboundSamplerate:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->lowerboundChannels:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->lowerboundBitrate:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->profile:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->level:I

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->upperboundSamplerate:I

    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->upperboundChannels:I

    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->upperboundBitrate:I

    iput p4, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->lowerboundSamplerate:I

    iput p5, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->lowerboundChannels:I

    iput p6, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->lowerboundBitrate:I

    iput p7, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->profile:I

    iput p8, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->level:I

    return-void
.end method


# virtual methods
.method public getLevelForSet()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->level:I

    .line 2
    .line 3
    return v0
.end method

.method public getLowerboundBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->lowerboundBitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getLowerboundChannels()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->lowerboundChannels:I

    .line 2
    .line 3
    return v0
.end method

.method public getLowerboundSamplerate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->lowerboundSamplerate:I

    .line 2
    .line 3
    return v0
.end method

.method public getProfileForSet()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->profile:I

    .line 2
    .line 3
    return v0
.end method

.method public getUpperboundBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->upperboundBitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getUpperboundChannels()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->upperboundChannels:I

    .line 2
    .line 3
    return v0
.end method

.method public getUpperboundSamplerate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->upperboundSamplerate:I

    .line 2
    .line 3
    return v0
.end method
