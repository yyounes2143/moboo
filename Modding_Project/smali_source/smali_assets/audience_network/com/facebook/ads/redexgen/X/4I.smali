.class public final Lcom/facebook/ads/redexgen/X/4I;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:[B

.field public A01:I

.field public A02:I

.field public A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 276
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2nOz0KIFgcZZRyVuqo5bgbDjVecAtY1v"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "p1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VjnGs3e14C04tf63tHLQ77fvb0vUFjjn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IkQ8iUjtLJey7cJCEXqpfqsJOKT4tfzv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YU3RrDfZvA3XfQSmqlFrDyJy2XBZ9ug4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OCexcvgEmqqQdA89aMsn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lWBBh2DwBKc0yUEroYjNXxq0TEDXKrUS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "n4CP0YvmwhnKHbqe32bPZYKzOuFmYPOb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4I;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 12282
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4I;-><init>([BI)V

    .line 12283
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 12284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12285
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    .line 12286
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4I;->A02:I

    .line 12287
    return-void
.end method

.method private A00()V
    .locals 2

    .line 12288
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A02:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A02:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 12289
    return-void

    .line 12290
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A01()I
    .locals 2

    .line 12291
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A02()I
    .locals 1

    .line 12292
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 12293
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    return v0

    .line 12294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A03()I
    .locals 2

    .line 12295
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    mul-int/lit8 v1, v0, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A04(I)I
    .locals 5

    .line 12296
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 12297
    return v2

    .line 12298
    :cond_0
    const/4 v4, 0x0

    .line 12299
    .local v1, "returnValue":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 12300
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    const/16 v3, 0x8

    if-le v0, v3, :cond_1

    .line 12301
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 12302
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    aget-byte v0, v3, v1

    and-int/lit16 v1, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    shl-int/2addr v1, v0

    or-int/2addr v4, v1

    goto :goto_0

    .line 12303
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    aget-byte v0, v1, v0

    and-int/lit16 v1, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    rsub-int/lit8 v0, v0, 0x8

    shr-int/2addr v1, v0

    or-int/2addr v4, v1

    .line 12304
    rsub-int/lit8 v1, p1, 0x20

    const/4 v0, -0x1

    ushr-int/2addr v0, v1

    and-int/2addr v4, v0

    .line 12305
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    if-ne v0, v3, :cond_2

    .line 12306
    iput v2, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 12307
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    .line 12308
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4I;->A00()V

    .line 12309
    return v4
.end method

.method public final A05(I)J
    .locals 5

    .line 12310
    const/16 v2, 0x20

    if-gt p1, v2, :cond_1

    .line 12311
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0M(I)J

    move-result-wide v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4I;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4I;->A04:[Ljava/lang/String;

    const-string v1, "hPuSpAkHwt40nYe5baQSvI4ZKxCRAlL0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ANsKpIz8SdbAQh9e0XlF7KjBsp30BEL1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-wide v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12312
    :cond_1
    add-int/lit8 v0, p1, -0x20

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0N(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A06()V
    .locals 1

    .line 12313
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    if-nez v0, :cond_0

    .line 12314
    return-void

    .line 12315
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 12316
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    .line 12317
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4I;->A00()V

    .line 12318
    return-void
.end method

.method public final A07()V
    .locals 4

    .line 12319
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 12320
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 12321
    iget v3, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4I;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4I;->A04:[Ljava/lang/String;

    const-string v1, "IsW8CSRSYhigEF2wlh1BrMeLUc4CvJhM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "lfcfpjtp1JtJxQNQeccncamol0LRwTjJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    .line 12322
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4I;->A00()V

    .line 12323
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A08(I)V
    .locals 1

    .line 12324
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    .line 12325
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 12326
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4I;->A00()V

    .line 12327
    return-void
.end method

.method public final A09(I)V
    .locals 3

    .line 12328
    div-int/lit8 v2, p1, 0x8

    .line 12329
    .local v0, "numBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    .line 12330
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    mul-int/lit8 v0, v2, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 12331
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_0

    .line 12332
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    .line 12333
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 12334
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4I;->A00()V

    .line 12335
    return-void
.end method

.method public final A0A(I)V
    .locals 1

    .line 12336
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 12337
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    .line 12338
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4I;->A00()V

    .line 12339
    return-void

    .line 12340
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B(II)V
    .locals 9

    .line 12341
    .local v0, "remainingBitsToRead":I
    const/16 v0, 0x20

    const/4 v8, 0x1

    if-ge p2, v0, :cond_0

    .line 12342
    shl-int v0, v8, p2

    sub-int/2addr v0, v8

    and-int/2addr p1, v0

    .line 12343
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    const/16 v3, 0x8

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 12344
    .local v1, "firstByteReadSize":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    rsub-int/lit8 v6, v0, 0x8

    sub-int/2addr v6, v7

    .line 12345
    .local v4, "firstByteRightPaddingSize":I
    const v5, 0xff00

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    shr-int/2addr v5, v0

    shl-int v0, v8, v6

    sub-int/2addr v0, v8

    or-int/2addr v5, v0

    .line 12346
    .local v5, "firstByteBitmask":I
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    .line 12347
    sub-int v0, p2, v7

    ushr-int v5, p1, v0

    .line 12348
    .local v6, "firstByteInputBits":I
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    aget-byte v0, v1, v0

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    .line 12349
    sub-int v5, p2, v7

    .line 12350
    iget v4, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    add-int/2addr v4, v8

    .line 12351
    .local v7, "currentByteIndex":I
    :goto_0
    if-le v5, v3, :cond_1

    .line 12352
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    add-int/lit8 v1, v4, 0x1

    .end local v7    # "currentByteIndex":I
    .local p0, "currentByteIndex":I
    add-int/lit8 v0, v5, -0x8

    ushr-int v0, p1, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 12353
    add-int/lit8 v5, v5, -0x8

    move v4, v1

    goto :goto_0

    .line 12354
    .end local p0    # "currentByteIndex":I
    .restart local v7    # "currentByteIndex":I
    :cond_1
    rsub-int/lit8 v3, v5, 0x8

    .line 12355
    .local v3, "lastByteRightPaddingSize":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    aget-byte v1, v0, v4

    shl-int v0, v8, v3

    sub-int/2addr v0, v8

    and-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, v2, v4

    .line 12356
    shl-int v0, v8, v5

    sub-int/2addr v0, v8

    and-int/2addr p1, v0

    .line 12357
    .local v2, "lastByteInput":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    aget-byte v0, v0, v4

    shl-int/2addr p1, v3

    or-int/2addr v0, p1

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    .line 12358
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 12359
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4I;->A00()V

    .line 12360
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 2

    .line 12361
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A0E([BI)V

    .line 12362
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 12363
    return-void
.end method

.method public final A0D([B)V
    .locals 1

    .line 12364
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A0E([BI)V

    .line 12365
    return-void
.end method

.method public final A0E([BI)V
    .locals 1

    .line 12366
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    .line 12367
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    .line 12368
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 12369
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4I;->A02:I

    .line 12370
    return-void
.end method

.method public final A0F([BII)V
    .locals 8

    .line 12371
    shr-int/lit8 v3, p3, 0x3

    add-int/2addr v3, p2

    .line 12372
    .local v0, "to":I
    .local v1, "i":I
    :goto_0
    const/16 v4, 0xff

    const/16 v2, 0x8

    if-ge p2, v3, :cond_0

    .line 12373
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    aget-byte v1, v5, v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    shl-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, p2

    .line 12374
    aget-byte v5, p1, p2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    aget-byte v0, v1, v0

    and-int/2addr v4, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    sub-int/2addr v2, v0

    shr-int/2addr v4, v2

    or-int/2addr v4, v5

    int-to-byte v0, v4

    aput-byte v0, p1, p2

    .line 12375
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12376
    .end local v1    # "i":I
    :cond_0
    and-int/lit8 v7, p3, 0x7

    .line 12377
    .local v1, "bitsLeft":I
    if-nez v7, :cond_1

    .line 12378
    return-void

    .line 12379
    :cond_1
    aget-byte v1, p1, v3

    shr-int v0, v4, v7

    and-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v3

    .line 12380
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    add-int/2addr v0, v7

    if-le v0, v2, :cond_2

    .line 12381
    aget-byte v6, p1, v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    aget-byte v1, v5, v1

    and-int/2addr v1, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    shl-int/2addr v1, v0

    or-int/2addr v6, v1

    int-to-byte v0, v6

    aput-byte v0, p1, v3

    .line 12382
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 12383
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 12384
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    aget-byte v0, v1, v0

    and-int/2addr v4, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    rsub-int/lit8 v0, v0, 0x8

    shr-int/2addr v4, v0

    .line 12385
    .local v2, "lastDataByteTrailingBits":I
    aget-byte v1, p1, v3

    rsub-int/lit8 v0, v7, 0x8

    shl-int/2addr v4, v0

    int-to-byte v0, v4

    or-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p1, v3

    .line 12386
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    if-ne v0, v2, :cond_3

    .line 12387
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    .line 12388
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    .line 12389
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4I;->A00()V

    .line 12390
    return-void
.end method

.method public final A0G([BII)V
    .locals 2

    .line 12391
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 12392
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12393
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    .line 12394
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4I;->A00()V

    .line 12395
    return-void

    .line 12396
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0H()Z
    .locals 3

    .line 12397
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A03:I

    aget-byte v2, v1, v0

    const/16 v1, 0x80

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4I;->A01:I

    shr-int/2addr v1, v0

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 12398
    .local v0, "returnValue":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 12399
    return v0

    .line 12400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
