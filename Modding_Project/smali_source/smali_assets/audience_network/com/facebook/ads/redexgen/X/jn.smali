.class public final Lcom/facebook/ads/redexgen/X/jn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KR;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/H1;

.field public A03:Lcom/facebook/ads/redexgen/X/KR;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/4J;

.field public final A07:Lcom/facebook/ads/redexgen/X/KS;

.field public final A08:Lcom/facebook/ads/redexgen/X/KS;

.field public final A09:Lcom/facebook/ads/redexgen/X/KS;

.field public final A0A:Lcom/facebook/ads/redexgen/X/KS;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KS;

.field public final A0C:Lcom/facebook/ads/redexgen/X/KX;

.field public final A0D:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3025
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "InS58bT42EZESXm9qvWYUvire34TyqEd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0QsKXE5Mty2kdKkFlxzakLoeZj9v1JPl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NRhrqdNeBR4CDjsc7Q9NAC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KBnn09jRwf0uKhIPK3OJ0VUHuR4AgDGD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Nq6SUzmzwDzIZ8w7Fc8GQLnhk8OKIhKk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EhougHeDeIMt7rS1ZxwR1ONoVKreOkGZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "d5GlJf2nLv2o9PLs5SG9FlMqVuWi5Y0h"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iroqlmoe0TAfPMqOpys1zY2UwesgA9Cl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jn;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KX;)V
    .locals 3

    .line 90281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90282
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jn;->A0C:Lcom/facebook/ads/redexgen/X/KX;

    .line 90283
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0D:[Z

    .line 90284
    const/16 v1, 0x20

    const/16 v2, 0x80

    new-instance v0, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/KS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    .line 90285
    const/16 v1, 0x21

    new-instance v0, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/KS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A09:Lcom/facebook/ads/redexgen/X/KS;

    .line 90286
    const/16 v1, 0x22

    new-instance v0, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/KS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A07:Lcom/facebook/ads/redexgen/X/KS;

    .line 90287
    const/16 v1, 0x27

    new-instance v0, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/KS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A08:Lcom/facebook/ads/redexgen/X/KS;

    .line 90288
    const/16 v1, 0x28

    new-instance v0, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/KS;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    .line 90289
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A00:J

    .line 90290
    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A06:Lcom/facebook/ads/redexgen/X/4J;

    .line 90291
    return-void
.end method

.method public static A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KS;Lcom/facebook/ads/redexgen/X/KS;Lcom/facebook/ads/redexgen/X/KS;)Lcom/facebook/ads/redexgen/X/or;
    .locals 22

    .line 90292
    move-object/from16 v5, p1

    iget v1, v5, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    move-object/from16 v3, p2

    iget v0, v3, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    add-int/2addr v1, v0

    move-object/from16 v4, p3

    iget v0, v4, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    add-int/2addr v1, v0

    new-array v10, v1, [B

    .line 90293
    .local v3, "csdData":[B
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget v0, v5, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    const/4 v9, 0x0

    invoke-static {v1, v9, v10, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90294
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget v1, v5, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v2, v9, v10, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90295
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget v1, v5, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    add-int/2addr v1, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v2, v9, v10, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90296
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget v0, v3, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    new-instance v8, Lcom/facebook/ads/redexgen/X/Gs;

    invoke-direct {v8, v1, v9, v0}, Lcom/facebook/ads/redexgen/X/Gs;-><init>([BII)V

    .line 90297
    .local v4, "bitArray":Lcom/facebook/ads/redexgen/X/Gs;
    const/16 v0, 0x2c

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 90298
    const/4 v1, 0x3

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v7

    .line 90299
    .local v7, "maxSubLayersMinus1":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 90300
    const/4 v6, 0x2

    invoke-virtual {v8, v6}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v16

    .line 90301
    .local v15, "generalProfileSpace":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v17

    .line 90302
    .local v16, "generalTierFlag":Z
    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v18

    .line 90303
    .local v17, "generalProfileIdc":I
    const/16 v19, 0x0

    .line 90304
    .local v9, "generalProfileCompatibilityFlags":I
    const/4 v4, 0x0

    .end local v9    # "generalProfileCompatibilityFlags":I
    .local v10, "i":I
    .local v18, "generalProfileCompatibilityFlags":I
    :goto_0
    const/16 v0, 0x20

    const/4 v2, 0x1

    if-ge v4, v0, :cond_1

    .line 90305
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v11

    sget-object v5, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v3, v5, v0

    const/4 v0, 0x5

    aget-object v5, v5, v0

    const/16 v0, 0x16

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_14

    sget-object v5, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const-string v3, "ikltzL6qI9vduPGnQ2PfcHBicoSlJtZK"

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const-string v3, "dtFG8mkM92kb76Motxy98XM75Kybvtjp"

    const/4 v0, 0x6

    aput-object v3, v5, v0

    if-eqz v11, :cond_0

    .line 90306
    shl-int/2addr v2, v4

    or-int v19, v19, v2

    .line 90307
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90308
    .end local v10    # "i":I
    :cond_1
    const/4 v5, 0x6

    sget-object v4, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v3, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0x1a

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const-string v3, "KUK36SaeRyaSjOylRKRM5Zy9KuAImCCo"

    const/4 v0, 0x7

    aput-object v3, v4, v0

    new-array v0, v5, [I

    .line 90309
    .local v14, "constraintBytes":[I
    const/4 v3, 0x0

    .local v9, "i":I
    :goto_1
    array-length v4, v0

    const/16 v5, 0x8

    if-ge v3, v4, :cond_3

    .line 90310
    invoke-virtual {v8, v5}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v4

    aput v4, v0, v3

    .line 90311
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90312
    .end local v9    # "i":I
    :cond_3
    invoke-virtual {v8, v5}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v21

    .line 90313
    .local v19, "generalLevelIdc":I
    const/4 v4, 0x0

    .line 90314
    .local v9, "toSkip":I
    const/4 v3, 0x0

    .end local v9    # "toSkip":I
    .restart local v10    # "i":I
    .local v13, "toSkip":I
    :goto_2
    if-ge v3, v7, :cond_6

    .line 90315
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 90316
    add-int/lit8 v4, v4, 0x59

    .line 90317
    :cond_4
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 90318
    add-int/lit8 v4, v4, 0x8

    .line 90319
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 90320
    .end local v10    # "i":I
    :cond_6
    invoke-virtual {v8, v4}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 90321
    if-lez v7, :cond_7

    .line 90322
    rsub-int/lit8 v3, v7, 0x8

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 90323
    :cond_7
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90324
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v3

    .line 90325
    .local v10, "chromaFormatIdc":I
    if-ne v3, v1, :cond_8

    .line 90326
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 90327
    :cond_8
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v4

    .line 90328
    .local v5, "picWidthInLumaSamples":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v1

    .line 90329
    .local v9, "picHeightInLumaSamples":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 90330
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v15

    .line 90331
    .local v20, "confWinLeftOffset":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v14

    .line 90332
    .local v21, "confWinRightOffset":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v13

    .line 90333
    .local p0, "confWinTopOffset":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v12

    .line 90334
    .local p1, "confWinBottomOffset":I
    if-eq v3, v2, :cond_9

    if-ne v3, v6, :cond_e

    :cond_9
    const/4 v11, 0x2

    .line 90335
    .local p2, "subWidthC":I
    :goto_3
    if-ne v3, v2, :cond_a

    const/4 v2, 0x2

    .line 90336
    .local v11, "subHeightC":I
    :cond_a
    add-int/2addr v15, v14

    mul-int/2addr v15, v11

    sub-int/2addr v4, v15

    .line 90337
    add-int/2addr v13, v12

    mul-int/2addr v13, v2

    sub-int/2addr v1, v13

    .line 90338
    .end local v11    # "subHeightC":I
    .end local v20    # "confWinLeftOffset":I
    .end local v21    # "confWinRightOffset":I
    .end local p0    # "confWinTopOffset":I
    .end local p1    # "confWinBottomOffset":I
    .end local p2    # "subWidthC":I
    :cond_b
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90339
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90340
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v12

    .line 90341
    .local v20, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    if-eqz v2, :cond_d

    .local v6, "i":I
    :goto_4
    if-gt v9, v7, :cond_f

    .line 90342
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90343
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    sget-object v11, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v2, v11, v2

    const/4 v3, 0x6

    aget-object v11, v11, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_c

    .line 90344
    sget-object v11, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const-string v3, "fwNj3DlAlR0ZRIXGIjbE9kdq2ymmau9c"

    const/4 v2, 0x4

    aput-object v3, v11, v2

    const-string v3, "Cn1Ujy3ajzEe008QMYirASp4B4RzqpC3"

    const/4 v2, 0x6

    aput-object v3, v11, v2

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90345
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 90346
    :cond_c
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90347
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_d
    move v9, v7

    goto :goto_4

    .line 90348
    :cond_e
    const/4 v11, 0x1

    goto :goto_3

    .line 90349
    .end local v6    # "i":I
    :cond_f
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90350
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90351
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90352
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90353
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    sget-object v3, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v3, v3, v2

    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x65

    if-eq v3, v2, :cond_12

    .line 90354
    sget-object v7, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const-string v3, "36O4TNRZJCi"

    const/4 v2, 0x2

    aput-object v3, v7, v2

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90355
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    .line 90356
    .local v6, "scalingListEnabled":Z
    if-eqz v2, :cond_10

    :goto_5
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 90357
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/jn;->A06(Lcom/facebook/ads/redexgen/X/Gs;)V

    .line 90358
    :cond_10
    invoke-virtual {v8, v6}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 90359
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 90360
    invoke-virtual {v8, v5}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 90361
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90362
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90363
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 90364
    :cond_11
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/jn;->A07(Lcom/facebook/ads/redexgen/X/Gs;)V

    .line 90365
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 90366
    const/4 v3, 0x0

    .local v11, "i":I
    :goto_6
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v2

    if-ge v3, v2, :cond_13

    .line 90367
    add-int/lit8 v2, v12, 0x4

    .line 90368
    .local v12, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 90369
    .end local v12    # "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 90370
    :cond_12
    sget-object v7, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const-string v3, "kgp7PzaRA7bebGNLV6O0LLC564MCujGY"

    const/4 v2, 0x1

    aput-object v3, v7, v2

    const-string v3, "FSYBvyZkCpJq4xL9y4GBHyTimpUH7OJt"

    const/4 v2, 0x5

    aput-object v3, v7, v2

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90371
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    .line 90372
    .local v6, "scalingListEnabled":Z
    if-eqz v2, :cond_10

    goto :goto_5

    .line 90373
    .end local v11    # "i":I
    :cond_13
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 90374
    const/high16 v6, 0x3f800000    # 1.0f

    .line 90375
    .local v8, "pixelWidthHeightRatio":F
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v7

    sget-object v5, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v5, v2

    const/4 v2, 0x0

    aget-object v5, v5, v2

    const/16 v2, 0x1a

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_15

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_15
    sget-object v5, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const-string v3, "Qhh03oXiZoC3MQNHpV44xa4z9JOwBySi"

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const-string v3, "nsJWuxtHUvrlBy67rSbmxe3xvaeZTSox"

    const/4 v2, 0x5

    aput-object v3, v5, v2

    if-eqz v7, :cond_1a

    .line 90376
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 90377
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v5

    .line 90378
    .local v11, "aspectRatioIdc":I
    const/16 v2, 0xff

    if-ne v5, v2, :cond_1b

    .line 90379
    const/16 v2, 0x10

    invoke-virtual {v8, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v3

    .line 90380
    .local v0, "sarWidth":I
    invoke-virtual {v8, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A05(I)I

    move-result v2

    .line 90381
    .local v12, "sarHeight":I
    if-eqz v3, :cond_16

    if-eqz v2, :cond_16

    .line 90382
    int-to-float v6, v3

    .end local v0    # "sarWidth":I
    .local v21, "sarWidth":I
    int-to-float v2, v2

    div-float/2addr v6, v2

    .line 90383
    .end local v11    # "aspectRatioIdc":I
    :cond_16
    :goto_7
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 90384
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 90385
    :cond_17
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 90386
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 90387
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 90388
    const/16 v2, 0x18

    invoke-virtual {v8, v2}, Lcom/facebook/ads/redexgen/X/Gs;->A07(I)V

    .line 90389
    :cond_18
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 90390
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90391
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90392
    :cond_19
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 90393
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 90394
    mul-int/lit8 v1, v1, 0x2

    .line 90395
    .end local v9    # "picHeightInLumaSamples":I
    .local v0, "picHeightInLumaSamples":I
    .end local v10    # "chromaFormatIdc":I
    .local v1, "chromaFormatIdc":I
    .end local v13    # "toSkip":I
    .local v21, "toSkip":I
    .end local v14    # "constraintBytes":[I
    .local p0, "constraintBytes":[I
    :cond_1a
    move-object/from16 v20, v0

    invoke-static/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/3U;->A03(IZII[II)Ljava/lang/String;

    move-result-object v7

    .line 90396
    .local v9, "codecs":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 90397
    move-object/from16 v2, p0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2D;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v5

    .line 90398
    const/16 v3, 0x2d

    const/16 v2, 0xa

    const/16 v0, 0x3a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/jn;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90399
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/2D;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90400
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2D;->A0r(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90401
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2D;->A0f(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90402
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2D;->A0Y(F)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 90403
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90404
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 90405
    return-object v0

    .line 90406
    :cond_1b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A04:[F

    array-length v2, v2

    if-ge v5, v2, :cond_1c

    .line 90407
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A04:[F

    aget v6, v2, v5

    goto :goto_7

    .line 90408
    :cond_1c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0xa

    const/16 v3, 0x23

    const/16 v2, 0x7b

    invoke-static {v9, v3, v2}, Lcom/facebook/ads/redexgen/X/jn;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    const/16 v3, 0xa

    const/16 v2, 0x3c

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/jn;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/jn;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x73

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    .line 90409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A02:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90410
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x37

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jn;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x7dt
        0x79t
        0x7at
        0x1dt
        0x2at
        0x2et
        0x2bt
        0x2at
        0x3dt
        0x5dt
        0x66t
        0x6dt
        0x70t
        0x78t
        0x6dt
        0x6bt
        0x7ct
        0x6dt
        0x6ct
        0x28t
        0x69t
        0x7bt
        0x78t
        0x6dt
        0x6bt
        0x7ct
        0x57t
        0x7at
        0x69t
        0x7ct
        0x61t
        0x67t
        0x57t
        0x61t
        0x6ct
        0x6bt
        0x28t
        0x7et
        0x69t
        0x64t
        0x7dt
        0x6dt
        0x32t
        0x28t
        0x3ft
        0x20t
        0x2dt
        0x2ct
        0x26t
        0x66t
        0x21t
        0x2ct
        0x3ft
        0x2at
    .end array-data
.end method

.method private A04(JIIJ)V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    .line 90411
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A03:Lcom/facebook/ads/redexgen/X/KR;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A05:Z

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/KR;->A05(JIZ)V

    .line 90412
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A05:Z

    if-nez v0, :cond_0

    .line 90413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/KS;->A04(I)Z

    .line 90414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A09:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/KS;->A04(I)Z

    .line 90415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A07:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/KS;->A04(I)Z

    .line 90416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A09:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A07:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90417
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/jn;->A02:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jn;->A04:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jn;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A09:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A07:Lcom/facebook/ads/redexgen/X/KS;

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/jn;->A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/KS;Lcom/facebook/ads/redexgen/X/KS;Lcom/facebook/ads/redexgen/X/KS;)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 90418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A05:Z

    .line 90419
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jn;->A08:Lcom/facebook/ads/redexgen/X/KS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const-string v1, "vr6kqTkennNRVlA9BYLGssdVYhiLrcAb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, p4}, Lcom/facebook/ads/redexgen/X/KS;->A04(I)Z

    move-result v1

    const/4 v0, 0x5

    if-eqz v1, :cond_1

    .line 90420
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A08:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A08:Lcom/facebook/ads/redexgen/X/KS;

    iget v1, v1, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/Gq;->A02([BI)I

    move-result v3

    .line 90421
    .local v0, "unescapedLength":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jn;->A06:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A08:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    invoke-virtual {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 90422
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A06:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 90423
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jn;->A0C:Lcom/facebook/ads/redexgen/X/KX;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A06:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v2, p5, p6, v1}, Lcom/facebook/ads/redexgen/X/KX;->A02(JLcom/facebook/ads/redexgen/X/4J;)V

    .line 90424
    .end local v0    # "unescapedLength":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v1, p4}, Lcom/facebook/ads/redexgen/X/KS;->A04(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90425
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    iget v1, v1, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/Gq;->A02([BI)I

    move-result v3

    .line 90426
    .restart local v0    # "unescapedLength":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jn;->A06:Lcom/facebook/ads/redexgen/X/4J;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    invoke-virtual {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0j([BI)V

    .line 90427
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A06:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 90428
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A0C:Lcom/facebook/ads/redexgen/X/KX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A06:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v1, p5, p6, v0}, Lcom/facebook/ads/redexgen/X/KX;->A02(JLcom/facebook/ads/redexgen/X/4J;)V

    .line 90429
    .end local v0    # "unescapedLength":I
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05(JIIJ)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 90430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A03:Lcom/facebook/ads/redexgen/X/KR;

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/jn;->A05:Z

    move-wide v5, p5

    move v4, p4

    move v3, p3

    move-wide v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/KR;->A04(JIIJZ)V

    .line 90431
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A05:Z

    if-nez v0, :cond_0

    .line 90432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/KS;->A01(I)V

    .line 90433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A09:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/KS;->A01(I)V

    .line 90434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A07:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/KS;->A01(I)V

    .line 90435
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/KS;->A01(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 90436
    sget-object v2, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const-string v1, "1KFxNiiYNj5YwxcZPXf7qOLOZg48Utfw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "AJhXWbHH6DfoOyxWmdhumfQDrV4Rkjlm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/KS;->A01(I)V

    .line 90437
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Gs;)V
    .locals 9

    .line 90438
    const/4 v8, 0x0

    .local v0, "sizeId":I
    :goto_0
    const/4 v7, 0x4

    if-ge v8, v7, :cond_6

    .line 90439
    const/4 v6, 0x0

    .local v2, "matrixId":I
    :goto_1
    const/4 v0, 0x6

    if-ge v6, v0, :cond_4

    .line 90440
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_2

    .line 90441
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90442
    .end local v3
    .end local v5
    :cond_0
    const/4 v0, 0x3

    if-ne v8, v0, :cond_1

    const/4 v5, 0x3

    :cond_1
    add-int/2addr v6, v5

    goto :goto_1

    .line 90443
    :cond_2
    shl-int/lit8 v0, v8, 0x1

    add-int/2addr v0, v7

    shl-int v1, v5, v0

    const/16 v0, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 90444
    .local v3, "coefNum":I
    if-le v8, v5, :cond_3

    .line 90445
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A03()I

    .line 90446
    :cond_3
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v3, v4, :cond_0

    .line 90447
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A03()I

    sget-object v2, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 90448
    sget-object v2, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const-string v1, "RIQaKQF3d2DPjAKRmkcEP1Qw2m8MXhOp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Zvlj8YgWRgjcS6ffkQSgKy13bXSJEEo8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 90449
    .end local v2    # "matrixId":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 90450
    .end local v0    # "sizeId":I
    :cond_6
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/Gs;)V
    .locals 7

    .line 90451
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v6

    .line 90452
    .local v0, "numShortTermRefPicSets":I
    const/4 v5, 0x0

    .line 90453
    .local v1, "interRefPicSetPredictionFlag":Z
    const/4 v4, 0x0

    .line 90454
    .local v2, "previousNumDeltaPocs":I
    const/4 v3, 0x0

    .local v3, "stRpsIdx":I
    :goto_0
    if-ge v3, v6, :cond_5

    .line 90455
    if-eqz v3, :cond_0

    .line 90456
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v5

    .line 90457
    :cond_0
    if-eqz v5, :cond_2

    .line 90458
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 90459
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90460
    const/4 v1, 0x0

    .local v4, "j":I
    :goto_1
    if-gt v1, v4, :cond_4

    .line 90461
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90462
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 90463
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90464
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v2

    .line 90465
    .local v4, "numNegativePics":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    move-result v1

    .line 90466
    .local v5, "numPositivePics":I
    add-int v4, v2, v1

    .line 90467
    const/4 v0, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 90468
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90469
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 90470
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 90471
    .end local v6    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v0, v1, :cond_4

    .line 90472
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A04()I

    .line 90473
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gs;->A06()V

    .line 90474
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 90475
    .end local v4    # "numNegativePics":I
    .end local v5    # "numPositivePics":I
    .end local v6    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90476
    .end local v3    # "stRpsIdx":I
    :cond_5
    return-void
.end method

.method private A08([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 90477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A03:Lcom/facebook/ads/redexgen/X/KR;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KR;->A06([BII)V

    .line 90478
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A05:Z

    if-nez v0, :cond_0

    .line 90479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KS;->A02([BII)V

    .line 90480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A09:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KS;->A02([BII)V

    .line 90481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A07:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KS;->A02([BII)V

    .line 90482
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KS;->A02([BII)V

    .line 90483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KS;->A02([BII)V

    .line 90484
    return-void
.end method


# virtual methods
.method public final A52(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 18

    .line 90485
    move-object/from16 v5, p0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/jn;->A02()V

    .line 90486
    :cond_0
    move-object/from16 v2, p1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lez v0, :cond_5

    .line 90487
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v8

    .line 90488
    .local v0, "offset":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v4

    .line 90489
    .local v8, "limit":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v3

    .line 90490
    .local v9, "dataArray":[B
    iget-wide v6, v5, Lcom/facebook/ads/redexgen/X/jn;->A01:J

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v6, v0

    iput-wide v6, v5, Lcom/facebook/ads/redexgen/X/jn;->A01:J

    .line 90491
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/jn;->A02:Lcom/facebook/ads/redexgen/X/H1;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 90492
    .end local v0    # "offset":I
    .local v11, "offset":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 90493
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/jn;->A0D:[Z

    invoke-static {v3, v8, v4, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A04([BII[Z)I

    move-result v2

    .line 90494
    .local v12, "nalUnitOffset":I
    if-ne v2, v4, :cond_1

    .line 90495
    invoke-direct {v5, v3, v8, v4}, Lcom/facebook/ads/redexgen/X/jn;->A08([BII)V

    .line 90496
    return-void

    .line 90497
    :cond_1
    invoke-static {v3, v2}, Lcom/facebook/ads/redexgen/X/Gq;->A00([BI)I

    move-result v15

    .line 90498
    .local v13, "nalUnitType":I
    sub-int v7, v2, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 90499
    .local v14, "lengthToNalUnit":I
    :cond_2
    sget-object v6, Lcom/facebook/ads/redexgen/X/jn;->A0F:[Ljava/lang/String;

    const-string v1, "NnhvxMiSCkNhwXkURhMspTAR6cceqM1j"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const-string v1, "7ARxjazDMsknrtTfPy5OOEp3py29nWBE"

    const/4 v0, 0x5

    aput-object v1, v6, v0

    if-lez v7, :cond_3

    .line 90500
    invoke-direct {v5, v3, v8, v2}, Lcom/facebook/ads/redexgen/X/jn;->A08([BII)V

    .line 90501
    :cond_3
    sub-int v10, v4, v2

    .line 90502
    .local v15, "bytesWrittenPastPosition":I
    iget-wide v8, v5, Lcom/facebook/ads/redexgen/X/jn;->A01:J

    int-to-long v0, v10

    sub-long/2addr v8, v0

    .line 90503
    .local v16, "absolutePosition":J
    if-gez v7, :cond_4

    neg-int v11, v7

    :goto_1
    iget-wide v12, v5, Lcom/facebook/ads/redexgen/X/jn;->A00:J

    .line 90504
    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/jn;->A04(JIIJ)V

    .line 90505
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/jn;->A00:J

    move-object v11, v7

    move-wide v12, v8

    move v14, v10

    move-wide/from16 v16, v0

    invoke-direct/range {v11 .. v17}, Lcom/facebook/ads/redexgen/X/jn;->A05(JIIJ)V

    .line 90506
    add-int/lit8 v8, v2, 0x3

    .line 90507
    .end local v12    # "nalUnitOffset":I
    .end local v13    # "nalUnitType":I
    .end local v14    # "lengthToNalUnit":I
    .end local v15    # "bytesWrittenPastPosition":I
    .end local v16    # "absolutePosition":J
    goto :goto_0

    .line 90508
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 90509
    :cond_5
    return-void
.end method

.method public final A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 2

    .line 90510
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A05()V

    .line 90511
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A04:Ljava/lang/String;

    .line 90512
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A02:Lcom/facebook/ads/redexgen/X/H1;

    .line 90513
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jn;->A02:Lcom/facebook/ads/redexgen/X/H1;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KR;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KR;-><init>(Lcom/facebook/ads/redexgen/X/H1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A03:Lcom/facebook/ads/redexgen/X/KR;

    .line 90514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0C:Lcom/facebook/ads/redexgen/X/KX;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/KX;->A03(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V

    .line 90515
    return-void
.end method

.method public final AG5()V
    .locals 0

    .line 90516
    return-void
.end method

.method public final AG6(JI)V
    .locals 3

    .line 90517
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 90518
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/jn;->A00:J

    .line 90519
    :cond_0
    return-void
.end method

.method public final AIL()V
    .locals 2

    .line 90520
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A01:J

    .line 90521
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A00:J

    .line 90522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0D:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gq;->A0H([Z)V

    .line 90523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0B:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .line 90524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A09:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .line 90525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A07:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .line 90526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A08:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .line 90527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A0A:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00()V

    .line 90528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A03:Lcom/facebook/ads/redexgen/X/KR;

    if-eqz v0, :cond_0

    .line 90529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jn;->A03:Lcom/facebook/ads/redexgen/X/KR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KR;->A03()V

    .line 90530
    :cond_0
    return-void
.end method
