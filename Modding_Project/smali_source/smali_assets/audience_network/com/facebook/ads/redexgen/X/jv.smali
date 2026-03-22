.class public final Lcom/facebook/ads/redexgen/X/jv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/ts/AdtsExtractor$Flags;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Lcom/facebook/ads/redexgen/X/Gb;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/GY;

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public final A07:I

.field public final A08:Lcom/facebook/ads/redexgen/X/4I;

.field public final A09:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0A:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0B:Lcom/facebook/ads/redexgen/X/ju;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3032
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Jp9jYTsvX0byW8PsTh8WCsi4kS5THTDZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "u9JmQf2RUpXkbwKGcH1ldYLO1OaAnoG0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zVRI5h7vLNN08I5W1BFePAuDidXDjkLB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GupX0AjjIH906l5opBlPCY0Mrv7mkKOY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YLyM9aD6SKjNKerJ1EloHyT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oAaNr5RuznTKLecZmpLN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Q5WjYzMQ2NaCiwYPtyRn68zXUmvTXGHf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bi8dQH0GL9bk2fQxVP7KQMQdOg6RbrhP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jv;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jv;->A04()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/jw;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/jw;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/jv;->A0E:Lcom/facebook/ads/redexgen/X/Gb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jv;-><init>(I)V

    .line 91331
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 91332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91333
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 91334
    or-int/lit8 p1, p1, 0x1

    .line 91335
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/jv;->A07:I

    .line 91336
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ju;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ju;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0B:Lcom/facebook/ads/redexgen/X/ju;

    .line 91337
    const/16 v1, 0x800

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A09:Lcom/facebook/ads/redexgen/X/4J;

    .line 91338
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A00:I

    .line 91339
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A01:J

    .line 91340
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    .line 91341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A08:Lcom/facebook/ads/redexgen/X/4I;

    .line 91342
    return-void
.end method

.method public static A00(IJ)I
    .locals 3

    .line 91343
    int-to-long v2, p0

    const-wide/16 v0, 0x8

    mul-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    div-long/2addr v2, p1

    long-to-int v0, v2

    return v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/lN;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91344
    const/4 v5, 0x0

    .line 91345
    .local v0, "firstFramePosition":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 91346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0K()I

    move-result v1

    const v0, 0x494433

    if-eq v1, v0, :cond_1

    .line 91348
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 91349
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 91350
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/jv;->A01:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 91351
    int-to-long v0, v5

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A01:J

    .line 91352
    :cond_0
    return v5

    .line 91353
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 91354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0H()I

    move-result v1

    .line 91355
    .local v1, "length":I
    add-int/lit8 v0, v1, 0xa

    add-int/2addr v5, v0

    .line 91356
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 91357
    .end local v1    # "length":I
    goto :goto_0
.end method

.method private A02(JZ)Lcom/facebook/ads/redexgen/X/lS;
    .locals 8

    .line 91358
    iget v2, p0, Lcom/facebook/ads/redexgen/X/jv;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0B:Lcom/facebook/ads/redexgen/X/ju;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ju;->A0J()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/jv;->A00(IJ)I

    move-result v5

    .line 91359
    .local v0, "bitrate":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/lS;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/jv;->A01:J

    iget v6, p0, Lcom/facebook/ads/redexgen/X/jv;->A00:I

    move v7, p3

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/lS;-><init>(JJIIZ)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jv;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jv;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x27t
        0xbt
        0x6t
        0xct
        0x5t
        0x18t
        0x7t
        0xft
        0xet
        0x4at
        0x2bt
        0x2et
        0x3et
        0x39t
        0x4at
        0x19t
        0x1et
        0x18t
        0xft
        0xbt
        0x7t
    .end array-data
.end method

