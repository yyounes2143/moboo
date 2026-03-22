.class public final Lcom/facebook/ads/redexgen/X/7n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/kk;


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:J

.field public final A05:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 446
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QubeI9WU03qBZcNvE4IUkWvlw0NRrBK6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "F1d068LLA73yClDAGmhas6o"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9YpbVeLOd0f6m"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7Ycu3nAZXESMUbUrutcG9271koISuOhT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QjcyZL4t35rbWMpE5hp6oYgD7sVhkS0D"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "M48I8dHdEQTg0rHaHaNT6qI1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cVfJzOsNywAlxLknvQSr1dDTMZn5TIAU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kJeh17rnzHgOQ2HfO7oDpw4wPPnH7lFe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7n;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7n;->A03()V

    return-void
.end method

.method public constructor <init>(JIJ)V
    .locals 9

    .line 22277
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v4, p4

    move v3, p3

    move-wide v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/7n;-><init>(JIJJ[J)V

    .line 22278
    return-void
.end method

.method public constructor <init>(JIJJ[J)V
    .locals 3

    .line 22279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22280
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/7n;->A03:J

    .line 22281
    iput p3, p0, Lcom/facebook/ads/redexgen/X/7n;->A00:I

    .line 22282
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/7n;->A04:J

    .line 22283
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/7n;->A05:[J

    .line 22284
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/7n;->A02:J

    .line 22285
    const-wide/16 v1, -0x1

    cmp-long v0, p6, v1

    if-nez v0, :cond_0

    :goto_0
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/7n;->A01:J

    .line 22286
    return-void

    .line 22287
    :cond_0
    add-long v1, p1, p6

    goto :goto_0
.end method

.method private A00(I)J
    .locals 4

    .line 22288
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/7n;->A04:J

    int-to-long v0, p1

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static A01(JJLcom/facebook/ads/redexgen/X/Gl;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/7n;
    .locals 13

    .line 22289
    move-object/from16 v2, p4

    iget v5, v2, Lcom/facebook/ads/redexgen/X/Gl;->A04:I

    .line 22290
    .local v12, "samplesPerFrame":I
    iget v4, v2, Lcom/facebook/ads/redexgen/X/Gl;->A03:I

    .line 22291
    .local p0, "sampleRate":I
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v3

    .line 22292
    .local p1, "flags":I
    and-int/lit8 v1, v3, 0x1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v0

    .local p2, "frameCount":I
    if-nez v0, :cond_1

    .line 22293
    .end local p2    # "frameCount":I
    .end local p3
    .end local p5    # null:Lcom/facebook/ads/redexgen/X/4J;
    .end local p8
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 22294
    :cond_1
    int-to-long v6, v0

    int-to-long v8, v5

    const-wide/32 v0, 0xf4240

    mul-long/2addr v8, v0

    int-to-long v10, v4

    .line 22295
    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v8

    .line 22296
    .local p3, "durationUs":J
    and-int/lit8 v1, v3, 0x6

    const/4 v0, 0x6

    move-wide v5, p2

    if-eq v1, v0, :cond_2

    .line 22297
    new-instance v4, Lcom/facebook/ads/redexgen/X/7n;

    iget v7, v2, Lcom/facebook/ads/redexgen/X/Gl;->A02:I

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/7n;-><init>(JIJ)V

    return-object v4

    .line 22298
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v10

    .line 22299
    .local p5, "dataSize":J
    const/16 v4, 0x64

    new-array v12, v4, [J

    .line 22300
    .local v10, "tableOfContents":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 22301
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v12, v3

    .line 22302
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22303
    .end local v3    # "i":I
    :cond_3
    const-wide/16 v3, -0x1

    cmp-long v0, p0, v3

    if-eqz v0, :cond_4

    add-long v3, v5, v10

    cmp-long v0, p0, v3

    if-eqz v0, :cond_4

    .line 22304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    const/16 v1, 0x19

    const/16 v0, 0x69

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/7n;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x28

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/7n;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-long v0, v5, v10

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x1b

    const/16 v1, 0xa

    const/16 v0, 0x4e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/7n;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 22305
    :cond_4
    new-instance v4, Lcom/facebook/ads/redexgen/X/7n;

    iget v7, v2, Lcom/facebook/ads/redexgen/X/Gl;->A02:I

    .end local v10    # "tableOfContents":[J
    .local p8, "tableOfContents":[J
    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/7n;-><init>(JIJJ[J)V

    return-object v4
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/7n;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7n;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/7n;->A07:[Ljava/lang/String;

    const-string v1, "La6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1e

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7n;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x72t
        0x66t
        -0x21t
        -0x30t
        -0x2bt
        -0x32t
        -0x59t
        -0x15t
        -0x18t
        -0x5t
        -0x18t
        -0x59t
        -0x6t
        -0x10t
        0x1t
        -0x14t
        -0x59t
        -0xct
        -0x10t
        -0x6t
        -0xct
        -0x18t
        -0x5t
        -0x16t
        -0x11t
        -0x3ft
        -0x59t
        -0x3ct
        -0x2bt
        -0x26t
        -0x2dt
        -0x41t
        -0x2ft
        -0x2ft
        -0x29t
        -0x2ft
        -0x22t
    .end array-data
.end method


# virtual methods
.method public final A7b()J
    .locals 2

    .line 22306
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7n;->A01:J

    return-wide v0
.end method

.method public final A7l()J
    .locals 2

    .line 22307
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7n;->A04:J

    return-wide v0
.end method

.method public final A8t(J)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 14

    .line 22308
    move-object v4, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7n;->AAa()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22309
    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/7n;->A03:J

    iget v0, v4, Lcom/facebook/ads/redexgen/X/7n;->A00:I

    int-to-long v0, v0

    add-long/2addr v5, v0

    const-wide/16 v2, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 22310
    :cond_0
    const-wide/16 v7, 0x0

    iget-wide v9, v4, Lcom/facebook/ads/redexgen/X/7n;->A04:J

    move-wide v5, p1

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/4a;->A0T(JJJ)J

    move-result-wide v2

    .line 22311
    .end local p4
    .local v1, "timeUs":J
    long-to-double v7, v2

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/7n;->A04:J

    long-to-double v0, v5

    div-double/2addr v7, v0

    .line 22312
    .local v3, "percent":D
    const-wide/16 v5, 0x0

    const-wide/high16 v12, 0x4070000000000000L    # 256.0

    cmpg-double v0, v7, v5

    if-gtz v0, :cond_1

    .line 22313
    const-wide/16 v9, 0x0

    .line 22314
    .local v5, "scaledPosition":D
    .end local v6
    .end local v7
    .end local v11
    .end local v13
    .local v5, "scaledPosition":D
    :goto_0
    div-double/2addr v9, v12

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/7n;->A02:J

    long-to-double v0, v5

    mul-double/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    .line 22315
    .local v7, "positionOffset":J
    iget v0, v4, Lcom/facebook/ads/redexgen/X/7n;->A00:I

    int-to-long v7, v0

    iget-wide v9, v4, Lcom/facebook/ads/redexgen/X/7n;->A02:J

    const-wide/16 v0, 0x1

    sub-long/2addr v9, v0

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/4a;->A0T(JJJ)J

    move-result-wide v0

    .line 22316
    iget-wide v4, v4, Lcom/facebook/ads/redexgen/X/7n;->A03:J

    add-long/2addr v4, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 22317
    .end local v5    # "scaledPosition":D
    :cond_1
    cmpl-double v0, v7, v9

    if-ltz v0, :cond_2

    .line 22318
    const-wide/high16 v9, 0x4070000000000000L    # 256.0

    .restart local v5    # "scaledPosition":D
    goto :goto_0

    .line 22319
    .end local v5    # "scaledPosition":D
    :cond_2
    double-to-int v11, v7

    .line 22320
    .local v5, "prevTableIndex":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/7n;->A05:[J

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    .line 22321
    .local v6, "tableOfContents":[J
    aget-wide v0, v9, v11

    long-to-double v5, v0

    .line 22322
    .local v7, "prevScaledPosition":D
    const/16 v0, 0x63

    if-ne v11, v0, :cond_3

    move-wide v9, v12

    .line 22323
    .local v11, "nextScaledPosition":D
    :goto_1
    int-to-double v0, v11

    sub-double/2addr v7, v0

    .line 22324
    .local v13, "interpolateFraction":D
    sub-double/2addr v9, v5

    mul-double/2addr v9, v7

    add-double/2addr v9, v5

    goto :goto_0

    .line 22325
    :cond_3
    add-int/lit8 v0, v11, 0x1

    aget-wide v0, v9, v0

    long-to-double v9, v0

    goto :goto_1
.end method

.method public final A99(J)J
    .locals 14

    .line 22326
    move-object v5, p0

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/7n;->A03:J

    sub-long/2addr p1, v0

    .line 22327
    .local v1, "positionOffset":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7n;->AAa()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v5, Lcom/facebook/ads/redexgen/X/7n;->A00:I

    int-to-long v1, v0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_1

    .line 22328
    .end local v1    # "positionOffset":J
    .restart local p1    # null:J
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 22329
    :cond_1
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7n;->A05:[J

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 22330
    .local v3, "tableOfContents":[J
    long-to-double v6, p1

    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v0

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/7n;->A02:J

    long-to-double v0, v3

    div-double/2addr v6, v0

    .line 22331
    .local v4, "scaledPosition":D
    double-to-long v3, v6

    const/4 v0, 0x1

    invoke-static {v2, v3, v4, v0, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0L([JJZZ)I

    move-result v1

    .line 22332
    .local v6, "prevTableIndex":I
    invoke-direct {v5, v1}, Lcom/facebook/ads/redexgen/X/7n;->A00(I)J

    move-result-wide v12

    .line 22333
    .local v7, "prevTimeUs":J
    aget-wide v8, v2, v1

    .line 22334
    .local v9, "prevScaledPosition":J
    add-int/lit8 v0, v1, 0x1

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/7n;->A00(I)J

    move-result-wide v4

    .line 22335
    .local v11, "nextTimeUs":J
    const/16 v0, 0x63

    if-ne v1, v0, :cond_3

    const-wide/16 v2, 0x100

    .line 22336
    .local v13, "nextScaledPosition":J
    :goto_0
    cmp-long v11, v8, v2

    sget-object v10, Lcom/facebook/ads/redexgen/X/7n;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v10, v0

    const/4 v0, 0x4

    aget-object v10, v10, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v10, Lcom/facebook/ads/redexgen/X/7n;->A07:[Ljava/lang/String;

    const-string v1, "PlWtaQzxKmV3LAe12cSeUsJTirSwbfkK"

    const/4 v0, 0x6

    aput-object v1, v10, v0

    if-nez v11, :cond_2

    .line 22337
    const-wide/16 v6, 0x0

    .line 22338
    .local v0, "interpolateFraction":D
    :goto_1
    sub-long/2addr v4, v12

    long-to-double v0, v4

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    add-long/2addr v0, v12

    return-wide v0

    .line 22339
    .end local v1
    .local p1, "positionOffset":J
    :cond_2
    long-to-double v0, v8

    sub-double/2addr v6, v0

    .end local v3    # "tableOfContents":[J
    .local p3, "tableOfContents":[J
    sub-long/2addr v2, v8

    long-to-double v0, v2

    div-double/2addr v6, v0

    goto :goto_1

    .line 22340
    :cond_3
    add-int/lit8 v0, v1, 0x1

    aget-wide v2, v2, v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AAa()Z
    .locals 1

    .line 22341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7n;->A05:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
