.class public final Lcom/facebook/ads/redexgen/X/7q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/kk;


# static fields
.field public static A04:[B


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:[J

.field public final A03:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7q;->A02()V

    return-void
.end method

.method public constructor <init>([J[JJJ)V
    .locals 0

    .line 22433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22434
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7q;->A03:[J

    .line 22435
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7q;->A02:[J

    .line 22436
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/7q;->A01:J

    .line 22437
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:J

    .line 22438
    return-void
.end method

.method public static A00(JJLcom/facebook/ads/redexgen/X/Gl;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/7q;
    .locals 18

    .line 22439
    move-wide/from16 v0, p2

    const/16 v2, 0xa

    move-object/from16 v11, p5

    invoke-virtual {v11, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 22440
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v3

    .line 22441
    .local v4, "numFrames":I
    const/4 v2, 0x0

    if-gtz v3, :cond_0

    .line 22442
    return-object v2

    .line 22443
    :cond_0
    move-object/from16 v4, p4

    iget v5, v4, Lcom/facebook/ads/redexgen/X/Gl;->A03:I

    .line 22444
    .local v6, "sampleRate":I
    int-to-long v12, v3

    .line 22445
    const/16 v2, 0x7d00

    if-lt v5, v2, :cond_1

    const/16 v2, 0x480

    :goto_0
    int-to-long v14, v2

    const-wide/32 v2, 0xf4240

    mul-long/2addr v14, v2

    int-to-long v2, v5

    .line 22446
    move-wide/from16 v16, v2

    invoke-static/range {v12 .. v17}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v15

    .line 22447
    .local v7, "durationUs":J
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v7

    .line 22448
    .local v9, "entryCount":I
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v10

    .line 22449
    .local v10, "scale":I
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v12

    .line 22450
    .local v11, "entrySize":I
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 22451
    iget v2, v4, Lcom/facebook/ads/redexgen/X/Gl;->A02:I

    int-to-long v2, v2

    add-long v8, v0, v2

    .line 22452
    .local v14, "minPosition":J
    new-array v13, v7, [J

    .line 22453
    .local v12, "timesUs":[J
    new-array v14, v7, [J

    .line 22454
    .local v13, "positions":[J
    const/4 v6, 0x0

    .end local v6    # "sampleRate":I
    .end local p8
    .local v2, "index":I
    .local v5, "position":J
    .local p2, "sampleRate":I
    :goto_1
    if-ge v6, v7, :cond_2

    .line 22455
    .end local v4    # "numFrames":I
    .local p3, "numFrames":I
    int-to-long v4, v6

    mul-long/2addr v4, v15

    .end local v7    # "durationUs":J
    .local p4, "durationUs":J
    int-to-long v2, v7

    div-long/2addr v4, v2

    aput-wide v4, v13, v6

    .line 22456
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    aput-wide v2, v14, v6

    .line 22457
    packed-switch v12, :pswitch_data_0

    .line 22458
    const/4 v0, 0x0

    return-object v0

    .line 22459
    :pswitch_0
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v2

    .line 22460
    .local v3, "segmentSize":I
    goto :goto_2

    .line 22461
    .end local v3    # "segmentSize":I
    :pswitch_1
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0K()I

    move-result v2

    .line 22462
    .restart local v3    # "segmentSize":I
    goto :goto_2

    .line 22463
    .end local v3    # "segmentSize":I
    :pswitch_2
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v2

    .line 22464
    .restart local v3    # "segmentSize":I
    goto :goto_2

    .line 22465
    .end local v3    # "segmentSize":I
    :pswitch_3
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v2

    .line 22466
    .restart local v3    # "segmentSize":I
    :goto_2
    int-to-long v4, v2

    .end local v3    # "segmentSize":I
    .local v16, "segmentSize":I
    int-to-long v2, v10

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 22467
    .end local v16    # "segmentSize":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 22468
    :cond_1
    const/16 v2, 0x240

    goto :goto_0

    .line 22469
    .end local p3    # "numFrames":I
    .end local p4    # "durationUs":J
    .restart local v4    # "numFrames":I
    .restart local v7    # "durationUs":J
    .end local v2    # "index":I
    .end local v4    # "numFrames":I
    .end local v7    # "durationUs":J
    .restart local p3    # "numFrames":I
    .restart local p4    # "durationUs":J
    :cond_2
    const-wide/16 v5, -0x1

    move-wide/from16 v2, p0

    cmp-long v4, v2, v5

    if-eqz v4, :cond_3

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    .line 22470
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    const/16 v5, 0x19

    const/16 v4, 0x32

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/7q;->A01(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/16 v2, 0x50

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/7q;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x1b

    const/16 v3, 0xa

    const/16 v2, 0x59

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/7q;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 22471
    :cond_3
    new-instance v12, Lcom/facebook/ads/redexgen/X/7q;

    .end local v13    # "positions":[J
    .local v3, "positions":[J
    .end local v14    # "minPosition":J
    .local v7, "minPosition":J
    move-wide/from16 v17, v0

    invoke-direct/range {v12 .. v18}, Lcom/facebook/ads/redexgen/X/7q;-><init>([J[JJJ)V

    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7q;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2b

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

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7q;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x59t
        -0x65t
        -0x4dt
        -0x61t
        -0x51t
        -0x5at
        0x7dt
        -0x3ft
        -0x42t
        -0x2ft
        -0x42t
        0x7dt
        -0x30t
        -0x3at
        -0x29t
        -0x3et
        0x7dt
        -0x36t
        -0x3at
        -0x30t
        -0x36t
        -0x42t
        -0x2ft
        -0x40t
        -0x3bt
        -0x69t
        0x7dt
        -0x26t
        -0x1at
        -0xat
        -0x13t
        -0x29t
        -0x17t
        -0x17t
        -0x11t
        -0x17t
        -0xat
    .end array-data
.end method


# virtual methods
.method public final A7b()J
    .locals 2

    .line 22472
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:J

    return-wide v0
.end method

.method public final A7l()J
    .locals 2

    .line 22473
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A01:J

    return-wide v0
.end method

.method public final A8t(J)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 8

    .line 22474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A03:[J

    const/4 v4, 0x1

    invoke-static {v0, p1, p2, v4, v4}, Lcom/facebook/ads/redexgen/X/4a;->A0L([JJZZ)I

    move-result v7

    .line 22475
    .local v0, "tableIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A03:[J

    aget-wide v2, v0, v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A02:[J

    aget-wide v0, v0, v7

    new-instance v6, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    .line 22476
    .local v2, "seekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/Gx;->A01:J

    cmp-long v0, v1, p1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A03:[J

    array-length v0, v0

    sub-int/2addr v0, v4

    if-ne v7, v0, :cond_1

    .line 22477
    .end local v1
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0

    .line 22478
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7q;->A03:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v4, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7q;->A02:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v2, v1, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    .line 22479
    .local v1, "nextSeekPoint":Lcom/facebook/ads/redexgen/X/Gx;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0
.end method

.method public final A99(J)J
    .locals 3

    .line 22480
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7q;->A03:[J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7q;->A02:[J

    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0L([JJZZ)I

    move-result v0

    aget-wide v0, v2, v0

    return-wide v0
.end method

.method public final AAa()Z
    .locals 1

    .line 22481
    const/4 v0, 0x1

    return v0
.end method
