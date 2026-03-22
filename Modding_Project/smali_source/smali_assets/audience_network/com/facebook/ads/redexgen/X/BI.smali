.class public abstract Lcom/facebook/ads/redexgen/X/BI;
.super Lcom/facebook/ads/redexgen/X/pg;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/kC;
    }
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
.field public A00:Lcom/facebook/ads/redexgen/X/kC;

.field public A01:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30722
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BI;, "Lcom/google/common/collect/AbstractIterator<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pg;-><init>()V

    .line 30723
    sget-object v0, Lcom/facebook/ads/redexgen/X/kC;->A04:Lcom/facebook/ads/redexgen/X/kC;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:Lcom/facebook/ads/redexgen/X/kC;

    .line 30724
    return-void
.end method

.method private A00()Z
    .locals 2

    .line 30725
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BI;, "Lcom/google/common/collect/AbstractIterator<TT;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/kC;->A03:Lcom/facebook/ads/redexgen/X/kC;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:Lcom/facebook/ads/redexgen/X/kC;

    .line 30726
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->A02()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A01:Ljava/lang/Object;

    .line 30727
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:Lcom/facebook/ads/redexgen/X/kC;

    sget-object v0, Lcom/facebook/ads/redexgen/X/kC;->A02:Lcom/facebook/ads/redexgen/X/kC;

    if-eq v1, v0, :cond_0

    .line 30728
    sget-object v0, Lcom/facebook/ads/redexgen/X/kC;->A05:Lcom/facebook/ads/redexgen/X/kC;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:Lcom/facebook/ads/redexgen/X/kC;

    .line 30729
    const/4 v0, 0x1

    return v0

    .line 30730
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A01()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 30731
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BI;, "Lcom/google/common/collect/AbstractIterator<TT;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/kC;->A02:Lcom/facebook/ads/redexgen/X/kC;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:Lcom/facebook/ads/redexgen/X/kC;

    .line 30732
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract A02()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public final hasNext()Z
    .locals 4

    .line 30733
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BI;, "Lcom/google/common/collect/AbstractIterator<TT;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:Lcom/facebook/ads/redexgen/X/kC;

    sget-object v0, Lcom/facebook/ads/redexgen/X/kC;->A03:Lcom/facebook/ads/redexgen/X/kC;

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jA;->A0D(Z)V

    .line 30734
    sget-object v1, Lcom/facebook/ads/redexgen/X/kB;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:Lcom/facebook/ads/redexgen/X/kC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/kC;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 30735
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;->A00()Z

    move-result v0

    return v0

    .line 30736
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 30737
    :pswitch_0
    return v3

    .line 30738
    :pswitch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 30739
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BI;, "Lcom/google/common/collect/AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BI;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30740
    sget-object v0, Lcom/facebook/ads/redexgen/X/kC;->A04:Lcom/facebook/ads/redexgen/X/kC;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A00:Lcom/facebook/ads/redexgen/X/kC;

    .line 30741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A01:Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oQ;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 30742
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BI;->A01:Ljava/lang/Object;

    .line 30743
    return-object v1

    .line 30744
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