.method private A05(JZ)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 91360
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A05:Z

    if-eqz v0, :cond_0

    .line 91361
    return-void

    .line 91362
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A07:I

    const/4 v5, 0x1

    and-int/2addr v0, v5

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A00:I

    if-lez v0, :cond_1

    const/4 v7, 0x1

    .line 91363
    .local v0, "useConstantBitrateSeeking":Z
    :goto_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v4, Lcom/facebook/ads/redexgen/X/jv;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v3, v4, v0

    const/4 v0, 0x3

    aget-object v4, v4, v0

    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 91364
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/jv;->A0D:[Ljava/lang/String;

    const-string v3, "wRCLGMQDqXZHrYOEljE7cvu367IJP6qz"

    const/4 v0, 0x0

    aput-object v3, v4, v0

    const-string v3, "FofxBB8LpAk5nYyyotl0uMBanfu6Lq1A"

    const/4 v0, 0x1

    aput-object v3, v4, v0

    if-eqz v7, :cond_3

    .line 91365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0B:Lcom/facebook/ads/redexgen/X/ju;

    .line 91366
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ju;->A0J()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    .line 91367
    return-void

    .line 91368
    :cond_3
    if-eqz v7, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0B:Lcom/facebook/ads/redexgen/X/ju;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ju;->A0J()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    .line 91369
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jv;->A03:Lcom/facebook/ads/redexgen/X/GY;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A07:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/4 v6, 0x1

    .line 91370
    :cond_4
    invoke-direct {p0, p1, p2, v6}, Lcom/facebook/ads/redexgen/X/jv;->A02(JZ)Lcom/facebook/ads/redexgen/X/lS;

    move-result-object v0

    .line 91371
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 91372
    :goto_1
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/jv;->A05:Z

    .line 91373
    return-void

    .line 91374
    :cond_5
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jv;->A03:Lcom/facebook/ads/redexgen/X/GY;

    new-instance v0, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lI;-><init>(J)V

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    goto :goto_1
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/lN;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91375
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A04:Z

    if-eqz v0, :cond_0

    .line 91376
    return-void

    .line 91377
    :cond_0
    const/4 v7, -0x1

    iput v7, p0, Lcom/facebook/ads/redexgen/X/jv;->A00:I

    .line 91378
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 91379
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 91380
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jv;->A01(Lcom/facebook/ads/redexgen/X/lN;)I

    .line 91381
    :cond_1
    const/4 v6, 0x0

    .line 91382
    .local v1, "numValidFrames":I
    const-wide/16 v3, 0x0

    .line 91383
    .local v2, "totalValidFramesSize":J
    :cond_2
    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    .line 91384
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    .line 91385
    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-interface {p1, v1, v2, v0, v5}, Lcom/facebook/ads/redexgen/X/lN;->AGA([BIIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    .line 91388
    .local v5, "syncBytes":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ju;->A0F(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 91389
    const/4 v6, 0x0

    .line 91390
    goto :goto_0

    .line 91391
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    .line 91392
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    .line 91393
    const/4 v0, 0x4

    invoke-interface {p1, v1, v2, v0, v5}, Lcom/facebook/ads/redexgen/X/lN;->AGA([BIIZ)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 91394
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jv;->A08:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 91395
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jv;->A08:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 91396
    .local v6, "currentFrameSize":I
    const/4 v9, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/jv;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/jv;->A0D:[Ljava/lang/String;

    const-string v1, "EiGF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-le v8, v9, :cond_8

    .line 91397
    int-to-long v0, v8

    add-long/2addr v3, v0

    .line 91398
    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x3e8

    if-ne v6, v0, :cond_7

    .line 91399
    :catch_0
    :cond_5
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 91400
    if-lez v6, :cond_6

    .line 91401
    int-to-long v0, v6

    div-long/2addr v3, v0

    long-to-int v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A00:I

    .line 91402
    :goto_1
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/jv;->A04:Z

    .line 91403
    return-void

    .line 91404
    :cond_6
    iput v7, p0, Lcom/facebook/ads/redexgen/X/jv;->A00:I

    goto :goto_1

    .line 91405
    :cond_7
    :try_start_1
    add-int/lit8 v0, v8, -0x6

    invoke-interface {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/lN;->A40(IZ)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 91406
    .restart local v5    # "syncBytes":I
    .restart local v6    # "currentFrameSize":I
    :cond_8
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/jv;->A04:Z

    .line 91407
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jv;->A03(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    .end local v1    # "numValidFrames":I
    .end local v2    # "totalValidFramesSize":J
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/jv;
    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91408
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A07()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 91409
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/jv;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/jv;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 4

    .line 91410
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jv;->A03:Lcom/facebook/ads/redexgen/X/GY;

    .line 91411
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jv;->A0B:Lcom/facebook/ads/redexgen/X/ju;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V

    .line 91412
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 91413
    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A03:Lcom/facebook/ads/redexgen/X/GY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91415
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v2

    .line 91416
    .local v0, "inputLength":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A07:I

    and-int/lit8 v0, v0, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A07:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_3

    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 91417
    .local v2, "canUseConstantBitrateSeeking":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 91418
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jv;->A06(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 91419
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A09:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/16 v0, 0x800

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/lN;->read([BII)I

    move-result v5

    .line 91420
    .local v5, "bytesRead":I
    const/4 v1, -0x1

    if-ne v5, v1, :cond_2

    const/4 v0, 0x1

    .line 91421
    .local v7, "readEndOfStream":Z
    :goto_1
    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/jv;->A05(JZ)V

    .line 91422
    if-eqz v0, :cond_4

    .line 91423
    return v1

    .line 91424
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 91425
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 91426
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A09:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A09:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 91428
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A06:Z

    if-nez v0, :cond_5

    .line 91429
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jv;->A0B:Lcom/facebook/ads/redexgen/X/ju;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/jv;->A02:J

    const/4 v0, 0x4

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/ju;->AG6(JI)V

    .line 91430
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/jv;->A06:Z

    .line 91431
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jv;->A0B:Lcom/facebook/ads/redexgen/X/ju;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A09:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ju;->A52(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 91432
    return v4
.end method

.method public final AGr()V
    .locals 0

    .line 91433
    return-void
.end method

.method public final AIM(JJ)V
    .locals 1

    .line 91434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A06:Z

    .line 91435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0B:Lcom/facebook/ads/redexgen/X/ju;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ju;->AIL()V

    .line 91436
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/jv;->A02:J

    .line 91437
    return-void
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91438
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jv;->A01(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v9

    .line 91439
    .local v0, "startPosition":I
    move v6, v9

    .line 91440
    .local v1, "headerPosition":I
    const/4 v5, 0x0

    .line 91441
    .local v2, "totalValidFramesSize":I
    const/4 v4, 0x0

    .line 91442
    .local v3, "validFramesCount":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 91443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v0

    .line 91445
    .local v4, "syncBytes":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ju;->A0F(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91446
    const/4 v4, 0x0

    .line 91447
    const/4 v5, 0x0

    .line 91448
    add-int/lit8 v6, v6, 0x1

    .line 91449
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 91450
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 91451
    .end local v5
    :goto_0
    sub-int v1, v6, v9

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_0

    .line 91452
    return v3

    .line 91453
    :cond_1
    add-int/lit8 v4, v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/jv;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/jv;->A0D:[Ljava/lang/String;

    const-string v1, "vlF0iwwjiK26GT4HTqGcAOiXXpcsHbpg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x4

    if-lt v4, v0, :cond_3

    const/16 v1, 0xbc

    if-le v5, v1, :cond_3

    .line 91454
    const/4 v0, 0x1

    return v0

    .line 91455
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jv;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 91456
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jv;->A08:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 91457
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/jv;->A08:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v7, 0xd

    sget-object v1, Lcom/facebook/ads/redexgen/X/jv;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/jv;->A0D:[Ljava/lang/String;

    const-string v1, "LrBCAcAc8FKB1NeW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 91458
    .local v5, "frameSize":I
    const/4 v0, 0x6

    if-gt v1, v0, :cond_4

    .line 91459
    const/4 v4, 0x0

    .line 91460
    const/4 v5, 0x0

    .line 91461
    add-int/lit8 v6, v6, 0x1

    .line 91462
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 91463
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    goto :goto_0

    .line 91464
    :cond_4
    add-int/lit8 v0, v1, -0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 91465
    add-int/2addr v5, v1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
