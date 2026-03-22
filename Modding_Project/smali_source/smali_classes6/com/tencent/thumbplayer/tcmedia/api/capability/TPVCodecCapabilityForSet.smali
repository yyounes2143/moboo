.class public Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;
.super Ljava/lang/Object;


# instance fields
.field private level:I

.field private lowerboundHeight:I

.field private lowerboundWidth:I

.field private profile:I

.field private upperboundHeight:I

.field private upperboundWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->upperboundWidth:I

    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->upperboundHeight:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->lowerboundWidth:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->lowerboundHeight:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->profile:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->level:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->upperboundWidth:I

    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->upperboundHeight:I

    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->profile:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->lowerboundWidth:I

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->lowerboundHeight:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->level:I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->upperboundWidth:I

    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->upperboundHeight:I

    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->lowerboundWidth:I

    iput p4, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->lowerboundHeight:I

    iput p5, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->profile:I

    iput p6, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->level:I

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->level:I

    .line 2
    .line 3
    return v0
.end method

.method public getLowerboundHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->lowerboundHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getLowerboundWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->lowerboundWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getProfile()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->profile:I

    .line 2
    .line 3
    return v0
.end method

.method public getUpperboundHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->upperboundHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getUpperboundWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->upperboundWidth:I

    .line 2
    .line 3
    return v0
.end method
