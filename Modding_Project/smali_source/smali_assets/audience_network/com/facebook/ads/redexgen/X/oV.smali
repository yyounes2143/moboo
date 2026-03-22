.class public abstract Lcom/facebook/ads/redexgen/X/oV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Ordering$IncomparableValueException;,
        Lcom/google/common/collect/Ordering$ArbitraryOrdering;,
        Lcom/google/common/collect/Ordering$ArbitraryOrderingHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101912
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oV;, "Lcom/google/common/collect/Ordering<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A03()Lcom/facebook/ads/redexgen/X/AQ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/facebook/ads/redexgen/X/oV<",
            "TC;>;"
        }
    .end annotation

    .line 101913
    sget-object v0, Lcom/facebook/ads/redexgen/X/AQ;->A02:Lcom/facebook/ads/redexgen/X/AQ;

    return-object v0
.end method

.method public static A04(Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/oV;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/oV<",
            "TT;>;"
        }
    .end annotation

    .line 101914
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/oV;

    if-eqz v0, :cond_0

    .line 101915
    move-object v0, p0

    check-cast v0, Lcom/facebook/ads/redexgen/X/oV;

    .line 101916
    :goto_0
    return-object v0

    .line 101917
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/B2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/B2;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/redexgen/X/ip;)Lcom/facebook/ads/redexgen/X/BA;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/ip<",
            "TF;+TT;>;)",
            "Lcom/facebook/ads/redexgen/X/oV<",
            "TF;>;"
        }
    .end annotation

    .line 101918
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oV;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "function":Lcom/facebook/ads/redexgen/X/ip;, "Lcom/google/common/base/Function<TF;+TT;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/BA;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/BA;-><init>(Lcom/facebook/ads/redexgen/X/ip;Lcom/facebook/ads/redexgen/X/oV;)V

    return-object v0
.end method

.method public A06()Lcom/facebook/ads/redexgen/X/oV;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/facebook/ads/redexgen/X/oV<",
            "TS;>;"
        }
    .end annotation

    .line 101919
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oV;, "Lcom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Lcom/facebook/ads/redexgen/X/oV;)V

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
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
            "left",
            "right"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method
