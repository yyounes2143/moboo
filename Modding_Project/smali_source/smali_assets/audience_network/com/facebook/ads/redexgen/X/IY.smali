.class public final Lcom/facebook/ads/redexgen/X/IY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/kc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackBundle"
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/IP;

.field public A05:Lcom/facebook/ads/redexgen/X/Ip;

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/4J;

.field public final A08:Lcom/facebook/ads/redexgen/X/H1;

.field public final A09:Lcom/facebook/ads/redexgen/X/Io;

.field public final A0A:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0B:Lcom/facebook/ads/redexgen/X/4J;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 772
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uuzqWXLhVU5h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MCiAyNDofRMgV8twnC7AiCrYM6kNh0jg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HJXujHHcElJRTDtcfeo3Sy7Hv18RGZgy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Amjr7hMXQx0e32VF8yWASHBDx37PervK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NgKcffCH0RNam7yPBBIvJezNpINfNkiL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oMs9elp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "apSAFH841DSL3paVepKSIoWcAWyBkdVZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "h51QMR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IY;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/Ip;Lcom/facebook/ads/redexgen/X/IP;)V
    .locals 2

    .line 41592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41593
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IY;->A08:Lcom/facebook/ads/redexgen/X/H1;

    .line 41594
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    .line 41595
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/IY;->A04:Lcom/facebook/ads/redexgen/X/IP;

    .line 41596
    new-instance v0, Lcom/facebook/ads/redexgen/X/Io;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Io;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    .line 41597
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    .line 41598
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    .line 41599
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    .line 41600
    invoke-virtual {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/IY;->A0C(Lcom/facebook/ads/redexgen/X/Ip;Lcom/facebook/ads/redexgen/X/IP;)V

    .line 41601
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/IY;)Z
    .locals 0

    .line 41602
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/IY;->A06:Z

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/IY;Z)Z
    .locals 0

    .line 41603
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/IY;->A06:Z

    return p1
.end method


