.class public final Lcom/facebook/ads/redexgen/X/jq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KK;
    }
.end annotation


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:[D


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/H1;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public final A0B:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0C:Lcom/facebook/ads/redexgen/X/KK;

.field public final A0D:Lcom/facebook/ads/redexgen/X/KS;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Kh;

.field public final A0F:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3028
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cAtU07tvAHmpQwteCa8pEQH5gF5iUcfh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Hjeg7grS71Jm6r5NKbmR8o7Al25NvLrB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8TbkpeEOwiN436cBQhp4NSePMq1Z0ZNp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wFA3Sleqv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yws6lvEdJf3TdH9okNAymdfPd8aH69ii"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xvx7jE251jeLUpmQ5JTTtAODp7RTPAZj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "flKrm8KbmQNj7vJDUwRTOfFPMCPuTaKn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2PQM5lIFNms8BVmrvHkuPmbcHqu7a2gR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jq;->A02()V

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jq;->A0I:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 90793
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jq;-><init>(Lcom/facebook/ads/redexgen/X/Kh;)V

    .line 90794
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Kh;)V
    .locals 3

    .line 90795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90796
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jq;->A0E:Lcom/facebook/ads/redexgen/X/Kh;

    .line 90797
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A0F:[Z

    .line 90798
    const/16 v2, 0x80

    new-instance v0, Lcom/facebook/ads/redexgen/X/KK;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/KK;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A0C:Lcom/facebook/ads/redexgen/X/KK;

    .line 90799
    if-eqz p1, :cond_0

    .line 90800
    const/16 v1, 0xb2

    new-instance v0, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/KS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    .line 90801
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    .line 90802
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A01:J

    .line 90803
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A03:J

    .line 90804
    return-void

    .line 90805
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    .line 90806
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    goto :goto_0
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/KK;Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/KK;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/redexgen/X/or;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 90807
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KK;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KK;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    .line 90808
    .local v1, "csdData":[B
    const/4 v0, 0x4

    aget-byte v0, v9, v0

    and-int/lit16 v3, v0, 0xff

    .line 90809
    .local v3, "firstByte":I
    const/4 v0, 0x5

    aget-byte v0, v9, v0

    and-int/lit16 v2, v0, 0xff

    .line 90810
    .local v5, "secondByte":I
    const/4 v0, 0x6

    aget-byte v0, v9, v0

    and-int/lit16 v1, v0, 0xff

    .line 90811
    .local v6, "thirdByte":I
    shl-int/lit8 v5, v3, 0x4

    shr-int/lit8 v0, v2, 0x4

    or-int/2addr v5, v0

    .line 90812
    .local v7, "width":I
    and-int/lit8 v0, v2, 0xf

    shl-int/lit8 v4, v0, 0x8

    or-int/2addr v4, v1

    .line 90813
    .local v8, "height":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 90814
    .local v9, "pixelWidthHeightRatio":F
    const/4 v7, 0x7

    aget-byte v0, v9, v7

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 90815
    .local v2, "aspectRatioCode":I
    packed-switch v0, :pswitch_data_0

    .line 90816
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 90817
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2D;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v3

    .line 90818
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jq;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90819
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2D;->A0r(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90820
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2D;->A0f(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90821
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2D;->A0Y(F)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 90822
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90823
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v5

    .line 90824
    .local p1, "format":Lcom/facebook/ads/redexgen/X/or;
    const-wide/16 v2, 0x0

    .line 90825
    .local p3, "frameDurationUs":J
    aget-byte v0, v9, v7

    and-int/lit8 v0, v0, 0xf

    add-int/lit8 v1, v0, -0x1

    .line 90826
    .local p0, "frameRateCodeMinusOne":I
    if-ltz v1, :cond_3

    sget-object v0, Lcom/facebook/ads/redexgen/X/jq;->A0I:[D

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 90827
    sget-object v0, Lcom/facebook/ads/redexgen/X/jq;->A0I:[D

    aget-wide v7, v0, v1

    .line 90828
    .local p6, "frameRate":D
    iget v2, p0, Lcom/facebook/ads/redexgen/X/KK;->A01:I

    .line 90829
    .local p5, "sequenceExtensionPosition":I
    add-int/lit8 v0, v2, 0x9

    aget-byte v0, v9, v0

    and-int/lit8 v0, v0, 0x60

    shr-int/lit8 v1, v0, 0x5

    .line 90830
    .local v4, "frameRateExtensionN":I
    add-int/lit8 v0, v2, 0x9

    aget-byte v0, v9, v0

    and-int/lit8 v6, v0, 0x1f

    .line 90831
    .local v0, "frameRateExtensionD":I
    if-eq v1, v6, :cond_2

    .line 90832
    .end local v1    # "csdData":[B
    .end local v2    # "aspectRatioCode":I
    .local p8, "csdData":[B
    .local p9, "aspectRatioCode":I
    int-to-double v2, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 90833
    :pswitch_0
    mul-int/lit8 v0, v4, 0x79

    int-to-float v6, v0

    mul-int/lit8 v0, v5, 0x64

    int-to-float v0, v0

    div-float/2addr v6, v0

    .line 90834
    goto :goto_0

    .line 90835
    :pswitch_1
    mul-int/lit8 v0, v4, 0x10

    int-to-float v6, v0

    mul-int/lit8 v0, v5, 0x9

    int-to-float v0, v0

    div-float/2addr v6, v0

    .line 90836
    goto :goto_0

    .line 90837
    :pswitch_2
    mul-int/lit8 v0, v4, 0x4

    int-to-float v6, v0

    mul-int/lit8 v0, v5, 0x3

    int-to-float v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const-string v1, "IKG5315UEoYuWi8w79ZvxkF28jax6fmF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    div-float/2addr v6, v3

    .line 90838
    goto/16 :goto_0

    .line 90839
    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const-string v1, "rAMAKKtXIRKmVhmwxuLKv06bcSnWRDth"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "TlBzrdA8FTcPVEmXq7DzDEHR3QnpW5Am"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    .end local v3    # "firstByte":I
    .local p10, "firstByte":I
    add-int/lit8 v0, v6, 0x1

    .end local v4    # "frameRateExtensionN":I
    .local p11, "frameRateExtensionN":I
    int-to-double v0, v0

    div-double/2addr v2, v0

    mul-double/2addr v7, v2

    .line 90840
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .restart local p8
    .restart local p9
    .restart local p10
    .restart local p11
    :cond_2
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v7

    double-to-long v2, v0

    .line 90841
    .end local v1
    .end local v2
    .end local v3
    .restart local p8
    .restart local p9
    .restart local p10
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jq;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

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
    .locals 4

    const/16 v0, 0xb

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const-string v1, "5b4kHrs0qMccPUXJRINIqLrMs4aEtqXr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/jq;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x32t
        0x2dt
        0x20t
        0x21t
        0x2bt
        0x6bt
        0x29t
        0x34t
        0x21t
        0x23t
        0x76t
    .end array-data
.end method


# virtual methods
.method public final A52(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 23

    .line 90842
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A05:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90843
    move-object/from16 v15, p1

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v4

    .line 90844
    .local v1, "offset":I
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v10

    .line 90845
    .local v2, "limit":I
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v8

    .line 90846
    .local v3, "dataArray":[B
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/jq;->A04:J

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v9, Lcom/facebook/ads/redexgen/X/jq;->A04:J

    .line 90847
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/jq;->A05:Lcom/facebook/ads/redexgen/X/H1;

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    invoke-interface {v1, v15, v0}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 90848
    :goto_0
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0F:[Z

    invoke-static {v8, v4, v10, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A04([BII[Z)I

    move-result v7

    .line 90849
    .local v4, "startCodeOffset":I
    if-ne v7, v10, :cond_2

    .line 90850
    iget-boolean v3, v9, Lcom/facebook/ads/redexgen/X/jq;->A07:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const-string v1, "ooUhAAd1UFU3ZsdgbXiiZIdc17zvx9JT"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 90851
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0C:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {v0, v8, v4, v10}, Lcom/facebook/ads/redexgen/X/KK;->A01([BII)V

    .line 90852
    :cond_0
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    if-eqz v0, :cond_1

    .line 90853
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v8, v4, v10}, Lcom/facebook/ads/redexgen/X/KS;->A02([BII)V

    .line 90854
    :cond_1
    return-void

    .line 90855
    :cond_2
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v7, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v6, v0, 0xff

    .line 90856
    .local v5, "startCodeValue":I
    sub-int v3, v7, v4

    .line 90857
    .local v7, "lengthToStartCode":I
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A07:Z

    const/4 v12, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 90858
    if-lez v3, :cond_3

    .line 90859
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0C:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {v0, v8, v4, v7}, Lcom/facebook/ads/redexgen/X/KK;->A01([BII)V

    .line 90860
    :cond_3
    if-gez v3, :cond_13

    neg-int v1, v3

    .line 90861
    .local v8, "bytesAlreadyPassed":I
    :goto_1
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0C:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/KK;->A02(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90862
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/jq;->A0C:Lcom/facebook/ads/redexgen/X/KK;

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A06:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/jq;->A00(Lcom/facebook/ads/redexgen/X/KK;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 90863
    .local v11, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/androidx/media3/common/Format;Ljava/lang/Long;>;"
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/jq;->A05:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 90864
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A00:J

    .line 90865
    iput-boolean v2, v9, Lcom/facebook/ads/redexgen/X/jq;->A07:Z

    .line 90866
    .end local v8    # "bytesAlreadyPassed":I
    .end local v11    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/androidx/media3/common/Format;Ljava/lang/Long;>;"
    :cond_4
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    if-eqz v0, :cond_6

    .line 90867
    const/4 v1, 0x0

    .line 90868
    .restart local v8    # "bytesAlreadyPassed":I
    if-lez v3, :cond_12

    .line 90869
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v8, v4, v7}, Lcom/facebook/ads/redexgen/X/KS;->A02([BII)V

    .line 90870
    :goto_2
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/KS;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90871
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A02([BI)I

    move-result v3

    .line 90872
    .local v11, "unescapedLength":I
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 90873
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0E:Lcom/facebook/ads/redexgen/X/Kh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Kh;

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A03:J

    iget-object v3, v9, Lcom/facebook/ads/redexgen/X/jq;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v4, v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Kh;->A02(JLcom/facebook/ads/redexgen/X/4J;)V

    .line 90874
    .end local v11    # "unescapedLength":I
    :cond_5
    const/16 v0, 0xb2

    if-ne v6, v0, :cond_6

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v7, 0x2

    aget-byte v0, v1, v0

    if-ne v0, v2, :cond_6

    .line 90875
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/KS;->A01(I)V

    .line 90876
    .end local v8    # "bytesAlreadyPassed":I
    :cond_6
    if-eqz v6, :cond_7

    const/16 v0, 0xb3

    if-ne v6, v0, :cond_11

    .line 90877
    :cond_7
    sub-int v11, v10, v7

    .line 90878
    .local v8, "bytesWrittenPastStartCode":I
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A08:Z

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_8

    iget-boolean v3, v9, Lcom/facebook/ads/redexgen/X/jq;->A07:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_10

    if-eqz v3, :cond_8

    :goto_3
    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A03:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_8

    .line 90879
    iget-boolean v13, v9, Lcom/facebook/ads/redexgen/X/jq;->A09:Z

    .line 90880
    .local v14, "flags":I
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/jq;->A04:J

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A02:J

    sub-long/2addr v2, v0

    long-to-int v14, v2

    sub-int/2addr v14, v11

    .line 90881
    .local v10, "size":I
    iget-object v2, v9, Lcom/facebook/ads/redexgen/X/jq;->A05:Lcom/facebook/ads/redexgen/X/H1;

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A03:J

    const/16 v22, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .end local v1    # "offset":I
    .end local v2    # "limit":I
    .local v18, "limit":I
    .local v19, "offset":I
    move/from16 v20, v14

    move/from16 v21, v11

    move/from16 v19, v13

    move-wide/from16 v17, v0

    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v22}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 90882
    .end local v1
    .end local v2
    .restart local v18    # "limit":I
    .restart local v19    # "offset":I
    :cond_8
    iget-boolean v3, v9, Lcom/facebook/ads/redexgen/X/jq;->A0A:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const-string v1, "M1cTpkEI0lqbwMedLRZ4APYv7Db9TSYf"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_9

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A08:Z

    if-eqz v0, :cond_a

    .line 90883
    :cond_9
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/jq;->A04:J

    int-to-long v0, v11

    sub-long/2addr v2, v0

    iput-wide v2, v9, Lcom/facebook/ads/redexgen/X/jq;->A02:J

    .line 90884
    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A01:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_d

    .line 90885
    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A01:J

    .line 90886
    :goto_4
    iput-wide v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A03:J

    .line 90887
    iput-boolean v12, v9, Lcom/facebook/ads/redexgen/X/jq;->A09:Z

    .line 90888
    iput-wide v4, v9, Lcom/facebook/ads/redexgen/X/jq;->A01:J

    .line 90889
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A0A:Z

    .line 90890
    :cond_a
    if-nez v6, :cond_b

    const/4 v12, 0x1

    :cond_b
    iput-boolean v12, v9, Lcom/facebook/ads/redexgen/X/jq;->A08:Z

    .line 90891
    .end local v8    # "bytesWrittenPastStartCode":I
    :cond_c
    :goto_5
    add-int/lit8 v4, v7, 0x3

    .line 90892
    .end local v4    # "startCodeOffset":I
    .end local v5    # "startCodeValue":I
    .end local v7    # "lengthToStartCode":I
    .end local v19    # "offset":I
    .restart local v1    # "offset":I
    goto/16 :goto_0

    .line 90893
    :cond_d
    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A03:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_f

    .line 90894
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/jq;->A03:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_e

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A00:J

    add-long/2addr v0, v2

    goto :goto_4

    :cond_e
    sget-object v11, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const-string v1, "FNyxia2DuWmH1fHrZAJ70vL24BcjBrNj"

    const/4 v0, 0x0

    aput-object v1, v11, v0

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/jq;->A00:J

    add-long/2addr v0, v2

    goto :goto_4

    .line 90895
    :cond_f
    move-wide v0, v4

    goto :goto_4

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const-string v1, "I3q7BGa2d1yxMNRbgKUy1FZhwbtqEBv0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    goto/16 :goto_3

    .line 90896
    :cond_11
    const/16 v0, 0xb8

    if-ne v6, v0, :cond_c

    .line 90897
    iput-boolean v2, v9, Lcom/facebook/ads/redexgen/X/jq;->A09:Z

    goto :goto_5

    .line 90898
    :cond_12
    neg-int v1, v3

    goto/16 :goto_2

    .line 90899
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 2

    .line 90900
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A05()V

    .line 90901
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A06:Ljava/lang/String;

    .line 90902
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A05:Lcom/facebook/ads/redexgen/X/H1;

    .line 90903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A0E:Lcom/facebook/ads/redexgen/X/Kh;

    if-eqz v0, :cond_0

    .line 90904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A0E:Lcom/facebook/ads/redexgen/X/Kh;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kh;->A03(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V

    .line 90905
    :cond_0
    return-void
.end method

.method public final AG5()V
    .locals 0

    .line 90906
    return-void
.end method

.method public final AG6(JI)V
    .locals 0

    .line 90907
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/jq;->A01:J

    .line 90908
    return-void
.end method

.method public final AIL()V
    .locals 4

    .line 90909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A0F:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gq;->A0H([Z)V

    .line 90910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A0C:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KK;->A00()V

    .line 90911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    if-eqz v0, :cond_1

    .line 90912
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jq;->A0D:Lcom/facebook/ads/redexgen/X/KS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/jq;->A0H:[Ljava/lang/String;

    const-string v1, "joVCJevLOtmtIagsqVBvfxemqq2mA7LA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .line 90913
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A04:J

    .line 90914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A0A:Z

    .line 90915
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A01:J

    .line 90916
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A03:J

    .line 90917
    return-void
.end method
