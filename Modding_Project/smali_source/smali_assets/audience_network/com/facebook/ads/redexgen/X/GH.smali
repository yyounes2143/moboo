.class public final Lcom/facebook/ads/redexgen/X/GH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 37392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37393
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GH;->A00:I

    .line 37394
    iput p2, p0, Lcom/facebook/ads/redexgen/X/GH;->A01:I

    .line 37395
    iput p3, p0, Lcom/facebook/ads/redexgen/X/GH;->A04:I

    .line 37396
    iput p4, p0, Lcom/facebook/ads/redexgen/X/GH;->A02:I

    .line 37397
    iput p5, p0, Lcom/facebook/ads/redexgen/X/GH;->A03:I

    .line 37398
    return-void
.end method

.method public synthetic constructor <init>(IIIIILcom/facebook/ads/redexgen/X/GG;)V
    .locals 0

    .line 37399
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/GH;-><init>(IIIII)V

    return-void
.end method
