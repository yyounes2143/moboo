.class public final Lcom/facebook/ads/redexgen/X/eY;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/LF;

.field public A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LF;)V
    .locals 1

    .line 80464
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/eY;-><init>(Lcom/facebook/ads/redexgen/X/LF;F)V

    .line 80465
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LF;F)V
    .locals 1

    .line 80466
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/eY;-><init>(Lcom/facebook/ads/redexgen/X/LF;FLjava/util/Map;)V

    .line 80467
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LF;FLjava/util/Map;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/LF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/LF;",
            "F",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80468
    .local p3, "windowParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80469
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eY;->A01:Lcom/facebook/ads/redexgen/X/LF;

    .line 80470
    iput p2, p0, Lcom/facebook/ads/redexgen/X/eY;->A00:F

    .line 80471
    if-eqz p3, :cond_0

    .line 80472
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/eY;->A02:Ljava/util/Map;

    .line 80473
    :goto_0
    return-void

    .line 80474
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/eY;->A02:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public final A00()F
    .locals 1

    .line 80475
    iget v0, p0, Lcom/facebook/ads/redexgen/X/eY;->A00:F

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 80476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eY;->A01:Lcom/facebook/ads/redexgen/X/LF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LF;->A03()I

    move-result v0

    return v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/LF;
    .locals 1

    .line 80477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eY;->A01:Lcom/facebook/ads/redexgen/X/LF;

    return-object v0
.end method

.method public final A03()Ljava/util/Map;
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

    .line 80478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eY;->A02:Ljava/util/Map;

    return-object v0
.end method

.method public final A04()Z
    .locals 2

    .line 80479
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/eY;->A01:Lcom/facebook/ads/redexgen/X/LF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LF;->A0I:Lcom/facebook/ads/redexgen/X/LF;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
