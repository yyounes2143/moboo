.class public final Lcom/facebook/ads/redexgen/X/Aj;
.super Lcom/facebook/ads/redexgen/X/pg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/nL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/pg<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public A00:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29781
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Aj;, "Lcom/google/common/collect/Iterators$SingletonIterator<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pg;-><init>()V

    .line 29782
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:Ljava/lang/Object;

    .line 29783
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 29784
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Aj;, "Lcom/google/common/collect/Iterators$SingletonIterator<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 29785
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Aj;, "Lcom/google/common/collect/Iterators$SingletonIterator<TT;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:Ljava/lang/Object;

    .line 29786
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:Ljava/lang/Object;

    .line 29787
    if-eqz v1, :cond_0

    .line 29788
    return-object v1

    .line 29789
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
