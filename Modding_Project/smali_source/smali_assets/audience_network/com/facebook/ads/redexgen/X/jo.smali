.class public final Lcom/facebook/ads/redexgen/X/jo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KQ;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/H1;

.field public A03:Lcom/facebook/ads/redexgen/X/KQ;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/4J;

.field public final A08:Lcom/facebook/ads/redexgen/X/KS;

.field public final A09:Lcom/facebook/ads/redexgen/X/KS;

.field public final A0A:Lcom/facebook/ads/redexgen/X/KS;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KX;

.field public final A0C:Z

.field public final A0D:Z

.field public final A0E:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3026
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mAIJKcC20Y3eOfYyWQRzrg7mLeRMrJFl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eZxkBrFzPoxgu8goyyke6z3uoIiInH7I"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7SF2NgL0Q5eCPREDvftOSH9OstPB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tBtJ4FuF4UkjOIbBZeVQSFTGpUKvKhYU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "G"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JQCW8upC74KuI6xTj5WGF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PsTmzjLTY6QrmqAE1gFrtVK8jOOfhc8D"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jo;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jo;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KX;ZZ)V
    .locals 3

    .line 90531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90532
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jo;->A0B:Lcom/facebook/ads/redexgen/X/KX;

    .line 90533
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/jo;->A0C:Z

    .line 90534
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/jo;->A0D:Z

    .line 90535
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0E:[Z

    .line 90536
    const/4 v1, 0x7

    const/16 v2, 0x80

    new-instance v0, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/KS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    .line 90537
    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/KS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    .line 90538
    const/4 v1, 0x6

    new-instance v0, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/KS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A09:Lcom/facebook/ads/redexgen/X/KS;

    .line 90539
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A00:J

    .line 90540
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A07:Lcom/facebook/ads/redexgen/X/4J;

    .line 90541
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jo;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    .line 90542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A02:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90543
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jo;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x3ct
        0x23t
        0x2et
        0x2ft
        0x25t
        0x65t
        0x2bt
        0x3ct
        0x29t
    .end array-data
.end method

.method private A03(JIIJ)V
    .locals 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    .line 90544
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A05:Z

    move v2, p4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KQ;->A06()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90545
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/KS;->A04(I)Z

    .line 90546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/KS;->A04(I)Z

    .line 90547
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A05:Z

    const/4 v3, 0x3

    if-nez v0, :cond_4

    .line 90548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90549
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 90550
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A09([BII)Lcom/facebook/ads/redexgen/X/Gp;

    move-result-object v4

    .line 90553
    .local v2, "spsData":Lcom/facebook/ads/redexgen/X/Gp;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A07([BII)Lcom/facebook/ads/redexgen/X/Go;

    move-result-object v3

    .line 90554
    .local v1, "ppsData":Lcom/facebook/ads/redexgen/X/Go;
    iget v5, v4, Lcom/facebook/ads/redexgen/X/Gp;->A08:I

    iget v1, v4, Lcom/facebook/ads/redexgen/X/Gp;->A01:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Gp;->A04:I

    .line 90555
    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/3U;->A01(III)Ljava/lang/String;

    move-result-object v9

    .line 90556
    .local v3, "codecs":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/jo;->A02:Lcom/facebook/ads/redexgen/X/H1;

    new-instance v1, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A04:Ljava/lang/String;

    .line 90557
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v8

    .line 90558
    const/4 v7, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x74

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/jo;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90559
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/2D;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Gp;->A0A:I

    .line 90560
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0r(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Gp;->A03:I

    .line 90561
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0f(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Gp;->A00:F

    .line 90562
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0Y(F)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90563
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90564
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 90565
    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 90566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A05:Z

    .line 90567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/KQ;->A04(Lcom/facebook/ads/redexgen/X/Gp;)V

    .line 90568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/KQ;->A03(Lcom/facebook/ads/redexgen/X/Go;)V

    .line 90569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .line 90570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .line 90571
    .end local v0    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v1    # "ppsData":Lcom/facebook/ads/redexgen/X/Go;
    .end local v2    # "spsData":Lcom/facebook/ads/redexgen/X/Gp;
    .end local v3    # "codecs":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A09:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/KS;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A09:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/jo;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/jo;->A0G:[Ljava/lang/String;

    const-string v1, "IcPmfl1yBNDnokE5CaufU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A09:Lcom/facebook/ads/redexgen/X/KS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A02([BI)I

    move-result v2

    .line 90573
    .local v0, "unescapedLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jo;->A07:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A09:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 90574
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jo;->A07:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 90575
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jo;->A0B:Lcom/facebook/ads/redexgen/X/KX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A07:Lcom/facebook/ads/redexgen/X/4J;

    move-wide v2, p5

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/KX;->A02(JLcom/facebook/ads/redexgen/X/4J;)V

    .line 90576
    .end local v0    # "unescapedLength":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/jo;->A05:Z

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/jo;->A06:Z

    .line 90577
    move v3, p3

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/KQ;->A07(JIZZ)Z

    move-result v0

    .line 90578
    .local v0, "sampleIsKeyFrame":Z
    if-eqz v0, :cond_3

    .line 90579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A06:Z

    .line 90580
    :cond_3
    return-void

    .line 90581
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A03()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A09([BII)Lcom/facebook/ads/redexgen/X/Gp;

    move-result-object v1

    .line 90583
    .local v0, "spsData":Lcom/facebook/ads/redexgen/X/Gp;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/KQ;->A04(Lcom/facebook/ads/redexgen/X/Gp;)V

    .line 90584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .end local v0    # "spsData":Lcom/facebook/ads/redexgen/X/Gp;
    goto :goto_0

    .line 90585
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A07([BII)Lcom/facebook/ads/redexgen/X/Go;

    move-result-object v1

    .line 90587
    .local v0, "ppsData":Lcom/facebook/ads/redexgen/X/Go;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/KQ;->A03(Lcom/facebook/ads/redexgen/X/Go;)V

    .line 90588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04(JIJ)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 90589
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A05:Z

    move v3, p3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KQ;->A06()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90590
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/KS;->A01(I)V

    .line 90591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/KS;->A01(I)V

    .line 90592
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A09:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/KS;->A01(I)V

    .line 90593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    move-wide v4, p4

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/KQ;->A02(JIJ)V

    .line 90594
    return-void
.end method

.method private A05([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 90595
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A05:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KQ;->A06()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90596
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KS;->A02([BII)V

    .line 90597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KS;->A02([BII)V

    .line 90598
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A09:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KS;->A02([BII)V

    .line 90599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KQ;->A05([BII)V

    .line 90600
    return-void
.end method


# virtual methods
.method public final A52(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 17

    .line 90601
    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/jo;->A01()V

    .line 90602
    move-object/from16 v8, p1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v7

    .line 90603
    .local v0, "offset":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v5

    .line 90604
    .local v8, "limit":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v4

    .line 90605
    .local v9, "dataArray":[B
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/jo;->A01:J

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/jo;->A01:J

    .line 90606
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/jo;->A02:Lcom/facebook/ads/redexgen/X/H1;

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    invoke-interface {v1, v8, v0}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 90607
    .end local v0    # "offset":I
    .local v11, "offset":I
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/jo;->A0E:[Z

    invoke-static {v4, v7, v5, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A04([BII[Z)I

    move-result v3

    .line 90608
    .local v12, "nalUnitOffset":I
    if-ne v3, v5, :cond_0

    .line 90609
    invoke-direct {v6, v4, v7, v5}, Lcom/facebook/ads/redexgen/X/jo;->A05([BII)V

    .line 90610
    return-void

    .line 90611
    :cond_0
    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/Gq;->A01([BI)I

    move-result v14

    sget-object v1, Lcom/facebook/ads/redexgen/X/jo;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_3

    .line 90612
    .local v13, "nalUnitType":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/jo;->A0G:[Ljava/lang/String;

    const-string v1, "800XsA7BA4hpamNrxbWO1"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sub-int v0, v3, v7

    .line 90613
    .local v14, "lengthToNalUnit":I
    if-lez v0, :cond_1

    .line 90614
    invoke-direct {v6, v4, v7, v3}, Lcom/facebook/ads/redexgen/X/jo;->A05([BII)V

    .line 90615
    :cond_1
    sub-int v10, v5, v3

    .line 90616
    .local v15, "bytesWrittenPastPosition":I
    iget-wide v8, v6, Lcom/facebook/ads/redexgen/X/jo;->A01:J

    int-to-long v1, v10

    sub-long/2addr v8, v1

    .line 90617
    .local v16, "absolutePosition":J
    if-gez v0, :cond_2

    neg-int v11, v0

    :goto_1
    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/jo;->A00:J

    .line 90618
    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/jo;->A03(JIIJ)V

    .line 90619
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/jo;->A00:J

    move-object v11, v7

    move-wide v12, v8

    move-wide v15, v0

    invoke-direct/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/jo;->A04(JIJ)V

    .line 90620
    add-int/lit8 v7, v3, 0x3

    .line 90621
    .end local v12    # "nalUnitOffset":I
    .end local v13    # "nalUnitType":I
    .end local v14    # "lengthToNalUnit":I
    .end local v15    # "bytesWrittenPastPosition":I
    .end local v16    # "absolutePosition":J
    goto :goto_0

    .line 90622
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 4

    .line 90623
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A05()V

    .line 90624
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A04:Ljava/lang/String;

    .line 90625
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A02:Lcom/facebook/ads/redexgen/X/H1;

    .line 90626
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jo;->A02:Lcom/facebook/ads/redexgen/X/H1;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/jo;->A0C:Z

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jo;->A0D:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/KQ;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/KQ;-><init>(Lcom/facebook/ads/redexgen/X/H1;ZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    .line 90627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0B:Lcom/facebook/ads/redexgen/X/KX;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/KX;->A03(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V

    .line 90628
    return-void
.end method

.method public final AG5()V
    .locals 0

    .line 90629
    return-void
.end method

.method public final AG6(JI)V
    .locals 3

    .line 90630
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 90631
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/jo;->A00:J

    .line 90632
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jo;->A06:Z

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/jo;->A06:Z

    .line 90633
    return-void

    .line 90634
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AIL()V
    .locals 2

    .line 90635
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A01:J

    .line 90636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A06:Z

    .line 90637
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A00:J

    .line 90638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0E:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gq;->A0H([Z)V

    .line 90639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .line 90640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .line 90641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A09:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .line 90642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    if-eqz v0, :cond_0

    .line 90643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jo;->A03:Lcom/facebook/ads/redexgen/X/KQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KQ;->A01()V

    .line 90644
    :cond_0
    return-void
.end method
