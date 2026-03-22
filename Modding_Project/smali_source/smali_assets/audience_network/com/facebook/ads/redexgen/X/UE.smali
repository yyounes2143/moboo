.class public final Lcom/facebook/ads/redexgen/X/UE;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/cu;

.field public final A02:Lcom/facebook/ads/redexgen/X/US;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Z

.field public final A06:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cu;Landroid/view/View;Ljava/lang/String;ZZ)V
    .locals 1

    .line 67398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67399
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/UE;->A03:Ljava/lang/String;

    .line 67400
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UE;->A01:Lcom/facebook/ads/redexgen/X/cu;

    .line 67401
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UE;->A02:Lcom/facebook/ads/redexgen/X/US;

    .line 67402
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UE;->A00:Landroid/view/View;

    .line 67403
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/UE;->A05:Z

    .line 67404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UE;->A04:Ljava/util/HashMap;

    .line 67405
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/UE;->A06:Z

    .line 67406
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/View;
    .locals 1

    .line 67407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UE;->A00:Landroid/view/View;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/cu;
    .locals 1

    .line 67408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UE;->A01:Lcom/facebook/ads/redexgen/X/cu;

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/US;
    .locals 1

    .line 67409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UE;->A02:Lcom/facebook/ads/redexgen/X/US;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 67410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UE;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/util/Map;
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

    .line 67411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UE;->A04:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Z
    .locals 1

    .line 67412
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UE;->A05:Z

    return v0
.end method

.method public final A06()Z
    .locals 1

    .line 67413
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UE;->A06:Z

    return v0
.end method
