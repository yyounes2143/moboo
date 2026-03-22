.class public abstract Lcom/facebook/ads/redexgen/X/Gq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Gp;,
        Lcom/facebook/ads/redexgen/X/Gn;,
        Lcom/facebook/ads/redexgen/X/Go;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[I

.field public static A02:[Ljava/lang/String;

.field public static final A03:[B

.field public static final A04:[F

.field public static final A05:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 741
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "unNLyNh5FR3GyMG68d"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fnHIAbwwkFQ1ZGNlnsc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DMpYp1jOlcNpO4pJgPWh22Zerf91QM8t"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RZoQ8h3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "L8G6Aqwau6BJqNFKfla"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ElXYWWCxJdBggdMs0Hio0yCYqdZAyfAp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "A3sl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vST53OIiICW6hrmD3wtDRemD3zmWyZSx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gq;->A0C()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A03:[B

    .line 742
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A04:[F

    .line 743
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A05:Ljava/lang/Object;

    .line 744
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A01:[I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static A00([BI)I
    .locals 1

    .line 38346
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static A01([BI)I
    .locals 1

    .line 38347
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static A02([BI)I
    .locals 8

    .line 38348
    sget-object v7, Lcom/facebook/ads/redexgen/X/Gq;->A05:Ljava/lang/Object;

    monitor-enter v7

    .line 38349
    const/4 v2, 0x0

    .line 38350
    .local v1, "position":I
    const/4 v6, 0x0

    .line 38351
    .local v2, "scratchEscapeCount":I
    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    .line 38352
    :try_start_0
    invoke-static {p0, v2, p1}, Lcom/facebook/ads/redexgen/X/Gq;->A03([BII)I

    move-result v2

    .line 38353
    if-ge v2, p1, :cond_0

    .line 38354
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A01:[I

    array-length v0, v0

    if-gt v0, v6, :cond_1

    .line 38355
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A01:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 38356
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A01:[I

    .line 38357
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A01:[I

    add-int/lit8 v0, v6, 0x1

    .end local v2    # "scratchEscapeCount":I
    .local v4, "scratchEscapeCount":I
    aput v2, v1, v6

    .line 38358
    add-int/lit8 v2, v2, 0x3

    move v6, v0

    goto :goto_0

    .line 38359
    .restart local v1    # "position":I
    .restart local v2    # "scratchEscapeCount":I
    :cond_2
    sub-int/2addr p1, v6

    .line 38360
    .local v3, "unescapedLength":I
    const/4 v5, 0x0

    .line 38361
    .local v4, "escapedPosition":I
    const/4 v4, 0x0

    .line 38362
    .local v5, "unescapedPosition":I
    const/4 v3, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 38363
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A01:[I

    aget v2, v0, v3

    .line 38364
    .local v7, "nextEscapePosition":I
    sub-int/2addr v2, v5

    .line 38365
    .local p0, "copyLength":I
    invoke-static {p0, v5, p0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38366
    add-int/2addr v4, v2

    .line 38367
    add-int/lit8 v1, v4, 0x1

    .end local v5    # "unescapedPosition":I
    .local p1, "unescapedPosition":I
    const/4 v0, 0x0

    aput-byte v0, p0, v4

    .line 38368
    add-int/lit8 v4, v1, 0x1

    .end local p1    # "unescapedPosition":I
    .restart local v5    # "unescapedPosition":I
    aput-byte v0, p0, v1

    .line 38369
    add-int/lit8 v0, v2, 0x3

    add-int/2addr v5, v0

    .line 38370
    .end local v7    # "nextEscapePosition":I
    .end local p0    # "copyLength":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 38371
    .end local v6    # "i":I
    :cond_3
    sub-int v0, p1, v4

    .line 38372
    .local v6, "remainingLength":I
    invoke-static {p0, v5, p0, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38373
    monitor-exit v7

    return p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38374
    .end local v1    # "position":I
    .end local v4    # "escapedPosition":I
    :catchall_0
    move-exception v0

    .end local v1
    .end local v2    # "scratchEscapeCount":I
    .end local v3    # "unescapedLength":I
    .end local v4
    .end local v5    # "unescapedPosition":I
    .end local v6    # "remainingLength":I
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A03([BII)I
    .locals 2

    .line 38375
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_1

    .line 38376
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v1, p0, v0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 38377
    return p1

    .line 38378
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 38379
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static A04([BII[Z)I
    .locals 8

    .line 38380
    sub-int v5, p2, p1

    .line 38381
    .local v0, "length":I
    const/4 v7, 0x0

    const/4 v4, 0x1

    if-ltz v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 38382
    if-nez v5, :cond_1

    .line 38383
    return p2

    .line 38384
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 38385
    :cond_1
    aget-boolean v0, p3, v7

    if-eqz v0, :cond_2

    .line 38386
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Gq;->A0H([Z)V

    .line 38387
    add-int/lit8 v0, p1, -0x3

    return v0

    .line 38388
    :cond_2
    if-le v5, v4, :cond_3

    aget-boolean v0, p3, v4

    if-eqz v0, :cond_3

    aget-byte v0, p0, p1

    if-ne v0, v4, :cond_3

    .line 38389
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Gq;->A0H([Z)V

    .line 38390
    add-int/lit8 v0, p1, -0x2

    return v0

    .line 38391
    :cond_3
    const/4 v3, 0x2

    if-le v5, v3, :cond_5

    aget-boolean v0, p3, v3

    if-eqz v0, :cond_5

    aget-byte v0, p0, p1

    if-nez v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    aget-byte v6, p0, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "PQW9C7kUOKDoPPw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v6, v4, :cond_5

    .line 38392
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Gq;->A0H([Z)V

    .line 38393
    add-int/lit8 v0, p1, -0x1

    return v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38394
    :cond_5
    add-int/lit8 v2, p2, -0x1

    .line 38395
    .local v4, "limit":I
    add-int/lit8 v1, p1, 0x2

    .local v5, "i":I
    :goto_1
    if-ge v1, v2, :cond_8

    .line 38396
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xfe

    if-eqz v0, :cond_6

    .line 38397
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 38398
    :cond_6
    add-int/lit8 v0, v1, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_7

    add-int/lit8 v0, v1, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_7

    aget-byte v0, p0, v1

    if-ne v0, v4, :cond_7

    .line 38399
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Gq;->A0H([Z)V

    .line 38400
    add-int/lit8 v0, v1, -0x2

    return v0

    .line 38401
    :cond_7
    add-int/lit8 v1, v1, -0x2

    goto :goto_2

    .line 38402
    .end local v5    # "i":I
    :cond_8
    if-le v5, v3, :cond_e

    .line 38403
    add-int/lit8 v0, p2, -0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_d

    add-int/lit8 v0, p2, -0x2

    aget-byte v6, p0, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "tLizWOaN0OsagnuSy28"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "ZOtg0UvXTXpiFnpoxfp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v6, :cond_d

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_d

    const/4 v0, 0x1

    .line 38404
    :goto_3
    aput-boolean v0, p3, v7

    .line 38405
    if-le v5, v4, :cond_b

    .line 38406
    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 38407
    :goto_4
    aput-boolean v0, p3, v4

    .line 38408
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_9

    const/4 v7, 0x1

    :cond_9
    aput-boolean v7, p3, v3

    .line 38409
    return p2

    .line 38410
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 38411
    :cond_b
    aget-boolean v0, p3, v3

    if-eqz v0, :cond_c

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    .line 38412
    :cond_d
    const/4 v0, 0x0

    goto :goto_3

    .line 38413
    :cond_e
    if-ne v5, v3, :cond_11

    .line 38414
    aget-boolean v6, p3, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "TtHOfwpayoR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v6, :cond_10

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_10

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_10

    const/4 v0, 0x1

    goto :goto_3

    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 38415
    :cond_11
    aget-boolean v0, p3, v4

    if-eqz v0, :cond_13

    add-int/lit8 v6, p2, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_12

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "UGNUjS5TseBxte9hZy6MdiMKKivw8YU8"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "gAwFNStsKHXv5jMh5dTnIzvsHbrqE6D6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aget-byte v0, p0, v6

    if-ne v0, v4, :cond_13

    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_12
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "MYPYXnk67e7ylj87wlpJJbRJ3uYkeY13"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget-byte v0, p0, v6

    if-ne v0, v4, :cond_13

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05([BII)Lcom/facebook/ads/redexgen/X/Gn;
    .locals 1

    .line 38416
    add-int/lit8 v0, p1, 0x2

    invoke-static {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Gq;->A06([BII)Lcom/facebook/ads/redexgen/X/Gn;

    move-result-object v0

    return-object v0
.end method

.method public static A06([BII)Lcom/facebook/ads/redexgen/X/Gn;
    .locals 21

    .line 38417
    new-instance v3, Lcom/facebook/ads/redexgen/X/Gs;

    move/from16 v0, p2

    move/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gs;-><init>([BII)V

    .line 38418
    .local v0, "data":Lcom/facebook/ads/redexgen/X/Gs;
    const/16 p0, -0x1

    .line 38419
    .local v4, "colorSpace":I
    const/16 p1, -0x1

    .line 38420
    .local v5, "colorRange":I
    const/16 p2, -0x1

    .line 38421
    .local v6, "colorTransfer":I
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 38422
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v5

    .line 38423
    .local v8, "maxSubLayersMinus1":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 38424
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v11

    .line 38425
    .local p3, "generalProfileSpace":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v12

    .line 38426
    .local p4, "generalTierFlag":Z
    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v13

    .line 38427
    .local p5, "generalProfileIdc":I
    const/4 v14, 0x0

    .line 38428
    .local v10, "generalProfileCompatibilityFlags":I
    const/4 v8, 0x0

    .end local v10    # "generalProfileCompatibilityFlags":I
    .local v11, "i":I
    .local p6, "generalProfileCompatibilityFlags":I
    :goto_0
    const/16 v6, 0x20

    const/4 v2, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1b

    sget-object v9, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "xkwe1O9uU2dqAY7xWUY4fbTlKQKyvcwL"

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const-string v1, "HeYhRuPqM40BhEn67WYdTTzYcbU6v3bu"

    const/4 v0, 0x7

    aput-object v1, v9, v0

    if-ge v8, v6, :cond_1

    .line 38429
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38430
    shl-int/2addr v2, v8

    or-int/2addr v14, v2

    .line 38431
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 38432
    .end local v11    # "i":I
    :cond_1
    const/4 v0, 0x6

    new-array v15, v0, [I

    .line 38433
    .local v15, "constraintBytes":[I
    const/4 v6, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v15

    const/16 v1, 0x8

    if-ge v6, v0, :cond_2

    .line 38434
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v0

    aput v0, v15, v6

    .line 38435
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 38436
    .end local v10    # "i":I
    :cond_2
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v16

    .line 38437
    .local p7, "generalLevelIdc":I
    const/4 v6, 0x0

    .line 38438
    .local v10, "toSkip":I
    const/4 v0, 0x0

    .end local v10    # "toSkip":I
    .restart local v11    # "i":I
    .local v14, "toSkip":I
    :goto_2
    if-ge v0, v5, :cond_5

    .line 38439
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 38440
    add-int/lit8 v6, v6, 0x59

    .line 38441
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 38442
    add-int/lit8 v6, v6, 0x8

    .line 38443
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 38444
    .end local v11    # "i":I
    :cond_5
    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 38445
    if-lez v5, :cond_6

    .line 38446
    rsub-int/lit8 v0, v5, 0x8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 38447
    :cond_6
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v17

    .line 38448
    .local p8, "seqParameterSetId":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v0

    .line 38449
    .local v11, "chromaFormatIdc":I
    if-ne v0, v7, :cond_7

    .line 38450
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 38451
    :cond_7
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v18

    .line 38452
    .local v10, "frameWidth":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v19

    .line 38453
    .local v16, "frameHeight":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 38454
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v10

    .line 38455
    .local v17, "confWinLeftOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v9

    .line 38456
    .local v18, "confWinRightOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v8

    .line 38457
    .local v19, "confWinTopOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v7

    .line 38458
    .local v20, "confWinBottomOffset":I
    if-eq v0, v2, :cond_8

    if-ne v0, v4, :cond_d

    :cond_8
    const/4 v6, 0x2

    .line 38459
    .local p0, "subWidthC":I
    :goto_3
    if-ne v0, v2, :cond_c

    const/4 v0, 0x2

    .line 38460
    .local p1, "subHeightC":I
    :goto_4
    add-int/2addr v10, v9

    mul-int/2addr v10, v6

    sub-int v18, v18, v10

    .line 38461
    add-int/2addr v8, v7

    mul-int/2addr v8, v0

    sget-object v6, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v2, v6, v0

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_b

    sget-object v6, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v2, "Hn3sdMz19WVmWCBK"

    const/4 v0, 0x6

    aput-object v2, v6, v0

    sub-int v19, v19, v8

    .line 38462
    .end local v10    # "frameWidth":I
    .local p9, "frameWidth":I
    :cond_9
    :goto_5
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38463
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38464
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v6

    .line 38465
    .local p10, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .local v10, "i":I
    :goto_6
    if-gt v0, v5, :cond_e

    .line 38466
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38467
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38468
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38469
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    move v0, v5

    goto :goto_6

    :cond_b
    sget-object v6, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v2, "Jz4JSkPN0248kFDgiRzzjLGO7q"

    const/4 v0, 0x3

    aput-object v2, v6, v0

    sub-int v19, v19, v8

    goto :goto_5

    .line 38470
    :cond_c
    const/4 v0, 0x1

    goto :goto_4

    .line 38471
    :cond_d
    const/4 v6, 0x1

    goto :goto_3

    .line 38472
    .end local v10    # "i":I
    :cond_e
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38473
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38474
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38475
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38476
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38477
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38478
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    .line 38479
    .local p11, "scalingListEnabled":Z
    if-eqz v0, :cond_f

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 38480
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Gq;->A0D(Lcom/facebook/ads/redexgen/X/Gs;)V

    .line 38481
    :cond_f
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 38482
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 38483
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 38484
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38485
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38486
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 38487
    :cond_10
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Gq;->A0E(Lcom/facebook/ads/redexgen/X/Gs;)V

    .line 38488
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 38489
    const/4 v0, 0x0

    .restart local v10    # "i":I
    :goto_7
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v2

    if-ge v0, v2, :cond_11

    .line 38490
    add-int/lit8 v2, v6, 0x4

    .line 38491
    .local v12, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 38492
    .end local v12    # "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 38493
    .end local v10    # "i":I
    :cond_11
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 38494
    const/high16 v0, 0x3f800000    # 1.0f

    .line 38495
    .local v7, "pixelWidthHeightRatio":F
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v2, 0xa

    if-eq v4, v2, :cond_1b

    sget-object v5, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v4, "CMlgeA8zQVByZrA2VMXzsS0jeMyo18qQ"

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const-string v4, "QAK33uwHUZwexufQvU3o8DPmyRQmvUMz"

    const/4 v2, 0x7

    aput-object v4, v5, v2

    if-eqz v6, :cond_16

    .line 38496
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 38497
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v2

    .line 38498
    .local v10, "aspectRatioIdc":I
    const/16 v1, 0xff

    if-ne v2, v1, :cond_19

    .line 38499
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v2

    .line 38500
    .local v9, "sarWidth":I
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v1

    .line 38501
    .local v12, "sarHeight":I
    if-eqz v2, :cond_12

    if-eqz v1, :cond_12

    .line 38502
    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 38503
    .end local v10    # "aspectRatioIdc":I
    :cond_12
    :goto_8
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 38504
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 38505
    :cond_13
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 38506
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 38507
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v4

    .line 38508
    .local v1, "fullRangeFlag":Z
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 38509
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v1

    .line 38510
    .local v10, "colorPrimaries":I
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v5

    .line 38511
    .local v12, "transferCharacteristics":I
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 38512
    invoke-static {v1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A00(I)I

    move-result p0

    .line 38513
    if-eqz v4, :cond_18

    const/16 p1, 0x1

    :goto_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_17

    .line 38514
    sget-object v4, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v2, "HGrGkdvIc2AkT14Ejxxa4aXBUNVha"

    const/4 v1, 0x0

    aput-object v2, v4, v1

    invoke-static {v5}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01(I)I

    move-result p2

    .line 38515
    .end local v1    # "fullRangeFlag":Z
    .end local v10    # "colorPrimaries":I
    .end local v12    # "transferCharacteristics":I
    :cond_14
    :goto_a
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 38516
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38517
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38518
    :cond_15
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 38519
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 38520
    mul-int/lit8 v19, v19, 0x2

    .line 38521
    .end local v16    # "frameHeight":I
    .local v1, "frameHeight":I
    :cond_16
    new-instance v10, Lcom/facebook/ads/redexgen/X/Gn;

    .end local v11    # "chromaFormatIdc":I
    .local p12, "chromaFormatIdc":I
    .end local v14    # "toSkip":I
    .local p13, "toSkip":I
    .end local v15    # "constraintBytes":[I
    .local p14, "constraintBytes":[I
    move/from16 v20, v0

    invoke-direct/range {v10 .. v23}, Lcom/facebook/ads/redexgen/X/Gn;-><init>(IZII[IIIIIFIII)V

    return-object v10

    .line 38522
    :cond_17
    invoke-static {v5}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01(I)I

    move-result p2

    goto :goto_a

    .line 38523
    :cond_18
    const/16 p1, 0x2

    goto :goto_9

    .line 38524
    :cond_19
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A04:[F

    array-length v1, v1

    if-ge v2, v1, :cond_1a

    .line 38525
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A04:[F

    aget v0, v0, v2

    .end local v7    # "pixelWidthHeightRatio":F
    .local v1, "pixelWidthHeightRatio":F
    goto :goto_8

    .line 38526
    .end local v1    # "pixelWidthHeightRatio":F
    .restart local v7    # "pixelWidthHeightRatio":F
    :cond_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xb

    const/16 v4, 0x23

    const/16 v1, 0x7e

    invoke-static {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/Gq;->A0B(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/16 v2, 0xb

    const/16 v1, 0x3f

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/Gq;->A0B(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07([BII)Lcom/facebook/ads/redexgen/X/Go;
    .locals 1

    .line 38527
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Gq;->A08([BII)Lcom/facebook/ads/redexgen/X/Go;

    move-result-object v0

    return-object v0
.end method

.method public static A08([BII)Lcom/facebook/ads/redexgen/X/Go;
    .locals 1

    .line 38528
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gs;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Gs;-><init>([BII)V

    .line 38529
    .local v0, "data":Lcom/facebook/ads/redexgen/X/Gs;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result p2

    .line 38530
    .local p0, "picParameterSetId":I
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result p1

    .line 38531
    .local p1, "seqParameterSetId":I
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 38532
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result p0

    .line 38533
    .local p2, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v0, Lcom/facebook/ads/redexgen/X/Go;

    invoke-direct {v0, p2, p1, p0}, Lcom/facebook/ads/redexgen/X/Go;-><init>(IIZ)V

    return-object v0
.end method

.method public static A09([BII)Lcom/facebook/ads/redexgen/X/Gp;
    .locals 1

    .line 38534
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Gq;->A0A([BII)Lcom/facebook/ads/redexgen/X/Gp;

    move-result-object v0

    return-object v0
.end method

.method public static A0A([BII)Lcom/facebook/ads/redexgen/X/Gp;
    .locals 23

    .line 38535
    new-instance v3, Lcom/facebook/ads/redexgen/X/Gs;

    move/from16 v0, p2

    move/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gs;-><init>([BII)V

    .line 38536
    .local v0, "data":Lcom/facebook/ads/redexgen/X/Gs;
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v12

    .line 38537
    .local v15, "profileIdc":I
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v13

    .line 38538
    .local v20, "constraintsFlagsAndReservedZero2Bits":I
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v14

    .line 38539
    .local v21, "levelIdc":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v15

    .line 38540
    .local v22, "seqParameterSetId":I
    const/4 v2, 0x1

    .line 38541
    .local v5, "chromaFormatIdc":I
    const/16 v20, 0x0

    .line 38542
    .local v6, "separateColorPlaneFlag":Z
    const/16 v0, 0x64

    const/4 v1, 0x3

    const/16 v9, 0x10

    if-eq v12, v0, :cond_0

    const/16 v0, 0x6e

    if-eq v12, v0, :cond_0

    const/16 v0, 0x7a

    if-eq v12, v0, :cond_0

    const/16 v0, 0xf4

    if-eq v12, v0, :cond_0

    const/16 v0, 0x2c

    if-eq v12, v0, :cond_0

    const/16 v0, 0x53

    if-eq v12, v0, :cond_0

    const/16 v0, 0x56

    if-eq v12, v0, :cond_0

    const/16 v0, 0x76

    if-eq v12, v0, :cond_0

    const/16 v0, 0x80

    if-eq v12, v0, :cond_0

    const/16 v0, 0x8a

    if-ne v12, v0, :cond_5

    .line 38543
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v2

    .line 38544
    if-ne v2, v1, :cond_1

    .line 38545
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v20

    .line 38546
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38547
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38548
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 38549
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v0, 0xa

    if-eq v4, v0, :cond_11

    .line 38550
    .local v7, "seqScalingMatrixPresentFlag":Z
    sget-object v5, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v4, "qzm7RlaVhvQtMB0zhtauZ"

    const/4 v0, 0x0

    aput-object v4, v5, v0

    if-eqz v6, :cond_5

    .line 38551
    if-eq v2, v1, :cond_4

    const/16 v5, 0x8

    .line 38552
    .local v10, "limit":I
    :goto_0
    const/4 v4, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 38553
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    .line 38554
    .local v12, "seqScalingListPresentFlag":Z
    if-eqz v0, :cond_2

    .line 38555
    const/4 v0, 0x6

    if-ge v4, v0, :cond_3

    const/16 v0, 0x10

    :goto_2
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A0F(Lcom/facebook/ads/redexgen/X/Gs;I)V

    .line 38556
    .end local v12    # "seqScalingListPresentFlag":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 38557
    :cond_3
    const/16 v0, 0x40

    goto :goto_2

    .line 38558
    :cond_4
    const/16 v5, 0xc

    goto :goto_0

    .line 38559
    .end local v5    # "chromaFormatIdc":I
    .end local v6    # "separateColorPlaneFlag":Z
    .local v14, "chromaFormatIdc":I
    .local p0, "separateColorPlaneFlag":Z
    :cond_5
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v0

    add-int/lit8 v22, v0, 0x4

    .line 38560
    .local p1, "frameNumLength":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v10

    .line 38561
    .local v13, "picOrderCntType":I
    const/16 p1, 0x0

    .line 38562
    .local v5, "picOrderCntLsbLength":I
    const/16 p2, 0x0

    .line 38563
    .local v6, "deltaPicOrderAlwaysZeroFlag":Z
    const/4 v0, 0x1

    if-nez v10, :cond_10

    .line 38564
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v4

    add-int/lit8 p1, v4, 0x4

    sget-object v5, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v5, v5, v4

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v4, 0x59

    if-eq v5, v4, :cond_f

    sget-object v6, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v5, "2NWfLRVEjhOO9"

    const/4 v4, 0x3

    aput-object v5, v6, v4

    .line 38565
    .end local v6    # "deltaPicOrderAlwaysZeroFlag":Z
    .end local v17
    .local v4, "picOrderCntLsbLength":I
    .local p2, "deltaPicOrderAlwaysZeroFlag":Z
    :cond_6
    :goto_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v16

    .line 38566
    .local p3, "maxNumRefFrames":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 38567
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v4

    add-int/lit8 v6, v4, 0x1

    .line 38568
    .local p4, "picWidthInMbs":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    .line 38569
    .local p5, "picHeightInMapUnits":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v21

    .line 38570
    .local p6, "frameMbsOnlyFlag":Z
    rsub-int/lit8 v4, v21, 0x2

    mul-int/2addr v4, v5

    .line 38571
    .local p7, "frameHeightInMbs":I
    if-nez v21, :cond_7

    .line 38572
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 38573
    :cond_7
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 38574
    mul-int/lit8 v17, v6, 0x10

    .line 38575
    .local v5, "frameWidth":I
    mul-int/lit8 v18, v4, 0x10

    .line 38576
    .local v6, "frameHeight":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v4

    .line 38577
    .local p8, "frameCroppingFlag":Z
    if-eqz v4, :cond_8

    .line 38578
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v8

    .line 38579
    .local v10, "frameCropLeftOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v7

    .line 38580
    .local v11, "frameCropRightOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v6

    .line 38581
    .local v12, "frameCropTopOffset":I
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v5

    .line 38582
    .local v17, "frameCropBottomOffset":I
    if-nez v2, :cond_c

    .line 38583
    const/4 v4, 0x1

    .line 38584
    .local v7, "cropUnitX":I
    rsub-int/lit8 v1, v21, 0x2

    .line 38585
    .local v8, "cropUnitY":I
    .end local v18
    .local v7, "cropUnitX":I
    .local v8, "cropUnitY":I
    :goto_4
    add-int/2addr v8, v7

    mul-int/2addr v8, v4

    sub-int v17, v17, v8

    .line 38586
    add-int/2addr v6, v5

    mul-int/2addr v6, v1

    sub-int v18, v18, v6

    .line 38587
    .end local v5    # "frameWidth":I
    .end local v6    # "frameHeight":I
    .local p9, "frameWidth":I
    .local p10, "frameHeight":I
    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 38588
    .local v5, "pixelWidthHeightRatio":F
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    .line 38589
    .local p11, "vuiParametersPresentFlag":Z
    if-eqz v0, :cond_9

    .line 38590
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    .line 38591
    .local v6, "aspectRatioInfoPresentFlag":Z
    if-eqz v0, :cond_9

    .line 38592
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v2

    .line 38593
    .local v7, "aspectRatioIdc":I
    const/16 v0, 0xff

    if-ne v2, v0, :cond_a

    .line 38594
    invoke-virtual {v3, v9}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v0

    .line 38595
    .local v8, "sarWidth":I
    invoke-virtual {v3, v9}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v2

    .line 38596
    .local v9, "sarHeight":I
    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    .line 38597
    int-to-float v1, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    .line 38598
    .end local v5    # "pixelWidthHeightRatio":F
    .local p12, "pixelWidthHeightRatio":F
    :cond_9
    :goto_5
    new-instance v11, Lcom/facebook/ads/redexgen/X/Gp;

    .end local v13    # "picOrderCntType":I
    .local p14, "picOrderCntType":I
    .end local v14    # "chromaFormatIdc":I
    .local p15, "chromaFormatIdc":I
    .end local v15    # "profileIdc":I
    .local p16, "profileIdc":I
    move/from16 v19, v1

    move/from16 p0, v10

    invoke-direct/range {v11 .. v25}, Lcom/facebook/ads/redexgen/X/Gp;-><init>(IIIIIIIFZZIIIZ)V

    return-object v11

    .line 38599
    :cond_a
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A04:[F

    array-length v0, v0

    if-ge v2, v0, :cond_b

    .line 38600
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A04:[F

    aget v1, v0, v2

    goto :goto_5

    .line 38601
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xb

    const/16 v3, 0x23

    const/16 v0, 0x7e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v2, 0xb

    const/16 v0, 0x3f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 38602
    .end local v7    # "aspectRatioIdc":I
    .end local v8    # "sarWidth":I
    :cond_c
    if-ne v2, v1, :cond_e

    const/4 v4, 0x1

    .line 38603
    .local v8, "subWidthC":I
    :goto_6
    if-ne v2, v0, :cond_d

    const/4 v0, 0x2

    .line 38604
    .local v7, "subHeightC":I
    .local v18, "cropUnitX":I
    :cond_d
    rsub-int/lit8 v1, v21, 0x2

    mul-int/2addr v1, v0

    goto :goto_4

    .line 38605
    :cond_e
    const/4 v4, 0x2

    goto :goto_6

    :cond_f
    sget-object v6, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v5, "fn7YpbzvxXlInri96XbQTTrdseuocXrx"

    const/4 v4, 0x5

    aput-object v5, v6, v4

    goto/16 :goto_3

    .line 38606
    :cond_10
    if-ne v10, v0, :cond_13

    .line 38607
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result p2

    .line 38608
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A03()I

    .line 38609
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A03()I

    .line 38610
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v4

    int-to-long v7, v4

    sget-object v6, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v5, v6, v4

    const/4 v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v5, v4, :cond_12

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38611
    .local v10, "numRefFramesInPicOrderCntCycle":J
    :cond_12
    sget-object v6, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v5, "sL3yo27N596gnAOXUx3X3jVDrWZXEmHs"

    const/4 v4, 0x2

    aput-object v5, v6, v4

    const-string v5, "EWRRgQnwInix360952oSCS5kmFFjSZxj"

    const/4 v4, 0x7

    aput-object v5, v6, v4

    const/4 v6, 0x0

    .local v12, "i":I
    .end local v5
    .local v17, "picOrderCntLsbLength":I
    :goto_7
    int-to-long v4, v6

    cmp-long v11, v4, v7

    if-gez v11, :cond_6

    .line 38612
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38613
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 38614
    .end local v10    # "numRefFramesInPicOrderCntCycle":J
    .end local v12    # "i":I
    .end local v17    # "picOrderCntLsbLength":I
    .restart local v5    # "pixelWidthHeightRatio":F
    :cond_13
    sget-object v6, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v5, v6, v4

    const/4 v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v5, v4, :cond_14

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .end local v5    # "pixelWidthHeightRatio":F
    .restart local v17    # "picOrderCntLsbLength":I
    :cond_14
    sget-object v6, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v5, "4FZcyZVF6YdFmLSwekyzJ"

    const/4 v4, 0x3

    aput-object v5, v6, v4

    goto/16 :goto_3
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x41

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x7t
        0xct
        0x17t
        0x0t
        0x19t
        0x14t
        0x1ft
        0x0t
        0x1ft
        0x14t
        0x17t
        0x3ft
        0x58t
        0x4ft
        0x62t
        0x5at
        0x4ft
        0x4dt
        0x5et
        0x4ft
        0x4et
        0xat
        0x4bt
        0x5dt
        0x5at
        0x4ft
        0x4dt
        0x5et
        0x49t
        0x5ct
        0x4bt
        0x5et
        0x53t
        0x59t
        0x49t
        0x53t
        0x4et
        0x4dt
        0xat
        0x60t
        0x4bt
        0x56t
        0x5ft
        0x4ft
        0x24t
        0xat
        0x42t
        0x35t
        0x30t
        0x31t
        0x3bt
        -0x5t
        0x2dt
        0x42t
        0x2ft
        0x17t
        0xat
        0x5t
        0x6t
        0x10t
        -0x30t
        0x9t
        0x6t
        0x17t
        0x4t
    .end array-data
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/Gs;)V
    .locals 6

    .line 38615
    const/4 v5, 0x0

    .local v0, "sizeId":I
    :goto_0
    const/4 v4, 0x4

    if-ge v5, v4, :cond_5

    .line 38616
    const/4 v3, 0x0

    .local v2, "matrixId":I
    :goto_1
    const/4 v0, 0x6

    if-ge v3, v0, :cond_4

    .line 38617
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 38618
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 38619
    .end local v3
    .end local v5
    :cond_0
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1

    const/4 v2, 0x3

    :cond_1
    add-int/2addr v3, v2

    goto :goto_1

    .line 38620
    :cond_2
    shl-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v4

    shl-int v1, v2, v0

    const/16 v0, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 38621
    .local v3, "coefNum":I
    if-le v5, v2, :cond_3

    .line 38622
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A03()I

    .line 38623
    :cond_3
    const/4 v0, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v0, v1, :cond_0

    .line 38624
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A03()I

    .line 38625
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 38626
    .end local v2    # "matrixId":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 38627
    .end local v0    # "sizeId":I
    :cond_5
    return-void
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/Gs;)V
    .locals 18

    .line 38628
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v4

    .line 38629
    .local v0, "numShortTermRefPicSets":I
    const/4 v11, -0x1

    .line 38630
    .local v1, "previousNumNegativePics":I
    const/4 v10, -0x1

    .line 38631
    .local v2, "previousNumPositivePics":I
    const/4 v0, 0x0

    new-array v13, v0, [I

    .line 38632
    .local v4, "previousDeltaPocS0":[I
    new-array v9, v0, [I

    .line 38633
    .local v5, "previousDeltaPocS1":[I
    const/4 v3, 0x0

    .local v6, "stRpsIdx":I
    :goto_0
    if-ge v3, v4, :cond_16

    .line 38634
    const/4 v2, 0x1

    if-eqz v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 38635
    .local v8, "interRefPicSetPredictionFlag":Z
    :goto_1
    if-eqz v0, :cond_e

    .line 38636
    add-int v14, v11, v10

    .line 38637
    .local v9, "previousNumDeltaPocs":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    .line 38638
    .local v10, "deltaRpsSign":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v1

    add-int/2addr v1, v2

    .line 38639
    .local v11, "absDeltaRps":I
    mul-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v17, v0, 0x1

    mul-int v17, v17, v1

    .line 38640
    .local v12, "deltaRps":I
    add-int/lit8 v0, v14, 0x1

    new-array v12, v0, [Z

    .line 38641
    .local v13, "useDeltaFlags":[Z
    const/4 v1, 0x0

    .local v14, "j":I
    :goto_2
    if-gt v1, v14, :cond_1

    .line 38642
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38643
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    aput-boolean v0, v12, v1

    .line 38644
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 38645
    :cond_0
    aput-boolean v2, v12, v1

    goto :goto_3

    .line 38646
    .end local v14    # "j":I
    :cond_1
    const/4 v8, 0x0

    .line 38647
    .local v7, "i":I
    add-int/lit8 v0, v14, 0x1

    new-array v6, v0, [I

    .line 38648
    .local v14, "deltaPocS0":[I
    add-int/lit8 v0, v14, 0x1

    new-array v7, v0, [I

    .line 38649
    .local v15, "deltaPocS1":[I
    add-int/lit8 v2, v10, -0x1

    .local v16, "j":I
    :goto_4
    if-ltz v2, :cond_3

    .line 38650
    aget v1, v9, v2

    add-int v1, v1, v17

    .line 38651
    .local v17, "dPoc":I
    if-gez v1, :cond_2

    add-int v0, v11, v2

    aget-boolean v0, v12, v0

    if-eqz v0, :cond_2

    .line 38652
    add-int/lit8 v0, v8, 0x1

    .end local v7    # "i":I
    .local p0, "i":I
    aput v1, v6, v8

    move v8, v0

    .line 38653
    .end local v17    # "dPoc":I
    .end local p0    # "i":I
    .restart local v7    # "i":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 38654
    .end local v16    # "j":I
    :cond_3
    if-gez v17, :cond_4

    aget-boolean v0, v12, v14

    if-eqz v0, :cond_4

    .line 38655
    add-int/lit8 v0, v8, 0x1

    .end local v7    # "i":I
    .local v16, "i":I
    aput v17, v6, v8

    move v8, v0

    .line 38656
    .end local v16    # "i":I
    .restart local v7    # "i":I
    :cond_4
    const/4 v5, 0x0

    .local v3, "j":I
    :goto_5
    if-ge v5, v11, :cond_8

    .line 38657
    aget v16, v13, v5

    add-int v16, v16, v17

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_15

    .line 38658
    .restart local v17    # "dPoc":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "0xLwbNcICqBOIGnxvrVU0VkzUAjp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-gez v16, :cond_5

    aget-boolean v15, v12, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "OJAEm2QqqrF2kr0XAoMunq3AjjwiYhOO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "NvnxbUpcm9NzKSDUaYgmh21cCcr7HCKV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v15, :cond_5

    .line 38659
    :goto_6
    add-int/lit8 v15, v8, 0x1

    .end local v7    # "i":I
    .restart local p0    # "i":I
    aput v16, v6, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "ZxDUqDztknTqk0noe7cSqrpf0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    move v8, v15

    .line 38660
    .end local v17    # "dPoc":I
    .end local p0    # "i":I
    .restart local v7    # "i":I
    :cond_5
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    move v8, v15

    goto :goto_7

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "O1Oy4mT2J3IqGA0cLz7TSW3zbNH41BLw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "bMAFoAVZGrulVErqDQ8z4qjQetYlIImf"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v15, :cond_5

    goto :goto_6

    .line 38661
    .end local v3    # "j":I
    .local v3, "numNegativePics":I
    :cond_8
    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 38662
    const/4 v5, 0x0

    .line 38663
    add-int/lit8 v2, v11, -0x1

    .local v17, "j":I
    :goto_8
    if-ltz v2, :cond_a

    .line 38664
    aget v1, v13, v2

    add-int v1, v1, v17

    .line 38665
    .local p0, "dPoc":I
    if-lez v1, :cond_9

    aget-boolean v0, v12, v2

    if-eqz v0, :cond_9

    .line 38666
    add-int/lit8 v0, v5, 0x1

    .end local v7    # "i":I
    .local p1, "i":I
    aput v1, v7, v5

    move v5, v0

    .line 38667
    .end local p0    # "dPoc":I
    .end local p1
    .restart local v7    # "i":I
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 38668
    .end local v17    # "j":I
    :cond_a
    if-lez v17, :cond_b

    aget-boolean v13, v12, v14

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "tgnVuwGZauQZxVLXvW8ZTDaij"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v13, :cond_b

    .line 38669
    :goto_9
    add-int/lit8 v0, v5, 0x1

    .end local v7    # "i":I
    .local v17, "i":I
    aput v17, v7, v5

    move v5, v0

    .line 38670
    .end local v17    # "i":I
    .restart local v7    # "i":I
    :cond_b
    const/4 v2, 0x0

    .local v0, "j":I
    .local v17, "numShortTermRefPicSets":I
    :goto_a
    if-ge v2, v10, :cond_10

    .line 38671
    aget v1, v9, v2

    add-int v1, v1, v17

    .line 38672
    .restart local p0    # "dPoc":I
    if-lez v1, :cond_c

    add-int v0, v11, v2

    aget-boolean v0, v12, v0

    if-eqz v0, :cond_c

    .line 38673
    add-int/lit8 v0, v5, 0x1

    .end local v7    # "i":I
    .restart local p1
    aput v1, v7, v5

    move v5, v0

    .line 38674
    .end local p0    # "dPoc":I
    .end local p1
    .restart local v7    # "i":I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "U"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v13, :cond_b

    goto :goto_9

    .line 38675
    .end local v3    # "numNegativePics":I
    .end local v7    # "i":I
    .end local v14    # "deltaPocS0":[I
    .end local v17    # "numShortTermRefPicSets":I
    .local v0, "numShortTermRefPicSets":I
    .end local v0    # "numShortTermRefPicSets":I
    .restart local v17    # "numShortTermRefPicSets":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v8

    .line 38676
    .restart local v3    # "numNegativePics":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v5

    .line 38677
    .local v0, "numPositivePics":I
    new-array v6, v8, [I

    .line 38678
    .restart local v14    # "deltaPocS0":[I
    const/4 v1, 0x0

    .local v9, "i":I
    :goto_b
    if-ge v1, v8, :cond_f

    .line 38679
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v0

    add-int/2addr v0, v2

    aput v0, v6, v1

    .line 38680
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 38681
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 38682
    .end local v9    # "i":I
    :cond_f
    new-array v9, v5, [I

    .line 38683
    .local v9, "deltaPocS1":[I
    const/4 v1, 0x0

    .local v10, "i":I
    :goto_c
    if-ge v1, v5, :cond_11

    .line 38684
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v0

    add-int/2addr v0, v2

    aput v0, v9, v1

    .line 38685
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 38686
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 38687
    .end local v0    # "numPositivePics":I
    :cond_10
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_12

    .line 38688
    .local v0, "numPositivePics":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "VNLYj4nIEG05kgLFUbTjhWBq9LKgRHZO"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    .line 38689
    .end local v9    # "deltaPocS1":[I
    .end local v10    # "i":I
    .end local v11    # "absDeltaRps":I
    .end local v12    # "deltaRps":I
    .end local v13    # "useDeltaFlags":[Z
    .end local v15    # "deltaPocS1":[I
    .local v7, "deltaPocS1":[I
    .end local v9
    .end local v10
    .restart local v7    # "deltaPocS1":[I
    :cond_11
    :goto_d
    move v11, v8

    .line 38690
    move v10, v5

    .line 38691
    move-object v13, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_13

    .line 38692
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "MHTDjP3q9jqJvcAulQ6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "VeGKMo1LwbXx0TG7y0g"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 38693
    .end local v0    # "numPositivePics":I
    .end local v3    # "numNegativePics":I
    .end local v7    # "deltaPocS1":[I
    .end local v8    # "interRefPicSetPredictionFlag":Z
    .end local v14    # "deltaPocS0":[I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 38694
    .local v0, "numPositivePics":I
    :cond_12
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A02:[Ljava/lang/String;

    const-string v1, "zCcqrsPkSftUPRel4Z8ZE6iGY8rnHFMe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "knHf2kXaFD2hm93xyPTTBZZ0wItiA7C5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    .line 38695
    .end local v9
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    .end local v15
    .local v7, "deltaPocS1":[I
    goto :goto_d

    .line 38696
    .end local v0    # "numPositivePics":I
    .end local v3
    .end local v7    # "deltaPocS1":[I
    .end local v8
    .end local v14
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 38697
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38698
    .end local v6    # "stRpsIdx":I
    .end local v17    # "numShortTermRefPicSets":I
    .local v0, "numShortTermRefPicSets":I
    :cond_16
    return-void
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/Gs;I)V
    .locals 3

    .line 38699
    const/16 v2, 0x8

    .line 38700
    .local v0, "lastScale":I
    const/16 v0, 0x8

    .line 38701
    .local v1, "nextScale":I
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 38702
    if-eqz v0, :cond_0

    .line 38703
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A03()I

    move-result v0

    .line 38704
    .local p0, "deltaScale":I
    add-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    .line 38705
    .end local p0    # "deltaScale":I
    :cond_0
    if-nez v0, :cond_1

    .line 38706
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38707
    :cond_1
    move v2, v0

    goto :goto_1

    .line 38708
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public static A0G(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 38709
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 38710
    .local v0, "length":I
    const/4 v4, 0x0

    .line 38711
    .local v1, "consecutiveZeros":I
    const/4 v3, 0x0

    .line 38712
    .local v2, "offset":I
    :goto_0
    add-int/lit8 v0, v3, 0x1

    if-ge v0, v5, :cond_3

    .line 38713
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v2, v0, 0xff

    .line 38714
    .local v3, "value":I
    const/4 v0, 0x3

    if-ne v4, v0, :cond_0

    .line 38715
    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    const/4 v0, 0x7

    if-ne v1, v0, :cond_1

    .line 38716
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 38717
    .local v4, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v0, v3, -0x3

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38718
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 38719
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38720
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 38721
    return-void

    .line 38722
    .end local v4    # "offsetData":Ljava/nio/ByteBuffer;
    :cond_0
    if-nez v2, :cond_1

    .line 38723
    add-int/lit8 v4, v4, 0x1

    .line 38724
    :cond_1
    if-eqz v2, :cond_2

    .line 38725
    const/4 v4, 0x0

    .line 38726
    .end local v3    # "value":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 38727
    goto :goto_0

    .line 38728
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 38729
    return-void
.end method

.method public static A0H([Z)V
    .locals 2

    .line 38730
    const/4 v1, 0x0

    aput-boolean v1, p0, v1

    .line 38731
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 38732
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 38733
    return-void
.end method

.method public static A0I(Ljava/lang/String;B)Z
    .locals 4

    .line 38734
    const/16 v2, 0x2e

    const/16 v1, 0x9

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v1, p1, 0x1f

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    .line 38735
    :cond_0
    const/16 v2, 0x37

    const/16 v1, 0xa

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v1, p1, 0x7e

    shr-int/2addr v1, v3

    const/16 v0, 0x27

    if-ne v1, v0, :cond_2

    .line 38736
    :cond_1
    :goto_0
    return v3

    .line 38737
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
