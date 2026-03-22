.class public Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TPVCodecPropertyRange"
.end annotation


# instance fields
.field public level:I

.field public lowerboundHeight:I

.field public lowerboundWidth:I

.field public profile:I

.field public upperboundHeight:I

.field public upperboundWidth:I


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
.method public set(IIIIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;->upperboundWidth:I

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;->upperboundHeight:I

    .line 4
    .line 5
    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;->lowerboundWidth:I

    .line 6
    .line 7
    iput p4, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;->lowerboundHeight:I

    .line 8
    .line 9
    iput p5, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;->profile:I

    .line 10
    .line 11
    iput p6, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;->level:I

    .line 12
    .line 13
    return-void
.end method
