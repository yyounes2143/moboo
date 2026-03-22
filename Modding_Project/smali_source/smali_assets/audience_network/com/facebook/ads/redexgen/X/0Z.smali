.class public abstract Lcom/facebook/ads/redexgen/X/0Z;
.super Lcom/facebook/ads/redexgen/X/1i;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ah;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/1i<",
        "TK;TV;>;",
        "Lcom/facebook/ads/redexgen/X/Ah<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x5b6e85fc5d362ea5L


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 4867
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0Z;, "Lcom/google/common/collect/AbstractListMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1i;-><init>(Ljava/util/Map;)V

    .line 4868
    return-void
.end method


# virtual methods
.method public final A0F(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 4869
    .local p1, "this":Lcom/facebook/ads/redexgen/X/0Z;, "Lcom/google/common/collect/AbstractListMultimap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/1i;->A0H(Ljava/lang/Object;Ljava/util/List;Lcom/facebook/ads/redexgen/X/kH;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A0G(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 4870
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0Z;, "Lcom/google/common/collect/AbstractListMultimap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public A49()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 4871
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0Z;, "Lcom/google/common/collect/AbstractListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BD;->A49()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public AGU(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 4872
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0Z;, "Lcom/google/common/collect/AbstractListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1i;->AGU(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 4873
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0Z;, "Lcom/google/common/collect/AbstractListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/BD;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
