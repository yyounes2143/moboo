.class public final Lcom/facebook/ads/redexgen/X/Uy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Uz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityRecord"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 68086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68087
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Uy;->A02:I

    .line 68088
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Uy;->A00:I

    .line 68089
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Uy;->A01:I

    .line 68090
    return-void
.end method

.method public synthetic constructor <init>(IIILcom/facebook/ads/redexgen/X/Uw;)V
    .locals 0

    .line 68091
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Uy;-><init>(III)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Uy;)I
    .locals 0

    .line 68092
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Uy;)I
    .locals 0

    .line 68093
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A02:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Uy;)I
    .locals 0

    .line 68094
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Uy;->A01:I

    return p0
.end method
