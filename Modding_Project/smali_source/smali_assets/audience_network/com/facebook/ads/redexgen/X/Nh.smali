.class public final Lcom/facebook/ads/redexgen/X/Nh;
.super Landroid/os/Handler;
.source ""


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/os/Messenger;

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/content/ServiceConnection;

.field public final A04:Landroid/os/Handler;

.field public final A05:Landroid/os/Messenger;

.field public final A06:Lcom/facebook/ads/redexgen/X/hD;

.field public final A07:Lcom/facebook/ads/redexgen/X/dL;

.field public final A08:Lcom/facebook/ads/redexgen/X/cu;

.field public final A09:Lcom/facebook/ads/redexgen/X/Vt;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1412
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XpTFDRYls00C"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vck7ifrHAA2V1iiiFUM31a68qMrbz65A"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7kp6PJRyhpiDK2W7qsF8Tl5UxrhGPWlx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kdOcXot4hr7W5LaxQbiu9WGktsRnBt7r"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NVDD45FTbKQ7iY36httqcibFke2pUkbB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Eok23iuk6Oafvplk2kJb6Rczje1W7ylG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EhR8LI8Shp7o1jykQx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UYPguptf9M8vyKCeT3Zah9qOVZaP16c1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Nh;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nh;->A07()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hD;)V
    .locals 2

    .line 54267
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54268
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A04:Landroid/os/Handler;

    .line 54269
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ng;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ng;-><init>(Lcom/facebook/ads/redexgen/X/Nh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A03:Landroid/content/ServiceConnection;

    .line 54270
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 54271
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A08:Lcom/facebook/ads/redexgen/X/cu;

    .line 54272
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A05:Landroid/os/Messenger;

    .line 54273
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    .line 54274
    new-instance v0, Lcom/facebook/ads/redexgen/X/gr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/gr;-><init>(Lcom/facebook/ads/redexgen/X/Nh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A09:Lcom/facebook/ads/redexgen/X/Vt;

    .line 54275
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Nh;)Landroid/os/Handler;
    .locals 0

    .line 54276
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Nh;)Lcom/facebook/ads/redexgen/X/hD;
    .locals 0

    .line 54277
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Nh;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 54278
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Nh;)Lcom/facebook/ads/redexgen/X/Vt;
    .locals 0

    .line 54279
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A09:Lcom/facebook/ads/redexgen/X/Vt;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nh;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x56

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .locals 1

    .line 54280
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A01:Z

    if-eqz v0, :cond_0

    .line 54281
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nh;->A0C()V

    .line 54282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A00:Landroid/os/Messenger;

    .line 54283
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A09()V

    .line 54284
    return-void
.end method

