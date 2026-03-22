.class public final Lcom/facebook/ads/redexgen/X/Kw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Kx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/Kw;
    .locals 0

    .line 49809
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:I

    .line 49810
    return-object p0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/Kw;
    .locals 0

    .line 49811
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Kw;->A01:I

    .line 49812
    return-object p0
.end method

.method public final A02(Z)Lcom/facebook/ads/redexgen/X/Kw;
    .locals 0

    .line 49813
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:Z

    .line 49814
    return-object p0
.end method

.method public final A03(Z)Lcom/facebook/ads/redexgen/X/Kw;
    .locals 0

    .line 49815
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Kw;->A03:Z

    .line 49816
    return-object p0
.end method

.method public final A04(Z)Lcom/facebook/ads/redexgen/X/Kw;
    .locals 0

    .line 49817
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Kw;->A04:Z

    .line 49818
    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/Kx;
    .locals 6

    .line 49819
    new-instance v0, Lcom/facebook/ads/redexgen/X/Kx;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:I

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:Z

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Kw;->A01:I

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Kw;->A03:Z

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Kw;->A04:Z

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Kx;-><init>(IZIZZ)V

    return-object v0
.end method
