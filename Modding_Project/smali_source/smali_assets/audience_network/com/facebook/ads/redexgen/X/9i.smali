.class public final Lcom/facebook/ads/redexgen/X/9i;
.super Lcom/facebook/ads/redexgen/X/Ap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullFilteringHeadersMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Ap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 28388
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ap;-><init>()V

    .line 28389
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9i;->A00:Ljava/util/Map;

    .line 28390
    return-void
.end method

.method private final A00(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28391
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public static synthetic A01(Ljava/lang/String;)Z
    .locals 0

    .line 28392
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static synthetic A02(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 28393
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A03()Ljava/lang/Object;
    .locals 1

    .line 28394
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9i;->A05()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 28395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9i;->A00:Ljava/util/Map;

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 28396
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 28397
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Ap;->A06(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 28398
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ni;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ni;-><init>()V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ou;->A07(Ljava/util/Set;Lcom/facebook/ads/redexgen/X/jB;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 28399
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Ap;->A07(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 28400
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9i;->A00(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 28401
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ap;->A04()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .line 28402
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ap;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/facebook/ads/redexgen/X/Ap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28403
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/nj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/nj;-><init>()V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ou;->A07(Ljava/util/Set;Lcom/facebook/ads/redexgen/X/jB;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 28404
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ap;->size()I

    move-result v1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/facebook/ads/redexgen/X/Ap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method
