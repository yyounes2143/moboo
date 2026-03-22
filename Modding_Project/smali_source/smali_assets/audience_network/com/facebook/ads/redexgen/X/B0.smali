.class public final Lcom/facebook/ads/redexgen/X/B0;
.super Lcom/facebook/ads/redexgen/X/m4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/m4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30527
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/m4;-><init>(Lcom/facebook/ads/redexgen/X/B0;)V

    return-void
.end method

.method private final A00(I)Lcom/facebook/ads/redexgen/X/m4;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 30528
    if-gez p1, :cond_0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/m4;->A02()Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-lez p1, :cond_1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/m4;->A03()Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/m4;->A04()Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A05()I
    .locals 1

    .line 30529
    const/4 v0, 0x0

    return v0
.end method

.method public final A06(II)Lcom/facebook/ads/redexgen/X/m4;
    .locals 1
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

    .line 30530
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/AD;->A01(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B0;->A00(I)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v0

    return-object v0
.end method

.method public final A07(JJ)Lcom/facebook/ads/redexgen/X/m4;
    .locals 1
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

    .line 30531
    invoke-static {p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/q7;->A01(JJ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B0;->A00(I)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v0

    return-object v0
.end method

.method public final A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/m4;
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
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/m4;"
        }
    .end annotation

    .line 30532
    .local p1, "left":Ljava/lang/Object;, "TT;"
    .local p2, "right":Ljava/lang/Object;, "TT;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B0;->A00(I)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v0

    return-object v0
.end method

.method public final A09(ZZ)Lcom/facebook/ads/redexgen/X/m4;
    .locals 1
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

    .line 30533
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/PD;->A00(ZZ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B0;->A00(I)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(ZZ)Lcom/facebook/ads/redexgen/X/m4;
    .locals 1
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

    .line 30534
    invoke-static {p2, p1}, Lcom/facebook/ads/redexgen/X/PD;->A00(ZZ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/B0;->A00(I)Lcom/facebook/ads/redexgen/X/m4;

    move-result-object v0

    return-object v0
.end method
