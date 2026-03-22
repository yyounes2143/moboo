.class public final Lcom/facebook/ads/redexgen/X/M2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/M1;
    }
.end annotation


# static fields
.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/56;

.field public final A04:Lcom/facebook/ads/redexgen/X/Ln;

.field public final A05:Lcom/facebook/ads/redexgen/X/7S;

.field public final A06:Lcom/facebook/ads/redexgen/X/M1;

.field public final A07:Ljava/lang/String;

.field public final A08:[B

.field public volatile A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1341
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Zahrr4TzPnlvzL1ryUDBJHiLrNQrc0do"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gdtiLcJnOI63VIDKC4FZh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mcKRdr7QIVfArpWMDov87T9yp6nn6XkX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hh9PATM4XXQMpkTMp0yEe4VjsJayobMb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DHsdxhl2jOmdOKqNSGjxb8rQV1nmB92A"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YMP8jok2HwiV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "S"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/M2;->A0A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/56;[BLcom/facebook/ads/redexgen/X/M1;)V
    .locals 2

    .line 51528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51529
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M2;->A05:Lcom/facebook/ads/redexgen/X/7S;

    .line 51530
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A0E()Lcom/facebook/ads/redexgen/X/Ln;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A04:Lcom/facebook/ads/redexgen/X/Ln;

    .line 51531
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/M2;->A03:Lcom/facebook/ads/redexgen/X/56;

    .line 51532
    if-nez p3, :cond_0

    const/high16 v0, 0x20000

    new-array p3, v0, [B

    :cond_0
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/M2;->A08:[B

    .line 51533
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/M2;->A06:Lcom/facebook/ads/redexgen/X/M1;

    .line 51534
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A0F()Lcom/facebook/ads/redexgen/X/Lw;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/Lw;->A4d(Lcom/facebook/ads/redexgen/X/56;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A07:Ljava/lang/String;

    .line 51535
    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/56;->A04:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A02:J

    .line 51536
    return-void
.end method

.method private A00()J
    .locals 6

    .line 51537
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:J

    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A03:Lcom/facebook/ads/redexgen/X/56;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/56;->A04:J

    sub-long/2addr v2, v0

    goto :goto_0
.end method

.method private A01(JJ)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51538
    add-long v7, p1, p3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:J

    const/4 v6, 0x0

    const-wide/16 v1, -0x1

    cmp-long v0, v7, v3

    if-eqz v0, :cond_0

    cmp-long v0, p3, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v9, 0x1

    .line 51539
    .local v0, "isLastBlock":Z
    :goto_0
    const-wide/16 v7, -0x1

    .line 51540
    .local v1, "resolvedLength":J
    const/4 v4, 0x0

    .line 51541
    .local v3, "isDataSourceOpen":Z
    cmp-long v0, p3, v1

    if-eqz v0, :cond_2

    .line 51542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A03:Lcom/facebook/ads/redexgen/X/56;

    .line 51543
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/56;->A04()Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/53;->A04(J)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/53;->A03(J)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A09()Lcom/facebook/ads/redexgen/X/56;

    move-result-object v3

    goto :goto_1

    .line 51544
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 51545
    .local v7, "boundedDataSpec":Lcom/facebook/ads/redexgen/X/56;
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A05:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/7S;->AFy(Lcom/facebook/ads/redexgen/X/56;)J

    move-result-wide v7

    .line 51546
    const/4 v4, 0x1

    .line 51547
    goto :goto_2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51548
    .local v8, "e":Ljava/io/IOException;
    :catch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A05:Lcom/facebook/ads/redexgen/X/7S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/51;->A00(Lcom/facebook/ads/redexgen/X/nl;)V

    .line 51549
    .end local v7    # "boundedDataSpec":Lcom/facebook/ads/redexgen/X/56;
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    .line 51550
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M2;->A02()V

    .line 51551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A03:Lcom/facebook/ads/redexgen/X/56;

    .line 51552
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/56;->A04()Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/53;->A04(J)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/53;->A03(J)Lcom/facebook/ads/redexgen/X/53;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A09()Lcom/facebook/ads/redexgen/X/56;

    move-result-object v3

    .line 51553
    .local v7, "unboundedDataSpec":Lcom/facebook/ads/redexgen/X/56;
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A05:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/7S;->AFy(Lcom/facebook/ads/redexgen/X/56;)J

    move-result-wide v7

    goto :goto_3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51554
    :catch_1
    move-exception v1

    .line 51555
    .local v4, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A05:Lcom/facebook/ads/redexgen/X/7S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/51;->A00(Lcom/facebook/ads/redexgen/X/nl;)V

    .line 51556
    throw v1

    .line 51557
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "unboundedDataSpec":Lcom/facebook/ads/redexgen/X/56;
    :cond_3
    :goto_3
    const/4 v5, 0x0

    sget-object v3, Lcom/facebook/ads/redexgen/X/M2;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v3, v3, v0

    const/16 v0, 0x14

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x65

    if-eq v3, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51558
    .local v7, "totalBytesRead":I
    :cond_4
    sget-object v4, Lcom/facebook/ads/redexgen/X/M2;->A0A:[Ljava/lang/String;

    const-string v3, "hZR9VwpKkwuUXqoAcu0MC0lnjZxabJfZ"

    const/4 v0, 0x0

    aput-object v3, v4, v0

    if-eqz v9, :cond_5

    cmp-long v0, v7, v1

    if-eqz v0, :cond_5

    .line 51559
    add-long v0, p1, v7

    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/M2;->A04(J)V

    .line 51560
    :cond_5
    const/4 v2, 0x0

    .line 51561
    .local v5, "bytesRead":I
    :cond_6
    :goto_4
    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 51562
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M2;->A02()V

    .line 51563
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/M2;->A05:Lcom/facebook/ads/redexgen/X/7S;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M2;->A08:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A08:[B

    array-length v0, v0

    invoke-virtual {v2, v1, v6, v0}, Lcom/facebook/ads/redexgen/X/7S;->read([BII)I

    move-result v2

    .line 51564
    if-eq v2, v3, :cond_6

    .line 51565
    int-to-long v0, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/M2;->A03(J)V

    .line 51566
    add-int/2addr v5, v2

    goto :goto_4

    .line 51567
    :cond_7
    if-eqz v9, :cond_8

    .line 51568
    int-to-long v0, v5

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/M2;->A04(J)V

    goto :goto_5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 51569
    :catch_2
    move-exception v1

    .line 51570
    .end local v5    # "bytesRead":I
    .restart local v4    # "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A05:Lcom/facebook/ads/redexgen/X/7S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/51;->A00(Lcom/facebook/ads/redexgen/X/nl;)V

    .line 51571
    throw v1

    .line 51572
    .end local v4    # "e":Ljava/io/IOException;
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A05:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->close()V

    .line 51573
    int-to-long v2, v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/M2;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x7

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v4, Lcom/facebook/ads/redexgen/X/M2;->A0A:[Ljava/lang/String;

    const-string v1, "HblyszVHSCLV"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "g"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    return-wide v2

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 51574
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A09:Z

    if-nez v0, :cond_0

    .line 51575
    return-void

    .line 51576
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method private A03(J)V
    .locals 7

    .line 51577
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A00:J

    move-wide v5, p1

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A00:J

    .line 51578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A06:Lcom/facebook/ads/redexgen/X/M1;

    if-eqz v0, :cond_0

    .line 51579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A06:Lcom/facebook/ads/redexgen/X/M1;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M2;->A00()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/M2;->A00:J

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/M1;->AEp(JJJ)V

    .line 51580
    :cond_0
    return-void
.end method

.method private A04(J)V
    .locals 7

    .line 51581
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_0

    .line 51582
    return-void

    .line 51583
    :cond_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:J

    .line 51584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A06:Lcom/facebook/ads/redexgen/X/M1;

    if-eqz v0, :cond_1

    .line 51585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A06:Lcom/facebook/ads/redexgen/X/M1;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M2;->A00()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/M2;->A00:J

    const-wide/16 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/M1;->AEp(JJJ)V

    .line 51586
    :cond_1
    return-void
.end method


# virtual methods
.method public final A05()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51587
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M2;->A02()V

    .line 51588
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M2;->A04:Lcom/facebook/ads/redexgen/X/Ln;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/M2;->A07:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A03:Lcom/facebook/ads/redexgen/X/56;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/56;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A03:Lcom/facebook/ads/redexgen/X/56;

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/56;->A03:J

    invoke-interface/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ln;->A73(Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A00:J

    .line 51589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A03:Lcom/facebook/ads/redexgen/X/56;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/56;->A03:J

    const-wide/16 v10, -0x1

    cmp-long v0, v1, v10

    if-eqz v0, :cond_5

    .line 51590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A03:Lcom/facebook/ads/redexgen/X/56;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/56;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A03:Lcom/facebook/ads/redexgen/X/56;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/56;->A03:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:J

    .line 51591
    .end local v0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A06:Lcom/facebook/ads/redexgen/X/M1;

    if-eqz v0, :cond_0

    .line 51592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A06:Lcom/facebook/ads/redexgen/X/M1;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M2;->A00()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/M2;->A00:J

    const-wide/16 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/M1;->AEp(JJJ)V

    .line 51593
    :cond_0
    :goto_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:J

    cmp-long v3, v0, v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/M2;->A0A:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/M2;->A0A:[Ljava/lang/String;

    const-string v1, "NGuGGBYtFkRF3XmDWlB70"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/M2;->A02:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_9

    .line 51594
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M2;->A02()V

    .line 51595
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v1, v10

    if-nez v0, :cond_4

    move-wide v4, v8

    .line 51596
    .local v10, "maxRemainingLength":J
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A04:Lcom/facebook/ads/redexgen/X/Ln;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M2;->A07:Ljava/lang/String;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/M2;->A02:J

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ln;->A74(Ljava/lang/String;JJ)J

    move-result-wide v6

    .line 51597
    .local v0, "blockLength":J
    const-wide/16 v1, 0x0

    cmp-long v0, v6, v1

    if-lez v0, :cond_2

    .line 51598
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A02:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A02:J

    goto :goto_1

    .line 51599
    :cond_2
    neg-long v4, v6

    .line 51600
    cmp-long v0, v4, v8

    if-nez v0, :cond_3

    move-wide v4, v10

    .line 51601
    .local v4, "nextRequestLength":J
    :cond_3
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/M2;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A02:J

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/M2;->A01(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/M2;->A02:J

    goto :goto_1

    .line 51602
    :cond_4
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A02:J

    sub-long/2addr v4, v0

    goto :goto_2

    .line 51603
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M2;->A04:Lcom/facebook/ads/redexgen/X/Ln;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A07:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ln;->A7K(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M8;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M7;->A00(Lcom/facebook/ads/redexgen/X/M8;)J

    move-result-wide v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/M2;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51604
    .local v0, "contentLength":J
    :cond_7
    sget-object v4, Lcom/facebook/ads/redexgen/X/M2;->A0A:[Ljava/lang/String;

    const-string v1, "d2NeaqM7PiJwxNK1Ah3bQ5GZkUsby9uw"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const-string v1, "tLvOBlFvjcFhEySGIYecGT7qbHBlIMmD"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    cmp-long v0, v2, v10

    if-nez v0, :cond_8

    move-wide v2, v10

    :cond_8
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/M2;->A01:J

    goto/16 :goto_0

    .line 51605
    :cond_9
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 51606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/M2;->A09:Z

    .line 51607
    return-void
.end method
