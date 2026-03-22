.class public final Lcom/facebook/ads/redexgen/X/jp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KM;,
        Lcom/facebook/ads/redexgen/X/KN;
    }
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:[F


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/H1;

.field public A03:Lcom/facebook/ads/redexgen/X/KN;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/4J;

.field public final A07:Lcom/facebook/ads/redexgen/X/KM;

.field public final A08:Lcom/facebook/ads/redexgen/X/KS;

.field public final A09:Lcom/facebook/ads/redexgen/X/Kh;

.field public final A0A:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3027
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Sri33Nkjg2q1UfSTa8c1c4poMbcRpRLi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "09hX7cFAjusi8bmxYUkedKuhTIWBBFyj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9Nq5ciBjH0E2wAdqO8kDicSSF4ASqfED"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QsWxT4gaPPGppGCvyiz5txfiFuAY8zGx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "IfMd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WTVPPiGNk6qIrjWgxgkH9oFnGfUzUO7U"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kZSjpU6etDs1IBDvrqsQrqQjBcHBIo8z"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "H6v3RmW3GvMpIK1G5kWvIHPLiCmsEM1C"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jp;->A02()V

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jp;->A0D:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 90645
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jp;-><init>(Lcom/facebook/ads/redexgen/X/Kh;)V

    .line 90646
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Kh;)V
    .locals 3

    .line 90647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90648
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jp;->A09:Lcom/facebook/ads/redexgen/X/Kh;

    .line 90649
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A0A:[Z

    .line 90650
    const/16 v2, 0x80

    new-instance v0, Lcom/facebook/ads/redexgen/X/KM;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/KM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A07:Lcom/facebook/ads/redexgen/X/KM;

    .line 90651
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A00:J

    .line 90652
    if-eqz p1, :cond_0

    .line 90653
    const/16 v1, 0xb2

    new-instance v0, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/KS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    .line 90654
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A06:Lcom/facebook/ads/redexgen/X/4J;

    .line 90655
    :goto_0
    return-void

    .line 90656
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    .line 90657
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A06:Lcom/facebook/ads/redexgen/X/4J;

    goto :goto_0
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/KM;ILjava/lang/String;)Lcom/facebook/ads/redexgen/X/or;
    .locals 9

    .line 90658
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KM;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KM;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    .line 90659
    .local v0, "csdData":[B
    new-instance v5, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    .line 90660
    .local v1, "buffer":Lcom/facebook/ads/redexgen/X/4I;
    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/4I;->A0A(I)V

    .line 90661
    const/4 v1, 0x4

    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/4I;->A0A(I)V

    .line 90662
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 90663
    const/16 p1, 0x8

    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90664
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    const/4 v7, 0x3

    if-eqz v0, :cond_0

    .line 90665
    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90666
    invoke-virtual {v5, v7}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90667
    :cond_0
    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result p0

    .line 90668
    .local v2, "aspectRatioInfo":I
    const/16 v2, 0xa

    const/16 v1, 0x14

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jp;->A01(III)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jp;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0xf

    if-ne p0, v3, :cond_1

    .line 90669
    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 90670
    .end local v4
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/jp;->A0D:[F

    array-length v0, v0

    if-ge p0, v0, :cond_2

    .line 90671
    sget-object v0, Lcom/facebook/ads/redexgen/X/jp;->A0D:[F

    aget v8, v0, p0

    .restart local v4
    goto :goto_0

    .line 90672
    .end local v4
    :cond_2
    invoke-static {v4, v8}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 90673
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    .line 90674
    .local v8, "parWidth":I
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    const-string v1, "pNVnHJusVCsmPjFYzkWaaBxpUvIALZFH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "5W5bueKBkmsFSlOt61KpehVGJe26nslO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    .line 90675
    .local v3, "parHeight":I
    if-nez v0, :cond_4

    .line 90676
    invoke-static {v4, v8}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 90677
    const/high16 v8, 0x3f800000    # 1.0f

    .line 90678
    .local v4, "pixelWidthHeightRatio":F
    .restart local v4    # "pixelWidthHeightRatio":F
    :goto_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    const/4 p0, 0x2

    if-eqz v0, :cond_6

    .line 90679
    invoke-virtual {v5, p0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90680
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90681
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 90682
    .end local v4    # "pixelWidthHeightRatio":F
    :cond_4
    int-to-float v8, p0

    int-to-float v0, v0

    div-float/2addr v8, v0

    goto :goto_0

    .line 90683
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    const-string v1, "a7iwuG0S7TsvBO2g0yc87XIFTOWCV0GN"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "G4F0gcHQBssTN40k2zdU8kwKQEhYA5ZF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz p1, :cond_6

    .line 90684
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90685
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 90686
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90687
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 90688
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90689
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 90690
    invoke-virtual {v5, v7}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90691
    const/16 v0, 0xb

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90692
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 90693
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90694
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 90695
    :cond_6
    invoke-virtual {v5, p0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    .line 90696
    .local v3, "videoObjectLayerShape":I
    if-eqz v0, :cond_7

    .line 90697
    const/16 v2, 0x43

    const/16 v1, 0x22

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 90698
    :cond_7
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 90699
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 90700
    .local v5, "vopTimeIncrementResolution":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 90701
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 90702
    if-nez v1, :cond_9

    .line 90703
    const/16 v2, 0x1e

    const/16 v1, 0x25

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 90704
    .end local v6
    :cond_8
    :goto_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 90705
    const/16 v0, 0xd

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v7

    .line 90706
    .local v7, "videoObjectLayerWidth":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 90707
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v4

    .line 90708
    .local v6, "videoObjectLayerHeight":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 90709
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 90710
    new-instance v0, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 90711
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2D;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v3

    .line 90712
    const/16 v2, 0x65

    const/16 v1, 0xd

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90713
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/2D;->A0r(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90714
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2D;->A0f(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90715
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/2D;->A0Y(F)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 90716
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90717
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 90718
    return-object v0

    .line 90719
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 90720
    const/4 v0, 0x0

    .line 90721
    .local v6, "numBits":I
    :goto_2
    if-lez v1, :cond_a

    .line 90722
    add-int/lit8 v0, v0, 0x1

    .line 90723
    shr-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90724
    :cond_a
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    goto :goto_1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jp;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x45

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

    const/16 v0, 0x72

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jp;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x42t
        0x38t
        0x3ct
        0x39t
        0x58t
        0x6ft
        0x6bt
        0x6et
        0x6ft
        0x78t
        0x12t
        0x35t
        0x2dt
        0x3at
        0x37t
        0x32t
        0x3ft
        0x7bt
        0x3at
        0x28t
        0x2bt
        0x3et
        0x38t
        0x2ft
        0x7bt
        0x29t
        0x3at
        0x2ft
        0x32t
        0x34t
        0x7dt
        0x5at
        0x42t
        0x55t
        0x58t
        0x5dt
        0x50t
        0x14t
        0x42t
        0x5bt
        0x44t
        0x6bt
        0x5dt
        0x5at
        0x57t
        0x46t
        0x51t
        0x59t
        0x51t
        0x5at
        0x40t
        0x6bt
        0x40t
        0x5dt
        0x59t
        0x51t
        0x6bt
        0x46t
        0x51t
        0x47t
        0x5bt
        0x58t
        0x41t
        0x40t
        0x5dt
        0x5bt
        0x5at
        0x4dt
        0x76t
        0x70t
        0x79t
        0x76t
        0x7ct
        0x74t
        0x7dt
        0x7ct
        0x38t
        0x6et
        0x71t
        0x7ct
        0x7dt
        0x77t
        0x38t
        0x77t
        0x7at
        0x72t
        0x7dt
        0x7bt
        0x6ct
        0x38t
        0x74t
        0x79t
        0x61t
        0x7dt
        0x6at
        0x38t
        0x6bt
        0x70t
        0x79t
        0x68t
        0x7dt
        0x2dt
        0x32t
        0x3ft
        0x3et
        0x34t
        0x74t
        0x36t
        0x2bt
        0x6ft
        0x2dt
        0x76t
        0x3et
        0x28t
    .end array-data
.end method


# virtual methods
.method public final A52(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 12

    .line 90725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A03:Lcom/facebook/ads/redexgen/X/KN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A02:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90727
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v8

    .line 90728
    .local v0, "offset":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v7

    .line 90729
    .local v1, "limit":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v6

    .line 90730
    .local v2, "dataArray":[B
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/jp;->A01:J

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/jp;->A01:J

    .line 90731
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jp;->A02:Lcom/facebook/ads/redexgen/X/H1;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 90732
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A0A:[Z

    invoke-static {v6, v8, v7, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A04([BII[Z)I

    move-result v5

    .line 90733
    .local v3, "startCodeOffset":I
    if-ne v5, v7, :cond_2

    .line 90734
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A05:Z

    if-nez v0, :cond_0

    .line 90735
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jp;->A07:Lcom/facebook/ads/redexgen/X/KM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    const-string v1, "80MY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v6, v8, v7}, Lcom/facebook/ads/redexgen/X/KM;->A03([BII)V

    .line 90736
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A03:Lcom/facebook/ads/redexgen/X/KN;

    invoke-virtual {v0, v6, v8, v7}, Lcom/facebook/ads/redexgen/X/KN;->A03([BII)V

    .line 90737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    if-eqz v0, :cond_1

    .line 90738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v6, v8, v7}, Lcom/facebook/ads/redexgen/X/KS;->A02([BII)V

    .line 90739
    :cond_1
    return-void

    .line 90740
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v5, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v4, v0, 0xff

    .line 90741
    .local v4, "startCodeValue":I
    sub-int v9, v5, v8

    .line 90742
    .local v5, "lengthToStartCode":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A05:Z

    const/4 v3, 0x1

    if-nez v0, :cond_7

    .line 90743
    if-lez v9, :cond_3

    .line 90744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A07:Lcom/facebook/ads/redexgen/X/KM;

    invoke-virtual {v0, v6, v8, v5}, Lcom/facebook/ads/redexgen/X/KM;->A03([BII)V

    .line 90745
    :cond_3
    if-gez v9, :cond_5

    neg-int v1, v9

    .line 90746
    .local v6, "bytesAlreadyPassed":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A07:Lcom/facebook/ads/redexgen/X/KM;

    invoke-virtual {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/KM;->A04(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 90747
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jp;->A02:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/jp;->A07:Lcom/facebook/ads/redexgen/X/KM;

    sget-object v11, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v11, v0

    const/4 v0, 0x6

    aget-object v11, v11, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 90748
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 90749
    :cond_6
    sget-object v11, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    const-string v1, "jCMcU5kX01siyiD9Xw2jZ38LNAQD3esf"

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const-string v1, "NTL8nbB45bsjwa3rfW6th5wXRcuqzfwM"

    const/4 v0, 0x6

    aput-object v1, v11, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A07:Lcom/facebook/ads/redexgen/X/KM;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/KM;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A04:Ljava/lang/String;

    .line 90750
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/jp;->A00(Lcom/facebook/ads/redexgen/X/KM;ILjava/lang/String;)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 90751
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 90752
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/jp;->A05:Z

    .line 90753
    .end local v6    # "bytesAlreadyPassed":I
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A03:Lcom/facebook/ads/redexgen/X/KN;

    invoke-virtual {v0, v6, v8, v5}, Lcom/facebook/ads/redexgen/X/KN;->A03([BII)V

    .line 90754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    if-eqz v0, :cond_b

    .line 90755
    const/4 v10, 0x0

    .line 90756
    .restart local v6    # "bytesAlreadyPassed":I
    if-lez v9, :cond_8

    .line 90757
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_9

    goto :goto_2

    .line 90758
    :cond_8
    neg-int v10, v9

    goto :goto_3

    .line 90759
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    const-string v1, "pGtfbhZ8gA4Y3zya71EFVTXhFPoVLYfI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v9, v6, v8, v5}, Lcom/facebook/ads/redexgen/X/KS;->A02([BII)V

    .line 90760
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/KS;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 90761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A02([BI)I

    move-result v2

    .line 90762
    .local v8, "unescapedLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A06:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 90763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A09:Lcom/facebook/ads/redexgen/X/Kh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/Kh;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A00:J

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jp;->A06:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v8, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Kh;->A02(JLcom/facebook/ads/redexgen/X/4J;)V

    .line 90764
    .end local v8    # "unescapedLength":I
    :cond_a
    const/16 v0, 0xb2

    if-ne v4, v0, :cond_b

    .line 90765
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    add-int/lit8 v0, v5, 0x2

    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_b

    .line 90766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/KS;->A01(I)V

    .line 90767
    .end local v6    # "bytesAlreadyPassed":I
    :cond_b
    sub-int v8, v7, v5

    .line 90768
    .local v6, "bytesWrittenPastPosition":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/jp;->A01:J

    int-to-long v0, v8

    sub-long/2addr v2, v0

    .line 90769
    .local v7, "absolutePosition":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jp;->A03:Lcom/facebook/ads/redexgen/X/KN;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A05:Z

    invoke-virtual {v1, v2, v3, v8, v0}, Lcom/facebook/ads/redexgen/X/KN;->A02(JIZ)V

    .line 90770
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jp;->A03:Lcom/facebook/ads/redexgen/X/KN;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A00:J

    invoke-virtual {v2, v4, v0, v1}, Lcom/facebook/ads/redexgen/X/KN;->A01(IJ)V

    .line 90771
    add-int/lit8 v8, v5, 0x3

    .line 90772
    .end local v3    # "startCodeOffset":I
    .end local v4    # "startCodeValue":I
    .end local v5    # "lengthToStartCode":I
    .end local v6    # "bytesWrittenPastPosition":I
    .end local v7    # "absolutePosition":J
    goto/16 :goto_0
.end method

.method public final A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 2

    .line 90773
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A05()V

    .line 90774
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A04:Ljava/lang/String;

    .line 90775
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A02:Lcom/facebook/ads/redexgen/X/H1;

    .line 90776
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jp;->A02:Lcom/facebook/ads/redexgen/X/H1;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KN;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KN;-><init>(Lcom/facebook/ads/redexgen/X/H1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A03:Lcom/facebook/ads/redexgen/X/KN;

    .line 90777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A09:Lcom/facebook/ads/redexgen/X/Kh;

    if-eqz v0, :cond_0

    .line 90778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A09:Lcom/facebook/ads/redexgen/X/Kh;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kh;->A03(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V

    .line 90779
    :cond_0
    return-void
.end method

.method public final AG5()V
    .locals 0

    .line 90780
    return-void
.end method

.method public final AG6(JI)V
    .locals 3

    .line 90781
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 90782
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/jp;->A00:J

    .line 90783
    :cond_0
    return-void
.end method

.method public final AIL()V
    .locals 5

    .line 90784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A0A:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gq;->A0H([Z)V

    .line 90785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A07:Lcom/facebook/ads/redexgen/X/KM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KM;->A02()V

    .line 90786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A03:Lcom/facebook/ads/redexgen/X/KN;

    if-eqz v0, :cond_0

    .line 90787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A03:Lcom/facebook/ads/redexgen/X/KN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KN;->A00()V

    .line 90788
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    if-eqz v0, :cond_1

    .line 90789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .line 90790
    :cond_1
    const-wide/16 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/jp;->A0C:[Ljava/lang/String;

    const-string v1, "KHBnxT5PT6gCJIZCrRbgphkbFp7MF5Ts"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/jp;->A01:J

    .line 90791
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jp;->A00:J

    .line 90792
    return-void
.end method
