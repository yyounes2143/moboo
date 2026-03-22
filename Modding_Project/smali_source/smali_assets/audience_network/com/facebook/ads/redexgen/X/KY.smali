.class public final Lcom/facebook/ads/redexgen/X/KY;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:I

.field public final A07:Lcom/facebook/ads/redexgen/X/4J;

.field public final A08:Lcom/facebook/ads/redexgen/X/4R;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 953
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YKrx4tQL3HFlbX0m6cI7YSMmMtJDnVWt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EhNKRydGslBNjHwz4Qke8RkUgCBaonuc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lVt1vjccWtobRJMyEDSjQomkweVugX5V"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "X5vaF2wJa8umjlLI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "q53FR06vPOBUDZ08SG0Q3HmIsvEwqM01"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "eDYPuZuNQVkkkUOb40HZTr2GxKWyUyQ4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7DZ3geXrHcZNODb56yin0lXQD6ovjT1O"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oKDHpDD8v386AT9biWd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KY;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KY;->A06()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 49298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49299
    iput p1, p0, Lcom/facebook/ads/redexgen/X/KY;->A06:I

    .line 49300
    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4R;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/4R;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A08:Lcom/facebook/ads/redexgen/X/4R;

    .line 49301
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A01:J

    .line 49302
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A02:J

    .line 49303
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A00:J

    .line 49304
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    .line 49305
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/lN;)I
    .locals 2

    .line 49306
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A07:[B

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0i([B)V

    .line 49307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A03:Z

    .line 49308
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 49309
    const/4 v0, 0x0

    return v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49310
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A06:I

    int-to-long v2, v0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 49311
    .local v1, "bytesToSearch":I
    const/4 v6, 0x0

    .line 49312
    .local v0, "searchStartPosition":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v4

    int-to-long v0, v6

    const/4 v3, 0x1

    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 49313
    int-to-long v0, v6

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 49314
    return v3

    .line 49315
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 49316
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 49317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v7}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 49318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {p0, v0, p3}, Lcom/facebook/ads/redexgen/X/KY;->A03(Lcom/facebook/ads/redexgen/X/4J;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A01:J

    .line 49319
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/KY;->A04:Z

    .line 49320
    return v2
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49321
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v0

    .line 49322
    .local v0, "inputLength":J
    iget v2, p0, Lcom/facebook/ads/redexgen/X/KY;->A06:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v4, v2

    .line 49323
    .local v3, "bytesToSearch":I
    int-to-long v2, v4

    sub-long/2addr v0, v2

    .line 49324
    .local v4, "searchStartPosition":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v5

    const/4 v3, 0x1

    cmp-long v2, v5, v0

    if-eqz v2, :cond_0

    .line 49325
    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 49326
    return v3

    .line 49327
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 49328
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 49329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v4}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 49330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A07:Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {p0, v0, p3}, Lcom/facebook/ads/redexgen/X/KY;->A04(Lcom/facebook/ads/redexgen/X/4J;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A02:J

    .line 49331
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/KY;->A05:Z

    .line 49332
    return v2
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/4J;I)J
    .locals 7

    .line 49333
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v6

    .line 49334
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v5

    .line 49335
    .local v1, "searchEndPosition":I
    .local v2, "searchPosition":I
    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v6, v5, :cond_2

    .line 49336
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    aget-byte v1, v0, v6

    const/16 v0, 0x47

    if-eq v1, v0, :cond_1

    .line 49337
    .end local v5
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 49338
    :cond_1
    invoke-static {p1, v6, p2}, Lcom/facebook/ads/redexgen/X/Kg;->A01(Lcom/facebook/ads/redexgen/X/4J;II)J

    move-result-wide v1

    .line 49339
    .local v5, "pcrValue":J
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 49340
    return-wide v1

    .line 49341
    .end local v2    # "searchPosition":I
    :cond_2
    return-wide v3
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/4J;I)J
    .locals 8

    .line 49342
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v7

    .line 49343
    .local v0, "searchStartPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v6

    .line 49344
    .local v1, "searchEndPosition":I
    add-int/lit16 v5, v6, -0xbc

    .line 49345
    .local v2, "searchPosition":I
    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v5, v7, :cond_2

    .line 49346
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    .line 49347
    invoke-static {v0, v7, v6, v5}, Lcom/facebook/ads/redexgen/X/Kg;->A03([BIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49348
    .end local v5
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 49349
    :cond_1
    invoke-static {p1, v5, p2}, Lcom/facebook/ads/redexgen/X/Kg;->A01(Lcom/facebook/ads/redexgen/X/4J;II)J

    move-result-wide v1

    .line 49350
    .local v5, "pcrValue":J
    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 49351
    return-wide v1

    .line 49352
    .end local v2    # "searchPosition":I
    :cond_2
    return-wide v3
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KY;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KY;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x59t
        -0x67t
        -0x32t
        -0x14t
        -0x1et
        -0x19t
        -0x20t
        -0x67t
        -0x33t
        -0x3et
        -0x3at
        -0x42t
        -0x28t
        -0x32t
        -0x39t
        -0x34t
        -0x42t
        -0x33t
        -0x67t
        -0x1et
        -0x19t
        -0x14t
        -0x13t
        -0x22t
        -0x26t
        -0x23t
        -0x59t
        -0x77t
        -0x52t
        -0x4at
        -0x5ft
        -0x54t
        -0x57t
        -0x5ct
        0x60t
        -0x5ct
        -0x4bt
        -0x4et
        -0x5ft
        -0x4ct
        -0x57t
        -0x51t
        -0x52t
        0x7at
        0x60t
        -0x5ft
        -0x40t
        -0x6ft
        -0x3et
        -0x41t
        -0x52t
        -0x3ft
        -0x4at
        -0x44t
        -0x45t
        -0x61t
        -0x4et
        -0x52t
        -0x4ft
        -0x4et
        -0x41t
    .end array-data
.end method


# virtual methods
.method public final A07(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49353
    if-gtz p3, :cond_0

    .line 49354
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KY;->A00(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v0

    return v0

    .line 49355
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A05:Z

    if-nez v0, :cond_1

    .line 49356
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KY;->A02(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;I)I

    move-result v0

    return v0

    .line 49357
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KY;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 49358
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KY;->A00(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v0

    return v0

    .line 49359
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A04:Z

    if-nez v0, :cond_4

    .line 49360
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KY;->A01(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;I)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/KY;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KY;->A0A:[Ljava/lang/String;

    const-string v1, "U4EwafF7WjzJM20D4nSEnM6oLnkPTMDI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49361
    :cond_4
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KY;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    .line 49362
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KY;->A00(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v0

    return v0

    .line 49363
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A08:Lcom/facebook/ads/redexgen/X/4R;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KY;->A01:J

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/4R;->A06(J)J

    move-result-wide v5

    .line 49364
    .local v0, "minPcrPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A08:Lcom/facebook/ads/redexgen/X/4R;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KY;->A02:J

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/4R;->A06(J)J

    move-result-wide v3

    .line 49365
    .local v4, "maxPcrPositionUs":J
    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/KY;->A00:J

    .line 49366
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/KY;->A00:J

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-gez v0, :cond_6

    .line 49367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1b

    const/16 v3, 0x12

    const/16 v0, 0x2f

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KY;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KY;->A00:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/16 v0, 0x68

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KY;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x2d

    const/16 v3, 0x10

    const/16 v0, 0x3c

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KY;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 49368
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/KY;->A00:J

    .line 49369
    :cond_6
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KY;->A00(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v0

    return v0
.end method

.method public final A08()J
    .locals 2

    .line 49370
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A00:J

    return-wide v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/4R;
    .locals 1

    .line 49371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A08:Lcom/facebook/ads/redexgen/X/4R;

    return-object v0
.end method

.method public final A0A()Z
    .locals 1

    .line 49372
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KY;->A03:Z

    return v0
.end method
