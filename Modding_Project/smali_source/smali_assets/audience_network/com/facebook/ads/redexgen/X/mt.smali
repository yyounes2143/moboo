.class public final Lcom/facebook/ads/redexgen/X/mt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/38;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/36;

.field public A06:Lcom/facebook/ads/redexgen/X/36;

.field public A07:Lcom/facebook/ads/redexgen/X/36;

.field public A08:Lcom/facebook/ads/redexgen/X/36;

.field public A09:Lcom/facebook/ads/redexgen/X/8w;

.field public A0A:Ljava/nio/ByteBuffer;

.field public A0B:Ljava/nio/ByteBuffer;

.field public A0C:Ljava/nio/ShortBuffer;

.field public A0D:Z

.field public A0E:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99250
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A01:F

    .line 99251
    iput v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A00:F

    .line 99252
    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A07:Lcom/facebook/ads/redexgen/X/36;

    .line 99253
    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A08:Lcom/facebook/ads/redexgen/X/36;

    .line 99254
    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A05:Lcom/facebook/ads/redexgen/X/36;

    .line 99255
    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A06:Lcom/facebook/ads/redexgen/X/36;

    .line 99256
    sget-object v0, Lcom/facebook/ads/redexgen/X/38;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0A:Ljava/nio/ByteBuffer;

    .line 99257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0A:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0C:Ljava/nio/ShortBuffer;

    .line 99258
    sget-object v0, Lcom/facebook/ads/redexgen/X/38;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0B:Ljava/nio/ByteBuffer;

    .line 99259
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A02:I

    .line 99260
    return-void
.end method


# virtual methods
.method public final A00(J)J
    .locals 10

    .line 99261
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/mt;->A04:J

    const-wide/16 v1, 0x400

    cmp-long v0, v3, v1

    move-wide v4, p1

    if-ltz v0, :cond_1

    .line 99262
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/mt;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A09:Lcom/facebook/ads/redexgen/X/8w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A0I()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v6, v0

    .line 99263
    .local v0, "processedInputBytes":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A06:Lcom/facebook/ads/redexgen/X/36;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/36;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A03:I

    if-ne v1, v0, :cond_0

    .line 99264
    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/mt;->A04:J

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v0

    .line 99265
    :goto_0
    return-wide v0

    .line 99266
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A06:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A03:I

    int-to-long v0, v0

    mul-long/2addr v6, v0

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/mt;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A03:I

    int-to-long v0, v0

    mul-long/2addr v8, v0

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v0

    goto :goto_0

    .line 99267
    .end local v0    # "processedInputBytes":J
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A01:F

    float-to-double v2, v0

    long-to-double v0, v4

    mul-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0
.end method

.method public final A01(F)V
    .locals 1

    .line 99268
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A00:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 99269
    iput p1, p0, Lcom/facebook/ads/redexgen/X/mt;->A00:F

    .line 99270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0E:Z

    .line 99271
    :cond_0
    return-void
.end method

.method public final A02(F)V
    .locals 1

    .line 99272
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A01:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 99273
    iput p1, p0, Lcom/facebook/ads/redexgen/X/mt;->A01:F

    .line 99274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0E:Z

    .line 99275
    :cond_0
    return-void
.end method

