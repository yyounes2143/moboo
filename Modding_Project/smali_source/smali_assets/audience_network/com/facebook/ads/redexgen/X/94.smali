.class public abstract Lcom/facebook/ads/redexgen/X/94;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/lj;


# instance fields
.field public A00:I

.field public A01:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "https://github.com/androidx/media/pull/1742"
    .end annotation
.end field

.field public final A02:I

.field public final A03:[J

.field public final A04:[Lcom/facebook/ads/redexgen/X/or;

.field public final A05:I

.field public final A06:Lcom/facebook/ads/redexgen/X/oH;

.field public final A07:[I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oH;[II)V
    .locals 4

    .line 24968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24969
    array-length v0, p2

    const/4 v3, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 24970
    iput p3, p0, Lcom/facebook/ads/redexgen/X/94;->A02:I

    .line 24971
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/oH;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A06:Lcom/facebook/ads/redexgen/X/oH;

    .line 24972
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/94;->A05:I

    .line 24973
    iget v0, p0, Lcom/facebook/ads/redexgen/X/94;->A05:I

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/or;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A04:[Lcom/facebook/ads/redexgen/X/or;

    .line 24974
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_1
    array-length v0, p2

    if-ge v2, v0, :cond_1

    .line 24975
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/94;->A04:[Lcom/facebook/ads/redexgen/X/or;

    aget v0, p2, v2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A08(I)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    aput-object v0, v1, v2

    .line 24976
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24977
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 24978
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/94;->A04:[Lcom/facebook/ads/redexgen/X/or;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dt;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Dt;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 24979
    iget v0, p0, Lcom/facebook/ads/redexgen/X/94;->A05:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A07:[I

    .line 24980
    const/4 v2, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/94;->A05:I

    if-ge v2, v0, :cond_2

    .line 24981
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/94;->A07:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A04:[Lcom/facebook/ads/redexgen/X/or;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/oH;->A07(Lcom/facebook/ads/redexgen/X/or;)I

    move-result v0

    aput v0, v1, v2

    .line 24982
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 24983
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/94;->A05:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A03:[J

    .line 24984
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/94;->A01:Z

    .line 24985
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/or;)I
    .locals 0

    .line 24986
    iget p1, p1, Lcom/facebook/ads/redexgen/X/or;->A05:I

    iget p0, p0, Lcom/facebook/ads/redexgen/X/or;->A05:I

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public A5p()V
    .locals 0

    .line 24987
    return-void
.end method

.method public A6C()V
    .locals 0

    .line 24988
    return-void
.end method

.method public final A83(I)Lcom/facebook/ads/redexgen/X/or;
    .locals 1

    .line 24989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A04:[Lcom/facebook/ads/redexgen/X/or;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A89(I)I
    .locals 1

    .line 24990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A07:[I

    aget v0, v0, p1

    return v0
.end method

.method public final A8u()Lcom/facebook/ads/redexgen/X/or;
    .locals 2

    .line 24991
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/94;->A04:[Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lj;->A8v()I

    move-result v0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A9D()Lcom/facebook/ads/redexgen/X/oH;
    .locals 1

    .line 24992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A06:Lcom/facebook/ads/redexgen/X/oH;

    return-object v0
.end method

.method public final A9y(I)I
    .locals 2

    .line 24993
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/94;->A05:I

    if-ge v1, v0, :cond_1

    .line 24994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A07:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 24995
    return v1

    .line 24996
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24997
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public AEc(F)V
    .locals 0

    .line 24998
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 24999
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 25000
    return v3

    .line 25001
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 25002
    .end local v2
    :cond_1
    return v2

    .line 25003
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/94;

    .line 25004
    .local v2, "other":Lcom/facebook/ads/redexgen/X/94;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/94;->A06:Lcom/facebook/ads/redexgen/X/oH;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/94;->A06:Lcom/facebook/ads/redexgen/X/oH;

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/94;->A07:[I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/94;->A07:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 25005
    iget v0, p0, Lcom/facebook/ads/redexgen/X/94;->A00:I

    if-nez v0, :cond_0

    .line 25006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A06:Lcom/facebook/ads/redexgen/X/oH;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A07:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/94;->A00:I

    .line 25007
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/94;->A00:I

    return v0
.end method

.method public final length()I
    .locals 1

    .line 25008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/94;->A07:[I

    array-length v0, v0

    return v0
.end method
