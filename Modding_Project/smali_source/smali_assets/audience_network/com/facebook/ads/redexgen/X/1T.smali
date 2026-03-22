.class public Lcom/facebook/ads/redexgen/X/1T;
.super Lcom/facebook/ads/redexgen/X/AG;
.source ""

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilteredSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/AG<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/SortedSet;Lcom/facebook/ads/redexgen/X/jB;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unfiltered",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lcom/facebook/ads/redexgen/X/jB<",
            "-TE;>;)V"
        }
    .end annotation

    .line 8667
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1T;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    .local p1, "unfiltered":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p2, "predicate":Lcom/facebook/ads/redexgen/X/jB;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AG;-><init>(Ljava/util/Set;Lcom/facebook/ads/redexgen/X/jB;)V

    .line 8668
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 8669
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1T;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A01:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 8670
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1T;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A01:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A00:Lcom/facebook/ads/redexgen/X/jB;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/nL;->A06(Ljava/util/Iterator;Lcom/facebook/ads/redexgen/X/jB;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 8671
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1T;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A01:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lm;->A00:Lcom/facebook/ads/redexgen/X/jB;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1T;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/1T;-><init>(Ljava/util/SortedSet;Lcom/facebook/ads/redexgen/X/jB;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 8672
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1T;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lm;->A01:Ljava/util/Collection;

    check-cast v2, Ljava/util/SortedSet;

    .line 8673
    .local v0, "sortedUnfiltered":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    .line 8674
    .local v1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A00:Lcom/facebook/ads/redexgen/X/jB;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/jB;->A44(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8675
    return-object v1

    .line 8676
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    .line 8677
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    goto :goto_0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
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
            "fromElement",
            "toElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 8678
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1T;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A01:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    .line 8679
    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lm;->A00:Lcom/facebook/ads/redexgen/X/jB;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1T;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/1T;-><init>(Ljava/util/SortedSet;Lcom/facebook/ads/redexgen/X/jB;)V

    .line 8680
    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 8681
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1T;, "Lcom/google/common/collect/Sets$FilteredSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lm;->A01:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lm;->A00:Lcom/facebook/ads/redexgen/X/jB;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1T;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/1T;-><init>(Ljava/util/SortedSet;Lcom/facebook/ads/redexgen/X/jB;)V

    return-object v0
.end method
