.class public final Lcom/facebook/ads/redexgen/X/4J;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:[C

.field public static final A07:[C


# instance fields
.field public A00:[B

.field public A01:I

.field public A02:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 277
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RlBAQ9etSzb6rKOU0OwTULVtudJYJZp0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XAmGWsEC26u1mjqUpAPP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gKAOne2sLRpvkAzkWDtxdYOHT1y3K7xN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "f0TxnfWyKi4JtHzbatu6pF78XF274ljv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5Aw1jR83b8etF7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lH1Eai5bIm9O9MK22LfAWzb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DxY4VOe5grYAJX95lLrlpegM3yyEwSTm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4J;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4J;->A04()V

    const/4 v4, 0x2

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4J;->A06:[C

    .line 278
    const/4 v3, 0x1

    new-array v2, v3, [C

    const/4 v1, 0x0

    const/16 v0, 0xa

    aput-char v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4J;->A07:[C

    .line 279
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/nio/charset/Charset;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A02:Ljava/nio/charset/Charset;

    aput-object v0, v2, v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A06:Ljava/nio/charset/Charset;

    aput-object v0, v2, v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A03:Ljava/nio/charset/Charset;

    aput-object v0, v2, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/ia;->A04:Ljava/nio/charset/Charset;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/ia;->A05:Ljava/nio/charset/Charset;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 280
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/i1;->A05([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4J;->A05:Ljava/util/Set;

    .line 281
    return-void

    nop

    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 12401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12402
    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A07:[B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    .line 12403
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 12404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12405
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    .line 12406
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    .line 12407
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 12408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12409
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    .line 12410
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    .line 12411
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 12412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12413
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    .line 12414
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    .line 12415
    return-void
.end method

.method private A00(Ljava/nio/charset/Charset;[C)C
    .locals 5

    .line 12416
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A06:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A02:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 12417
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v1, v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/q6;->A00(B)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/fA;->A01(J)C

    move-result v2

    .line 12418
    .local v0, "character":C
    const/4 v1, 0x1

    .line 12419
    .local v2, "characterSize":I
    .restart local v2    # "characterSize":I
    :goto_0
    invoke-static {p2, v2}, Lcom/facebook/ads/redexgen/X/fA;->A04([CC)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12420
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12421
    int-to-long v0, v2

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/fA;->A01(J)C

    move-result v0

    return v0

    .line 12422
    .end local v0    # "character":C
    .end local v2    # "characterSize":I
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A03:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A04:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12423
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lt v0, v1, :cond_3

    .line 12424
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v2, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, v3

    aget-byte v0, v1, v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/fA;->A00(BB)C

    move-result v2

    .line 12425
    .restart local v0    # "character":C
    const/4 v1, 0x2

    .restart local v2    # "characterSize":I
    goto :goto_0

    .line 12426
    .end local v0    # "character":C
    .end local v2    # "characterSize":I
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A05:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 12427
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, v3

    aget-byte v2, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v1, v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/fA;->A00(BB)C

    move-result v2

    .line 12428
    .restart local v0    # "character":C
    const/4 v1, 0x2

    goto :goto_0

    .line 12429
    :cond_4
    return v4

    .line 12430
    .end local v0    # "character":C
    .end local v2
    :cond_5
    return v4
.end method

.method private A01(Ljava/nio/charset/Charset;)I
    .locals 4

    .line 12431
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A06:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A02:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12432
    .end local v0
    :cond_0
    const/4 v3, 0x1

    .line 12433
    .restart local v0
    :goto_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .local v1, "i":I
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    add-int/lit8 v0, v3, -0x1

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_8

    .line 12434
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A06:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A02:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    aget-byte v0, v0, v2

    .line 12435
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A16(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12436
    return v2

    .line 12437
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A03:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A04:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v1, v0

    .line 12438
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A16(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12439
    return v2

    .line 12440
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A05:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v1, v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    aget-byte v0, v0, v2

    .line 12441
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A16(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12442
    return v2

    .line 12443
    :cond_5
    add-int/2addr v2, v3

    goto :goto_1

    .line 12444
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A03:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A05:Ljava/nio/charset/Charset;

    .line 12445
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A04:Ljava/nio/charset/Charset;

    .line 12446
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12447
    :cond_7
    const/4 v3, 0x2

    .local v0, "stride":I
    goto :goto_0

    .line 12448
    .end local v1    # "i":I
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    return v0

    .line 12449
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5f

    const/16 v1, 0x15

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A02(C)Ljava/lang/String;
    .locals 4

    .line 12450
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-nez v0, :cond_0

    .line 12451
    const/4 v0, 0x0

    return-object v0

    .line 12452
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12453
    .local v0, "stringLimit":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    aget-byte v0, v0, v3

    if-eq v0, p1, :cond_1

    .line 12454
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12455
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    sub-int v0, v3, v0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0r([BII)Ljava/lang/String;

    move-result-object v2

    .line 12456
    .local v1, "string":Ljava/lang/String;
    iput v3, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12457
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    if-ge v1, v0, :cond_2

    .line 12458
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12459
    :cond_2
    return-object v2
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4J;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x41

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

    const/16 v0, 0x74

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4J;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        0x67t
        0x7ft
        0x68t
        0x65t
        0x60t
        0x6dt
        0x29t
        0x5ct
        0x5dt
        0x4ft
        0x24t
        0x31t
        0x29t
        0x7at
        0x6ct
        0x78t
        0x7ct
        0x6ct
        0x67t
        0x6at
        0x6ct
        0x29t
        0x6at
        0x66t
        0x67t
        0x7dt
        0x60t
        0x67t
        0x7ct
        0x68t
        0x7dt
        0x60t
        0x66t
        0x67t
        0x29t
        0x6bt
        0x70t
        0x7dt
        0x6ct
        0x33t
        0x29t
        0x58t
        0x7ft
        0x67t
        0x70t
        0x7dt
        0x78t
        0x75t
        0x31t
        0x44t
        0x45t
        0x57t
        0x3ct
        0x29t
        0x31t
        0x62t
        0x74t
        0x60t
        0x64t
        0x74t
        0x7ft
        0x72t
        0x74t
        0x31t
        0x77t
        0x78t
        0x63t
        0x62t
        0x65t
        0x31t
        0x73t
        0x68t
        0x65t
        0x74t
        0x2bt
        0x31t
        0x2t
        0x39t
        0x26t
        0x76t
        0x34t
        0x3ft
        0x22t
        0x76t
        0x38t
        0x39t
        0x22t
        0x76t
        0x2ct
        0x33t
        0x24t
        0x39t
        0x6ct
        0x76t
        0x26t
        0x1dt
        0x0t
        0x6t
        0x3t
        0x3t
        0x1ct
        0x1t
        0x7t
        0x16t
        0x17t
        0x53t
        0x10t
        0x1bt
        0x12t
        0x1t
        0x0t
        0x16t
        0x7t
        0x49t
        0x53t
    .end array-data
.end method

.method private A05(Ljava/nio/charset/Charset;)V
    .locals 2

    .line 12460
    sget-object v0, Lcom/facebook/ads/redexgen/X/4J;->A06:[C

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(Ljava/nio/charset/Charset;[C)C

    move-result v1

    const/16 v0, 0xd

    if-ne v1, v0, :cond_0

    .line 12461
    sget-object v0, Lcom/facebook/ads/redexgen/X/4J;->A07:[C

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A00(Ljava/nio/charset/Charset;[C)C

    .line 12462
    :cond_0
    return-void
.end method


# virtual methods
.method public final A06()D
    .locals 2

    .line 12463
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0P()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final A07()I
    .locals 2

    .line 12464
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A08()I
    .locals 1

    .line 12465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    array-length v0, v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 12466
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    return v0
.end method

.method public final A0A()I
    .locals 1

    .line 12467
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    return v0
.end method

.method public final A0B()I
    .locals 2

    .line 12468
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final A0C()I
    .locals 4

    .line 12469
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x18

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    return v3
.end method

.method public final A0D()I
    .locals 4

    .line 12470
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    shr-int/lit8 v3, v0, 0x8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    return v3
.end method

.method public final A0E()I
    .locals 4

    .line 12471
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v3, v0, 0xff

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method public final A0F()I
    .locals 5

    .line 12472
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0E()I

    move-result v4

    .line 12473
    .local v0, "result":I
    if-ltz v4, :cond_0

    .line 12474
    return v4

    .line 12475
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x12

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0G()I
    .locals 4

    .line 12476
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v3, v0, 0xff

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    return v3
.end method

.method public final A0H()I
    .locals 4

    .line 12477
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 12478
    .local v0, "b1":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 12479
    .local v1, "b2":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v3

    .line 12480
    .local v2, "b3":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v2

    .line 12481
    .local v3, "b4":I
    shl-int/lit8 v1, v1, 0x15

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v1, v0

    shl-int/lit8 v0, v3, 0x7

    or-int/2addr v1, v0

    or-int/2addr v1, v2

    return v1
.end method

.method public final A0I()I
    .locals 3

    .line 12482
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final A0J()I
    .locals 4

    .line 12483
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    .line 12484
    .local v0, "result":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12485
    return v3
.end method

.method public final A0K()I
    .locals 4

    .line 12486
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x10

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    return v3
.end method

.method public final A0L()I
    .locals 5

    .line 12487
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v4

    .line 12488
    .local v0, "result":I
    if-ltz v4, :cond_0

    .line 12489
    return v4

    .line 12490
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x12

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0M()I
    .locals 4

    .line 12491
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    return v3
.end method

.method public final A0N()J
    .locals 8

    .line 12492
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    int-to-long v2, v0

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v0, v0

    and-long/2addr v6, v0

    const/16 v0, 0x38

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    return-wide v2
.end method

.method public final A0O()J
    .locals 8

    .line 12493
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    int-to-long v2, v0

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v0, v0

    and-long/2addr v6, v0

    const/16 v0, 0x18

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    return-wide v2
.end method

.method public final A0P()J
    .locals 8

    .line 12494
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    int-to-long v2, v0

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    const/16 v0, 0x38

    shl-long/2addr v2, v0

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x28

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v0, v0

    and-long/2addr v6, v0

    or-long/2addr v2, v6

    return-wide v2
.end method

.method public final A0Q()J
    .locals 8

    .line 12495
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    int-to-long v2, v0

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    const/16 v0, 0x18

    shl-long/2addr v2, v0

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x8

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v4, v1

    int-to-long v0, v0

    and-long/2addr v6, v0

    or-long/2addr v2, v6

    return-wide v2
.end method

.method public final A0R()J
    .locals 6

    .line 12496
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0P()J

    move-result-wide v2

    .line 12497
    .local v0, "result":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 12498
    return-wide v2

    .line 12499
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x4d

    const/16 v1, 0x12

    const/16 v0, 0x17

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0S()J
    .locals 11

    .line 12500
    const/4 v5, 0x0

    .line 12501
    .local v0, "length":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v1, v0

    int-to-long v3, v0

    .line 12502
    .local v1, "value":J
    const/4 v7, 0x7

    .local v3, "j":I
    :goto_0
    const/4 v6, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/4J;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/4J;->A04:[Ljava/lang/String;

    const-string v1, "oMNWSgm03bScuVXxVZmUeRStw4NVi0TN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ltz v7, :cond_0

    .line 12503
    const/4 v10, 0x1

    shl-int v0, v10, v7

    int-to-long v1, v0

    and-long/2addr v1, v3

    const-wide/16 v8, 0x0

    cmp-long v0, v1, v8

    if-nez v0, :cond_3

    .line 12504
    if-ge v7, v6, :cond_2

    .line 12505
    shl-int v0, v10, v7

    sub-int/2addr v0, v10

    int-to-long v0, v0

    and-long/2addr v3, v0

    .line 12506
    rsub-int/lit8 v5, v7, 0x7

    .line 12507
    .end local v3    # "j":I
    :cond_0
    :goto_1
    if-eqz v5, :cond_6

    .line 12508
    const/4 v7, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v7, v5, :cond_5

    .line 12509
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, v7

    aget-byte v2, v1, v0

    .line 12510
    .local v5, "x":I
    and-int/lit16 v1, v2, 0xc0

    const/16 v0, 0x80

    if-ne v1, v0, :cond_4

    .line 12511
    shl-long/2addr v3, v6

    and-int/lit8 v0, v2, 0x3f

    int-to-long v0, v0

    or-long/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4J;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_1

    .line 12512
    .end local v5    # "x":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/4J;->A04:[Ljava/lang/String;

    const-string v1, "QkYn4WhdN3Bc00ITVAtZ7M0H0JKEG2qx"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v5
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 12513
    :cond_2
    const/4 v0, 0x7

    if-ne v7, v0, :cond_0

    .line 12514
    const/4 v5, 0x1

    goto :goto_1

    .line 12515
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 12516
    .restart local v5    # "x":I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x2a

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12517
    .end local v3    # "i":I
    .end local v5    # "x":I
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12518
    return-wide v3

    .line 12519
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2a

    const/16 v1, 0x23

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0T()Ljava/lang/String;
    .locals 1

    .line 12520
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A06:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0Y(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0U()Ljava/lang/String;
    .locals 1

    .line 12521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A02(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0V(I)Ljava/lang/String;
    .locals 3

    .line 12522
    if-nez p1, :cond_0

    .line 12523
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12524
    :cond_0
    move v2, p1

    .line 12525
    .local v0, "stringLength":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    .line 12526
    .local v1, "lastIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    .line 12527
    add-int/lit8 v2, v2, -0x1

    .line 12528
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4a;->A0r([BII)Ljava/lang/String;

    move-result-object v1

    .line 12529
    .local v2, "result":Ljava/lang/String;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12530
    return-object v1
.end method

.method public final A0W(I)Ljava/lang/String;
    .locals 1

    .line 12531
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A06:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0X(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0X(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 12532
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 12533
    .local v0, "result":Ljava/lang/String;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12534
    return-object v1
.end method

.method public final A0Y(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5

    .line 12535
    sget-object v0, Lcom/facebook/ads/redexgen/X/4J;->A05:Ljava/util/Set;

    .line 12536
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5f

    const/16 v1, 0x15

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12537
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/3M;->A09(ZLjava/lang/Object;)V

    .line 12538
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-nez v0, :cond_0

    .line 12539
    const/4 v0, 0x0

    return-object v0

    .line 12540
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A02:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12541
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0Z()Ljava/nio/charset/Charset;

    .line 12542
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4J;->A01(Ljava/nio/charset/Charset;)I

    move-result v1

    .line 12543
    .local v0, "lineLimit":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/4J;->A0X(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 12544
    .local v1, "line":Ljava/lang/String;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    if-ne v1, v0, :cond_2

    .line 12545
    return-object v2

    .line 12546
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4J;->A05(Ljava/nio/charset/Charset;)V

    .line 12547
    return-object v2
.end method

.method public final A0Z()Ljava/nio/charset/Charset;
    .locals 8

    .line 12548
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    const/4 v3, 0x2

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v1, v1, v0

    const/16 v0, -0x11

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, v1, v0

    const/16 v0, -0x45

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, v3

    aget-byte v1, v1, v0

    const/16 v0, -0x41

    if-ne v1, v0, :cond_0

    .line 12549
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12550
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A06:Ljava/nio/charset/Charset;

    return-object v0

    .line 12551
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lt v0, v3, :cond_3

    .line 12552
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v1, v0

    const/4 v5, -0x1

    const/4 v4, -0x2

    if-ne v0, v4, :cond_2

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v6, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/4J;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4J;->A04:[Ljava/lang/String;

    const-string v1, "9QZAaK9H1E15SkUu26Oe"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v7, v0

    if-ne v0, v5, :cond_2

    .line 12553
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12554
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A04:Ljava/nio/charset/Charset;

    return-object v0

    .line 12555
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v1, v0

    if-ne v0, v5, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    if-ne v0, v4, :cond_3

    .line 12556
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12557
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A05:Ljava/nio/charset/Charset;

    return-object v0

    .line 12558
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0a()S
    .locals 4

    .line 12559
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v3, v0, 0xff

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    int-to-short v0, v3

    return v0
.end method

.method public final A0b()S
    .locals 4

    .line 12560
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v3, v0

    int-to-short v0, v3

    return v0
.end method

.method public final A0c(I)V
    .locals 1

    .line 12561
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 12562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    .line 12563
    :cond_0
    return-void
.end method

.method public final A0d(I)V
    .locals 3

    .line 12564
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4J;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 12565
    sget-object v2, Lcom/facebook/ads/redexgen/X/4J;->A04:[Ljava/lang/String;

    const-string v1, "3F79npZxDc4PfqkC8vfulVLdM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    .line 12566
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0e(I)V
    .locals 1

    .line 12567
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 12568
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    .line 12569
    return-void

    .line 12570
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0f(I)V
    .locals 4

    .line 12571
    if-ltz p1, :cond_0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4J;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4J;->A04:[Ljava/lang/String;

    const-string v1, "UMwuHioqOI4Z"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-gt p1, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 12572
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12573
    return-void
.end method

.method public final A0g(I)V
    .locals 1

    .line 12574
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 12575
    return-void
.end method

.method public final A0h(Lcom/facebook/ads/redexgen/X/4I;I)V
    .locals 2

    .line 12576
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 12577
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 12578
    return-void
.end method

.method public final A0i([B)V
    .locals 1

    .line 12579
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 12580
    return-void
.end method

.method public final A0j([BI)V
    .locals 1

    .line 12581
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    .line 12582
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4J;->A01:I

    .line 12583
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12584
    return-void
.end method

.method public final A0k([BII)V
    .locals 2

    .line 12585
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12586
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A02:I

    .line 12587
    return-void
.end method

.method public final A0l()[B
    .locals 1

    .line 12588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4J;->A00:[B

    return-object v0
.end method
