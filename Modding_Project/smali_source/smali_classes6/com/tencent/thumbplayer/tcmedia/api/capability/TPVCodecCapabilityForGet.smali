.class public Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_FRAME_RATE_FOR_LUMA_SAMPLES_DEFAULT:I = -0x1

.field private static final MAX_LEVEL_DEFAULT:I = -0x1

.field private static final MAX_LUMA_SAMPLES_DEFAULT:I = -0x1

.field private static final MAX_PROFILE_DEFAULT:I = -0x1

.field public static final mDefaultVCodecCapability:Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;


# instance fields
.field private maxFramerateFormaxLumaSamples:I

.field private maxLevel:I

.field private maxLumaSamples:I

.field private maxProfile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1, v1, v1}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;-><init>(IIII)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->mDefaultVCodecCapability:Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->maxLumaSamples:I

    .line 5
    .line 6
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->maxProfile:I

    .line 7
    .line 8
    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->maxLevel:I

    .line 9
    .line 10
    iput p4, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->maxFramerateFormaxLumaSamples:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getMaxFramerateFormaxLumaSamples()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->maxFramerateFormaxLumaSamples:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->maxLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxLumaSamples()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->maxLumaSamples:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxProfile()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->maxProfile:I

    .line 2
    .line 3
    return v0
.end method
