.class public abstract Lcom/facebook/ads/redexgen/X/fy;
.super Lcom/facebook/ads/redexgen/X/QR;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6g;

.field public A01:Landroid/widget/Scroller;

.field public final A02:Lcom/facebook/ads/redexgen/X/QT;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2766
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VI3k6vbyE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wbKxmRtdnLanYPPQlq0AQ7UHjncjxjam"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7rHsxeXjhwTRluKKUSI3i7DNAgzyS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RLsJgHk6VqLvU3GrilIJimxIkswsMvKT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sHDfA32w1RYOD3HMFDMkWGxW2yjuY1ZH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JEcuqbBofZsfD30FS8fTTaggCipMDK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8NUawD4TiWbh8YzDjR1LHPIBKq0RidcG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8EIjrQLLrDPWSel1MFlzfXR6TVhPBcGW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/fy;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/fy;->A09()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81772
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QR;-><init>()V

    .line 81773
    new-instance v0, Lcom/facebook/ads/redexgen/X/fz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fz;-><init>(Lcom/facebook/ads/redexgen/X/fy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A02:Lcom/facebook/ads/redexgen/X/QT;

    return-void
.end method

.method private final A05(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gH;
    .locals 1

    .line 81774
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/fy;->A0E(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gH;

    move-result-object v0

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/fy;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xf

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A07()V
    .locals 2

    .line 81775
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A02:Lcom/facebook/ads/redexgen/X/QT;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6g;->A1i(Lcom/facebook/ads/redexgen/X/QT;)V

    .line 81776
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6g;->setOnFlingListener(Lcom/facebook/ads/redexgen/X/QR;)V

    .line 81777
    return-void
.end method

.method private A08()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 81778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getOnFlingListener()Lcom/facebook/ads/redexgen/X/QR;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81779
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A02:Lcom/facebook/ads/redexgen/X/QT;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6g;->A1h(Lcom/facebook/ads/redexgen/X/QT;)V

    .line 81780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/6g;->setOnFlingListener(Lcom/facebook/ads/redexgen/X/QR;)V

    .line 81781
    return-void

    .line 81782
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fy;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fy;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x78t
        -0x4bt
        0x67t
        -0x50t
        -0x4bt
        -0x46t
        -0x45t
        -0x58t
        -0x4bt
        -0x56t
        -0x54t
        0x67t
        -0x4at
        -0x53t
        0x67t
        -0x6at
        -0x4bt
        -0x73t
        -0x4dt
        -0x50t
        -0x4bt
        -0x52t
        -0x6dt
        -0x50t
        -0x46t
        -0x45t
        -0x54t
        -0x4bt
        -0x54t
        -0x47t
        0x67t
        -0x58t
        -0x4dt
        -0x47t
        -0x54t
        -0x58t
        -0x55t
        -0x40t
        0x67t
        -0x46t
        -0x54t
        -0x45t
        0x75t
    .end array-data
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/QO;II)Z
    .locals 4

    .line 81783
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Qa;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 81784
    return v3

    .line 81785
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/fy;->A05(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gH;

    move-result-object v2

    .line 81786
    .local v0, "smoothScroller":Lcom/facebook/ads/redexgen/X/Qb;
    if-nez v2, :cond_1

    .line 81787
    return v3

    .line 81788
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/fy;->A0C(Lcom/facebook/ads/redexgen/X/QO;II)I

    move-result v1

    .line 81789
    .local v2, "targetPosition":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 81790
    return v3

    .line 81791
    :cond_2
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Qb;->A0A(I)V

    .line 81792
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/QO;->A1N(Lcom/facebook/ads/redexgen/X/Qb;)V

    .line 81793
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0B(II)Z
    .locals 4

    .line 81794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getLayoutManager()Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v3

    .line 81795
    .local v0, "layoutManager":Lcom/facebook/ads/redexgen/X/QO;
    const/4 v2, 0x0

    if-nez v3, :cond_0

    .line 81796
    return v2

    .line 81797
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getAdapter()Lcom/facebook/ads/redexgen/X/QC;

    move-result-object v0

    .line 81798
    .local v2, "adapter":Lcom/facebook/ads/redexgen/X/QC;
    if-nez v0, :cond_1

    .line 81799
    return v2

    .line 81800
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getMinFlingVelocity()I

    move-result v1

    .line 81801
    .local v3, "minFlingVelocity":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_3

    .line 81802
    :cond_2
    invoke-direct {p0, v3, p1, p2}, Lcom/facebook/ads/redexgen/X/fy;->A0A(Lcom/facebook/ads/redexgen/X/QO;II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 81803
    :cond_3
    return v2
.end method

.method public abstract A0C(Lcom/facebook/ads/redexgen/X/QO;II)I
.end method

.method public abstract A0D(Lcom/facebook/ads/redexgen/X/QO;)Landroid/view/View;
.end method

.method public abstract A0E(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gH;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final A0F()V
    .locals 5

    .line 81804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    if-nez v0, :cond_0

    .line 81805
    return-void

    .line 81806
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getLayoutManager()Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v1

    .line 81807
    .local v0, "layoutManager":Lcom/facebook/ads/redexgen/X/QO;
    if-nez v1, :cond_1

    .line 81808
    return-void

    .line 81809
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/fy;->A0D(Lcom/facebook/ads/redexgen/X/QO;)Landroid/view/View;

    move-result-object v0

    .line 81810
    .local v1, "snapView":Landroid/view/View;
    if-nez v0, :cond_2

    .line 81811
    return-void

    .line 81812
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/fy;->A0H(Lcom/facebook/ads/redexgen/X/QO;Landroid/view/View;)[I

    move-result-object v4

    .line 81813
    .local v2, "snapDistance":[I
    const/4 v1, 0x0

    aget v0, v4, v1

    const/4 v3, 0x1

    if-nez v0, :cond_3

    aget v0, v4, v3

    if-eqz v0, :cond_4

    .line 81814
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    aget v1, v4, v1

    aget v0, v4, v3

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6g;->A1e(II)V

    .line 81815
    :cond_4
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 81816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    if-ne v0, p1, :cond_0

    .line 81817
    return-void

    .line 81818
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    sget-object v1, Lcom/facebook/ads/redexgen/X/fy;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/fy;->A04:[Ljava/lang/String;

    const-string v1, "xzKGxret4GzWIxaR6oK37PWpSNYAUaFQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 81819
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fy;->A07()V

    .line 81820
    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    .line 81821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_2

    .line 81822
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fy;->A08()V

    .line 81823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A01:Landroid/widget/Scroller;

    .line 81824
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/fy;->A0F()V

    .line 81825
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public abstract A0H(Lcom/facebook/ads/redexgen/X/QO;Landroid/view/View;)[I
.end method
