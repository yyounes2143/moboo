.class public final Lcom/facebook/ads/redexgen/X/mK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ej;
.implements Lcom/facebook/ads/redexgen/X/CD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractingLoadable"
.end annotation


# static fields
.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/56;

.field public A02:Lcom/facebook/ads/redexgen/X/H1;

.field public A03:Z

.field public A04:Z

.field public final A05:J

.field public final A06:Landroid/net/Uri;

.field public final A07:Lcom/facebook/ads/redexgen/X/3W;

.field public final A08:Lcom/facebook/ads/redexgen/X/9b;

.field public final A09:Lcom/facebook/ads/redexgen/X/Cb;

.field public final A0A:Lcom/facebook/ads/redexgen/X/GY;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Gt;

.field public volatile A0C:Z

.field public final synthetic A0D:Lcom/facebook/ads/redexgen/X/9A;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3151
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SSDELygzudefytBtRYlDWoyFfpg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4SEnazR2Nu4dPKZqq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4H9jqKlT7lQdtxWBQl9xa6akogWkCWsp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Wknx73gM1GoPE2GN1snRYal1oMjUwY3P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7txELYcTJwThSLRxJ5dUM1K4qPQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gA7GGJKubAjwOro28"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9KdodW4K4GXGszeM7wnefptXiT4TjY3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mK;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9A;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/Cb;Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/3W;)V
    .locals 2

    .line 98573
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98574
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/mK;->A06:Landroid/net/Uri;

    .line 98575
    new-instance v0, Lcom/facebook/ads/redexgen/X/9b;

    invoke-direct {v0, p3}, Lcom/facebook/ads/redexgen/X/9b;-><init>(Lcom/facebook/ads/redexgen/X/nl;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A08:Lcom/facebook/ads/redexgen/X/9b;

    .line 98576
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/mK;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    .line 98577
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/mK;->A0A:Lcom/facebook/ads/redexgen/X/GY;

    .line 98578
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/mK;->A07:Lcom/facebook/ads/redexgen/X/3W;

    .line 98579
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gt;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gt;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A0B:Lcom/facebook/ads/redexgen/X/Gt;

    .line 98580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A03:Z

    .line 98581
    invoke-static {}, Lcom/facebook/ads/redexgen/X/CE;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A05:J

    .line 98582
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/mK;)J
    .locals 1

    .line 98583
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A05:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/mK;)J
    .locals 1

    .line 98584
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/mK;)Lcom/facebook/ads/redexgen/X/56;
    .locals 0

    .line 98585
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/mK;->A01:Lcom/facebook/ads/redexgen/X/56;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/mK;)Lcom/facebook/ads/redexgen/X/9b;
    .locals 0

    .line 98586
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/mK;->A08:Lcom/facebook/ads/redexgen/X/9b;

    return-object p0
.end method

.method private A04(JJ)V
    .locals 1

    .line 98587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A0B:Lcom/facebook/ads/redexgen/X/Gt;

    iput-wide p1, v0, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 98588
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:J

    .line 98589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A03:Z

    .line 98590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A04:Z

    .line 98591
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/mK;JJ)V
    .locals 0

    .line 98592
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/mK;->A04(JJ)V

    return-void
.end method


# virtual methods
.method public final A4j()V
    .locals 1

    .line 98593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A0C:Z

    .line 98594
    return-void
.end method

