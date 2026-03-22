.class public Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TPACodecPropertyRange"
.end annotation


# instance fields
.field public level:I

.field public lowerboundBitRate:I

.field public lowerboundChannels:I

.field public lowerboundSampleRate:I

.field public profile:I

.field public upperboundBitRate:I

.field public upperboundChannels:I

.field public upperboundSampleRate:I


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
.method public set(IIIIIIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;->upperboundSampleRate:I

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;->upperboundChannels:I

    .line 4
    .line 5
    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;->upperboundBitRate:I

    .line 6
    .line 7
    iput p4, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;->lowerboundSampleRate:I

    .line 8
    .line 9
    iput p5, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;->lowerboundChannels:I

    .line 10
    .line 11
    iput p6, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;->lowerboundBitRate:I

    .line 12
    .line 13
    iput p7, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;->profile:I

    .line 14
    .line 15
    iput p8, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;->level:I

    .line 16
    .line 17
    return-void
.end method
