.class public Lcom/facebook/ads/redexgen/X/kG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/kH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/kH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/kH;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 91900
    .local p0, "this":Lcom/facebook/ads/redexgen/X/kG;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kG;->A02:Lcom/facebook/ads/redexgen/X/kH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A02:Lcom/facebook/ads/redexgen/X/kH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/kH;->A00:Ljava/util/Collection;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A00:Ljava/util/Collection;

    .line 91902
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/kH;->A00:Ljava/util/Collection;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1i;->A06(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A01:Ljava/util/Iterator;

    .line 91903
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/kH;Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$1",
            "delegateIterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TV;>;)V"
        }
    .end annotation

    .line 91904
    .local p0, "this":Lcom/facebook/ads/redexgen/X/kG;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    .local p2, "delegateIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kG;->A02:Lcom/facebook/ads/redexgen/X/kH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A02:Lcom/facebook/ads/redexgen/X/kH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/kH;->A00:Ljava/util/Collection;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A00:Ljava/util/Collection;

    .line 91906
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/kG;->A01:Ljava/util/Iterator;

    .line 91907
    return-void
.end method

.method private final A01()V
    .locals 2

    .line 91908
    .local p0, "this":Lcom/facebook/ads/redexgen/X/kG;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A02:Lcom/facebook/ads/redexgen/X/kH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/kH;->A04()V

    .line 91909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A02:Lcom/facebook/ads/redexgen/X/kH;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/kH;->A00:Ljava/util/Collection;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A00:Ljava/util/Collection;

    if-ne v1, v0, :cond_0

    .line 91910
    return-void

    .line 91911
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A02()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 91912
    .local p0, "this":Lcom/facebook/ads/redexgen/X/kG;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kG;->A01()V

    .line 91913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A01:Ljava/util/Iterator;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 91914
    .local p0, "this":Lcom/facebook/ads/redexgen/X/kG;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kG;->A01()V

    .line 91915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 91916
    .local p0, "this":Lcom/facebook/ads/redexgen/X/kG;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kG;->A01()V

    .line 91917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 91918
    .local p0, "this":Lcom/facebook/ads/redexgen/X/kG;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 91919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A02:Lcom/facebook/ads/redexgen/X/kH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/kH;->A04:Lcom/facebook/ads/redexgen/X/1i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1i;->A01(Lcom/facebook/ads/redexgen/X/1i;)I

    .line 91920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kG;->A02:Lcom/facebook/ads/redexgen/X/kH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/kH;->A05()V

    .line 91921
    return-void
.end method
