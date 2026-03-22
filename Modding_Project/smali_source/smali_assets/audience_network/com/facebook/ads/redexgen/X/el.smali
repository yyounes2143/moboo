.class public final Lcom/facebook/ads/redexgen/X/el;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ek;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/eb;

.field public A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:I

.field public final A06:I


# direct methods
.method public constructor <init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/eb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/eb;",
            ")V"
        }
    .end annotation

    .line 80575
    .local p6, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80576
    iput p1, p0, Lcom/facebook/ads/redexgen/X/el;->A06:I

    .line 80577
    iput p2, p0, Lcom/facebook/ads/redexgen/X/el;->A00:I

    .line 80578
    iput p3, p0, Lcom/facebook/ads/redexgen/X/el;->A02:I

    .line 80579
    iput p4, p0, Lcom/facebook/ads/redexgen/X/el;->A05:I

    .line 80580
    iput p5, p0, Lcom/facebook/ads/redexgen/X/el;->A01:I

    .line 80581
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/el;->A04:Ljava/util/Map;

    .line 80582
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/el;->A03:Lcom/facebook/ads/redexgen/X/eb;

    .line 80583
    return-void
.end method

.method public synthetic constructor <init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/eb;Lcom/facebook/ads/redexgen/X/ej;)V
    .locals 0

    .line 80584
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/el;-><init>(IIIIILjava/util/Map;Lcom/facebook/ads/redexgen/X/eb;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 80585
    iget v0, p0, Lcom/facebook/ads/redexgen/X/el;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 80586
    iget v0, p0, Lcom/facebook/ads/redexgen/X/el;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 80587
    iget v0, p0, Lcom/facebook/ads/redexgen/X/el;->A02:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 80588
    iget v0, p0, Lcom/facebook/ads/redexgen/X/el;->A05:I

    return v0
.end method

.method public final A04()I
    .locals 1

    .line 80589
    iget v0, p0, Lcom/facebook/ads/redexgen/X/el;->A06:I

    return v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/eb;
    .locals 1

    .line 80590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/el;->A03:Lcom/facebook/ads/redexgen/X/eb;

    return-object v0
.end method

.method public final A06()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/el;->A04:Ljava/util/Map;

    return-object v0
.end method