.method public final A4z(Lcom/facebook/ads/redexgen/X/36;)Lcom/facebook/ads/redexgen/X/36;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/37;
        }
    .end annotation

    .line 99276
    iget v0, p1, Lcom/facebook/ads/redexgen/X/36;->A02:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 99277
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mt;->A02:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 99278
    iget v2, p1, Lcom/facebook/ads/redexgen/X/36;->A03:I

    .line 99279
    .local v0, "outputSampleRateHz":I
    :goto_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mt;->A07:Lcom/facebook/ads/redexgen/X/36;

    .line 99280
    iget v1, p1, Lcom/facebook/ads/redexgen/X/36;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/36;

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/ads/redexgen/X/36;-><init>(III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A08:Lcom/facebook/ads/redexgen/X/36;

    .line 99281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0E:Z

    .line 99282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A08:Lcom/facebook/ads/redexgen/X/36;

    return-object v0

    .line 99283
    :cond_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/mt;->A02:I

    goto :goto_0

    .line 99284
    .end local v0    # "outputSampleRateHz":I
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/37;-><init>(Lcom/facebook/ads/redexgen/X/36;)V

    throw v0
.end method

.method public final A8V()Ljava/nio/ByteBuffer;
    .locals 5

    .line 99285
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/mt;->A09:Lcom/facebook/ads/redexgen/X/8w;

    .line 99286
    .local v0, "sonic":Lcom/facebook/ads/redexgen/X/8w;
    if-eqz v2, :cond_0

    .line 99287
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8w;->A0H()I

    move-result v4

    .line 99288
    .local v1, "outputSize":I
    if-lez v4, :cond_0

    .line 99289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0A:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 99290
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0A:Ljava/nio/ByteBuffer;

    .line 99291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0A:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0C:Ljava/nio/ShortBuffer;

    .line 99292
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0C:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/8w;->A0L(Ljava/nio/ShortBuffer;)V

    .line 99293
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mt;->A04:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/mt;->A04:J

    .line 99294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0A:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 99295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0A:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0B:Ljava/nio/ByteBuffer;

    .line 99296
    .end local v1    # "outputSize":I
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mt;->A0B:Ljava/nio/ByteBuffer;

    .line 99297
    .local v1, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/38;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0B:Ljava/nio/ByteBuffer;

    .line 99298
    return-object v1

    .line 99299
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0A:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 99300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0C:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public final AAC()Z
    .locals 3

    .line 99301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A08:Lcom/facebook/ads/redexgen/X/36;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/36;->A03:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A01:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    .line 99302
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A00:F

    sub-float/2addr v0, v2

    .line 99303
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A08:Lcom/facebook/ads/redexgen/X/36;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/36;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A07:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A03:I

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 99304
    :goto_0
    return v0

    .line 99305
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AAG()Z
    .locals 1

    .line 99306
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0D:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A09:Lcom/facebook/ads/redexgen/X/8w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A09:Lcom/facebook/ads/redexgen/X/8w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A0H()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AGW()V
    .locals 1

    .line 99307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A09:Lcom/facebook/ads/redexgen/X/8w;

    if-eqz v0, :cond_0

    .line 99308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A09:Lcom/facebook/ads/redexgen/X/8w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A0K()V

    .line 99309
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0D:Z

    .line 99310
    return-void
.end method

.method public final AGX(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 99311
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99312
    return-void

    .line 99313
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A09:Lcom/facebook/ads/redexgen/X/8w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/8w;

    .line 99314
    .local v0, "sonic":Lcom/facebook/ads/redexgen/X/8w;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 99315
    .local v1, "shortBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 99316
    .local v2, "inputSize":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/mt;->A03:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/mt;->A03:J

    .line 99317
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/8w;->A0M(Ljava/nio/ShortBuffer;)V

    .line 99318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99319
    return-void
.end method

.method public final flush()V
    .locals 7

    .line 99320
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mt;->AAC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A07:Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A05:Lcom/facebook/ads/redexgen/X/36;

    .line 99322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A08:Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A06:Lcom/facebook/ads/redexgen/X/36;

    .line 99323
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0E:Z

    if-eqz v0, :cond_1

    .line 99324
    new-instance v1, Lcom/facebook/ads/redexgen/X/8w;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/36;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/36;->A01:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/mt;->A01:F

    iget v5, p0, Lcom/facebook/ads/redexgen/X/mt;->A00:F

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A06:Lcom/facebook/ads/redexgen/X/36;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/36;->A03:I

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/8w;-><init>(IIFFI)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mt;->A09:Lcom/facebook/ads/redexgen/X/8w;

    .line 99325
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/38;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0B:Ljava/nio/ByteBuffer;

    .line 99326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A03:J

    .line 99327
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A04:J

    .line 99328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A0D:Z

    .line 99329
    return-void

    .line 99330
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A09:Lcom/facebook/ads/redexgen/X/8w;

    if-eqz v0, :cond_0

    .line 99331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mt;->A09:Lcom/facebook/ads/redexgen/X/8w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A0J()V

    goto :goto_0
.end method
