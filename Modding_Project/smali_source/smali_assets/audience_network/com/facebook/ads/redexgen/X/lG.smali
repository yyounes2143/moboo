.class public final Lcom/facebook/ads/redexgen/X/lG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/amr/AmrExtractor$Flags;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/Gb;

.field public static final A0I:I

.field public static final A0J:[B

.field public static final A0K:[B

.field public static final A0L:[I

.field public static final A0M:[I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/GY;

.field public A08:Lcom/facebook/ads/redexgen/X/Gw;

.field public A09:Lcom/facebook/ads/redexgen/X/H1;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:I

.field public final A0E:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3103
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nCYubXqvd8ypcUhOSOVlYAWiNtNg5aTx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kK9obhnzrC8LOV4nIDjH0fRMkLxjM4hw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "y066yKC5U0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cE1K3Th7x6hTx4uAy2DDcaRqLgqPomcW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7FhRQrMCUcKubfGBASNqeIg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2Nytx4SBEfNcp68myMLwYRuSH7vsFm1u"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZlttTssTlgjvAvH32uYzHDtT6TE9W794"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "80ncat3y6qUdob6xQVasiz6qbkfE4w7J"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lG;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lG;->A08()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/lH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lH;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lG;->A0H:Lcom/facebook/ads/redexgen/X/Gb;

    .line 3104
    const/16 v1, 0x10

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lG;->A0L:[I

    .line 3105
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/lG;->A0M:[I

    .line 3106
    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lG;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A1G(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lG;->A0J:[B

    .line 3107
    const/16 v2, 0x12

    const/16 v1, 0x9

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lG;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A1G(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lG;->A0K:[B

    .line 3108
    sget-object v1, Lcom/facebook/ads/redexgen/X/lG;->A0M:[I

    const/16 v0, 0x8

    aget v0, v1, v0

    sput v0, Lcom/facebook/ads/redexgen/X/lG;->A0I:I

    return-void

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 96363
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lG;-><init>(I)V

    .line 96364
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 96365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96366
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 96367
    or-int/lit8 p1, p1, 0x1

    .line 96368
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/lG;->A0D:I

    .line 96369
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0E:[B

    .line 96370
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    .line 96371
    return-void
.end method

.method private A00(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 96372
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lG;->A0B(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35

    const/16 v1, 0xc

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lG;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 96374
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0C:Z

    if-eqz v0, :cond_0

    const/16 v2, 0x69

    const/4 v1, 0x2

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lG;->A05(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lG;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96375
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 96376
    :cond_0
    const/16 v2, 0x67

    const/4 v1, 0x2

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lG;->A05(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96377
    :cond_1
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/lG;->A0C:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/lG;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/lG;->A0G:[Ljava/lang/String;

    const-string v1, "XAVUjCRC3hebivW774juK0oqwk2i4xqh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ZJ3GnAAJbhmZqGnHED8y3IWqixRJo44l"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    sget-object v0, Lcom/facebook/ads/redexgen/X/lG;->A0M:[I

    aget v0, v0, p1

    :goto_1
    return v0

    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/lG;->A0L:[I

    aget v0, v0, p1

    goto :goto_1
.end method

.method public static A01(IJ)I
    .locals 3

    .line 96378
    int-to-long v2, p0

    const-wide/16 v0, 0x8

    mul-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    div-long/2addr v2, p1

    long-to-int v0, v2

    return v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/lN;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96379
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 96380
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lG;->A0E:[B

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 96381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0E:[B

    aget-byte v4, v0, v1

    .line 96382
    .local v0, "frameHeader":B
    and-int/lit16 v0, v4, 0x83

    if-gtz v0, :cond_0

    .line 96383
    shr-int/lit8 v0, v4, 0x3

    and-int/lit8 v0, v0, 0xf

    .line 96384
    .local v1, "frameType":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lG;->A00(I)I

    move-result v0

    return v0

    .line 96385
    .end local v1    # "frameType":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x41

    const/16 v1, 0x26

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lG;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/lN;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 96386
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    const/4 v3, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 96387
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lG;->A02(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A01:I

    goto :goto_0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96388
    .local v0, "e":Ljava/io/EOFException;
    :catch_0
    return v2

    .line 96389
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    .line 96390
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    if-ne v0, v2, :cond_0

    .line 96391
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A05:J

    .line 96392
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    .line 96393
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A01:I

    if-ne v1, v0, :cond_1

    .line 96394
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A03:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A03:I

    .line 96395
    .end local v0    # "e":Ljava/io/EOFException;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/H1;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    .line 96396
    invoke-interface {v1, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/H1;->AI5(Lcom/facebook/ads/redexgen/X/20;IZ)I

    move-result v1

    .line 96397
    .local v0, "bytesAppended":I
    if-ne v1, v2, :cond_2

    .line 96398
    return v2

    .line 96399
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/lG;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 96400
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/lG;->A0G:[Ljava/lang/String;

    const-string v1, "CzfhB3PuIPzemLKFV0N6DKx"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    const/4 v0, 0x0

    if-lez v1, :cond_4

    .line 96401
    return v0

    .line 96402
    :cond_4
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/H1;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/lG;->A06:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A04:J

    add-long/2addr v4, v1

    iget v7, p0, Lcom/facebook/ads/redexgen/X/lG;->A01:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 96403
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lG;->A04:J

    const-wide/16 v1, 0x4e20

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/lG;->A04:J

    .line 96404
    return v0
.end method

.method private A04(JZ)Lcom/facebook/ads/redexgen/X/lS;
    .locals 8

    .line 96405
    iget v2, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    const-wide/16 v0, 0x4e20

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/lG;->A01(IJ)I

    move-result v5

    .line 96406
    .local v0, "bitrate":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/lS;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lG;->A05:J

    iget v6, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    move v7, p3

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/lS;-><init>(JJIIZ)V

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/lG;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 96407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96408
    return-void
.end method

.method private A07()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 96409
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0A:Z

    if-nez v0, :cond_0

    .line 96410
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/lG;->A0A:Z

    .line 96411
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0C:Z

    if-eqz v0, :cond_2

    const/16 v2, 0x75

    const/16 v1, 0xc

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lG;->A05(III)Ljava/lang/String;

    move-result-object v1

    .line 96412
    .local v1, "mimeType":Ljava/lang/String;
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0C:Z

    if-eqz v0, :cond_1

    const/16 v3, 0x3e80

    .line 96413
    .local v2, "sampleRate":I
    :goto_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/H1;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 96414
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/lG;->A0I:I

    .line 96415
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0h(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 96416
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 96417
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 96418
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 96419
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 96420
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "sampleRate":I
    :cond_0
    return-void

    .line 96421
    :cond_1
    const/16 v3, 0x1f40

    goto :goto_1

    .line 96422
    :cond_2
    const/16 v2, 0x6b

    const/16 v1, 0xa

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lG;->A05(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lG;->A0F:[B

    return-void

    :array_0
    .array-data 1
        -0x73t
        -0x2dt
        -0x21t
        -0x32t
        -0x26t
        -0x2et
        -0x73t
        -0x1ft
        -0x1at
        -0x23t
        -0x2et
        -0x73t
        -0x78t
        -0x7at
        -0x5at
        -0x4et
        -0x49t
        0x6ft
        -0x35t
        -0x37t
        -0x17t
        -0xbt
        -0x6t
        -0x2bt
        -0x1t
        -0x16t
        -0x4et
        -0xft
        0x1dt
        0x23t
        0x1at
        0x12t
        -0x32t
        0x1ct
        0x1dt
        0x22t
        -0x32t
        0x14t
        0x17t
        0x1ct
        0x12t
        -0x32t
        -0x11t
        -0x5t
        0x0t
        -0x32t
        0x16t
        0x13t
        0xft
        0x12t
        0x13t
        0x20t
        -0x24t
        0x1ct
        0x3ft
        0x3ft
        0x38t
        0x3at
        0x34t
        0x3ft
        -0xdt
        0x14t
        0x20t
        0x25t
        -0xdt
        0x17t
        0x3ct
        0x44t
        0x2ft
        0x3at
        0x37t
        0x32t
        -0x12t
        0x3et
        0x2ft
        0x32t
        0x32t
        0x37t
        0x3ct
        0x35t
        -0x12t
        0x30t
        0x37t
        0x42t
        0x41t
        -0x12t
        0x34t
        0x3dt
        0x40t
        -0x12t
        0x34t
        0x40t
        0x2ft
        0x3bt
        0x33t
        -0x12t
        0x36t
        0x33t
        0x2ft
        0x32t
        0x33t
        0x40t
        -0x12t
        -0x28t
        -0x34t
        -0x23t
        -0x38t
        -0x1at
        -0x6t
        -0x17t
        -0x12t
        -0xct
        -0x4ct
        -0x48t
        -0x14t
        -0xbt
        -0xbt
        -0x2et
        -0x1at
        -0x2bt
        -0x26t
        -0x20t
        -0x60t
        -0x2et
        -0x22t
        -0x1dt
        -0x62t
        -0x18t
        -0x2dt
    .end array-data
.end method

.method private A09(JI)V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 96423
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0B:Z

    if-eqz v0, :cond_0

    .line 96424
    return-void

    .line 96425
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0D:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const-wide/16 v3, -0x1

    cmp-long v0, p1, v3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A01:I

    if-eq v1, v0, :cond_3

    .line 96426
    :cond_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/lI;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A08:Lcom/facebook/ads/redexgen/X/Gw;

    .line 96427
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A07:Lcom/facebook/ads/redexgen/X/GY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A08:Lcom/facebook/ads/redexgen/X/Gw;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 96428
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/lG;->A0B:Z

    .line 96429
    :cond_2
    :goto_0
    return-void

    .line 96430
    :cond_3
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A03:I

    const/16 v0, 0x14

    if-ge v1, v0, :cond_4

    if-ne p3, v3, :cond_2

    .line 96431
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0D:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 96432
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/lG;->A04(JZ)Lcom/facebook/ads/redexgen/X/lS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A08:Lcom/facebook/ads/redexgen/X/Gw;

    .line 96433
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A07:Lcom/facebook/ads/redexgen/X/GY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A08:Lcom/facebook/ads/redexgen/X/Gw;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 96434
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/lG;->A0B:Z

    goto :goto_0

    .line 96435
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private A0A(I)Z
    .locals 1

    .line 96436
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0C:Z

    if-nez v0, :cond_1

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0B(I)Z
    .locals 1

    .line 96437
    if-ltz p1, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 96438
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lG;->A0C(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lG;->A0A(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 96439
    :goto_0
    return v0

    .line 96440
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0C(I)Z
    .locals 1

    .line 96441
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A0C:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96442
    sget-object v0, Lcom/facebook/ads/redexgen/X/lG;->A0J:[B

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/lG;->A0E(Lcom/facebook/ads/redexgen/X/lN;[B)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 96443
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/lG;->A0C:Z

    .line 96444
    sget-object v0, Lcom/facebook/ads/redexgen/X/lG;->A0J:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 96445
    return v1

    .line 96446
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/lG;->A0K:[B

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/lG;->A0E(Lcom/facebook/ads/redexgen/X/lN;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96447
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/lG;->A0C:Z

    .line 96448
    sget-object v0, Lcom/facebook/ads/redexgen/X/lG;->A0K:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 96449
    return v1

    .line 96450
    :cond_1
    return v2
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/lN;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96451
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 96452
    array-length v0, p1

    new-array v2, v0, [B

    .line 96453
    .local v0, "header":[B
    const/4 v1, 0x0

    array-length v0, p1

    invoke-interface {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 96454
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0F()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 96455
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lG;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/lG;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 2

    .line 96456
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lG;->A07:Lcom/facebook/ads/redexgen/X/GY;

    .line 96457
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A09:Lcom/facebook/ads/redexgen/X/H1;

    .line 96458
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 96459
    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96460
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lG;->A06()V

    .line 96461
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 96462
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lG;->A0D(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96463
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lG;->A07()V

    .line 96464
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lG;->A03(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v2

    .line 96465
    .local v0, "sampleReadResult":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lG;->A09(JI)V

    .line 96466
    return v2

    .line 96467
    :cond_1
    const/16 v2, 0x1b

    const/16 v1, 0x1a

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lG;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public final AGr()V
    .locals 0

    .line 96468
    return-void
.end method

.method public final AIM(JJ)V
    .locals 6

    .line 96469
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lG;->A04:J

    .line 96470
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A01:I

    .line 96471
    iput v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A00:I

    .line 96472
    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A08:Lcom/facebook/ads/redexgen/X/Gw;

    instance-of v5, v0, Lcom/facebook/ads/redexgen/X/lS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/lG;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 96473
    :cond_0
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lG;->A06:J

    goto :goto_0

    .line 96474
    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/lG;->A0G:[Ljava/lang/String;

    const-string v1, "NQLxubHlf0cB1xHoee3lgwNqGMjiyHKA"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "Tv4bI2EMm7rGcVq8cNVXYB9qzgEcyYlQ"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    if-eqz v5, :cond_0

    .line 96475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A08:Lcom/facebook/ads/redexgen/X/Gw;

    check-cast v0, Lcom/facebook/ads/redexgen/X/lS;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/lS;->A02(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lG;->A06:J

    .line 96476
    :goto_0
    return-void
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96477
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lG;->A0D(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    return v0
.end method
