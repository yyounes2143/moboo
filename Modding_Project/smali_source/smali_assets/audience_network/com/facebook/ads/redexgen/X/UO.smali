.class public final Lcom/facebook/ads/redexgen/X/UO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdEventBuilder"
.end annotation


# instance fields
.field public A00:D

.field public A01:Lcom/facebook/ads/redexgen/X/UU;

.field public A02:Lcom/facebook/ads/redexgen/X/UV;

.field public A03:Ljava/lang/String;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(D)Lcom/facebook/ads/redexgen/X/UO;
    .locals 0

    .line 67616
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/UO;->A00:D

    .line 67617
    return-object p0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/UU;)Lcom/facebook/ads/redexgen/X/UO;
    .locals 0

    .line 67618
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UO;->A01:Lcom/facebook/ads/redexgen/X/UU;

    .line 67619
    return-object p0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/UV;)Lcom/facebook/ads/redexgen/X/UO;
    .locals 0

    .line 67620
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/UV;

    .line 67621
    return-object p0
.end method

.method public final A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/UO;
    .locals 0

    .line 67622
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UO;->A03:Ljava/lang/String;

    .line 67623
    return-object p0
.end method

.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/UO;
    .locals 0

    .line 67624
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UO;->A04:Ljava/lang/String;

    .line 67625
    return-object p0
.end method

.method public final A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/UO;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/UO;"
        }
    .end annotation

    .line 67626
    .local p1, "mData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UO;->A05:Ljava/util/Map;

    .line 67627
    return-object p0
.end method

.method public final A06(Z)Lcom/facebook/ads/redexgen/X/UO;
    .locals 0

    .line 67628
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/UO;->A06:Z

    .line 67629
    return-object p0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/UP;
    .locals 10

    .line 67630
    new-instance v0, Lcom/facebook/ads/redexgen/X/UP;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UO;->A04:Ljava/lang/String;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/UO;->A00:D

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/UO;->A03:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/UO;->A05:Ljava/util/Map;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/UO;->A01:Lcom/facebook/ads/redexgen/X/UU;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/UV;

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/UO;->A06:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/UP;-><init>(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/UU;Lcom/facebook/ads/redexgen/X/UV;Z)V

    return-object v0
.end method
