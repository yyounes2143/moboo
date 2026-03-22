.class public final Lcom/facebook/ads/redexgen/X/JT;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/0q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation


# static fields
.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/4J;

.field public final A08:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 830
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UUlEJ3Jo50NOk35TUHs6UNRK6svNK9bY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Rfapb4gOuHxAcdI53hJjgoF3fgUzCf8l"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "549CgiYhO6ZoxkZsxucd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "d0g0H9nuc7MFYEKhz8GgPJKXV4KY3uwa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SvGPJzr3mUIjg4zk3UE0lmEsGQStmHiR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UIGV6MTRsZPNdj8JuGQraJXbpN7YiCpC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sPKUkdPP6cbZl7mqg699SGb1Qg8cwcjc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pSvb9vtzFVNohJw9Yc2pgYHm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JT;->A09:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45047
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    .line 45048
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A08:[I

    .line 45049
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4J;I)V
    .locals 4

    .line 45050
    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 45051
    return-void

    .line 45052
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 45053
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 45054
    .local v1, "isBaseSection":Z
    :goto_0
    add-int/lit8 v3, p2, -0x4

    .line 45055
    if-eqz v0, :cond_4

    .line 45056
    const/4 v0, 0x7

    if-ge v3, v0, :cond_2

    .line 45057
    return-void

    .line 45058
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 45059
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0K()I

    move-result v2

    .line 45060
    .local v2, "totalLength":I
    if-ge v2, v1, :cond_3

    .line 45061
    return-void

    .line 45062
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A01:I

    .line 45063
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A00:I

    .line 45064
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    add-int/lit8 v0, v2, -0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 45065
    add-int/lit8 v3, v3, -0x7

    .line 45066
    .end local v2    # "totalLength":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v2

    .line 45067
    .local v0, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    .line 45068
    .local v2, "limit":I
    if-ge v2, v0, :cond_5

    if-lez v3, :cond_5

    .line 45069
    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 45070
    .local v3, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 45071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 45072
    .end local v3    # "bytesToRead":I
    :cond_5
    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/4J;I)V
    .locals 1

    .line 45073
    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    .line 45074
    return-void

    .line 45075
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A05:I

    .line 45076
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A04:I

    .line 45077
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 45078
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A02:I

    .line 45079
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A03:I

    .line 45080
    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/4J;I)V
    .locals 17

    .line 45081
    move-object/from16 v8, p0

    rem-int/lit8 v1, p2, 0x5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 45082
    return-void

    .line 45083
    :cond_0
    move-object/from16 v10, p1

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 45084
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/JT;->A08:[I

    const/4 v7, 0x0

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    .line 45085
    div-int/lit8 v6, p2, 0x5

    .line 45086
    .local v2, "entryCount":I
    const/4 v5, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 45087
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v16

    .line 45088
    .local v5, "index":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v9

    .line 45089
    .local v6, "y":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v15

    .line 45090
    .local v7, "cr":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v13

    .line 45091
    .local v8, "cb":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v14

    .line 45092
    .local v9, "a":I
    int-to-double v0, v9

    add-int/lit8 v2, v15, -0x80

    int-to-double v2, v2

    const-wide v11, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double/2addr v2, v11

    add-double/2addr v0, v2

    double-to-int v4, v0

    .line 45093
    .local v10, "r":I
    int-to-double v2, v9

    add-int/lit8 v0, v13, -0x80

    int-to-double v0, v0

    const-wide v11, 0x3fd60663c74fb54aL    # 0.34414

    mul-double/2addr v0, v11

    sub-double/2addr v2, v0

    add-int/lit8 v0, v15, -0x80

    int-to-double v0, v0

    const-wide v11, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double/2addr v0, v11

    sub-double/2addr v2, v0

    double-to-int v11, v2

    .line 45094
    .local v11, "g":I
    int-to-double v2, v9

    add-int/lit8 v0, v13, -0x80

    int-to-double v0, v0

    const-wide v12, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v0, v12

    add-double/2addr v2, v0

    double-to-int v9, v2

    .line 45095
    .local v12, "b":I
    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/JT;->A08:[I

    shl-int/lit8 v2, v14, 0x18

    .line 45096
    const/16 v1, 0xff

    invoke-static {v4, v7, v1}, Lcom/facebook/ads/redexgen/X/4a;->A07(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    .line 45097
    invoke-static {v11, v7, v1}, Lcom/facebook/ads/redexgen/X/4a;->A07(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    .line 45098
    invoke-static {v9, v7, v1}, Lcom/facebook/ads/redexgen/X/4a;->A07(III)I

    move-result v0

    or-int/2addr v2, v0

    aput v2, v3, v16

    .line 45099
    .end local v5    # "index":I
    .end local v6    # "y":I
    .end local v7    # "cr":I
    .end local v8    # "cb":I
    .end local v9    # "a":I
    .end local v10    # "r":I
    .end local v11    # "g":I
    .end local v12    # "b":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 45100
    .end local v4    # "i":I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/facebook/ads/redexgen/X/JT;->A06:Z

    .line 45101
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/4J;I)V
    .locals 0

    .line 45102
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JT;->A02(Lcom/facebook/ads/redexgen/X/4J;I)V

    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/4J;I)V
    .locals 0

    .line 45103
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JT;->A00(Lcom/facebook/ads/redexgen/X/4J;I)V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/4J;I)V
    .locals 0

    .line 45104
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JT;->A01(Lcom/facebook/ads/redexgen/X/4J;I)V

    return-void
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/o2;
    .locals 8

    .line 45105
    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A05:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A04:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A01:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A00:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    .line 45106
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    .line 45107
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A06:Z

    if-nez v0, :cond_1

    .line 45108
    .end local v0
    .end local v2
    .end local v3
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 45109
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 45110
    iget v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A00:I

    mul-int/2addr v1, v0

    new-array v4, v1, [I

    .line 45111
    .local v0, "argbBitmapData":[I
    const/4 v5, 0x0

    .line 45112
    .local v2, "argbBitmapDataIndex":I
    :cond_2
    :goto_0
    array-length v0, v4

    if-ge v5, v0, :cond_7

    .line 45113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v2

    .line 45114
    .local v3, "colorIndex":I
    if-eqz v2, :cond_3

    .line 45115
    add-int/lit8 v1, v5, 0x1

    .end local v2    # "argbBitmapDataIndex":I
    .local v4, "argbBitmapDataIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A08:[I

    aget v0, v0, v2

    aput v0, v4, v5

    move v5, v1

    goto :goto_0

    .line 45116
    .end local v4    # "argbBitmapDataIndex":I
    .restart local v2    # "argbBitmapDataIndex":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v6

    .line 45117
    .local v4, "switchBits":I
    if-eqz v6, :cond_2

    .line 45118
    and-int/lit8 v7, v6, 0x40

    sget-object v2, Lcom/facebook/ads/redexgen/X/JT;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/JT;->A09:[Ljava/lang/String;

    const-string v1, "GtJojiNEMobCnjKA96lXJCCL45Dtio0z"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Lfhzohsg2V0yWJPoWAL0pRvwojJGYPpJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v7, :cond_5

    .line 45119
    and-int/lit8 v1, v6, 0x3f

    .line 45120
    .local v5, "runLength":I
    :goto_1
    and-int/lit16 v0, v6, 0x80

    if-nez v0, :cond_4

    const/4 v2, 0x0

    .line 45121
    .local v6, "color":I
    :goto_2
    add-int v0, v5, v1

    invoke-static {v4, v5, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 45122
    add-int/2addr v5, v1

    goto :goto_0

    .line 45123
    :cond_4
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/JT;->A08:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    aget v2, v2, v0

    goto :goto_2

    .line 45124
    :cond_5
    and-int/lit8 v0, v6, 0x3f

    shl-int/lit8 v1, v0, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 45125
    :cond_7
    iget v2, p0, Lcom/facebook/ads/redexgen/X/JT;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A00:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 45126
    invoke-static {v4, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 45127
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/facebook/ads/redexgen/X/3C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3C;-><init>()V

    .line 45128
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3C;->A0D(Landroid/graphics/Bitmap;)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A02:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A05:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 45129
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/3C;->A04(F)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 45130
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3C;->A0A(I)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A03:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A04:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 45131
    invoke-virtual {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/3C;->A07(FI)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 45132
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3C;->A09(I)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A01:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A05:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 45133
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/3C;->A06(F)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A00:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A04:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 45134
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/3C;->A03(F)Lcom/facebook/ads/redexgen/X/3C;

    move-result-object v0

    .line 45135
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3C;->A0H()Lcom/facebook/ads/redexgen/X/o2;

    move-result-object v0

    .line 45136
    return-object v0
.end method

.method public final A07()V
    .locals 2

    .line 45137
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A05:I

    .line 45138
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A04:I

    .line 45139
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A02:I

    .line 45140
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A03:I

    .line 45141
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A01:I

    .line 45142
    iput v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A00:I

    .line 45143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JT;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 45144
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/JT;->A06:Z

    .line 45145
    return-void
.end method
