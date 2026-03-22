.class public final Lcom/facebook/ads/redexgen/X/Iu;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/4J;

.field public final A04:Lcom/facebook/ads/redexgen/X/Iv;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 786
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "woqNFTEJ1xTDdkI437bHtamdu4tXteqY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wF9EC05jEy4IHYIwxnPCGFJPaq3oRF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mvXHGyDRnyfaH7rDUTrxLU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Y3pxu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rdrAFFFqCGKv06lfALLqqSpp4fott15M"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "y1UafG2XcmxkBa1SOf4hmBpigeNmapwO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "We1qkMSr6SX3sfWhtZ2XCBlgLjoOgFnd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pWnGwQQvfY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Iu;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 43083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43084
    new-instance v0, Lcom/facebook/ads/redexgen/X/Iv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Iv;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A04:Lcom/facebook/ads/redexgen/X/Iv;

    .line 43085
    const v0, 0xfe01

    new-array v2, v0, [B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>([BI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    .line 43086
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A00:I

    return-void
.end method

.method private A00(I)I
    .locals 4

    .line 43087
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A01:I

    .line 43088
    const/4 v3, 0x0

    .line 43089
    .local v0, "size":I
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Iu;->A01:I

    add-int/2addr v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A04:Lcom/facebook/ads/redexgen/X/Iv;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Iv;->A02:I

    if-ge v1, v0, :cond_1

    .line 43090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A04:Lcom/facebook/ads/redexgen/X/Iv;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Iv;->A09:[I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Iu;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A01:I

    add-int/2addr v1, p1

    aget v1, v2, v1

    .line 43091
    .local v1, "segmentLength":I
    add-int/2addr v3, v1

    .line 43092
    const/16 v0, 0xff

    if-eq v1, v0, :cond_0

    .line 43093
    :cond_1
    return v3
.end method


# virtual methods
.method public final A01()Lcom/facebook/ads/redexgen/X/4J;
    .locals 1

    .line 43094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/Iv;
    .locals 1

    .line 43095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A04:Lcom/facebook/ads/redexgen/X/Iv;

    return-object v0
.end method

.method public final A03()V
    .locals 2

    .line 43096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A04:Lcom/facebook/ads/redexgen/X/Iv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iv;->A02()V

    .line 43097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 43098
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A00:I

    .line 43099
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Iu;->A02:Z

    .line 43100
    return-void
.end method

.method public final A04()V
    .locals 4

    .line 43101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    array-length v0, v0

    const v3, 0xfe01

    if-ne v0, v3, :cond_0

    .line 43102
    return-void

    .line 43103
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    .line 43104
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43105
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    .line 43106
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    .line 43107
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 43108
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43109
    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 43110
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A02:Z

    if-eqz v0, :cond_0

    .line 43111
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Iu;->A02:Z

    .line 43112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 43113
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A02:Z

    if-nez v0, :cond_f

    .line 43114
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Iu;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Iu;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_2

    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Iu;->A05:[Ljava/lang/String;

    const-string v1, "11LtUWwuTljX7vpVMDmw91gP9qyXcF1F"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "domIksdZFoGV1iSe2ioqlJ00HNTdFQYJ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-gez v3, :cond_7

    .line 43115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A04:Lcom/facebook/ads/redexgen/X/Iv;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Iv;->A03(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A04:Lcom/facebook/ads/redexgen/X/Iv;

    invoke-virtual {v0, p1, v5}, Lcom/facebook/ads/redexgen/X/Iv;->A05(Lcom/facebook/ads/redexgen/X/lN;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 43116
    .end local v2
    .end local v3
    :cond_3
    return v4

    .line 43117
    :cond_4
    const/4 v3, 0x0

    .line 43118
    .local v2, "segmentIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A04:Lcom/facebook/ads/redexgen/X/Iv;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Iv;->A01:I

    .line 43119
    .local v3, "bytesToSkip":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A04:Lcom/facebook/ads/redexgen/X/Iv;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Iv;->A04:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Iu;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/Iu;->A05:[Ljava/lang/String;

    const-string v1, "Y9zvOFuJw9CJ8t2sOsvBkpDySrHa8OsK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "XKYFbcbdBuLAcpGhFvzSCFSZpxBENLjQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v7, :cond_5

    .line 43120
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Iu;->A00(I)I

    move-result v0

    add-int/2addr v6, v0

    .line 43121
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A01:I

    add-int/2addr v3, v0

    .line 43122
    :cond_5
    invoke-static {p1, v6}, Lcom/facebook/ads/redexgen/X/GZ;->A02(Lcom/facebook/ads/redexgen/X/lN;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 43123
    return v4

    .line 43124
    :cond_6
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Iu;->A00:I

    .line 43125
    :cond_7
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Iu;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Iu;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Iu;->A05:[Ljava/lang/String;

    const-string v1, "D5kSzmFKF6oS1B0XjjhMyT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Iu;->A00(I)I

    move-result v1

    .line 43126
    .local v2, "size":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Iu;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A01:I

    add-int/2addr v3, v0

    .line 43127
    .local v3, "segmentIndex":I
    if-lez v1, :cond_a

    .line 43128
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0c(I)V

    .line 43129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    invoke-static {p1, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/GZ;->A03(Lcom/facebook/ads/redexgen/X/lN;[BII)Z

    move-result v0

    if-nez v0, :cond_8

    .line 43130
    return v4

    .line 43131
    :cond_8
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A03:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 43132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A04:Lcom/facebook/ads/redexgen/X/Iv;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Iv;->A09:[I

    add-int/lit8 v0, v3, -0x1

    aget v7, v1, v0

    const/16 v6, 0xff

    sget-object v1, Lcom/facebook/ads/redexgen/X/Iu;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_9

    goto/16 :goto_2

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Iu;->A05:[Ljava/lang/String;

    const-string v1, "zAFVDFtFmf"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "FIDx8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_c

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A02:Z

    .line 43133
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iu;->A04:Lcom/facebook/ads/redexgen/X/Iv;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Iv;->A02:I

    if-ne v3, v0, :cond_b

    const/4 v3, -0x1

    :cond_b
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Iu;->A00:I

    .line 43134
    .end local v2    # "size":I
    .end local v3    # "segmentIndex":I
    goto/16 :goto_1

    .line 43135
    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 43136
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 43137
    :cond_f
    return v5
.end method