.method public final AAi()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98595
    move-object/from16 v2, p0

    const/4 v1, 0x0

    .line 98596
    .local v2, "result":I
    :goto_0
    if-nez v1, :cond_9

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/mK;->A0C:Z

    if-nez v0, :cond_9

    .line 98597
    const/4 v0, 0x1

    const-wide/16 v8, -0x1

    :try_start_0
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0B:Lcom/facebook/ads/redexgen/X/Gt;

    iget-wide v14, v3, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 98598
    .local v6, "position":J
    new-instance v12, Lcom/facebook/ads/redexgen/X/56;

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/mK;->A06:Landroid/net/Uri;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9A;->A0C(Lcom/facebook/ads/redexgen/X/9A;)Ljava/lang/String;

    move-result-object v18

    const-wide/16 v16, -0x1

    invoke-direct/range {v12 .. v18}, Lcom/facebook/ads/redexgen/X/56;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v12, v2, Lcom/facebook/ads/redexgen/X/mK;->A01:Lcom/facebook/ads/redexgen/X/56;

    .line 98599
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/mK;->A08:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A01:Lcom/facebook/ads/redexgen/X/56;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/9b;->AFy(Lcom/facebook/ads/redexgen/X/56;)J

    move-result-wide v16

    .line 98600
    .local v8, "length":J
    cmp-long v3, v16, v8

    if-eqz v3, :cond_0

    .line 98601
    add-long v16, v16, v14

    .line 98602
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9A;->A0P(Lcom/facebook/ads/redexgen/X/9A;)V

    .line 98603
    .end local v8    # "length":J
    .local v17, "length":J
    :cond_0
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    const/4 v3, 0x0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/9A;->A09(Lcom/facebook/ads/redexgen/X/9A;Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 98604
    iget-object v11, v2, Lcom/facebook/ads/redexgen/X/mK;->A08:Lcom/facebook/ads/redexgen/X/9b;

    .line 98605
    .local v0, "extractorDataSource":Lcom/facebook/ads/redexgen/X/nl;
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9A;->A08(Lcom/facebook/ads/redexgen/X/9A;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9A;->A08(Lcom/facebook/ads/redexgen/X/9A;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v3

    iget v4, v3, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01:I

    const/4 v3, -0x1

    if-eq v4, v3, :cond_1

    .line 98606
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/mK;->A08:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9A;->A08(Lcom/facebook/ads/redexgen/X/9A;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v3

    iget v3, v3, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01:I

    new-instance v11, Lcom/facebook/ads/redexgen/X/9B;

    invoke-direct {v11, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/9B;-><init>(Lcom/facebook/ads/redexgen/X/nl;ILcom/facebook/ads/redexgen/X/CD;)V

    .line 98607
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9A;->A0Z()Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A02:Lcom/facebook/ads/redexgen/X/H1;

    .line 98608
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/mK;->A02:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9A;->A05()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 98609
    .end local v0    # "extractorDataSource":Lcom/facebook/ads/redexgen/X/nl;
    .local p0, "extractorDataSource":Lcom/facebook/ads/redexgen/X/nl;
    :cond_1
    iget-object v10, v2, Lcom/facebook/ads/redexgen/X/mK;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/mK;->A06:Landroid/net/Uri;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A08:Lcom/facebook/ads/redexgen/X/9b;

    .line 98610
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9b;->A8l()Ljava/util/Map;

    move-result-object v13

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0A:Lcom/facebook/ads/redexgen/X/GY;

    .line 98611
    move-object/from16 v18, v3

    invoke-interface/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/Cb;->AA3(Lcom/facebook/ads/redexgen/X/nl;Landroid/net/Uri;Ljava/util/Map;JJLcom/facebook/ads/redexgen/X/GY;)V

    .line 98612
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9A;->A08(Lcom/facebook/ads/redexgen/X/9A;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 98613
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Cb;->A5q()V

    .line 98614
    :cond_2
    iget-boolean v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A03:Z

    if-eqz v3, :cond_3

    .line 98615
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/mK;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    iget-wide v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A00:J

    invoke-interface {v5, v14, v15, v3, v4}, Lcom/facebook/ads/redexgen/X/Cb;->AIM(JJ)V

    .line 98616
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A03:Z

    .line 98617
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    iget-boolean v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0C:Z

    if-nez v3, :cond_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98618
    :try_start_1
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A07:Lcom/facebook/ads/redexgen/X/3W;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/3W;->A00()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98619
    :try_start_2
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/mK;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0B:Lcom/facebook/ads/redexgen/X/Gt;

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/Cb;->AGc(Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v1

    .line 98620
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Cb;->A7S()J

    move-result-wide v6

    .line 98621
    .local v8, "currentInputPosition":J
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9A;->A01(Lcom/facebook/ads/redexgen/X/9A;)J

    move-result-wide v4

    add-long/2addr v4, v14

    cmp-long v3, v6, v4

    if-lez v3, :cond_3

    .line 98622
    move-wide v14, v6

    .line 98623
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A07:Lcom/facebook/ads/redexgen/X/3W;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/3W;->A02()Z

    .line 98624
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9A;->A04(Lcom/facebook/ads/redexgen/X/9A;)Landroid/os/Handler;

    move-result-object v4

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9A;->A0A(Lcom/facebook/ads/redexgen/X/9A;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 98625
    .end local v0
    .end local v6    # "position":J
    .end local v17    # "length":J
    .end local p0    # "extractorDataSource":Lcom/facebook/ads/redexgen/X/nl;
    .restart local v2    # "result":I
    :cond_4
    if-ne v1, v0, :cond_6

    .line 98626
    const/4 v1, 0x0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98627
    .end local v2    # "result":I
    .local v0, "result":I
    :cond_5
    :goto_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/mK;->A08:Lcom/facebook/ads/redexgen/X/9b;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/51;->A00(Lcom/facebook/ads/redexgen/X/nl;)V

    .line 98628
    goto/16 :goto_0

    .line 98629
    .end local v0    # "result":I
    .restart local v2    # "result":I
    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/mK;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cb;->A7S()J

    move-result-wide v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/mK;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v3, v4, v0

    const/4 v0, 0x3

    aget-object v4, v4, v0

    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v4, Lcom/facebook/ads/redexgen/X/mK;->A0E:[Ljava/lang/String;

    const-string v3, "OKjnlHtv3KbBLefZQYMpPe9SdH47QI1"

    const/4 v0, 0x6

    aput-object v3, v4, v0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_5

    .line 98630
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/mK;->A0B:Lcom/facebook/ads/redexgen/X/Gt;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/mK;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cb;->A7S()J

    move-result-wide v3

    iput-wide v3, v5, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    goto :goto_2

    .line 98631
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_0
    :try_start_3
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    .end local v2    # "result":I
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98632
    :catchall_0
    move-exception v5

    if-eq v1, v0, :cond_8

    .line 98633
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/mK;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cb;->A7S()J

    move-result-wide v3

    cmp-long v0, v3, v8

    if-eqz v0, :cond_8

    .line 98634
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/mK;->A0B:Lcom/facebook/ads/redexgen/X/Gt;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/mK;->A09:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cb;->A7S()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 98635
    :cond_8
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/mK;->A08:Lcom/facebook/ads/redexgen/X/9b;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/51;->A00(Lcom/facebook/ads/redexgen/X/nl;)V

    .line 98636
    throw v5

    .line 98637
    :cond_9
    return-void
.end method

.method public final ADR(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 12

    .line 98638
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A04:Z

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 98639
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:J

    .line 98640
    .local v5, "timeUs":J
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v9

    .line 98641
    .local v0, "length":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A02:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/H1;

    .line 98642
    .local v2, "icyTrackOutput":Lcom/facebook/ads/redexgen/X/H1;
    invoke-interface {v5, p1, v9}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 98643
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 98644
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/mK;->A04:Z

    .line 98645
    return-void

    .line 98646
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A0D:Lcom/facebook/ads/redexgen/X/9A;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/9A;->A02(Lcom/facebook/ads/redexgen/X/9A;Z)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mK;->A00:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_0
.end method
