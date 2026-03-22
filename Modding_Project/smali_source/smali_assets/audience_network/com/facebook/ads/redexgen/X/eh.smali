.class public final Lcom/facebook/ads/redexgen/X/eh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/el;

.field public A01:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A02:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Z

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/eh;->A04:Z

    .line 80526
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/el;)Lcom/facebook/ads/redexgen/X/eh;
    .locals 0

    .line 80527
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eh;->A00:Lcom/facebook/ads/redexgen/X/el;

    .line 80528
    return-object p0
.end method

.method public final A01(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/eh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/eh;"
        }
    .end annotation

    .line 80529
    .local p1, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eh;->A01:Ljava/util/Set;

    .line 80530
    return-object p0
.end method

.method public final A02(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/eh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/eh;"
        }
    .end annotation

    .line 80531
    .local p1, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eh;->A02:Ljava/util/Set;

    .line 80532
    return-object p0
.end method

.method public final A03(Z)Lcom/facebook/ads/redexgen/X/eh;
    .locals 0

    .line 80533
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/eh;->A04:Z

    .line 80534
    return-object p0
.end method

.method public final A04(Z)Lcom/facebook/ads/redexgen/X/eh;
    .locals 0

    .line 80535
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/eh;->A03:Z

    .line 80536
    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/ei;
    .locals 7

    .line 80537
    new-instance v0, Lcom/facebook/ads/redexgen/X/ei;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eh;->A00:Lcom/facebook/ads/redexgen/X/el;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/eh;->A04:Z

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/eh;->A02:Ljava/util/Set;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/eh;->A01:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/eh;->A03:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/ei;-><init>(Lcom/facebook/ads/redexgen/X/el;ZLjava/util/Set;Ljava/util/Set;ZLcom/facebook/ads/redexgen/X/eg;)V

    return-object v0
.end method
