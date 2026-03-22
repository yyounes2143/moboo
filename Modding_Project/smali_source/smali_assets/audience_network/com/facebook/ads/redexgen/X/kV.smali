.class public final Lcom/facebook/ads/redexgen/X/kV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Iw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/kW;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public final A08:J

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/Iv;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Iz;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3054
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jRj2ugi7SPR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MNKsBNeD8MF1tCUmeU2P5Nj3hkdjoOc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XMkmXaTlrOCX5lXmL6kh3TwHyWbdiNoj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CqZnv6WT0ufq4g7hl2oSYE9w8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bGEXSwT2dmCwLmvORXS7whQ8v"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "55313totkqX4mBMXvHmYF6PzdsDv8MD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C0ywJUyDCeWGQi9DxnjwsD3coqyGffR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BhHq3twmKlbS1H4hpApJBSGHB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kV;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kV;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Iz;JJJJZ)V
    .locals 4

    .line 92278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92279
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    cmp-long v0, p2, v2

    if-ltz v0, :cond_2

    cmp-long v0, p4, p2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 92280
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kV;->A0B:Lcom/facebook/ads/redexgen/X/Iz;

    .line 92281
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/kV;->A09:J

    .line 92282
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/kV;->A08:J

    .line 92283
    sub-long/2addr p4, p2

    cmp-long v0, p6, p4

    if-eqz v0, :cond_0

    if-eqz p10, :cond_1

    .line 92284
    :cond_0
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/kV;->A07:J

    .line 92285
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A00:I

    .line 92286
    :goto_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Iv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Iv;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    .line 92287
    return-void

    .line 92288
    :cond_1
    iput v1, p0, Lcom/facebook/ads/redexgen/X/kV;->A00:I

    goto :goto_1

    .line 92289
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/lN;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92290
    move-object/from16 v5, p0

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/kV;->A04:J

    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/kV;->A01:J

    const-wide/16 v15, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 92291
    return-wide v15

    .line 92292
    :cond_0
    move-object/from16 v8, p1

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v9

    .line 92293
    .local v2, "currentPosition":J
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A01:J

    invoke-virtual {v2, v8, v0, v1}, Lcom/facebook/ads/redexgen/X/Iv;->A04(Lcom/facebook/ads/redexgen/X/lN;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92294
    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/kV;->A04:J

    cmp-long v0, v1, v9

    if-eqz v0, :cond_1

    .line 92295
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A04:J

    return-wide v0

    .line 92296
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/kV;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92297
    :cond_2
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    const/4 v0, 0x0

    invoke-virtual {v1, v8, v0}, Lcom/facebook/ads/redexgen/X/Iv;->A05(Lcom/facebook/ads/redexgen/X/lN;Z)Z

    .line 92298
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 92299
    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/kV;->A06:J

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Iv;->A05:J

    sub-long/2addr v2, v0

    .line 92300
    .local v4, "granuleDistance":J
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Iv;->A01:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Iv;->A00:I

    add-int/2addr v6, v0

    .line 92301
    .local v8, "pageSize":I
    const-wide/16 v13, 0x0

    cmp-long v0, v13, v2

    if-gtz v0, :cond_3

    const-wide/32 v11, 0x11940

    cmp-long v0, v2, v11

    if-gez v0, :cond_3

    .line 92302
    return-wide v15

    .line 92303
    :cond_3
    cmp-long v0, v2, v13

    if-gez v0, :cond_4

    .line 92304
    iput-wide v9, v5, Lcom/facebook/ads/redexgen/X/kV;->A01:J

    .line 92305
    iget-object v7, v5, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    sget-object v4, Lcom/facebook/ads/redexgen/X/kV;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v4, Lcom/facebook/ads/redexgen/X/kV;->A0D:[Ljava/lang/String;

    const-string v1, "rTnMeKP9Ntef56gYj2I82A9Og"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "Ns8cmH2a0bzEbJPPC1zDKlbsv"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/Iv;->A05:J

    iput-wide v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A02:J

    .line 92306
    :goto_0
    iget-wide v9, v5, Lcom/facebook/ads/redexgen/X/kV;->A01:J

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A04:J

    sub-long/2addr v9, v0

    const-wide/32 v11, 0x186a0

    cmp-long v0, v9, v11

    if-gez v0, :cond_5

    .line 92307
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A04:J

    iput-wide v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A01:J

    .line 92308
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A04:J

    return-wide v0

    .line 92309
    :cond_4
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v9

    int-to-long v0, v6

    add-long/2addr v9, v0

    iput-wide v9, v5, Lcom/facebook/ads/redexgen/X/kV;->A04:J

    .line 92310
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Iv;->A05:J

    iput-wide v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A05:J

    goto :goto_0

    .line 92311
    :cond_5
    int-to-long v6, v6

    cmp-long v0, v2, v13

    if-gtz v0, :cond_6

    const-wide/16 v0, 0x2

    :goto_1
    mul-long/2addr v6, v0

    .line 92312
    .local v6, "offset":J
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v8

    sub-long/2addr v8, v6

    iget-wide v6, v5, Lcom/facebook/ads/redexgen/X/kV;->A01:J

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A04:J

    sub-long/2addr v6, v0

    mul-long/2addr v6, v2

    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/kV;->A02:J

    .end local v2    # "currentPosition":J
    .local v15, "currentPosition":J
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/kV;->A05:J

    sub-long/2addr v2, v0

    div-long/2addr v6, v2

    add-long/2addr v8, v6

    .line 92313
    .local v9, "nextPosition":J
    iget-wide v10, v5, Lcom/facebook/ads/redexgen/X/kV;->A04:J

    iget-wide v12, v5, Lcom/facebook/ads/redexgen/X/kV;->A01:J

    const-wide/16 v0, 0x1

    sub-long/2addr v12, v0

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/4a;->A0T(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 92314
    :cond_6
    const-wide/16 v0, 0x1

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/lN;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iv;->A02()V

    .line 92316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Iv;->A03(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92317
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Iv;->A05(Lcom/facebook/ads/redexgen/X/lN;Z)Z

    .line 92318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Iv;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Iv;->A00:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 92319
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    sget-object v2, Lcom/facebook/ads/redexgen/X/kV;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/kV;->A0D:[Ljava/lang/String;

    const-string v1, "I2mhjjmoE8ZJ2Dg0LzbNmT9WC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "IEpLWq2gVTEx0SVSUh2piystZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/Iv;->A05:J

    .line 92320
    .local v0, "granulePosition":J
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/Iv;->A04:I

    const/4 v0, 0x4

    and-int/2addr v3, v0

    if-eq v3, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    .line 92321
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Iv;->A03(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92322
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v5

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/kV;->A08:J

    cmp-long v0, v5, v3

    if-gez v0, :cond_4

    .line 92323
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    const/4 v0, 0x1

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/Iv;->A05(Lcom/facebook/ads/redexgen/X/lN;Z)Z

    move-result v0

    .line 92324
    .local v2, "hasPopulated":Z
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    sget-object v4, Lcom/facebook/ads/redexgen/X/kV;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v3, v4, v0

    const/4 v0, 0x5

    aget-object v0, v4, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/kV;->A0D:[Ljava/lang/String;

    const-string v3, "1J9QEDZvjIULKx6bD2w0xEMzJBfvilpU"

    const/4 v0, 0x2

    aput-object v3, v4, v0

    iget v3, v5, Lcom/facebook/ads/redexgen/X/Iv;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Iv;->A00:I

    add-int/2addr v3, v0

    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/GZ;->A02(Lcom/facebook/ads/redexgen/X/lN;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 92325
    .restart local v2    # "hasPopulated":Z
    :cond_2
    return-wide v1

    .line 92326
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Iv;->A05:J

    .line 92327
    .end local v2    # "hasPopulated":Z
    goto :goto_0

    .line 92328
    .end local v2
    :cond_4
    return-wide v1

    .line 92329
    .end local v0    # "granulePosition":J
    :cond_5
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/kV;)J
    .locals 1

    .line 92330
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A09:J

    return-wide v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/kV;)J
    .locals 1

    .line 92331
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A08:J

    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/kV;)J
    .locals 1

    .line 92332
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A07:J

    return-wide v0
.end method

.method private final A05()Lcom/facebook/ads/redexgen/X/kW;
    .locals 6

    .line 92333
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/kV;->A07:J

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/kW;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/kW;-><init>(Lcom/facebook/ads/redexgen/X/kV;Lcom/facebook/ads/redexgen/X/It;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/kV;)Lcom/facebook/ads/redexgen/X/Iz;
    .locals 0

    .line 92334
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0B:Lcom/facebook/ads/redexgen/X/Iz;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kV;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x53

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kV;->A0C:[B

    return-void

    :array_0
    .array-data 1
        -0x44t
        -0x23t
        -0x72t
        -0x23t
        -0x2bt
        -0x2bt
        -0x72t
        -0x22t
        -0x31t
        -0x2bt
        -0x2dt
        -0x72t
        -0x2ft
        -0x31t
        -0x24t
        -0x72t
        -0x30t
        -0x2dt
        -0x72t
        -0x2ct
        -0x23t
        -0x1dt
        -0x24t
        -0x2et
        -0x64t
    .end array-data
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/lN;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92335
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Iv;->A03(Lcom/facebook/ads/redexgen/X/lN;)Z

    .line 92336
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Iv;->A05(Lcom/facebook/ads/redexgen/X/lN;Z)Z

    .line 92337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Iv;->A05:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/kV;->A06:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 92338
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 92339
    return-void

    .line 92340
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Iv;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Iv;->A00:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 92341
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A04:J

    .line 92342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A0A:Lcom/facebook/ads/redexgen/X/Iv;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Iv;->A05:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A05:J

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A5R()Lcom/facebook/ads/redexgen/X/Gw;
    .locals 1

    .line 92343
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kV;->A05()Lcom/facebook/ads/redexgen/X/kW;

    move-result-object v0

    return-object v0
.end method

.method public final AGd(Lcom/facebook/ads/redexgen/X/lN;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92344
    iget v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A00:I

    const-wide/16 v6, -0x1

    const/4 v3, 0x4

    packed-switch v0, :pswitch_data_0

    .line 92345
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 92346
    :pswitch_0
    return-wide v6

    .line 92347
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kV;->A00(Lcom/facebook/ads/redexgen/X/lN;)J

    move-result-wide v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/kV;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 92348
    .local v4, "position":J
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/kV;->A0D:[Ljava/lang/String;

    const-string v1, "EIP7mTXqLgr9aPVawFNgKKAemnhenv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 92349
    return-wide v4

    .line 92350
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A00:I

    .line 92351
    .end local v4    # "position":J
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kV;->A09(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 92352
    iput v3, p0, Lcom/facebook/ads/redexgen/X/kV;->A00:I

    .line 92353
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kV;->A05:J

    const-wide/16 v0, 0x2

    add-long/2addr v2, v0

    neg-long v0, v2

    return-wide v0

    .line 92354
    :pswitch_3
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A03:J

    .line 92355
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A00:I

    .line 92356
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/kV;->A08:J

    const-wide/32 v0, 0xff1b

    sub-long/2addr v4, v0

    .line 92357
    .local v0, "lastPageSearchPosition":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/kV;->A03:J

    cmp-long v0, v4, v1

    if-lez v0, :cond_2

    .line 92358
    return-wide v4

    .line 92359
    .end local v0    # "lastPageSearchPosition":J
    :cond_2
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kV;->A01(Lcom/facebook/ads/redexgen/X/lN;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A07:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/kV;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 92360
    sget-object v2, Lcom/facebook/ads/redexgen/X/kV;->A0D:[Ljava/lang/String;

    const-string v1, "Q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/kV;->A00:I

    .line 92361
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A03:J

    return-wide v0

    .line 92362
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/kV;->A0D:[Ljava/lang/String;

    const-string v1, "zPL0M1I0YHefEI7ePcrxVR039vnXiGQX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/kV;->A00:I

    .line 92363
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A03:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final AJR(J)V
    .locals 6

    .line 92364
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/kV;->A07:J

    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    const-wide/16 v2, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4a;->A0T(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A06:J

    .line 92365
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A00:I

    .line 92366
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A09:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A04:J

    .line 92367
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A08:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A01:J

    .line 92368
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A05:J

    .line 92369
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A07:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A02:J

    .line 92370
    return-void
.end method
