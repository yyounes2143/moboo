.class public final Lcom/facebook/ads/redexgen/X/Ky;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A00:Z

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Ks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Ks<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ks;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Ks<",
            "TT;>;)V"
        }
    .end annotation

    .line 49832
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ky;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    .local p1, "responseAdapter":Lcom/facebook/ads/redexgen/X/Ks;, "Lcom/facebook/ads/cache/api/ResponseAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49833
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ky;->A02:Lcom/facebook/ads/redexgen/X/Ks;

    .line 49834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A01:Z

    .line 49835
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Ks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/Ks<",
            "TT;>;"
        }
    .end annotation

    .line 49836
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ky;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A02:Lcom/facebook/ads/redexgen/X/Ks;

    return-object v0
.end method

.method public final A01(Z)V
    .locals 0

    .line 49837
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ky;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ky;->A00:Z

    .line 49838
    return-void
.end method

.method public final A02(Z)V
    .locals 0

    .line 49839
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ky;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ky;->A01:Z

    .line 49840
    return-void
.end method

.method public final A03()Z
    .locals 1

    .line 49841
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ky;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A00:Z

    return v0
.end method

.method public final A04()Z
    .locals 1

    .line 49842
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ky;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ky;->A01:Z

    return v0
.end method
