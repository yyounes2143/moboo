.class public final Lcom/facebook/ads/redexgen/X/6r;
.super Lcom/facebook/ads/redexgen/X/hQ;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 413
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vV6RQP0QGAizSnvHrhrEiTJKYqnkk7vR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gVueu7WJkm8gI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "raAPQvYZN3qaAVuN8G4E0NVfm2Y0LRUe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "w5hc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RHGb3VvP2c2qxldOqnFEpaAIYmVmOJg8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZdfM9COnhESAyQW1NqvAdN1Ku5n51qre"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6r;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6r;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NT;)V
    .locals 0

    .line 20636
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hQ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/NT;)V

    .line 20637
    return-void
.end method

.method private A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/hH;
    .locals 1

    .line 20638
    new-instance v0, Lcom/facebook/ads/redexgen/X/hH;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/hH;-><init>(Lcom/facebook/ads/redexgen/X/6r;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6r;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x43

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6r;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x2bt
        -0x2dt
        -0x20t
        -0x6et
        -0x1ft
        -0x20t
        -0x22t
        -0x15t
        -0x6et
        -0x1bt
        -0x29t
        -0x1at
        -0x6et
        -0x1ft
        -0x20t
        -0x6et
        -0x1ct
        -0x29t
        -0x17t
        -0x2dt
        -0x1ct
        -0x2at
        -0x29t
        -0x2at
        -0x6et
        -0x18t
        -0x25t
        -0x2at
        -0x29t
        -0x1ft
        -0x6et
        -0x2dt
        -0x2at
        -0x1bt
        -0x50t
        -0x4ft
        0x62t
        -0x5dt
        -0x5at
        -0x5dt
        -0x4et
        -0x4at
        -0x59t
        -0x4ct
        0x62t
        -0x4ct
        -0x59t
        -0x5dt
        -0x5at
        -0x45t
        0x62t
        -0x4at
        -0x4ft
        0x62t
        -0x4bt
        -0x59t
        -0x4at
        0x62t
        -0x4ct
        -0x59t
        -0x47t
        -0x5dt
        -0x4ct
        -0x5at
        0x62t
        -0x4ft
        -0x50t
    .end array-data
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/6r;)V
    .locals 0

    .line 20639
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hQ;->A0L()V

    return-void
.end method


# virtual methods
.method public final A0P()V
    .locals 3

    .line 20640
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    check-cast v2, Lcom/facebook/ads/redexgen/X/iA;

    .line 20641
    .local v0, "rewardedVideoAdapter":Lcom/facebook/ads/redexgen/X/iA;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/NT;->A00:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/iA;->A00(I)V

    .line 20642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/NT;->A01:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/iA;->A01(J)V

    .line 20643
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/iA;->A0J()Z

    .line 20644
    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/TC;Lcom/facebook/ads/redexgen/X/NU;)V
    .locals 13

    .line 20645
    move-object v6, p1

    check-cast v6, Lcom/facebook/ads/redexgen/X/7B;

    .line 20646
    .local v7, "adapter":Lcom/facebook/ads/redexgen/X/7B;
    new-instance v3, Lcom/facebook/ads/redexgen/X/hJ;

    move-object/from16 v9, p4

    invoke-direct {v3, p0, v9, v6}, Lcom/facebook/ads/redexgen/X/hJ;-><init>(Lcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/NU;Lcom/facebook/ads/redexgen/X/7B;)V

    .line 20647
    .local v8, "rewardedVideoTimeout":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20648
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hQ;->A0H()Landroid/os/Handler;

    move-result-object v4

    .line 20649
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/6r;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6r;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/TF;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v4, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20650
    :cond_1
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 20651
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/6r;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/hH;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-boolean v10, v0, Lcom/facebook/ads/redexgen/X/NT;->A06:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/NT;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A08:Lcom/facebook/ads/redexgen/X/NT;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/NT;->A05:Ljava/lang/String;

    .line 20652
    invoke-virtual/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/7B;->A0K(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Mh;Lcom/facebook/ads/redexgen/X/NU;ZLjava/lang/String;Ljava/lang/String;)V

    .line 20653
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/RewardData;)V
    .locals 3

    .line 20654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    if-eqz v0, :cond_1

    .line 20655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MP;->A8c()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v1, v0, :cond_0

    .line 20656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hQ;->A01:Lcom/facebook/ads/redexgen/X/MP;

    check-cast v0, Lcom/facebook/ads/redexgen/X/iA;

    .line 20657
    .local v0, "rewardedVideoAdapter":Lcom/facebook/ads/redexgen/X/iA;
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/iA;->A02(Lcom/facebook/ads/RewardData;)V

    .line 20658
    return-void

    .line 20659
    .end local v0    # "rewardedVideoAdapter":Lcom/facebook/ads/redexgen/X/iA;
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x22

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6r;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20660
    :cond_1
    const/16 v2, 0x22

    const/16 v1, 0x21

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6r;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