# virtual methods
.method public final A02()I
    .locals 5

    .line 41604
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A06:Z

    if-nez v0, :cond_0

    .line 41605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ip;->A04:[I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    aget v4, v1, v0

    .line 41606
    .local v0, "flags":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IY;->A07()Lcom/facebook/ads/redexgen/X/In;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 41607
    const/high16 v3, 0x40000000    # 2.0f

    sget-object v2, Lcom/facebook/ads/redexgen/X/IY;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41608
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Io;->A0G:[Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/IY;->A0C:[Ljava/lang/String;

    const-string v1, "Hkeae3ogmEOju43arfP4ZrrsYFDfrpvf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    or-int/2addr v4, v3

    .line 41609
    :cond_3
    return v4
.end method

.method public final A03()I
    .locals 2

    .line 41610
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A06:Z

    if-nez v0, :cond_0

    .line 41611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ip;->A05:[I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    aget v0, v1, v0

    .line 41612
    :goto_0
    return v0

    .line 41613
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Io;->A0B:[I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public final A04(II)I
    .locals 12

    .line 41614
    move-object v5, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IY;->A07()Lcom/facebook/ads/redexgen/X/In;

    move-result-object v1

    .line 41615
    .local v3, "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    const/4 v8, 0x0

    if-nez v1, :cond_0

    .line 41616
    return v8

    .line 41617
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/In;->A00:I

    if-eqz v0, :cond_4

    .line 41618
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A0H:Lcom/facebook/ads/redexgen/X/4J;

    .line 41619
    .local v5, "initializationVectorData":Lcom/facebook/ads/redexgen/X/4J;
    iget v3, v1, Lcom/facebook/ads/redexgen/X/In;->A00:I

    .line 41620
    .local v6, "vectorSize":I
    .local v5, "initializationVectorData":Lcom/facebook/ads/redexgen/X/4J;
    .local v6, "vectorSize":I
    :goto_0
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    .line 41621
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Io;->A06(I)Z

    move-result v11

    .line 41622
    .local v7, "haveSubsampleEncryptionTable":Z
    const/4 v2, 0x1

    if-nez v11, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    const/4 v6, 0x1

    .line 41623
    .local v9, "writeSubsampleEncryptionData":Z
    :goto_1
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/IY;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v4

    .line 41624
    if-eqz v6, :cond_2

    const/16 v1, 0x80

    :goto_2
    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v4, v8

    .line 41625
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/IY;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41626
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/IY;->A08:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/IY;->A0B:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v4, v1, v2, v2}, Lcom/facebook/ads/redexgen/X/H1;->AI8(Lcom/facebook/ads/redexgen/X/4J;II)V

    .line 41627
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/IY;->A08:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/H1;->AI8(Lcom/facebook/ads/redexgen/X/4J;II)V

    .line 41628
    if-nez v6, :cond_5

    .line 41629
    add-int/lit8 v0, v3, 0x1

    return v0

    .line 41630
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 41631
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 41632
    .end local v5    # "initializationVectorData":Lcom/facebook/ads/redexgen/X/4J;
    .end local v6    # "vectorSize":I
    :cond_4
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/In;->A04:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 41633
    .local v5, "initVectorData":[B
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/IY;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    array-length v0, v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 41634
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IY;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    .line 41635
    .local v6, "initializationVectorData":Lcom/facebook/ads/redexgen/X/4J;
    array-length v3, v2

    goto :goto_0

    .line 41636
    :cond_5
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v7, 0x8

    if-nez v11, :cond_6

    .line 41637
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 41638
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v4

    .line 41639
    .local p1, "data":[B
    aput-byte v8, v4, v8

    .line 41640
    aput-byte v2, v4, v2

    .line 41641
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v9

    .line 41642
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v10

    .line 41643
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x4

    aput-byte v1, v4, v0

    .line 41644
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x5

    aput-byte v1, v4, v0

    .line 41645
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x6

    aput-byte v1, v4, v0

    .line 41646
    and-int/lit16 v0, p1, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x7

    aput-byte v1, v4, v0

    .line 41647
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/IY;->A08:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v1, v0, v7, v2}, Lcom/facebook/ads/redexgen/X/H1;->AI8(Lcom/facebook/ads/redexgen/X/4J;II)V

    .line 41648
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v7

    return v0

    .line 41649
    .end local p1    # "data":[B
    :cond_6
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Io;->A0H:Lcom/facebook/ads/redexgen/X/4J;

    .line 41650
    .local p1, "subsampleEncryptionData":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v1

    .line 41651
    .local p2, "subsampleCount":I
    const/4 v0, -0x2

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41652
    mul-int/lit8 v2, v1, 0x6

    add-int/2addr v2, v9

    .line 41653
    .local p3, "subsampleDataLength":I
    if-eqz p2, :cond_7

    .line 41654
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 41655
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/IY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v4

    .line 41656
    .local v8, "scratchData":[B
    invoke-virtual {v6, v4, v8, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 41657
    aget-byte v0, v4, v9

    and-int/lit16 v1, v0, 0xff

    shl-int/2addr v1, v7

    aget-byte v0, v4, v10

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    .line 41658
    .local v4, "clearDataSize":I
    add-int/2addr v1, p2

    .line 41659
    .local p0, "adjustedClearDataSize":I
    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v9

    .line 41660
    and-int/lit16 v0, v1, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x3

    aput-byte v1, v4, v0

    .line 41661
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/IY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    .line 41662
    .end local v4    # "clearDataSize":I
    .end local v8    # "scratchData":[B
    .end local p0    # "adjustedClearDataSize":I
    :cond_7
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/IY;->A08:Lcom/facebook/ads/redexgen/X/H1;

    const/4 v0, 0x1

    invoke-interface {v1, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/H1;->AI8(Lcom/facebook/ads/redexgen/X/4J;II)V

    .line 41663
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v2

    return v0
.end method

.method public final A05()J
    .locals 2

    .line 41664
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A06:Z

    if-nez v0, :cond_0

    .line 41665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ip;->A06:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    aget-wide v0, v1, v0

    .line 41666
    :goto_0
    return-wide v0

    .line 41667
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Io;->A0E:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:I

    aget-wide v0, v1, v0

    goto :goto_0
.end method

.method public final A06()J
    .locals 2

    .line 41668
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A06:Z

    if-nez v0, :cond_0

    .line 41669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ip;->A07:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    aget-wide v0, v1, v0

    .line 41670
    :goto_0
    return-wide v0

    .line 41671
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Io;->A00(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/In;
    .locals 3

    .line 41672
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A06:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 41673
    return-object v2

    .line 41674
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A06:Lcom/facebook/ads/redexgen/X/IP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IP;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/IP;->A02:I

    .line 41675
    .local v0, "sampleDescriptionIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A07:Lcom/facebook/ads/redexgen/X/In;

    if-eqz v0, :cond_2

    .line 41676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Io;->A07:Lcom/facebook/ads/redexgen/X/In;

    .line 41677
    .local v2, "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/In;->A03:Z

    if-eqz v0, :cond_1

    move-object v2, v1

    :cond_1
    return-object v2

    .line 41678
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Im;->A00(I)Lcom/facebook/ads/redexgen/X/In;

    move-result-object v1

    goto :goto_0
.end method

.method public final A08()V
    .locals 1

    .line 41679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Io;->A01()V

    .line 41680
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    .line 41681
    iput v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:I

    .line 41682
    iput v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A00:I

    .line 41683
    iput v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A03:I

    .line 41684
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A06:Z

    .line 41685
    return-void
.end method

.method public final A09()V
    .locals 3

    .line 41686
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IY;->A07()Lcom/facebook/ads/redexgen/X/In;

    move-result-object v1

    .line 41687
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    if-nez v1, :cond_0

    .line 41688
    return-void

    .line 41689
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Io;->A0H:Lcom/facebook/ads/redexgen/X/4J;

    .line 41690
    .local v1, "sampleEncryptionData":Lcom/facebook/ads/redexgen/X/4J;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/In;->A00:I

    if-eqz v0, :cond_1

    .line 41691
    iget v0, v1, Lcom/facebook/ads/redexgen/X/In;->A00:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41692
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Io;->A06(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41693
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41694
    :cond_2
    return-void
.end method

.method public final A0A(J)V
    .locals 4

    .line 41695
    iget v3, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    .line 41696
    .local v0, "searchIndex":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A00:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    .line 41697
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Io;->A00(I)J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-gtz v0, :cond_1

    .line 41698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A0G:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    .line 41699
    iput v3, p0, Lcom/facebook/ads/redexgen/X/IY;->A03:I

    .line 41700
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41701
    :cond_1
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)V
    .locals 2

    .line 41702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Io;->A06:Lcom/facebook/ads/redexgen/X/IP;

    .line 41703
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IP;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/IP;->A02:I

    .line 41704
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Im;->A00(I)Lcom/facebook/ads/redexgen/X/In;

    move-result-object v0

    .line 41705
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/In;->A02:Ljava/lang/String;

    .line 41706
    .local v1, "schemeType":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A01(Ljava/lang/String;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    move-result-object v1

    .line 41707
    .local p0, "updatedDrmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    .line 41708
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/or;->A07()Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2D;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v1

    .line 41709
    .local p1, "format":Lcom/facebook/ads/redexgen/X/or;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A08:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 41710
    return-void

    .line 41711
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/Ip;Lcom/facebook/ads/redexgen/X/IP;)V
    .locals 2

    .line 41712
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/Ip;

    .line 41713
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/IY;->A04:Lcom/facebook/ads/redexgen/X/IP;

    .line 41714
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IY;->A08:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ip;->A03:Lcom/facebook/ads/redexgen/X/Im;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 41715
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IY;->A08()V

    .line 41716
    return-void
.end method

.method public final A0D()Z
    .locals 5

    .line 41717
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:I

    .line 41718
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A06:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 41719
    return v3

    .line 41720
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A00:I

    .line 41721
    iget v2, p0, Lcom/facebook/ads/redexgen/X/IY;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A09:Lcom/facebook/ads/redexgen/X/Io;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Io;->A0C:[I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:I

    aget v0, v1, v0

    if-ne v2, v0, :cond_1

    .line 41722
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:I

    .line 41723
    iput v3, p0, Lcom/facebook/ads/redexgen/X/IY;->A00:I

    .line 41724
    return v3

    .line 41725
    :cond_1
    return v4
.end method
