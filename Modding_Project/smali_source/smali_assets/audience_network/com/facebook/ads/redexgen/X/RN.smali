.class public final Lcom/facebook/ads/redexgen/X/RN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Us;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 62665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62666
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Us;->A00(I)Lcom/facebook/ads/redexgen/X/Us;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RN;->A00:Lcom/facebook/ads/redexgen/X/Us;

    .line 62667
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 62668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RN;->A00:Lcom/facebook/ads/redexgen/X/Us;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Us;->A04()I

    move-result v0

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 62669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RN;->A00:Lcom/facebook/ads/redexgen/X/Us;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Us;->A05()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 62670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RN;->A00:Lcom/facebook/ads/redexgen/X/Us;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Us;->A06()I

    move-result v0

    return v0
.end method