.method private A06()V
    .locals 6

    .line 54285
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Nh;->A00:Landroid/os/Messenger;

    .line 54286
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nh;->A0C()V

    .line 54287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A03()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Na;->A6h()Lcom/facebook/ads/redexgen/X/NZ;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/NZ;->A06:Lcom/facebook/ads/redexgen/X/NZ;

    const/16 v3, 0xa

    if-ne v1, v0, :cond_1

    .line 54288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHD()V

    .line 54289
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/hD;->A0B(ILcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .line 54290
    :cond_0
    :goto_0
    return-void

    .line 54291
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A03()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Na;->A6i()Lcom/facebook/ads/redexgen/X/NZ;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/NZ;->A07:Lcom/facebook/ads/redexgen/X/NZ;

    if-ne v1, v0, :cond_5

    .line 54292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UA;->A08(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AH3()V

    .line 54294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/6q;

    if-eqz v0, :cond_2

    .line 54295
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A04()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x3fe

    invoke-virtual {v2, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/hD;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 54296
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/6p;

    if-eqz v0, :cond_0

    .line 54297
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    .line 54298
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A04()Ljava/lang/String;

    move-result-object v1

    .line 54299
    const/16 v0, 0xbb8

    invoke-virtual {v2, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/hD;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 54300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    check-cast v0, Lcom/facebook/ads/redexgen/X/6p;

    .line 54301
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6p;->A0E()Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/gm;->A03:Lcom/facebook/ads/RewardData;

    .line 54302
    .local v1, "rewardData":Lcom/facebook/ads/RewardData;
    if-eqz v0, :cond_3

    .line 54303
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    .line 54304
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A04()Ljava/lang/String;

    move-result-object v1

    .line 54305
    const/16 v0, 0xbba

    invoke-virtual {v2, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/hD;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 54306
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A04()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x83e

    invoke-virtual {v2, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/hD;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 54307
    .end local v1    # "rewardData":Lcom/facebook/ads/RewardData;
    goto :goto_0

    .line 54308
    :cond_4
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Nh;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Nh;->A0B:[Ljava/lang/String;

    const-string v1, "cr4Q9HMWLwUnqKkNe0JHYa6bJM3GW5OO"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "PiN7IKeRutrD0cCtifS7cTLBqsuq3alq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHD()V

    .line 54309
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/hD;->A0B(ILcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54310
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A03()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Na;->A6h()Lcom/facebook/ads/redexgen/X/NZ;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/NZ;->A05:Lcom/facebook/ads/redexgen/X/NZ;

    if-ne v1, v0, :cond_0

    .line 54311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UA;->A0C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHK()V

    .line 54313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A03()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Na;->AAn()V

    .line 54314
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hD;->A0D(Z)V

    .line 54315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A09()V

    goto/16 :goto_0

    .line 54316
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHJ()V

    .line 54317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    .line 54318
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A03()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v4

    const/16 v3, 0x7d8

    const/16 v2, 0x1f

    const/16 v1, 0x15

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 54319
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Na;->AIh(Lcom/facebook/ads/AdError;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nh;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x1et
        -0x11t
        -0x19t
        -0x25t
        -0x3ft
        -0x40t
        -0x3bt
        -0x35t
        -0x2at
        -0x37t
        -0x33t
        -0x2at
        -0x48t
        -0x39t
        -0x39t
        -0x2at
        -0x3at
        -0x37t
        -0x40t
        -0x44t
        -0x3bt
        -0x35t
        -0x48t
        -0x35t
        -0x40t
        -0x3at
        -0x3bt
        -0x2at
        -0x3et
        -0x44t
        -0x30t
        -0x36t
        -0x23t
        -0x1bt
        -0x19t
        -0x14t
        -0x23t
        -0x68t
        -0x15t
        -0x23t
        -0x16t
        -0x12t
        -0x1ft
        -0x25t
        -0x23t
        -0x68t
        -0x23t
        -0x16t
        -0x16t
        -0x19t
        -0x16t
        -0x5at
        -0x54t
        -0x53t
        -0x55t
        -0x48t
        -0x66t
        -0x63t
        -0x48t
        -0x5et
        -0x63t
        -0x48t
        -0x5ct
        -0x62t
        -0x4et
        0x47t
        0x3at
        0x36t
        0x48t
        0x25t
        0x4at
        0x41t
        0x36t
    .end array-data
.end method

.method private A08(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54320
    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 54321
    .local v0, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A05:Landroid/os/Messenger;

    iput-object v0, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 54322
    if-eqz p3, :cond_0

    .line 54323
    invoke-virtual {v5, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 54324
    :cond_0
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A04()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x34

    const/16 v1, 0xd

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54325
    invoke-virtual {p1, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 54326
    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Nh;)V
    .locals 0

    .line 54327
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nh;->A05()V

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Nh;)V
    .locals 0

    .line 54328
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nh;->A06()V

    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)V
    .locals 1

    .line 54329
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LH;->AH7(Ljava/lang/String;)V

    .line 54330
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dL;->A0G()Lcom/facebook/ads/redexgen/X/SN;

    move-result-object p0

    .line 54331
    .local v0, "adModel":Lcom/facebook/ads/redexgen/X/SN;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/SN;->A6g()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/SN;->A6c()Lcom/facebook/ads/Ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54332
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/SN;->A6g()Lcom/facebook/ads/AdListener;

    move-result-object p1

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/SN;->A6c()Lcom/facebook/ads/Ad;

    move-result-object p0

    sget-object v0, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p1, p0, v0}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 54333
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0C()V
    .locals 2

    .line 54334
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A01:Z

    if-eqz v0, :cond_0

    .line 54335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHW()V

    .line 54336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A01:Z

    .line 54337
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A08:Lcom/facebook/ads/redexgen/X/cu;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A03:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cu;->unbindService(Landroid/content/ServiceConnection;)V

    .line 54338
    :cond_0
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/dL;I)V
    .locals 5

    .line 54339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHU()V

    .line 54340
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WB;->A05(Lcom/facebook/ads/redexgen/X/dL;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v4

    .line 54341
    .local v0, "intent":Lcom/facebook/ads/internal/util/activity/AdActivityIntent;
    const/16 v2, 0x41

    const/16 v1, 0x8

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->A04(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vb;->A0E:Lcom/facebook/ads/redexgen/X/Vb;

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 54342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A04()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x34

    const/16 v1, 0xd

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54343
    const/4 v2, 0x5

    const/16 v1, 0x1a

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p2}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54344
    :try_start_0
    invoke-static {p1, v4}, Lcom/facebook/ads/redexgen/X/WB;->A00(Lcom/facebook/ads/redexgen/X/dL;Landroid/content/Intent;)I

    move-result v1

    .line 54345
    .local v1, "usedContext":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/LH;->AHV(I)V

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/W9; {:try_start_0 .. :try_end_0} :catch_0

    .line 54346
    :catch_0
    move-exception v3

    .line 54347
    .local v1, "e":Lcom/facebook/ads/redexgen/X/W9;
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->A04(III)Ljava/lang/String;

    move-result-object v1

    .line 54348
    .local v2, "errorMessage":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/W9;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 54349
    .local v3, "cause":Ljava/lang/Throwable;
    if-eqz v2, :cond_0

    .line 54350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54351
    :cond_0
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/Nh;->A0B(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)V

    .line 54352
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/W9;
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final A0E(Z)V
    .locals 4

    .line 54353
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A08:Lcom/facebook/ads/redexgen/X/cu;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A03:Landroid/content/ServiceConnection;

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Ni;->A04(Lcom/facebook/ads/redexgen/X/cu;ZLandroid/content/ServiceConnection;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A01:Z

    .line 54354
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A01:Z

    if-eqz v0, :cond_1

    .line 54355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AH9()V

    .line 54356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A00:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 54357
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nh;->A04:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nh;->A09:Lcom/facebook/ads/redexgen/X/Vt;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A08:Lcom/facebook/ads/redexgen/X/cu;

    .line 54358
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UA;->A00(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    .line 54359
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54360
    :cond_0
    :goto_0
    return-void

    .line 54361
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHH()V

    .line 54362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A02:Z

    .line 54363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A09()V

    goto :goto_0
.end method

.method public final A0F(ILandroid/os/Bundle;)Z
    .locals 2

    .line 54364
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A00:Landroid/os/Messenger;

    .line 54365
    .local v0, "service":Landroid/os/Messenger;
    if-eqz v0, :cond_0

    .line 54366
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Nh;->A08(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 54367
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54368
    :catch_0
    move-exception v1

    .line 54369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nh;->A0C()V

    .line 54370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/LH;->AHC(Landroid/os/RemoteException;)V

    .line 54371
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 54372
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Nh;
    .local p0, "msg":Landroid/os/Message;
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 54373
    return-void

    .line 54374
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x14

    if-eq v0, v3, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x28

    if-ne v1, v0, :cond_4

    .line 54375
    .end local v1
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    .line 54376
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHR()V

    .line 54377
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nh;->A08:Lcom/facebook/ads/redexgen/X/cu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UA;->A07(Landroid/content/Context;)V

    .line 54378
    :goto_0
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Nh;->A05()V

    goto :goto_1

    .line 54379
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHQ()V

    goto :goto_0

    .line 54380
    :goto_1
    return-void

    .line 54381
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const/16 v3, 0x34

    const/16 v1, 0xd

    const/4 v0, 0x3

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54382
    .local v1, "adId":Ljava/lang/String;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 54383
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHX()V

    .line 54384
    return-void

    .line 54385
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Nh;
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x7d1

    if-eq v1, v0, :cond_6

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3f3

    if-ne v1, v0, :cond_7

    .line 54386
    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nh;->A08:Lcom/facebook/ads/redexgen/X/cu;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Ni;->A02(Lcom/facebook/ads/redexgen/X/cu;Landroid/os/Message;)V

    .line 54387
    return-void

    .line 54388
    :cond_7
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AHI(I)V

    .line 54389
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nh;->A06:Lcom/facebook/ads/redexgen/X/hD;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/hD;->A0C(Landroid/os/Message;)V

    .line 54390
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
