.class public final Lcom/facebook/ads/redexgen/X/GE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/Ac3Util$SyncFrameInfo$StreamType;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0

    .line 37121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37122
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GE;->A06:Ljava/lang/String;

    .line 37123
    iput p2, p0, Lcom/facebook/ads/redexgen/X/GE;->A05:I

    .line 37124
    iput p3, p0, Lcom/facebook/ads/redexgen/X/GE;->A01:I

    .line 37125
    iput p4, p0, Lcom/facebook/ads/redexgen/X/GE;->A04:I

    .line 37126
    iput p5, p0, Lcom/facebook/ads/redexgen/X/GE;->A02:I

    .line 37127
    iput p6, p0, Lcom/facebook/ads/redexgen/X/GE;->A03:I

    .line 37128
    iput p7, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:I

    .line 37129
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIIIILcom/facebook/ads/redexgen/X/GC;)V
    .locals 0

    .line 37130
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/GE;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method
