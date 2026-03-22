.class public final Lcom/facebook/ads/redexgen/X/gb;
.super Lcom/facebook/ads/redexgen/X/Ob;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/Ob<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/OY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/OY<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83362
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gb;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ob;-><init>()V

    .line 83363
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/OY;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/OY<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83364
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gb;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gb;->A00:Lcom/facebook/ads/redexgen/X/OY;

    if-nez v0, :cond_0

    .line 83365
    new-instance v0, Lcom/facebook/ads/redexgen/X/gc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/gc;-><init>(Lcom/facebook/ads/redexgen/X/gb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gb;->A00:Lcom/facebook/ads/redexgen/X/OY;

    .line 83366
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gb;->A00:Lcom/facebook/ads/redexgen/X/OY;

    return-object v0
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 83367
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gb;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gb;->A00()Lcom/facebook/ads/redexgen/X/OY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OY;->A08()Lcom/facebook/ads/redexgen/X/OU;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 83368
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gb;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gb;->A00()Lcom/facebook/ads/redexgen/X/OY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OY;->A09()Lcom/facebook/ads/redexgen/X/OV;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 83369
    .local p1, "this":Lcom/facebook/ads/redexgen/X/gb;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Ob;->A0D(I)V

    .line 83370
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83371
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ob;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83372
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 83373
    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 83374
    .local p0, "this":Lcom/facebook/ads/redexgen/X/gb;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/gb;->A00()Lcom/facebook/ads/redexgen/X/OY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OY;->A0A()Lcom/facebook/ads/redexgen/X/OX;

    move-result-object v0

    return-object v0
.end method
