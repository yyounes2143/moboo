.class public final Lcom/facebook/ads/redexgen/X/Sq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Sw;

.field public final A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V
    .locals 0

    .line 64687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64688
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A02:Ljava/lang/String;

    .line 64689
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:I

    .line 64690
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/Sw;

    .line 64691
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 64692
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:I

    return v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Sw;
    .locals 1

    .line 64693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/Sw;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 64694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A02:Ljava/lang/String;

    return-object v0
.end method
