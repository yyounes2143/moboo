.class public abstract Lcom/facebook/ads/redexgen/X/IO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    type = {
        "INCREASE_VISIBILITY"
    }
    value = "To support OculusMp4Extractor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/IN;,
        Lcom/facebook/ads/redexgen/X/IM;,
        Lcom/facebook/ads/redexgen/X/kh;,
        Lcom/facebook/ads/redexgen/X/kg;,
        Lcom/facebook/ads/redexgen/X/IL;,
        Lcom/facebook/ads/redexgen/X/IJ;,
        Lcom/facebook/ads/redexgen/X/IK;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[B

.field public static final A03:[I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Needed for oculus customization"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 767
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3VpIAtFn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NjWxo0tcAFilzYXB2gd1dub2S4KYfC0G"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7dc9OwNzjfbA4WDbGdH3UDrd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kTLJpOKA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "odl5U202HvuloegJiYsgd2o0Bsn6ktlS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Tqd8q9EAW1nxLdrfn3G624yWy86zlBE3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GM6CYLF4x47fKf9mrP144TBtf3lMkKEe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FJhXpGWKImafMZTrlZrsHtUKnb1aBvQ9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IO;->A0P()V

    const v3, -0x77eba786

    const v2, 0x2521fdd

    const v1, -0x337d9d

    const v0, -0x7aab56d

    filled-new-array {v1, v0, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/IO;->A03:[I

    .line 768
    const/16 v2, 0x15f

    const/16 v1, 0x8

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A1G(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/IO;->A02:[B

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4J;I)F
    .locals 2

    .line 40339
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40340
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v1

    .line 40341
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v0

    .line 40342
    .local v1, "vSpacing":I
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public static A01(I)I
    .locals 4

    .line 40343
    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    .line 40344
    const/4 v0, 0x1

    return v0

    .line 40345
    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    .line 40346
    const/4 v0, 0x2

    return v0

    .line 40347
    :cond_1
    const v3, 0x74657874

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "Iy7m3jJh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "9tkcHcc8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_2

    const v0, 0x7362746c

    if-eq p0, v0, :cond_2

    const v0, 0x73756274

    if-eq p0, v0, :cond_2

    const v0, 0x636c6370

    if-ne p0, v0, :cond_3

    .line 40348
    :cond_2
    const/4 v0, 0x3

    return v0

    .line 40349
    :cond_3
    const v0, 0x6d657461

    if-ne p0, v0, :cond_4

    .line 40350
    const/4 v0, 0x5

    return v0

    .line 40351
    :cond_4
    const/4 v0, -0x1

    return v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4J;)I
    .locals 6

    .line 40352
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v3

    .line 40353
    .local v0, "currentByte":I
    and-int/lit8 v4, v3, 0x7f

    .line 40354
    .local v1, "size":I
    :goto_0
    and-int/lit16 v5, v3, 0x80

    const/16 v3, 0x80

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "pSNibJ1kKp1RE21akOqiyNuWX3n84SWQ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_1

    .line 40355
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v3

    .line 40356
    shl-int/lit8 v4, v4, 0x7

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "dUXzi2Ex"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "FqHw8aws"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    and-int/lit8 v0, v3, 0x7f

    or-int/2addr v4, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "53iEjHDa99dBpQfClHLnj3Lr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    and-int/lit8 v0, v3, 0x7f

    or-int/2addr v4, v0

    goto :goto_0

    .line 40357
    :cond_1
    return v4

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4J;)I
    .locals 1

    .line 40358
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40359
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    return v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/4J;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 40360
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v3

    .line 40361
    .local v0, "childAtomPosition":I
    if-lt v3, p2, :cond_3

    const/4 v1, 0x1

    :goto_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 40362
    :goto_1
    sub-int v0, v3, p2

    if-ge v0, p3, :cond_4

    .line 40363
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40364
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v6

    .line 40365
    .local v3, "childAtomSize":I
    if-lez v6, :cond_2

    const/4 v4, 0x1

    :goto_2
    const/16 v5, 0x442

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "6gtDIh58mAlo0zqgdjwPUqi1ndJRBK82"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "DRBAnAjKoyJp6qnYv3HHxzBKoLLYYD5q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v1, 0x1e

    const/16 v0, 0x4f

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 40366
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 40367
    .local v4, "childType":I
    if-ne v0, p1, :cond_1

    .line 40368
    return v3

    .line 40369
    :cond_1
    add-int/2addr v3, v6

    .line 40370
    .end local v3    # "childAtomSize":I
    .end local v4    # "childType":I
    goto :goto_1

    .line 40371
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 40372
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 40373
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4J;)J
    .locals 2

    .line 40374
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40375
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 40376
    .local v1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A01(I)I

    move-result v0

    .line 40377
    .local p0, "version":I
    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40378
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v0

    return-wide v0

    .line 40379
    :cond_0
    const/16 v1, 0x10

    goto :goto_0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4J;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4J;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40380
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40381
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 40382
    .local v1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A01(I)I

    move-result v1

    .line 40383
    .local v2, "version":I
    if-nez v1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40384
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v5

    .line 40385
    .local v3, "timescale":J
    if-nez v1, :cond_0

    const/4 v2, 0x4

    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40386
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v4

    .line 40387
    .local v0, "languageCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v0, v4, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v0, v4, 0x5

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, v4, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40388
    .local v5, "language":Ljava/lang/String;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 40389
    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/4J;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4J;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/In;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 40390
    add-int/lit8 v7, p1, 0x8

    .line 40391
    .local v0, "childPosition":I
    const/4 v6, -0x1

    .line 40392
    .local v1, "schemeInformationBoxPosition":I
    const/4 v5, 0x0

    .line 40393
    .local v2, "schemeInformationBoxSize":I
    const/4 v4, 0x0

    .line 40394
    .local v3, "schemeType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 40395
    .local v4, "dataFormat":Ljava/lang/Integer;
    :goto_0
    sub-int v0, v7, p1

    if-ge v0, p2, :cond_4

    .line 40396
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40397
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v10

    .line 40398
    .local v5, "childAtomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v8

    .line 40399
    .local v6, "childAtomType":I
    const v9, 0x66726d61

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "312zVnav"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "fwhHyPzp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v8, v9, :cond_2

    .line 40400
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 40401
    :cond_1
    :goto_2
    add-int/2addr v7, v10

    .line 40402
    .end local v5    # "childAtomSize":I
    .end local v6    # "childAtomType":I
    goto :goto_0

    .line 40403
    :cond_2
    const v0, 0x7363686d

    if-ne v8, v0, :cond_3

    .line 40404
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40405
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0W(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 40406
    :cond_3
    const v0, 0x73636869

    if-ne v8, v0, :cond_1

    .line 40407
    move v6, v7

    .line 40408
    move v5, v10

    goto :goto_2

    .line 40409
    :cond_4
    const/16 v9, 0x43a

    const/4 v8, 0x4

    const/16 v7, 0x4a

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_5

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "Q2dt9svTwucQVjxlQtJloRQWafbIItZ7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v9, v8, v7}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 40410
    const/16 v2, 0x432

    const/4 v1, 0x4

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 40411
    const/16 v2, 0x43e

    const/4 v1, 0x4

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 40412
    const/16 v2, 0x436

    const/4 v1, 0x4

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40413
    :cond_6
    const/4 v8, 0x1

    if-eqz v3, :cond_9

    const/4 v7, 0x1

    :goto_3
    const/16 v2, 0x460

    const/16 v1, 0x16

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 40414
    const/4 v0, -0x1

    if-eq v6, v0, :cond_8

    const/4 v7, 0x1

    :goto_4
    const/16 v2, 0x476

    const/16 v1, 0x16

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 40415
    invoke-static {p0, v6, v5, v4}, Lcom/facebook/ads/redexgen/X/IO;->A0K(Lcom/facebook/ads/redexgen/X/4J;IILjava/lang/String;)Lcom/facebook/ads/redexgen/X/In;

    move-result-object v4

    .line 40416
    .local v7, "encryptionBox":Lcom/facebook/ads/redexgen/X/In;
    if-eqz v4, :cond_7

    :goto_5
    const/16 v2, 0x48c

    const/16 v1, 0x16

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 40417
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/In;

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 40418
    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 40419
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 40420
    :cond_9
    const/4 v7, 0x0

    goto :goto_3

    .line 40421
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/4J;II)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4J;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/In;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 40422
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v3

    .line 40423
    .local v0, "childPosition":I
    :goto_0
    sub-int v4, v3, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "alPn9WvAmZr8sIghV9sZ4SJG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v4, p2, :cond_4

    .line 40424
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 40425
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "bSC6gQO3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "sEisHoVo"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 40426
    .local v1, "childAtomSize":I
    if-lez v0, :cond_2

    :goto_1
    const/4 v5, 0x1

    :goto_2
    const/16 v4, 0x442

    const/16 v2, 0x1e

    const/16 v1, 0x4f

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 40427
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 40428
    .local v2, "childAtomType":I
    const v1, 0x73696e66

    if-ne v2, v1, :cond_3

    .line 40429
    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/IO;->A07(Lcom/facebook/ads/redexgen/X/4J;II)Landroid/util/Pair;

    move-result-object v1

    .line 40430
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v1, :cond_3

    .line 40431
    return-object v1

    .line 40432
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "sCQufaVXehZdAx160HDrkvqq2FYTSg6V"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "xgFgm7GbjtAXUGsxujgneuzUGgVoDuJS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 40433
    .local v1, "childAtomSize":I
    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 40434
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    :cond_3
    add-int/2addr v3, v0

    .line 40435
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 40436
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/kj;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/kj;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 40437
    const v0, 0x656c7374

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v0

    .line 40438
    .local v0, "elstAtom":Lcom/facebook/ads/redexgen/X/ki;
    if-nez v0, :cond_0

    .line 40439
    const/4 v0, 0x0

    return-object v0

    .line 40440
    :cond_0
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 40441
    .local v1, "elstData":Lcom/facebook/ads/redexgen/X/4J;
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "nlx0JEXKjNTNdSyjBy8qhdzuridSUNe7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "QPF9oPdHODxNb0EXvgymvar5stnTE0Tg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40442
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 40443
    .local v2, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A01(I)I

    move-result v3

    .line 40444
    .local v3, "version":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v2

    .line 40445
    .local v4, "entryCount":I
    new-array v1, v2, [J

    .line 40446
    .local v5, "editListDurations":[J
    new-array v0, v2, [J

    .line 40447
    .local v6, "editListMediaTimes":[J
    const/4 v5, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v5, v2, :cond_4

    .line 40448
    const/4 p0, 0x1

    if-ne v3, p0, :cond_2

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A0R()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v1, v5

    .line 40449
    if-ne v3, p0, :cond_1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A0P()J

    move-result-wide v6

    :goto_2
    aput-wide v6, v0, v5

    .line 40450
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A0b()S

    move-result v4

    .line 40451
    .local p0, "mediaRateInteger":I
    if-ne v4, p0, :cond_3

    .line 40452
    const/4 v4, 0x2

    invoke-virtual {v8, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40453
    .end local p0    # "mediaRateInteger":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 40454
    :cond_1
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v4

    int-to-long v6, v4

    goto :goto_2

    .line 40455
    :cond_2
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v6

    goto :goto_1

    .line 40456
    .restart local p0    # "mediaRateInteger":I
    :cond_3
    const/16 v2, 0x21c

    const/16 v1, 0x17

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40457
    .end local v7    # "i":I
    .end local p0    # "mediaRateInteger":I
    :cond_4
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/ki;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/ki;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/androidx/media3/common/Metadata;",
            "Lcom/facebook/ads/androidx/media3/common/Metadata;",
            ">;"
        }
    .end annotation

    .line 40458
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 40459
    .local v0, "udtaData":Lcom/facebook/ads/redexgen/X/4J;
    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40460
    const/4 p0, 0x0

    .line 40461
    .local v2, "metaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    const/4 v4, 0x0

    .line 40462
    .local v3, "smtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :goto_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "ATF6ss1I"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "jntry4xS"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-lt v3, v5, :cond_2

    .line 40463
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v3

    .line 40464
    .local v4, "atomPosition":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 40465
    .local v5, "atomSize":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v1

    .line 40466
    .local v6, "atomType":I
    const v0, 0x6d657461

    if-ne v1, v0, :cond_1

    .line 40467
    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40468
    add-int v0, v3, v2

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0E(Lcom/facebook/ads/redexgen/X/4J;I)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object p0

    .line 40469
    :cond_0
    :goto_1
    add-int/2addr v3, v2

    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40470
    .end local v4    # "atomPosition":I
    .end local v5    # "atomSize":I
    .end local v6    # "atomType":I
    goto :goto_0

    .line 40471
    :cond_1
    const v0, 0x736d7461

    if-ne v1, v0, :cond_0

    .line 40472
    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40473
    add-int v0, v3, v2

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0D(Lcom/facebook/ads/redexgen/X/4J;I)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v4

    goto :goto_1

    .line 40474
    :cond_2
    invoke-static {p0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/androidx/media3/common/ColorInfo;
    .locals 10

    .line 40475
    new-instance v8, Lcom/facebook/ads/redexgen/X/1y;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/1y;-><init>()V

    .line 40476
    .local v0, "colorInfo":Lcom/facebook/ads/redexgen/X/1y;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    new-instance v7, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    .line 40477
    .local v1, "bitArray":Lcom/facebook/ads/redexgen/X/4I;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    const/16 v4, 0x8

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 40478
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4I;->A0A(I)V

    .line 40479
    const/4 v5, 0x3

    invoke-virtual {v7, v5}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    .line 40480
    .local v5, "seqProfile":I
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 40481
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    .line 40482
    .local v6, "highBitdepth":Z
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    .line 40483
    .local v7, "twelveBit":Z
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 40484
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 40485
    const/4 p0, 0x4

    invoke-virtual {v7, p0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v9

    .line 40486
    .local p0, "obuType":I
    const/16 v2, 0xb2

    const/16 v1, 0xb

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v3

    if-eq v9, v6, :cond_0

    .line 40487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x251

    const/16 v1, 0x16

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 40488
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/1y;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 40489
    :cond_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40490
    const/16 v2, 0x233

    const/16 v1, 0x1e

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 40491
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/1y;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 40492
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    .line 40493
    .local p2, "obuHasSizeField":Z
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 40494
    if-eqz v0, :cond_2

    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    const/16 v0, 0x7f

    if-le v1, v0, :cond_2

    .line 40495
    const/16 v2, 0xbd

    const/16 v1, 0x12

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 40496
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/1y;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 40497
    :cond_2
    invoke-virtual {v7, v5}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v4

    .line 40498
    .local p3, "obuSeqHeaderSeqProfile":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 40499
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40500
    const/16 v2, 0x267

    const/16 v1, 0x28

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 40501
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/1y;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 40502
    :cond_3
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40503
    const/16 v2, 0x28f

    const/16 v1, 0x24

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 40504
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/1y;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 40505
    :cond_4
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40506
    const/16 v2, 0x1ee

    const/16 v1, 0x2e

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 40507
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/1y;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 40508
    :cond_5
    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v3

    .line 40509
    .local p4, "operatingPointsCountMinus1":I
    const/4 v1, 0x0

    .local p5, "i":I
    :goto_0
    const/4 v2, 0x7

    if-gt v1, v3, :cond_7

    .line 40510
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 40511
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    .line 40512
    .local v3, "seqLevelIdx":I
    if-le v0, v2, :cond_6

    .line 40513
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 40514
    .end local v3    # "seqLevelIdx":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40515
    .end local p5
    :cond_7
    invoke-virtual {v7, p0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    .line 40516
    .local v3, "frameWidthBitsMinus1":I
    invoke-virtual {v7, p0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 40517
    .local v9, "frameHeightBitsMinus1":I
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 40518
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 40519
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 40520
    invoke-virtual {v7, v2}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 40521
    :cond_8
    invoke-virtual {v7, v2}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 40522
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result p0

    .line 40523
    .local v8, "enableOrderHint":Z
    const/4 v3, 0x2

    if-eqz p0, :cond_9

    .line 40524
    invoke-virtual {v7, v3}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 40525
    :cond_9
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_13

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "spdqEdfVqdQubNKbzHaSCSbA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v9, :cond_12

    .line 40526
    const/4 v0, 0x2

    .line 40527
    .local p5, "seqForceScreenContentTools":I
    :goto_1
    if-lez v0, :cond_a

    .line 40528
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "fpomjt14ZeQUreCUx8H2Qj9W8NeulNVr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v9, :cond_a

    .line 40529
    :goto_2
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 40530
    :cond_a
    if-eqz p0, :cond_b

    .line 40531
    invoke-virtual {v7, v5}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 40532
    :cond_b
    invoke-virtual {v7, v5}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 40533
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    .line 40534
    .local v4, "colorConfigHighBitdepth":Z
    if-ne v4, v3, :cond_c

    if-eqz v0, :cond_c

    .line 40535
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 40536
    :cond_c
    if-eq v4, v6, :cond_10

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    .line 40537
    .local p8, "monochrome":Z
    :goto_3
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 40538
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v4

    .line 40539
    .local v2, "colorPrimaries":I
    .end local v3    # "frameWidthBitsMinus1":I
    .local p10, "frameWidthBitsMinus1":I
    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v3

    .line 40540
    .local v3, "transferCharacteristics":I
    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 40541
    .local p1, "matrixCoefficients":I
    if-nez v2, :cond_f

    const/4 v0, 0x1

    .end local v4    # "colorConfigHighBitdepth":Z
    .local p11, "colorConfigHighBitdepth":Z
    if-ne v4, v0, :cond_f

    const/16 v0, 0xd

    if-ne v3, v0, :cond_f

    if-nez v1, :cond_f

    .line 40542
    const/4 v2, 0x1

    .line 40543
    .local p7, "colorRange":I
    :goto_4
    invoke-static {v4}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A00(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/1y;->A01(I)Lcom/facebook/ads/redexgen/X/1y;

    move-result-object v1

    .line 40544
    const/4 v0, 0x1

    .end local v2    # "colorPrimaries":I
    .end local p7
    .local v1, "colorRange":I
    .local p6, "colorPrimaries":I
    .local p12, "bitArray":Lcom/facebook/ads/redexgen/X/4I;
    if-ne v2, v0, :cond_e

    :goto_5
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1y;->A00(I)Lcom/facebook/ads/redexgen/X/1y;

    move-result-object v1

    .line 40545
    invoke-static {v3}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01(I)I

    move-result v0

    .line 40546
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1y;->A02(I)Lcom/facebook/ads/redexgen/X/1y;

    .line 40547
    .end local v1    # "colorRange":I
    .end local v3    # "transferCharacteristics":I
    .end local v4
    .restart local p10
    .restart local p11
    .restart local p12
    :cond_d
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/1y;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 40548
    :cond_e
    const/4 v0, 0x2

    goto :goto_5

    .line 40549
    .end local v4
    .restart local p11
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v2

    goto :goto_4

    .line 40550
    :cond_10
    const/4 v2, 0x0

    goto :goto_3

    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "VYuT40g5EEwFWTEBAX27ZdDSMSIcM78J"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "WUQpgtHZDasrpP5hdEQLNs2AngJpMhTI"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v9, :cond_a

    goto :goto_2

    .line 40551
    :cond_12
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    goto/16 :goto_1

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/4J;I)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 5

    .line 40552
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40553
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40554
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 40555
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IZ;->A04(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40556
    .local v1, "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "lHUs7TBcARFSvdLvQvihflkVmEpZ1MYm"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ww6ZL200nHcHREaExV9g08P8Dpl3Z1fQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    .line 40557
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40558
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "WnDUA4AhIDsAjF22CXXz4OtQUCX0JoWn"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "j7UA12dewj7emLVLNadXlb6UYVuvbHls"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/4J;I)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 6

    .line 40559
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40560
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v3

    const/4 v5, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "yKVAIw0tCkGB7M4Cua27Coqh"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v3, p1, :cond_5

    .line 40561
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v3

    .line 40562
    .local v1, "atomPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 40563
    .local v3, "atomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v1

    .line 40564
    .local v4, "atomType":I
    const v0, 0x73617574

    if-ne v1, v0, :cond_1

    .line 40565
    const/16 v0, 0xe

    if-ge v2, v0, :cond_2

    .line 40566
    return-object v5

    .line 40567
    .end local v0
    .end local v5
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/4J;
    :cond_1
    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40568
    .end local v1    # "atomPosition":I
    .end local v3    # "atomSize":I
    .end local v4    # "atomType":I
    goto :goto_0

    .line 40569
    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40570
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 40571
    .local v5, "recordingMode":I
    if-eq v1, v4, :cond_3

    const/16 v0, 0xd

    if-eq v1, v0, :cond_3

    .line 40572
    return-object v5

    .line 40573
    :cond_3
    if-ne v1, v4, :cond_4

    const/high16 v3, 0x43700000    # 240.0f

    .line 40574
    .local v0, "captureFrameRate":F
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40575
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 40576
    .local p0, "svcTemporalLayerCount":I
    new-array v2, v1, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    new-instance v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    invoke-direct {v1, v3, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v2}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    return-object v0

    .line 40577
    :cond_4
    const/high16 v3, 0x42f00000    # 120.0f

    goto :goto_1

    .line 40578
    :cond_5
    return-object v5
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/4J;I)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 4

    .line 40579
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40580
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IO;->A0Q(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 40581
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 40582
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v3

    .line 40583
    .local v0, "atomPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 40584
    .local v1, "atomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v1

    .line 40585
    .local v2, "atomType":I
    const v0, 0x696c7374

    if-ne v1, v0, :cond_0

    .line 40586
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40587
    add-int/2addr v3, v2

    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/IO;->A0C(Lcom/facebook/ads/redexgen/X/4J;I)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    return-object v0

    .line 40588
    :cond_0
    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40589
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_0

    .line 40590
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/kj;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 11

    .line 40591
    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v1

    .line 40592
    .local v0, "hdlrAtom":Lcom/facebook/ads/redexgen/X/ki;
    const v0, 0x6b657973

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v2

    .line 40593
    .local v1, "keysAtom":Lcom/facebook/ads/redexgen/X/ki;
    const v0, 0x696c7374

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v5

    .line 40594
    .local v2, "ilstAtom":Lcom/facebook/ads/redexgen/X/ki;
    const/4 v8, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 40595
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IO;->A03(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v1

    const v0, 0x6d647461

    if-eq v1, v0, :cond_1

    .line 40596
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v9
    :cond_0
    return-object v8

    .line 40597
    :cond_1
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 40598
    .local v4, "keys":Lcom/facebook/ads/redexgen/X/4J;
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40599
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v3

    .line 40600
    .local v5, "entryCount":I
    new-array v9, v3, [Ljava/lang/String;

    .line 40601
    .local v6, "keyNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 40602
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v1

    .line 40603
    .local v8, "entrySize":I
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40604
    add-int/lit8 v0, v1, -0x8

    .line 40605
    .local v9, "keySize":I
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0W(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    .line 40606
    .end local v8    # "entrySize":I
    .end local v9    # "keySize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40607
    .end local v7    # "i":I
    :cond_2
    iget-object v7, v5, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 40608
    .local v7, "ilst":Lcom/facebook/ads/redexgen/X/4J;
    const/16 v6, 0x8

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40609
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 40610
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    :goto_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-le v0, v6, :cond_5

    .line 40611
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v4

    .line 40612
    .local v10, "atomPosition":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result p0

    .line 40613
    .local p0, "atomSize":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 40614
    .local p1, "keyIndex":I
    if-ltz v10, :cond_4

    array-length v0, v9

    if-ge v10, v0, :cond_4

    .line 40615
    aget-object v1, v9, v10

    .line 40616
    .local p2, "key":Ljava/lang/String;
    add-int v0, v4, p0

    .line 40617
    invoke-static {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/IZ;->A09(Lcom/facebook/ads/redexgen/X/4J;ILjava/lang/String;)Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;

    move-result-object v0

    .line 40618
    .local p3, "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    if-eqz v0, :cond_3

    .line 40619
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40620
    :cond_3
    :goto_2
    add-int/2addr v4, p0

    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40621
    .end local v10    # "atomPosition":I
    .end local p0    # "atomSize":I
    .end local p1
    goto :goto_1

    .line 40622
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x167

    const/16 v1, 0x29

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb2

    const/16 v1, 0xb

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40623
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_3
    return-object v8

    :cond_6
    new-instance v8, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v8, v5}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_3
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/4J;I)Lcom/facebook/ads/redexgen/X/IK;
    .locals 10

    .line 40624
    add-int/lit8 v0, p1, 0x8

    const/4 v5, 0x4

    add-int/2addr v0, v5

    move-object v3, p0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40625
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40626
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/IO;->A02(Lcom/facebook/ads/redexgen/X/4J;)I

    .line 40627
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40628
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 40629
    .local v4, "flags":I
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_0

    .line 40630
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40631
    :cond_0
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_1

    .line 40632
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40633
    :cond_1
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_2

    .line 40634
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40635
    :cond_2
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40636
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/IO;->A02(Lcom/facebook/ads/redexgen/X/4J;)I

    .line 40637
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 40638
    .local v3, "objectTypeIndication":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2h;->A05(I)Ljava/lang/String;

    move-result-object v6

    .line 40639
    .local p2, "mimeType":Ljava/lang/String;
    const/16 v2, 0x3b3

    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 40640
    const/16 v2, 0x3dd

    const/16 v1, 0xd

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 40641
    const/16 v2, 0x3ea

    const/16 v1, 0x10

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40642
    .end local v1
    .end local v2
    .end local p3
    .end local p5
    :cond_3
    new-instance v5, Lcom/facebook/ads/redexgen/X/IK;

    const-wide/16 v8, -0x1

    const-wide/16 p0, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/IK;-><init>(Ljava/lang/String;[BJJ)V

    return-object v5

    .line 40643
    :cond_4
    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40644
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide p0

    .line 40645
    .local p3, "peakBitrate":J
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v8

    .line 40646
    .local p5, "bitrate":J
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40647
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/IO;->A02(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v1

    .line 40648
    .local v1, "initializationDataSize":I
    new-array v7, v1, [B

    .line 40649
    .local v2, "initializationData":[B
    const/4 v0, 0x0

    invoke-virtual {v3, v7, v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 40650
    new-instance v5, Lcom/facebook/ads/redexgen/X/IK;

    .line 40651
    const-wide/16 v3, -0x1

    const-wide/16 v1, 0x0

    cmp-long v0, v8, v1

    if-lez v0, :cond_6

    .line 40652
    :goto_0
    cmp-long v0, p0, v1

    if-lez v0, :cond_5

    :goto_1
    move-object v6, v6

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/IK;-><init>(Ljava/lang/String;[BJJ)V

    .line 40653
    return-object v5

    .line 40654
    :cond_5
    move-wide p0, v3

    goto :goto_1

    .line 40655
    :cond_6
    move-wide v8, v3

    goto :goto_0
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/4J;IILjava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;Z)Lcom/facebook/ads/redexgen/X/IM;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 40656
    const/16 v0, 0xc

    move-object/from16 v5, p0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40657
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v3

    .line 40658
    .local v12, "numberOfEntries":I
    new-instance v14, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v14, v3}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    .line 40659
    .local v13, "out":Lcom/facebook/ads/redexgen/X/IM;
    const/4 v15, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v15, v3, :cond_d

    .line 40660
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v8

    .line 40661
    .local v15, "childStartPosition":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v9

    .line 40662
    .local v16, "childAtomSize":I
    if-lez v9, :cond_c

    const/4 v4, 0x1

    :goto_1
    const/16 v2, 0x442

    const/16 v1, 0x1e

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 40663
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v7

    .line 40664
    .local v9, "childAtomType":I
    const v0, 0x61766331

    move-object/from16 v13, p4

    move/from16 v4, p1

    if-eq v7, v0, :cond_0

    const v0, 0x61766333

    if-eq v7, v0, :cond_0

    const v0, 0x656e6376

    if-eq v7, v0, :cond_0

    const v0, 0x6d317620

    if-eq v7, v0, :cond_0

    const v0, 0x6d703476

    if-eq v7, v0, :cond_0

    const v0, 0x68766331

    if-eq v7, v0, :cond_0

    const v0, 0x68657631

    if-eq v7, v0, :cond_0

    const v0, 0x73323633

    if-eq v7, v0, :cond_0

    const v0, 0x48323633

    if-eq v7, v0, :cond_0

    const v0, 0x76703038

    if-eq v7, v0, :cond_0

    const v0, 0x76703039

    if-eq v7, v0, :cond_0

    const v0, 0x61763031

    if-eq v7, v0, :cond_0

    const v0, 0x64766176

    if-eq v7, v0, :cond_0

    const v0, 0x64766131

    if-eq v7, v0, :cond_0

    const v0, 0x64766865

    if-eq v7, v0, :cond_0

    const v0, 0x64766831

    if-ne v7, v0, :cond_2

    .line 40665
    .end local v9    # "childAtomType":I
    .restart local v17
    :cond_0
    move-object/from16 v16, v5

    move/from16 v20, v4

    move/from16 v21, p2

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 p0, v15

    invoke-static/range {v16 .. v24}, Lcom/facebook/ads/redexgen/X/IO;->A0R(Lcom/facebook/ads/redexgen/X/4J;IIIIILcom/facebook/ads/androidx/media3/common/DrmInitData;Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 40666
    :cond_1
    :goto_2
    add-int/2addr v8, v9

    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40667
    .end local v15    # "childStartPosition":I
    .end local v16    # "childAtomSize":I
    .end local v17
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 40668
    :cond_2
    const v6, 0x6d703461

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_3

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "Lno9V07i"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "YEniY2O3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    move-object/from16 v11, p3

    if-eq v7, v6, :cond_4

    const v0, 0x656e6361

    if-eq v7, v0, :cond_4

    const v0, 0x61632d33

    if-eq v7, v0, :cond_4

    const v0, 0x65632d33

    if-eq v7, v0, :cond_4

    const v0, 0x61632d34

    if-eq v7, v0, :cond_4

    const v6, 0x6d6c7061

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "oNdMvJKT47PBcE7ne9hrfWimoE8yMs3Y"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "E91ArCAwNKvmlCTKVUGyb2erGBttgGv0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_4

    :goto_4
    const v0, 0x64747363

    if-eq v7, v0, :cond_4

    const v0, 0x64747365

    if-eq v7, v0, :cond_4

    const v0, 0x64747368

    if-eq v7, v0, :cond_4

    const v0, 0x6474736c

    if-eq v7, v0, :cond_4

    const v0, 0x64747378

    if-eq v7, v0, :cond_4

    const v0, 0x73616d72

    if-eq v7, v0, :cond_4

    const v0, 0x73617762

    if-eq v7, v0, :cond_4

    const v0, 0x6c70636d

    if-eq v7, v0, :cond_4

    const v0, 0x736f7774

    if-eq v7, v0, :cond_4

    const v0, 0x74776f73

    if-eq v7, v0, :cond_4

    const v0, 0x2e6d7032

    if-eq v7, v0, :cond_4

    const v0, 0x2e6d7033

    if-eq v7, v0, :cond_4

    const v0, 0x6d686131

    if-eq v7, v0, :cond_4

    const v0, 0x6d686d31

    if-eq v7, v0, :cond_4

    const v0, 0x616c6163

    if-eq v7, v0, :cond_4

    const v0, 0x616c6177

    if-eq v7, v0, :cond_4

    const v0, 0x756c6177

    if-eq v7, v0, :cond_4

    const v0, 0x4f707573

    if-eq v7, v0, :cond_4

    const v0, 0x664c6143

    if-ne v7, v0, :cond_6

    .line 40669
    :cond_4
    move-object v6, v5

    move v10, v4

    .end local v9
    .local v17, "childAtomType":I
    move/from16 v12, p5

    invoke-static/range {v6 .. v15}, Lcom/facebook/ads/redexgen/X/IO;->A0T(Lcom/facebook/ads/redexgen/X/4J;IIIILjava/lang/String;ZLcom/facebook/ads/androidx/media3/common/DrmInitData;Lcom/facebook/ads/redexgen/X/IM;I)V

    goto/16 :goto_2

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "3e9ArAGLRrjfeL1rnoEKSVyw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_4

    goto :goto_4

    .line 40670
    :cond_6
    const v6, 0x54544d4c

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    goto/16 :goto_3

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "mlJGx5h1gegl7007OPiYCkGWkqECmimV"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_9

    const v6, 0x74783367

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "522w9jUs1Cdec5FzFXJEv7rx"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_9

    const v0, 0x77767474

    if-eq v7, v0, :cond_9

    const v0, 0x73747070

    if-eq v7, v0, :cond_9

    const v0, 0x63363038

    if-ne v7, v0, :cond_a

    .line 40671
    :cond_9
    move-object v6, v5

    move v10, v4

    move v7, v7

    move v8, v8

    move v9, v9

    move-object v11, v11

    move-object v12, v14

    invoke-static/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/IO;->A0S(Lcom/facebook/ads/redexgen/X/4J;IIIILjava/lang/String;Lcom/facebook/ads/redexgen/X/IM;)V

    goto/16 :goto_2

    .line 40672
    :cond_a
    const v0, 0x6d657474

    if-ne v7, v0, :cond_b

    .line 40673
    invoke-static {v5, v7, v8, v4, v14}, Lcom/facebook/ads/redexgen/X/IO;->A0U(Lcom/facebook/ads/redexgen/X/4J;IIILcom/facebook/ads/redexgen/X/IM;)V

    goto/16 :goto_2

    .line 40674
    :cond_b
    const v0, 0x63616d6d

    if-ne v7, v0, :cond_1

    .line 40675
    new-instance v0, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 40676
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2D;->A0g(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v4

    .line 40677
    const/16 v2, 0x2c7

    const/16 v1, 0x1b

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 40678
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, v14, Lcom/facebook/ads/redexgen/X/IM;->A02:Lcom/facebook/ads/redexgen/X/or;

    goto/16 :goto_2

    .line 40679
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 40680
    .end local v14    # "i":I
    :cond_d
    return-object v14
.end method

.method public static A0I(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/IN;
    .locals 10

    .line 40681
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40682
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 40683
    .local v1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A01(I)I

    move-result v8

    .line 40684
    .local v2, "version":I
    const/16 v7, 0x10

    if-nez v8, :cond_9

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40685
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v6

    .line 40686
    .local v4, "trackId":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40687
    const/4 v4, 0x1

    .line 40688
    .local v6, "durationUnknown":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v3

    .line 40689
    .local v7, "durationPosition":I
    if-nez v8, :cond_0

    const/4 v9, 0x4

    .line 40690
    .local v0, "durationByteCount":I
    :cond_0
    const/4 v2, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v2, v9, :cond_1

    .line 40691
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    add-int v0, v3, v2

    aget-byte v1, v1, v0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_8

    .line 40692
    const/4 v4, 0x0

    .line 40693
    .end local v8    # "i":I
    :cond_1
    if-eqz v4, :cond_6

    .line 40694
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40695
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 40696
    .local v8, "duration":J
    :cond_2
    :goto_2
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40697
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v8

    .line 40698
    .local v3, "a00":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v7

    .line 40699
    .local p0, "a01":I
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40700
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v5

    .line 40701
    .local v5, "a10":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 40702
    .local p1, "a11":I
    const/high16 v1, 0x10000

    .line 40703
    .local p2, "fixedOne":I
    if-nez v8, :cond_3

    if-ne v7, v1, :cond_3

    neg-int v0, v1

    if-ne v5, v0, :cond_3

    if-nez v2, :cond_3

    .line 40704
    const/16 v1, 0x5a

    .line 40705
    .local p3, "rotationDegrees":I
    .restart local p3
    :goto_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/IN;

    invoke-direct {v0, v6, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/IN;-><init>(IJI)V

    return-object v0

    .line 40706
    .end local p3
    :cond_3
    if-nez v8, :cond_4

    neg-int v0, v1

    if-ne v7, v0, :cond_4

    if-ne v5, v1, :cond_4

    if-nez v2, :cond_4

    .line 40707
    const/16 v1, 0x10e

    .restart local p3
    goto :goto_3

    .line 40708
    .end local p3
    :cond_4
    neg-int v0, v1

    if-ne v8, v0, :cond_5

    if-nez v7, :cond_5

    if-nez v5, :cond_5

    neg-int v0, v1

    if-ne v2, v0, :cond_5

    .line 40709
    const/16 v1, 0xb4

    .restart local p3
    goto :goto_3

    .line 40710
    .end local p3
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 40711
    .end local v8    # "duration":J
    :cond_6
    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v3

    .line 40712
    .restart local v8    # "duration":J
    :goto_4
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 40713
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 40714
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0R()J

    move-result-wide v3

    goto :goto_4

    .line 40715
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 40716
    :cond_9
    const/16 v0, 0x10

    goto/16 :goto_0
.end method

.method public static A0J(Lcom/facebook/ads/redexgen/X/kj;Lcom/facebook/ads/redexgen/X/ki;JLcom/facebook/ads/androidx/media3/common/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/Im;
    .locals 19
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "INCREASE_VISIBILITY"
        }
        value = "To support OculusMp4Extractor"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 40717
    move-wide/from16 v16, p2

    const v1, 0x6d646961

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/kj;->A06(I)Lcom/facebook/ads/redexgen/X/kj;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/kj;

    .line 40718
    .local v1, "mdia":Lcom/facebook/ads/redexgen/X/kj;
    const v1, 0x68646c72    # 4.3148E24f

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ki;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IO;->A03(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IO;->A01(I)I

    move-result v11

    .line 40719
    .local v2, "trackType":I
    const/4 v1, -0x1

    const/4 v9, 0x0

    if-ne v11, v1, :cond_0

    .line 40720
    return-object v9

    .line 40721
    :cond_0
    const v1, 0x746b6864

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ki;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IO;->A0I(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/IN;

    move-result-object v8

    .line 40722
    .local v18, "tkhdData":Lcom/facebook/ads/redexgen/X/IN;
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v16, v4

    if-nez v1, :cond_1

    .line 40723
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/IN;->A02(Lcom/facebook/ads/redexgen/X/IN;)J

    move-result-wide v16

    .line 40724
    .end local p16
    .local v7, "duration":J
    .end local p16
    .local p0, "duration":J
    :cond_1
    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IO;->A05(Lcom/facebook/ads/redexgen/X/4J;)J

    move-result-wide v14

    .line 40725
    .local p2, "movieTimescale":J
    cmp-long v1, v16, v4

    if-nez v1, :cond_4

    .line 40726
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 40727
    .local v5, "durationUs":J
    .local p4, "durationUs":J
    :goto_0
    const v1, 0x6d696e66

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/kj;->A06(I)Lcom/facebook/ads/redexgen/X/kj;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/kj;

    .line 40728
    const v1, 0x7374626c

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/kj;->A06(I)Lcom/facebook/ads/redexgen/X/kj;

    move-result-object v1

    .line 40729
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/kj;

    .line 40730
    .local v14, "stbl":Lcom/facebook/ads/redexgen/X/kj;
    const v1, 0x6d646864

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ki;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IO;->A06(Lcom/facebook/ads/redexgen/X/4J;)Landroid/util/Pair;

    move-result-object v4

    .line 40731
    .local v13, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    const v1, 0x73747364

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v1

    .line 40732
    .local v12, "stsd":Lcom/facebook/ads/redexgen/X/ki;
    if-eqz v1, :cond_6

    .line 40733
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 40734
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/IN;->A00(Lcom/facebook/ads/redexgen/X/IN;)I

    move-result p0

    .line 40735
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/IN;->A01(Lcom/facebook/ads/redexgen/X/IN;)I

    move-result p1

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 40736
    move-object/from16 p3, p4

    move/from16 p4, p6

    move-object/from16 v18, v2

    move-object/from16 p2, v1

    invoke-static/range {v18 .. v23}, Lcom/facebook/ads/redexgen/X/IO;->A0H(Lcom/facebook/ads/redexgen/X/4J;IILjava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;Z)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v3

    .line 40737
    .local v10, "stsdData":Lcom/facebook/ads/redexgen/X/IM;
    const/4 v2, 0x0

    .line 40738
    .local v3, "editListDurations":[J
    const/4 v1, 0x0

    .line 40739
    .local v5, "editListMediaTimes":[J
    if-nez p5, :cond_2

    .line 40740
    const v5, 0x65647473

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/kj;->A06(I)Lcom/facebook/ads/redexgen/X/kj;

    move-result-object v0

    .line 40741
    .local v6, "edtsAtom":Lcom/facebook/ads/redexgen/X/kj;
    if-eqz v0, :cond_2

    .line 40742
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IO;->A09(Lcom/facebook/ads/redexgen/X/kj;)Landroid/util/Pair;

    move-result-object v7

    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v5, v6, v0

    const/4 v0, 0x6

    aget-object v6, v6, v0

    const/16 v0, 0x1a

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v5, v0, :cond_5

    .line 40743
    .local v7, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v5, "IbqpVMf9BLmnuF5BFBlg7Wi48qFbo4Yh"

    const/4 v0, 0x7

    aput-object v5, v6, v0

    const-string v5, "amD11xiy90bj3UvdeHvItss5MLCDKaRi"

    const/4 v0, 0x4

    aput-object v5, v6, v0

    if-eqz v7, :cond_2

    .line 40744
    iget-object v2, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    .line 40745
    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [J

    .line 40746
    .end local v3    # "editListDurations":[J
    .end local v5    # "editListMediaTimes":[J
    .local p6, "editListDurations":[J
    .local p7, "editListMediaTimes":[J
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/IM;->A02:Lcom/facebook/ads/redexgen/X/or;

    if-nez v0, :cond_3

    :goto_1
    return-object v9

    .line 40747
    :cond_3
    new-instance v9, Lcom/facebook/ads/redexgen/X/Im;

    .line 40748
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/IN;->A00(Lcom/facebook/ads/redexgen/X/IN;)I

    move-result v10

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 40749
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/IM;->A02:Lcom/facebook/ads/redexgen/X/or;

    iget v5, v3, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/IM;->A03:[Lcom/facebook/ads/redexgen/X/In;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/IM;->A00:I

    .end local v10    # "stsdData":Lcom/facebook/ads/redexgen/X/IM;
    .local p10, "stsdData":Lcom/facebook/ads/redexgen/X/IM;
    .end local v12    # "stsd":Lcom/facebook/ads/redexgen/X/ki;
    .local p12, "stsd":Lcom/facebook/ads/redexgen/X/ki;
    .end local v13    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p11, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v14    # "stbl":Lcom/facebook/ads/redexgen/X/kj;
    .local p13, "stbl":Lcom/facebook/ads/redexgen/X/kj;
    move-object/from16 v18, v6

    move/from16 p0, v5

    move-object/from16 p1, v4

    move/from16 p2, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v1

    invoke-direct/range {v9 .. v23}, Lcom/facebook/ads/redexgen/X/Im;-><init>(IIJJJLcom/facebook/ads/redexgen/X/or;I[Lcom/facebook/ads/redexgen/X/In;I[J[J)V

    goto :goto_1

    .line 40750
    .end local v5
    :cond_4
    const-wide/32 v18, 0xf4240

    move-wide/from16 p1, v14

    invoke-static/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v16

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40751
    .end local p6    # "editListDurations":[J
    .end local p7
    .end local p10
    .end local p11
    .end local p12
    .end local p13
    .restart local v12    # "stsd":Lcom/facebook/ads/redexgen/X/ki;
    .restart local v13    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v14    # "stbl":Lcom/facebook/ads/redexgen/X/kj;
    :cond_6
    const/16 v2, 0x120

    const/16 v1, 0x3f

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A0K(Lcom/facebook/ads/redexgen/X/4J;IILjava/lang/String;)Lcom/facebook/ads/redexgen/X/In;
    .locals 9

    .line 40752
    add-int/lit8 v3, p1, 0x8

    .line 40753
    .local v1, "childPosition":I
    :goto_0
    sub-int v0, v3, p1

    if-ge v0, p2, :cond_4

    .line 40754
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40755
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 40756
    .local v2, "childAtomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v1

    .line 40757
    .local v4, "childAtomType":I
    const v0, 0x74656e63

    if-ne v1, v0, :cond_3

    .line 40758
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 40759
    .local v5, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/II;->A01(I)I

    move-result v0

    .line 40760
    .local v6, "version":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40761
    const/4 v6, 0x0

    .line 40762
    .local v8, "defaultCryptByteBlock":I
    const/4 v7, 0x0

    .line 40763
    .local p0, "defaultSkipByteBlock":I
    if-nez v0, :cond_2

    .line 40764
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 40765
    .end local p1    # null:I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1

    .line 40766
    .local v7, "defaultIsProtected":Z
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v4

    .line 40767
    .local p1, "defaultPerSampleIvSize":I
    const/16 v0, 0x10

    new-array v5, v0, [B

    .line 40768
    .local p6, "defaultKeyId":[B
    array-length v0, v5

    invoke-virtual {p0, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 40769
    const/4 v8, 0x0

    .line 40770
    .local p3, "constantIv":[B
    if-eqz v2, :cond_0

    if-nez v4, :cond_0

    .line 40771
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 40772
    .local p4, "constantIvSize":I
    new-array v8, v0, [B

    .line 40773
    invoke-virtual {p0, v8, v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 40774
    .end local p3    # "constantIv":[B
    .local p10, "constantIv":[B
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/In;

    .end local p6
    .local p12, "defaultKeyId":[B
    move-object v3, p3

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/In;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v1

    .line 40775
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 40776
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 40777
    .local p1, "patternByte":I
    and-int/lit16 v0, v1, 0xf0

    shr-int/lit8 v6, v0, 0x4

    .line 40778
    and-int/lit8 v7, v1, 0xf

    goto :goto_1

    .line 40779
    .end local v5    # "fullAtom":I
    .end local v6    # "version":I
    .end local v7    # "defaultIsProtected":Z
    .end local v8    # "defaultCryptByteBlock":I
    .end local p0    # "defaultSkipByteBlock":I
    .end local p1    # "patternByte":I
    .end local p10
    .end local p12
    :cond_3
    add-int/2addr v3, v2

    .line 40780
    .end local v2    # "childAtomSize":I
    .end local v4    # "childAtomType":I
    goto :goto_0

    .line 40781
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0L(Lcom/facebook/ads/redexgen/X/Im;Lcom/facebook/ads/redexgen/X/kj;Lcom/facebook/ads/redexgen/X/Gi;)Lcom/facebook/ads/redexgen/X/Ip;
    .locals 34
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "INCREASE_VISIBILITY"
        }
        value = "To support OculusMp4Extractor"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 40782
    const v0, 0x7374737a

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v2

    .line 40783
    .local v12, "stszAtom":Lcom/facebook/ads/redexgen/X/ki;
    const/4 v11, 0x0

    move-object/from16 p1, p0

    if-eqz v2, :cond_0

    .line 40784
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    new-instance v27, Lcom/facebook/ads/redexgen/X/kh;

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/kh;-><init>(Lcom/facebook/ads/redexgen/X/ki;Lcom/facebook/ads/redexgen/X/or;)V

    .line 40785
    .local v1, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/IL;
    .end local v1    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/IL;
    .local v13, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/IL;
    :goto_0
    invoke-interface/range {v27 .. v27}, Lcom/facebook/ads/redexgen/X/IL;->A8n()I

    move-result v17

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_19

    .line 40786
    .local v14, "sampleCount":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "VWWx1kGHZbX2q2PAsWKgJgHWMUDi0u3b"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x0

    if-nez v17, :cond_1

    .line 40787
    new-instance v4, Lcom/facebook/ads/redexgen/X/Ip;

    new-array v3, v0, [J

    new-array v2, v0, [I

    new-array v1, v0, [J

    new-array v0, v0, [I

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object v6, v3

    move-object v7, v2

    move-object v9, v1

    move-object v10, v0

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/Ip;-><init>(Lcom/facebook/ads/redexgen/X/Im;[J[II[J[IJ)V

    return-object v4

    .line 40788
    .end local v1
    :cond_0
    const v0, 0x73747a32

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v1

    .line 40789
    .local v1, "stz2Atom":Lcom/facebook/ads/redexgen/X/ki;
    if-eqz v1, :cond_34

    .line 40790
    new-instance v27, Lcom/facebook/ads/redexgen/X/kg;

    move-object/from16 v0, v27

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/kg;-><init>(Lcom/facebook/ads/redexgen/X/ki;)V

    goto :goto_0

    .line 40791
    :cond_1
    const/4 v4, 0x0

    .line 40792
    .local v2, "chunkOffsetsAreLongs":Z
    const v0, 0x7374636f

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v0

    .line 40793
    .local v3, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    if-nez v0, :cond_2

    .line 40794
    const/4 v4, 0x1

    .line 40795
    const v0, 0x636f3634

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ki;

    .line 40796
    .end local v2    # "chunkOffsetsAreLongs":Z
    .end local v3    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .local v7, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .local v15, "chunkOffsetsAreLongs":Z
    :cond_2
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 40797
    .local v8, "chunkOffsets":Lcom/facebook/ads/redexgen/X/4J;
    const v0, 0x73747363

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ki;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 40798
    .local v6, "stsc":Lcom/facebook/ads/redexgen/X/4J;
    const v0, 0x73747473

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ki;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    move-object/from16 v28, v0

    .line 40799
    .local v5, "stts":Lcom/facebook/ads/redexgen/X/4J;
    const v0, 0x73747373

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v0

    .line 40800
    .local v4, "stssAtom":Lcom/facebook/ads/redexgen/X/ki;
    if-eqz v0, :cond_a

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 40801
    .local v2, "stss":Lcom/facebook/ads/redexgen/X/4J;
    :goto_1
    const v0, 0x63747473

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v0

    .line 40802
    .local v3, "cttsAtom":Lcom/facebook/ads/redexgen/X/ki;
    if-eqz v0, :cond_3

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/ki;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 40803
    .local v0, "ctts":Lcom/facebook/ads/redexgen/X/4J;
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/IJ;

    invoke-direct {v0, v1, v2, v4}, Lcom/facebook/ads/redexgen/X/IJ;-><init>(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/4J;Z)V

    .line 40804
    .local v1, "chunkIterator":Lcom/facebook/ads/redexgen/X/IJ;
    .end local v3    # "cttsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .local v17, "cttsAtom":Lcom/facebook/ads/redexgen/X/ki;
    const/16 v2, 0xc

    move-object/from16 v1, v28

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40805
    invoke-virtual/range {v28 .. v28}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v1

    add-int/lit8 v13, v1, -0x1

    .line 40806
    .local v18, "remainingTimestampDeltaChanges":I
    invoke-virtual/range {v28 .. v28}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v12

    .line 40807
    .local v20, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v28 .. v28}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v26

    .line 40808
    .local v3, "timestampDeltaInTimeUnits":I
    const/4 v10, 0x0

    .line 40809
    .local v22, "remainingSamplesAtTimestampOffset":I
    const/16 v25, 0x0

    .line 40810
    .local v23, "remainingTimestampOffsetChanges":I
    const/16 v19, 0x0

    .line 40811
    .local v24, "timestampOffset":I
    if-eqz v11, :cond_4

    .line 40812
    const/16 v1, 0xc

    .end local v4    # "stssAtom":Lcom/facebook/ads/redexgen/X/ki;
    .local v25, "stssAtom":Lcom/facebook/ads/redexgen/X/ki;
    invoke-virtual {v11, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40813
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v25

    .line 40814
    .end local v4
    .restart local v25    # "stssAtom":Lcom/facebook/ads/redexgen/X/ki;
    :cond_4
    const/16 v18, -0x1

    .line 40815
    .local v4, "nextSynchronizationSampleIndex":I
    const/4 v9, 0x0

    .line 40816
    .local v26, "remainingSynchronizationSamples":I
    if-eqz v14, :cond_5

    .line 40817
    const/16 v1, 0xc

    .end local v4    # "nextSynchronizationSampleIndex":I
    .local v27, "nextSynchronizationSampleIndex":I
    invoke-virtual {v14, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 40818
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v9

    .line 40819
    if-lez v9, :cond_9

    .line 40820
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v1

    add-int/lit8 v18, v1, -0x1

    .line 40821
    .end local v27    # "nextSynchronizationSampleIndex":I
    .restart local v4    # "nextSynchronizationSampleIndex":I
    .end local v2    # "stss":Lcom/facebook/ads/redexgen/X/4J;
    .end local v27
    .restart local v4    # "nextSynchronizationSampleIndex":I
    .local v19, "stss":Lcom/facebook/ads/redexgen/X/4J;
    :cond_5
    :goto_2
    invoke-interface/range {v27 .. v27}, Lcom/facebook/ads/redexgen/X/IL;->A82()I

    move-result v3

    .line 40822
    .local v2, "fixedSampleSize":I
    .end local v4    # "nextSynchronizationSampleIndex":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    .line 40823
    .local v4, "sampleMimeType":Ljava/lang/String;
    .end local v6    # "stsc":Lcom/facebook/ads/redexgen/X/4J;
    .local v28, "stsc":Lcom/facebook/ads/redexgen/X/4J;
    const/4 v1, -0x1

    if-eq v3, v1, :cond_8

    .line 40824
    const/16 v4, 0x3c7

    const/16 v2, 0x9

    const/16 v1, 0x5e

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 40825
    const/16 v4, 0x381

    const/16 v2, 0xf

    const/16 v1, 0x4d

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 40826
    const/16 v4, 0x372

    const/16 v2, 0xf

    const/16 v1, 0x60

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    if-nez v13, :cond_8

    if-nez v25, :cond_8

    if-nez v9, :cond_8

    const/4 v4, 0x1

    .line 40827
    .local v29, "rechunkFixedSizeSamples":Z
    :goto_3
    const/16 v20, 0x0

    .line 40828
    .local v6, "maximumSize":I
    const-wide/16 v1, 0x0

    .line 40829
    .local v30, "timestampTimeUnits":J
    if-eqz v4, :cond_c

    .line 40830
    .end local v4    # "sampleMimeType":Ljava/lang/String;
    .local v32, "sampleMimeType":Ljava/lang/String;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/IJ;->A05:I

    new-array v5, v1, [J

    sget-object v4, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v4, v1

    const/4 v1, 0x6

    aget-object v4, v4, v1

    const/16 v1, 0x1a

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_7

    .line 40831
    .local v4, "chunkOffsetsBytes":[J
    .end local v6    # "maximumSize":I
    .local v33, "maximumSize":I
    sget-object v4, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v2, "it49YraTc1fDpxLwGLRBh0ec"

    const/4 v1, 0x2

    aput-object v2, v4, v1

    iget v1, v0, Lcom/facebook/ads/redexgen/X/IJ;->A05:I

    new-array v1, v1, [I

    .line 40832
    .local v6, "chunkSampleCounts":[I
    :goto_4
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IJ;->A02()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 40833
    .end local v7    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .local p0, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    iget v2, v0, Lcom/facebook/ads/redexgen/X/IJ;->A00:I

    iget-wide v6, v0, Lcom/facebook/ads/redexgen/X/IJ;->A02:J

    aput-wide v6, v5, v2

    .line 40834
    iget v4, v0, Lcom/facebook/ads/redexgen/X/IJ;->A00:I

    iget v2, v0, Lcom/facebook/ads/redexgen/X/IJ;->A01:I

    aput v2, v1, v4

    goto :goto_4

    .line 40835
    .local v4, "chunkOffsetsBytes":[J
    .end local v6    # "chunkSampleCounts":[I
    .local v33, "maximumSize":I
    :cond_7
    sget-object v4, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v2, "cQxifTbk"

    const/4 v1, 0x0

    aput-object v2, v4, v1

    const-string v2, "kvbBtLxb"

    const/4 v1, 0x3

    aput-object v2, v4, v1

    iget v1, v0, Lcom/facebook/ads/redexgen/X/IJ;->A05:I

    new-array v1, v1, [I

    goto :goto_4

    .line 40836
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 40837
    .end local v4    # "chunkOffsetsBytes":[J
    .restart local v27    # "nextSynchronizationSampleIndex":I
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 40838
    :cond_a
    move-object v14, v11

    goto/16 :goto_1

    .line 40839
    .end local p0    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .restart local v7    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .end local v7    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .restart local p0    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    :cond_b
    move/from16 v0, v26

    int-to-long v6, v0

    .line 40840
    invoke-static {v3, v5, v1, v6, v7}, Lcom/facebook/ads/redexgen/X/IS;->A00(I[J[IJ)Lcom/facebook/ads/redexgen/X/IR;

    move-result-object v1

    .line 40841
    .local v7, "rechunkedResults":Lcom/facebook/ads/redexgen/X/IR;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/IR;->A04:[J

    move-object/from16 v21, v0

    .line 40842
    .local v10, "offsets":[J
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/IR;->A03:[I

    move-object/from16 v22, v0

    .line 40843
    .local v11, "sizes":[I
    .end local v2    # "fixedSampleSize":I
    .local p1, "fixedSampleSize":I
    iget v0, v1, Lcom/facebook/ads/redexgen/X/IR;->A00:I

    move/from16 v20, v0

    .line 40844
    .end local v33    # "maximumSize":I
    .local v2, "maximumSize":I
    .end local v2    # "maximumSize":I
    .restart local v33    # "maximumSize":I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/IR;->A05:[J

    move-object/from16 v24, v0

    .line 40845
    .local v2, "timestamps":[J
    .end local v2    # "timestamps":[J
    .local p2, "timestamps":[J
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/IR;->A02:[I

    move-object/from16 v23, v0

    .line 40846
    .local v2, "flags":[I
    iget-wide v1, v1, Lcom/facebook/ads/redexgen/X/IR;->A01:J

    .line 40847
    .end local v4
    .end local v7    # "rechunkedResults":Lcom/facebook/ads/redexgen/X/IR;
    .local v6, "duration":J
    move-object/from16 v0, p1

    goto/16 :goto_d

    .line 40848
    .end local v10    # "offsets":[J
    .end local v11    # "sizes":[I
    .end local v32    # "sampleMimeType":Ljava/lang/String;
    .end local v33    # "maximumSize":I
    .end local p0    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .end local p1    # "fixedSampleSize":I
    .end local p2    # "timestamps":[J
    .local v2, "fixedSampleSize":I
    .local v4, "sampleMimeType":Ljava/lang/String;
    .local v6, "maximumSize":I
    .local v7, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .end local v2    # "fixedSampleSize":I
    .end local v4    # "sampleMimeType":Ljava/lang/String;
    .end local v6    # "maximumSize":I
    .end local v7    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .restart local v32    # "sampleMimeType":Ljava/lang/String;
    .restart local v33    # "maximumSize":I
    .restart local p0    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .restart local p1    # "fixedSampleSize":I
    :cond_c
    move/from16 v3, v17

    new-array v3, v3, [J

    move-object/from16 v21, v3

    .line 40849
    .local v2, "offsets":[J
    move/from16 v3, v17

    new-array v3, v3, [I

    move-object/from16 v22, v3

    .line 40850
    .local v4, "sizes":[I
    move/from16 v3, v17

    new-array v3, v3, [J

    move-object/from16 v24, v3

    .line 40851
    .local v6, "timestamps":[J
    move/from16 v3, v17

    new-array v3, v3, [I

    move-object/from16 v23, v3

    .line 40852
    .local v7, "flags":[I
    const-wide/16 v6, 0x0

    .line 40853
    .local v10, "offset":J
    const/4 v8, 0x0

    .line 40854
    .local p2, "remainingSamplesInChunk":I
    const/4 v5, 0x0

    .end local v23    # "remainingTimestampOffsetChanges":I
    .local v8, "remainingTimestampDeltaChanges":I
    .local v9, "i":I
    .local v10, "nextSynchronizationSampleIndex":I
    .local v11, "maximumSize":I
    .local v12, "remainingSamplesAtTimestampDelta":I
    .local v15, "remainingSynchronizationSamples":I
    .local v18, "chunkOffsets":Lcom/facebook/ads/redexgen/X/4J;
    .local v20, "stszAtom":Lcom/facebook/ads/redexgen/X/ki;
    .local v22, "offset":J
    .local v24, "chunkOffsetsAreLongs":Z
    .local v26, "remainingTimestampOffsetChanges":I
    .local v27, "remainingSamplesAtTimestampOffset":I
    .local v33, "timestampOffset":I
    .end local v5    # "stts":Lcom/facebook/ads/redexgen/X/4J;
    .local p3, "stts":Lcom/facebook/ads/redexgen/X/4J;
    :goto_5
    const/16 v15, 0xb2

    const/16 v4, 0xb

    const/16 v3, 0x44

    move v15, v15

    move v4, v4

    move v3, v3

    invoke-static {v15, v4, v3}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v16

    move/from16 v3, v17

    if-ge v5, v3, :cond_16

    .line 40855
    const/4 v15, 0x1

    .line 40856
    .local p4, "chunkDataComplete":Z
    :goto_6
    if-nez v8, :cond_e

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IJ;->A02()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 40857
    sget-object v4, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v4, v4, v3

    const/16 v3, 0x17

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x57

    if-eq v4, v3, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .end local v14    # "sampleCount":I
    .end local v15    # "remainingSynchronizationSamples":I
    .local p5, "sampleCount":I
    .local p6, "remainingSynchronizationSamples":I
    :cond_d
    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v4, "M5jbBIfsv36G8eW66Ax72viWGVpCEb4z"

    const/4 v3, 0x5

    aput-object v4, v6, v3

    iget-wide v6, v0, Lcom/facebook/ads/redexgen/X/IJ;->A02:J

    .line 40858
    .end local v22    # "offset":J
    .local v14, "offset":J
    .end local v14    # "offset":J
    .restart local v22    # "offset":J
    iget v8, v0, Lcom/facebook/ads/redexgen/X/IJ;->A01:I

    .end local p2    # "remainingSamplesInChunk":I
    .local v14, "remainingSamplesInChunk":I
    goto :goto_6

    .line 40859
    .end local p5
    .end local p6
    .local v14, "sampleCount":I
    .restart local v15    # "remainingSynchronizationSamples":I
    .restart local p2    # "remainingSamplesInChunk":I
    .end local v14    # "sampleCount":I
    .end local v15    # "remainingSynchronizationSamples":I
    .restart local p5
    .restart local p6
    :cond_e
    if-nez v15, :cond_f

    .line 40860
    const/16 v4, 0x1ba

    const/16 v3, 0x1c

    const/16 v0, 0x5e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 40861
    .end local p5
    .restart local v14    # "sampleCount":I
    move-object/from16 v0, v21

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v21

    .line 40862
    move-object/from16 v0, v22

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v22

    .line 40863
    move-object/from16 v0, v24

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v24

    .line 40864
    move-object/from16 v0, v23

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v23

    .line 40865
    goto :goto_9

    .line 40866
    .end local v14    # "sampleCount":I
    .restart local p5
    :cond_f
    if-eqz v11, :cond_11

    .line 40867
    .end local v27    # "remainingSamplesAtTimestampOffset":I
    .local v15, "remainingSamplesAtTimestampOffset":I
    :goto_7
    if-nez v10, :cond_10

    if-lez v25, :cond_10

    .line 40868
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v10

    .line 40869
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v19

    .line 40870
    add-int/lit8 v25, v25, -0x1

    goto :goto_7

    .line 40871
    :cond_10
    add-int/lit8 v10, v10, -0x1

    .line 40872
    .end local v33    # "timestampOffset":I
    .local v5, "timestampOffset":I
    :cond_11
    aput-wide v6, v21, v5

    .line 40873
    invoke-interface/range {v27 .. v27}, Lcom/facebook/ads/redexgen/X/IL;->AGi()I

    move-result v3

    aput v3, v22, v5

    .line 40874
    aget v4, v22, v5

    move/from16 v3, v20

    if-le v4, v3, :cond_12

    .line 40875
    aget v20, v22, v5

    .line 40876
    :cond_12
    move/from16 v3, v19

    int-to-long v3, v3

    move-wide v15, v3

    add-long v3, v1, v15

    aput-wide v3, v24, v5

    .line 40877
    if-nez v14, :cond_15

    const/4 v3, 0x1

    :goto_8
    aput v3, v23, v5

    .line 40878
    move/from16 v3, v18

    if-ne v5, v3, :cond_13

    .line 40879
    const/4 v3, 0x1

    aput v3, v23, v5

    .line 40880
    add-int/lit8 v9, v9, -0x1

    .line 40881
    .end local p6
    .local v15, "remainingSynchronizationSamples":I
    if-lez v9, :cond_13

    .line 40882
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v3

    add-int/lit8 v18, v3, -0x1

    .line 40883
    .end local p6
    .restart local v15    # "remainingSynchronizationSamples":I
    .end local v1    # "chunkIterator":Lcom/facebook/ads/redexgen/X/IJ;
    .end local v2    # "offsets":[J
    .local v14, "chunkIterator":Lcom/facebook/ads/redexgen/X/IJ;
    .local p7, "offsets":[J
    :cond_13
    move/from16 v3, v26

    int-to-long v3, v3

    move-wide v15, v3

    add-long/2addr v1, v15

    .line 40884
    add-int/lit8 v12, v12, -0x1

    .line 40885
    if-nez v12, :cond_14

    if-lez v13, :cond_14

    .line 40886
    invoke-virtual/range {v28 .. v28}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v12

    .line 40887
    .end local v12    # "remainingSamplesAtTimestampDelta":I
    .local v1, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v28 .. v28}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v26

    .line 40888
    add-int/lit8 v13, v13, -0x1

    .line 40889
    .end local v1    # "remainingSamplesAtTimestampDelta":I
    .restart local v12    # "remainingSamplesAtTimestampDelta":I
    :cond_14
    aget v3, v22, v5

    int-to-long v3, v3

    move-wide v15, v3

    add-long/2addr v6, v15

    .line 40890
    .end local p4
    add-int/lit8 v8, v8, -0x1

    .line 40891
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 40892
    :cond_15
    const/4 v3, 0x0

    goto :goto_8

    .line 40893
    .end local v5    # "timestampOffset":I
    .end local p5
    .end local p7
    .local v1, "chunkIterator":Lcom/facebook/ads/redexgen/X/IJ;
    .restart local v2    # "offsets":[J
    .local v14, "sampleCount":I
    .restart local v33    # "timestampOffset":I
    :cond_16
    move/from16 v5, v17

    .line 40894
    .end local v1    # "chunkIterator":Lcom/facebook/ads/redexgen/X/IJ;
    .end local v2    # "offsets":[J
    .end local v15    # "remainingSynchronizationSamples":I
    .local v14, "chunkIterator":Lcom/facebook/ads/redexgen/X/IJ;
    .restart local p5
    .restart local p6
    .restart local p7
    .end local v6    # "timestamps":[J
    .end local v9    # "i":I
    .end local p2    # "remainingSamplesInChunk":I
    .local v1, "remainingSamplesInChunk":I
    .local v2, "timestamps":[J
    .end local v2    # "timestamps":[J
    .end local v3    # "timestampDeltaInTimeUnits":I
    .end local v33    # "timestampOffset":I
    .local v6, "timestampOffset":I
    .local v9, "timestampDeltaInTimeUnits":I
    .local v15, "timestamps":[J
    :goto_9
    move/from16 v0, v19

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 40895
    .local v2, "duration":J
    const/4 v14, 0x1

    .line 40896
    .local v33, "isCttsValid":Z
    if-eqz v11, :cond_17

    .line 40897
    :goto_a
    if-lez v25, :cond_17

    .line 40898
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v0

    if-eqz v0, :cond_31

    .line 40899
    const/4 v14, 0x0

    .line 40900
    :cond_17
    if-nez v9, :cond_18

    if-nez v12, :cond_18

    if-nez v8, :cond_18

    if-nez v13, :cond_18

    if-nez v10, :cond_18

    if-nez v14, :cond_30

    .line 40901
    .end local v0    # "ctts":Lcom/facebook/ads/redexgen/X/4J;
    .local p2, "ctts":Lcom/facebook/ads/redexgen/X/4J;
    :cond_18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .end local v2    # "duration":J
    .local p8, "duration":J
    const/16 v4, 0xcf

    const/16 v3, 0x20

    const/16 v0, 0x18

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    .end local v6    # "timestampOffset":I
    .local v2, "timestampOffset":I
    iget v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A00:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0x90

    const/16 v4, 0x22

    const/16 v3, 0x24

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local p6
    .local v3, "remainingSynchronizationSamples":I
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .end local v2    # "timestampOffset":I
    .local p4, "timestampOffset":I
    const/16 v6, 0xe

    const/16 v4, 0x23

    const/16 v3, 0x41

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x55

    const/16 v4, 0x1a

    const/16 v3, 0xe

    invoke-static {v7, v4, v3}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0x6f

    const/16 v4, 0x21

    const/16 v3, 0x29

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0x31

    const/16 v4, 0x24

    const/16 v3, 0x1f

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v27
    .local v2, "remainingSamplesAtTimestampOffset":I
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 40902
    if-nez v14, :cond_2e

    const/4 v6, 0x0

    const/16 v4, 0xe

    const/16 v3, 0xc

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v3

    .end local v1    # "remainingSamplesInChunk":I
    .local p6, "remainingSamplesInChunk":I
    :goto_b
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40903
    move-object/from16 v3, v16

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 40904
    .end local v22    # "offset":J
    .end local v33    # "isCttsValid":Z
    .end local p6
    :goto_c
    move/from16 v17, v5

    .end local v2    # "remainingSamplesAtTimestampOffset":I
    .end local v3    # "remainingSynchronizationSamples":I
    .end local v4    # "sizes":[I
    .end local v8    # "remainingTimestampDeltaChanges":I
    .end local p7
    .local v7, "sampleCount":I
    .local v9, "flags":[I
    .local v10, "timestampDeltaInTimeUnits":I
    .local v11, "offsets":[J
    .local v12, "sizes":[I
    .local v22, "remainingTimestampDeltaChanges":I
    .local v23, "remainingSamplesAtTimestampDelta":I
    .local v26, "remainingSamplesAtTimestampOffset":I
    .local v27, "nextSynchronizationSampleIndex":I
    .local v30, "remainingTimestampOffsetChanges":I
    .local v31, "remainingSynchronizationSamples":I
    .local v33, "maximumSize":I
    .local p5, "timestampTimeUnits":J
    :goto_d
    const-wide/32 v9, 0xf4240

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/Im;->A06:J

    sget-object v4, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x18

    if-eq v4, v3, :cond_1a

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a
    sget-object v7, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v4, "ipyvZTOv07cYtbuH1DKg84aCsuigBUI1"

    const/4 v3, 0x7

    aput-object v4, v7, v3

    const-string v4, "ch7TyunNM6oXEfHdpbs8btnx2NdPJSj4"

    const/4 v3, 0x4

    aput-object v4, v7, v3

    move-wide v7, v1

    move-wide v11, v5

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v7

    .line 40905
    .local p17, "durationUs":J
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    const-wide/32 v3, 0xf4240

    if-nez v5, :cond_1b

    .line 40906
    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Im;->A06:J

    move-object/from16 v0, v24

    invoke-static {v0, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/4a;->A13([JJJ)V

    .line 40907
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ip;

    .end local v7    # "sampleCount":I
    .end local v10    # "timestampDeltaInTimeUnits":I
    .local v13, "sampleCount":I
    .local v18, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .local p0, "chunkOffsets":Lcom/facebook/ads/redexgen/X/4J;
    .local p7, "timestampDeltaInTimeUnits":I
    .local p19, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/IL;
    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v20

    move-object/from16 v5, v24

    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Ip;-><init>(Lcom/facebook/ads/redexgen/X/Im;[J[II[J[IJ)V

    return-object v0

    .line 40908
    .end local p7
    .end local p19
    .restart local v7    # "sampleCount":I
    .restart local v10    # "timestampDeltaInTimeUnits":I
    .local v13, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/IL;
    .local v18, "chunkOffsets":Lcom/facebook/ads/redexgen/X/4J;
    .local p0, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .end local v7    # "sampleCount":I
    .end local v10    # "timestampDeltaInTimeUnits":I
    .local v13, "sampleCount":I
    .local v18, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .local p0, "chunkOffsets":Lcom/facebook/ads/redexgen/X/4J;
    .restart local p7
    .restart local p19
    :cond_1b
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    array-length v3, v3

    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    iget v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    if-ne v3, v4, :cond_1d

    move-object/from16 v3, v24

    array-length v4, v3

    const/4 v3, 0x2

    if-lt v4, v3, :cond_1d

    .line 40909
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A09:[J

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    const/4 v4, 0x0

    aget-wide v27, v3, v4

    .line 40910
    .local p20, "editStartTime":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    aget-wide v3, v3, v4

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/Im;->A06:J

    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/Im;->A05:J

    .line 40911
    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v3

    add-long v29, v27, v3

    .line 40912
    .local p22, "editEndTime":J
    move-object/from16 v24, v24

    move-wide/from16 v25, v1

    invoke-static/range {v24 .. v30}, Lcom/facebook/ads/redexgen/X/IO;->A0V([JJJJ)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 40913
    sub-long v25, v1, v29

    .line 40914
    .local p24, "paddingTimeUnits":J
    const/4 v3, 0x0

    aget-wide v3, v24, v3

    sub-long v27, v27, v3

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget v3, v3, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    int-to-long v5, v3

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A06:J

    .line 40915
    move-wide/from16 v29, v5

    move-wide/from16 v31, v3

    invoke-static/range {v27 .. v32}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v5

    .line 40916
    .local v7, "encoderDelay":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    iget v3, v3, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    int-to-long v7, v3

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A06:J

    .line 40917
    move-wide/from16 v29, v3

    move-wide/from16 v27, v7

    invoke-static/range {v25 .. v30}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v3

    .line 40918
    .local v5, "encoderPadding":J
    cmp-long v7, v5, v10

    if-nez v7, :cond_1c

    cmp-long v7, v3, v10

    if-eqz v7, :cond_1d

    :cond_1c
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v5, v8

    if-gtz v7, :cond_1d

    cmp-long v7, v3, v8

    if-gtz v7, :cond_1d

    .line 40919
    long-to-int v1, v5

    move-object/from16 v2, p2

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Gi;->A00:I

    .line 40920
    long-to-int v1, v3

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Gi;->A01:I

    .line 40921
    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/Im;->A06:J

    const-wide/32 v2, 0xf4240

    move-object/from16 v1, v24

    invoke-static {v1, v2, v3, v4, v5}, Lcom/facebook/ads/redexgen/X/4a;->A13([JJJ)V

    .line 40922
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    const/4 v1, 0x0

    aget-wide v1, v2, v1

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/Im;->A05:J

    .line 40923
    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v7

    .line 40924
    .local p10, "editedDurationUs":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ip;

    .end local v5    # "encoderPadding":J
    .local p12, "encoderPadding":J
    .end local v7    # "encoderDelay":J
    .local p14, "encoderDelay":J
    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v20

    move-object/from16 v5, v24

    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Ip;-><init>(Lcom/facebook/ads/redexgen/X/Im;[J[II[J[IJ)V

    return-object v0

    .line 40925
    .end local v5
    .end local v7
    .end local p20
    .end local p22
    .end local p24
    :cond_1d
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    array-length v4, v3

    const/4 v3, 0x1

    if-ne v4, v3, :cond_1e

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    const/4 v6, 0x0

    aget-wide v4, v3, v6

    cmp-long v3, v4, v10

    if-nez v3, :cond_1e

    .line 40926
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A09:[J

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v6, v3, v6

    .line 40927
    .local p10, "editStartTime":J
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_e
    move-object/from16 v3, v24

    array-length v3, v3

    if-ge v5, v3, :cond_32

    .line 40928
    aget-wide v8, v24, v5

    sub-long/2addr v8, v6

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A06:J

    .line 40929
    const-wide/32 v10, 0xf4240

    move-wide v12, v3

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v3

    aput-wide v3, v24, v5

    .line 40930
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 40931
    .end local p10
    .end local p12
    .restart local p17
    :cond_1e
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    const/4 v1, 0x1

    if-ne v2, v1, :cond_23

    const/4 v13, 0x1

    .line 40932
    .local v7, "omitClippedSample":Z
    :goto_f
    const/4 v10, 0x0

    .line 40933
    .local v0, "editedSampleCount":I
    const/4 v12, 0x0

    .line 40934
    .local v1, "nextSampleIndex":I
    const/16 v19, 0x0

    .line 40935
    .local v2, "copyMetadata":Z
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    array-length v1, v1

    new-array v7, v1, [I

    .line 40936
    .local v8, "startIndices":[I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    array-length v1, v1

    new-array v6, v1, [I

    .line 40937
    .local v6, "endIndices":[I
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Im;->A09:[J

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v2, v2, v1

    const/16 v1, 0x17

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x57

    if-eq v2, v1, :cond_22

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    .line 40938
    .local p10, "editListMediaTimes":[J
    const/4 v5, 0x0

    .local v0, "copyMetadata":Z
    .local v1, "i":I
    .local v2, "nextSampleIndex":I
    .local v5, "editedSampleCount":I
    :goto_10
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    array-length v1, v1

    if-ge v5, v1, :cond_24

    .line 40939
    aget-wide v1, v11, v5

    .line 40940
    .local v3, "editMediaTime":J
    const-wide/16 v8, -0x1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_20

    .line 40941
    .end local v14    # "chunkIterator":Lcom/facebook/ads/redexgen/X/IJ;
    .local p13, "chunkIterator":Lcom/facebook/ads/redexgen/X/IJ;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    aget-wide v25, v3, v5

    .end local v11    # "offsets":[J
    .end local v12    # "sizes":[I
    .local v14, "offsets":[J
    .local p14, "sizes":[I
    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/Im;->A06:J

    .end local v13    # "sampleCount":I
    .end local v14    # "offsets":[J
    .local p15, "sampleCount":I
    .local p16, "offsets":[J
    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A05:J

    .line 40942
    move-wide/from16 v27, v8

    move-wide/from16 v29, v3

    invoke-static/range {v25 .. v30}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v8

    .line 40943
    .local v11, "editDuration":J
    const/4 v4, 0x1

    move-object/from16 v3, v24

    invoke-static {v3, v1, v2, v4, v4}, Lcom/facebook/ads/redexgen/X/4a;->A0L([JJZZ)I

    move-result v3

    aput v3, v7, v5

    .line 40944
    add-long/2addr v1, v8

    .line 40945
    const/4 v4, 0x0

    .end local v3    # "editMediaTime":J
    .local p20, "editMediaTime":J
    move-object/from16 v3, v24

    invoke-static {v3, v1, v2, v13, v4}, Lcom/facebook/ads/redexgen/X/4a;->A0K([JJZZ)I

    move-result v1

    aput v1, v6, v5

    .line 40946
    :goto_11
    aget v2, v7, v5

    aget v1, v6, v5

    if-ge v2, v1, :cond_1f

    aget v1, v7, v5

    aget v1, v23, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1f

    .line 40947
    aget v1, v7, v5

    add-int/2addr v1, v2

    aput v1, v7, v5

    goto :goto_11

    .line 40948
    :cond_1f
    aget v2, v6, v5

    aget v1, v7, v5

    sub-int/2addr v2, v1

    add-int/2addr v10, v2

    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v3, v1

    const/4 v1, 0x6

    aget-object v3, v3, v1

    const/16 v1, 0x1a

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_19

    .line 40949
    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v2, "N8MUiUXq"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "O0bSFd8k"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    aget v1, v7, v5

    if-eq v12, v1, :cond_21

    const/4 v1, 0x1

    :goto_12
    or-int v19, v19, v1

    .line 40950
    aget v12, v6, v5

    .line 40951
    .end local v3
    .end local v11    # "editDuration":J
    .end local v12
    .end local v13
    .end local v14
    .restart local p13
    .restart local p14
    .restart local p15
    .restart local p16
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 40952
    :cond_21
    const/4 v1, 0x0

    goto :goto_12

    :cond_22
    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v2, "YPXXFbwg"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "nX0rcUWc"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    .line 40953
    .local p10, "editListMediaTimes":[J
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 40954
    :cond_23
    const/4 v13, 0x0

    goto/16 :goto_f

    .line 40955
    .end local p13
    .end local p14
    .end local p15
    .end local p16
    .restart local v11    # "editDuration":J
    .restart local v12    # "sizes":[I
    .restart local v13    # "sampleCount":I
    .restart local v14    # "offsets":[J
    :cond_24
    const/4 v2, 0x1

    .line 40956
    .end local v1    # "i":I
    .end local v11    # "editDuration":J
    .end local v12    # "sizes":[I
    .end local v13    # "sampleCount":I
    .end local v14    # "offsets":[J
    .restart local p13
    .restart local p14
    .restart local p15
    .restart local p16
    .end local p15
    .local v14, "sampleCount":I
    move/from16 v1, v17

    if-eq v10, v1, :cond_2d

    :goto_13
    or-int v19, v19, v2

    .line 40957
    .end local v0    # "copyMetadata":Z
    .local v11, "copyMetadata":Z
    if-eqz v19, :cond_2c

    new-array v14, v10, [J

    .line 40958
    .local v12, "editedOffsets":[J
    :goto_14
    if-eqz v19, :cond_2b

    new-array v11, v10, [I

    .line 40959
    .local v13, "editedSizes":[I
    :goto_15
    if-eqz v19, :cond_25

    const/16 v20, 0x0

    :cond_25
    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v2, v3, v1

    const/4 v1, 0x4

    aget-object v3, v3, v1

    const/16 v1, 0x1e

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_19

    .line 40960
    .local v0, "editedMaximumSize":I
    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v2, "xPfk6NQdScK777382m5CuwBWtM3rjqH6"

    const/4 v1, 0x5

    aput-object v2, v3, v1

    if-eqz v19, :cond_2a

    new-array v13, v10, [I

    .line 40961
    .local v4, "editedFlags":[I
    :goto_16
    new-array v12, v10, [J

    .line 40962
    .local v3, "editedTimestamps":[J
    const-wide/16 v25, 0x0

    .line 40963
    .local p20, "pts":J
    const/4 v9, 0x0

    .line 40964
    .local v1, "sampleIndex":I
    const/4 v8, 0x0

    .end local p20
    .local v0, "i":I
    .local v16, "editedMaximumSize":I
    .local p26, "pts":J
    .end local v2    # "nextSampleIndex":I
    .local v21, "nextSampleIndex":I
    :goto_17
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    array-length v1, v1

    if-ge v8, v1, :cond_33

    .line 40965
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Im;->A09:[J

    aget-wide v17, v1, v8

    .line 40966
    .local p28, "editMediaTime":J
    aget v5, v7, v8

    .line 40967
    .local v2, "startIndex":I
    .end local v5    # "editedSampleCount":I
    .local p15, "editedSampleCount":I
    aget v10, v6, v8

    .line 40968
    .local v5, "endIndex":I
    if-eqz v19, :cond_28

    .line 40969
    .end local v6    # "endIndices":[I
    .local p30, "endIndices":[I
    sub-int v2, v10, v5

    .line 40970
    .local v6, "count":I
    .end local p16
    .local v14, "offsets":[J
    .local p31, "sampleCount":I
    move-object/from16 v1, v21

    invoke-static {v1, v5, v14, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40971
    .end local p14
    .local v14, "sizes":[I
    .restart local p16
    move-object/from16 v1, v22

    invoke-static {v1, v5, v11, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40972
    move-object/from16 v1, v23

    invoke-static {v1, v5, v13, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40973
    .end local v16    # "editedMaximumSize":I
    .local v2, "editedMaximumSize":I
    .local v6, "j":I
    .local p14, "startIndex":I
    :goto_18
    if-ge v5, v10, :cond_27

    .line 40974
    const-wide/32 v27, 0xf4240

    .end local v4    # "editedFlags":[I
    .end local v5    # "endIndex":I
    .local p32, "editedFlags":[I
    .local p33, "endIndex":I
    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Im;->A05:J

    move-wide/from16 v29, v1

    invoke-static/range {v25 .. v30}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v15

    .line 40975
    .local v4, "ptsUs":J
    aget-wide v3, v24, v5

    .end local v7    # "omitClippedSample":Z
    .end local v8    # "startIndices":[I
    .local p34, "omitClippedSample":Z
    .local p35, "startIndices":[I
    sub-long v3, v3, v17

    .line 40976
    const-wide/16 v1, 0x0

    .end local v14    # "sizes":[I
    .end local v15    # "timestamps":[J
    .local p36, "timestamps":[J
    .local p37, "sizes":[I
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v29

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Im;->A06:J

    .line 40977
    move-wide/from16 v31, v27

    move-wide/from16 v33, v1

    invoke-static/range {v29 .. v34}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v1

    .line 40978
    .local v7, "timeInSegmentUs":J
    add-long/2addr v15, v1

    aput-wide v15, v12, v9

    .line 40979
    if-eqz v19, :cond_26

    aget v2, v11, v9

    move/from16 v1, v20

    if-le v2, v1, :cond_26

    .line 40980
    aget v20, v22, v5

    .line 40981
    .end local v4    # "ptsUs":J
    .end local v7    # "timeInSegmentUs":J
    :cond_26
    add-int/lit8 v9, v9, 0x1

    .line 40982
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 40983
    .end local p32
    .end local p33
    .end local p34
    .end local p35
    .end local p36
    .end local p37
    .local v4, "editedFlags":[I
    .restart local v5    # "endIndex":I
    .local v7, "omitClippedSample":Z
    .restart local v8    # "startIndices":[I
    .restart local v14    # "sizes":[I
    .restart local v15    # "timestamps":[J
    .end local v4    # "editedFlags":[I
    .end local v5    # "endIndex":I
    .end local v6    # "j":I
    .end local v7    # "omitClippedSample":Z
    .end local v8    # "startIndices":[I
    .end local v14    # "sizes":[I
    .end local v15    # "timestamps":[J
    .restart local p32
    .restart local p33
    .restart local p34
    .restart local p35
    .restart local p36
    .restart local p37
    :cond_27
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    aget-wide v1, v1, v8

    add-long v25, v25, v1

    .line 40984
    .end local p14
    .end local p28
    .end local p33
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 40985
    .end local p30
    .end local p31
    .local v6, "endIndices":[I
    .local v14, "sampleCount":I
    .restart local p14
    :cond_28
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v2, v2, v1

    const/16 v1, 0x17

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x57

    if-eq v2, v1, :cond_29

    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v2, "bpFLG5yiCjaNBTatiJL832yJ"

    const/4 v1, 0x2

    aput-object v2, v3, v1

    goto :goto_18

    :cond_29
    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v2, "uU6cy1oD"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "C1luViVj"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    goto :goto_18

    .line 40986
    :cond_2a
    move-object/from16 v13, v23

    goto/16 :goto_16

    .line 40987
    :cond_2b
    move-object/from16 v11, v22

    goto/16 :goto_15

    .line 40988
    :cond_2c
    move-object/from16 v14, v21

    goto/16 :goto_14

    .line 40989
    :cond_2d
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 40990
    :cond_2e
    const/4 v7, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v4, v4, v3

    const/16 v3, 0x17

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x57

    if-eq v4, v3, :cond_2f

    const/4 v4, 0x0

    const/16 v3, 0x5d

    invoke-static {v7, v4, v3}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    :cond_2f
    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v4, "aaylILcGBS6VDtnpev9y5b4BJZBYR2y3"

    const/4 v3, 0x7

    aput-object v4, v6, v3

    const-string v4, "0XgNPN0ZQsO4pNqGOHtpLFxyHM4aJjFv"

    const/4 v3, 0x4

    aput-object v4, v6, v3

    const/4 v4, 0x0

    const/16 v3, 0x5d

    invoke-static {v7, v4, v3}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    .line 40991
    :cond_30
    move-object/from16 v0, p1

    goto/16 :goto_c

    .line 40992
    :cond_31
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    .line 40993
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_a

    .line 40994
    .end local v0    # "i":I
    :cond_32
    sub-long/2addr v1, v6

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Im;->A06:J

    .line 40995
    const-wide/32 v7, 0xf4240

    move-wide v5, v1

    move-wide v9, v3

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v7

    .line 40996
    .end local p17
    .local p12, "durationUs":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ip;

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v20

    move-object/from16 v5, v24

    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Ip;-><init>(Lcom/facebook/ads/redexgen/X/Im;[J[II[J[IJ)V

    return-object v0

    .line 40997
    .end local v2    # "editedMaximumSize":I
    .end local p15
    .end local p30
    .end local p31
    .end local p32
    .end local p34
    .end local p35
    .end local p36
    .end local p37
    .restart local v4    # "editedFlags":[I
    .local v5, "editedSampleCount":I
    .local v6, "endIndices":[I
    .restart local v7    # "omitClippedSample":Z
    .restart local v8    # "startIndices":[I
    .local v14, "sampleCount":I
    .restart local v15    # "timestamps":[J
    .restart local v16    # "editedMaximumSize":I
    .local p14, "sizes":[I
    .end local v0
    .end local v4    # "editedFlags":[I
    .end local v5    # "editedSampleCount":I
    .end local v6    # "endIndices":[I
    .end local v7    # "omitClippedSample":Z
    .end local v8    # "startIndices":[I
    .end local v14    # "sampleCount":I
    .end local p14
    .restart local p15
    .restart local p30
    .restart local p31
    .restart local p32
    .restart local p34
    .restart local p35
    .restart local p37
    :cond_33
    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Im;->A05:J

    .line 40998
    const-wide/32 v27, 0xf4240

    move-wide/from16 v29, v0

    invoke-static/range {v25 .. v30}, Lcom/facebook/ads/redexgen/X/4a;->A0U(JJJ)J

    move-result-wide v7

    .line 40999
    .local v14, "editedDurationUs":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ip;

    .end local v1    # "sampleIndex":I
    .local p12, "sampleIndex":I
    .end local v3    # "editedTimestamps":[J
    .local p14, "editedTimestamps":[J
    .end local p32
    .local p20, "editedFlags":[I
    .end local p30
    .local p21, "endIndices":[I
    .end local p34
    .end local p35
    .local p22, "omitClippedSample":Z
    .local p23, "startIndices":[I
    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v11

    move/from16 v4, v20

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Ip;-><init>(Lcom/facebook/ads/redexgen/X/Im;[J[II[J[IJ)V

    return-object v0

    .line 41000
    .end local v9    # "flags":[I
    .end local v11    # "copyMetadata":Z
    .end local v13    # "editedSizes":[I
    .end local v14    # "editedDurationUs":J
    .end local v15    # "timestamps":[J
    .end local v16    # "editedMaximumSize":I
    .end local v17    # "cttsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .end local v18    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/ki;
    .end local v19    # "stss":Lcom/facebook/ads/redexgen/X/4J;
    .end local v20    # "stszAtom":Lcom/facebook/ads/redexgen/X/ki;
    .end local v21    # "nextSampleIndex":I
    .end local v22    # "remainingTimestampDeltaChanges":I
    .end local v23    # "remainingSamplesAtTimestampDelta":I
    .end local v24    # "chunkOffsetsAreLongs":Z
    .end local v25    # "stssAtom":Lcom/facebook/ads/redexgen/X/ki;
    .end local v26    # "remainingSamplesAtTimestampOffset":I
    .end local v27    # "nextSynchronizationSampleIndex":I
    .end local v28    # "stsc":Lcom/facebook/ads/redexgen/X/4J;
    .end local v29    # "rechunkFixedSizeSamples":Z
    .end local v30    # "remainingTimestampOffsetChanges":I
    .end local v31    # "remainingSynchronizationSamples":I
    .end local v32    # "sampleMimeType":Ljava/lang/String;
    .end local v33    # "maximumSize":I
    .end local p0    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/4J;
    .end local p1    # "fixedSampleSize":I
    .end local p2    # "ctts":Lcom/facebook/ads/redexgen/X/4J;
    .end local p3
    .end local p4
    .end local p5
    .end local p7
    .end local p8
    .end local p10
    .end local p12
    .end local p13
    .end local p14
    .end local p15
    .end local p16
    .end local p17
    .end local p19
    .end local p20
    .end local p21
    .end local p22
    .end local p23
    .end local p26
    .end local p31
    .end local p37
    .local v1, "stz2Atom":Lcom/facebook/ads/redexgen/X/ki;
    .local v12, "stszAtom":Lcom/facebook/ads/redexgen/X/ki;
    :cond_34
    const/16 v2, 0x190

    const/16 v1, 0x2a

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A0M(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x66

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0N()Ljava/nio/ByteBuffer;
    .locals 2

    .line 41001
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static A0O(Lcom/facebook/ads/redexgen/X/kj;Lcom/facebook/ads/redexgen/X/Gi;JLcom/facebook/ads/androidx/media3/common/DrmInitData;ZZLcom/facebook/ads/redexgen/X/ip;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/kj;",
            "Lcom/facebook/ads/redexgen/X/Gi;",
            "J",
            "Lcom/facebook/ads/androidx/media3/common/DrmInitData;",
            "ZZ",
            "Lcom/facebook/ads/redexgen/X/ip<",
            "Lcom/facebook/ads/redexgen/X/Im;",
            "Lcom/facebook/ads/redexgen/X/Im;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ip;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 41002
    .local p7, "modifyTrackFunction":Lcom/facebook/ads/redexgen/X/ip;, "Lcom/google/common/base/Function<Lcom/facebook/ads/androidx/media3/extractor/mp4/Track;Lcom/facebook/ads/androidx/media3/extractor/mp4/Track;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41003
    .local v1, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kj;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 41004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kj;->A01:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/kj;

    .line 41005
    .local v3, "atom":Lcom/facebook/ads/redexgen/X/kj;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/II;->A00:I

    const v0, 0x7472616b

    if-eq v1, v0, :cond_0

    .line 41006
    .end local v3    # "atom":Lcom/facebook/ads/redexgen/X/kj;
    .end local v4
    .end local v6
    .end local v8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41007
    :cond_0
    const v0, 0x6d766864

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kj;->A07(I)Lcom/facebook/ads/redexgen/X/ki;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/ki;

    .line 41008
    move/from16 v10, p6

    move/from16 v9, p5

    move-object v8, p4

    move-wide v6, p2

    invoke-static/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/IO;->A0J(Lcom/facebook/ads/redexgen/X/kj;Lcom/facebook/ads/redexgen/X/ki;JLcom/facebook/ads/androidx/media3/common/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v0

    .line 41009
    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ip;->A43(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Im;

    .line 41010
    .local v4, "track":Lcom/facebook/ads/redexgen/X/Im;
    if-nez v5, :cond_1

    goto :goto_1

    .line 41011
    :cond_1
    const v0, 0x6d646961

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/kj;->A06(I)Lcom/facebook/ads/redexgen/X/kj;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/kj;

    .line 41012
    const v6, 0x6d696e66

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "jveTcVJC"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "kDhQUkZe"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/kj;->A06(I)Lcom/facebook/ads/redexgen/X/kj;

    move-result-object v0

    .line 41013
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/kj;

    .line 41014
    const v0, 0x7374626c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/kj;->A06(I)Lcom/facebook/ads/redexgen/X/kj;

    move-result-object v0

    .line 41015
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kj;

    .line 41016
    .local v6, "stblAtom":Lcom/facebook/ads/redexgen/X/kj;
    invoke-static {v5, v0, p1}, Lcom/facebook/ads/redexgen/X/IO;->A0L(Lcom/facebook/ads/redexgen/X/Im;Lcom/facebook/ads/redexgen/X/kj;Lcom/facebook/ads/redexgen/X/Gi;)Lcom/facebook/ads/redexgen/X/Ip;

    move-result-object v0

    .line 41017
    .local v8, "trackSampleTable":Lcom/facebook/ads/redexgen/X/Ip;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41018
    .end local v2    # "i":I
    :cond_3
    return-object v3
.end method

.method public static A0P()V
    .locals 1

    const/16 v0, 0x50b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/IO;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x46t
        0x4at
        0x9t
        0x1et
        0x1et
        0x19t
        0x4at
        0x3t
        0x4t
        0x1ct
        0xbt
        0x6t
        0x3t
        0xet
        0xbt
        0x7t
        0x55t
        0x42t
        0x4at
        0x46t
        0x4et
        0x49t
        0x4et
        0x49t
        0x40t
        0x74t
        0x46t
        0x4at
        0x57t
        0x4bt
        0x42t
        0x54t
        0x66t
        0x53t
        0x73t
        0x4et
        0x4at
        0x42t
        0x54t
        0x53t
        0x46t
        0x4at
        0x57t
        0x63t
        0x42t
        0x4bt
        0x53t
        0x46t
        0x7t
        0x55t
        0x59t
        0xbt
        0x1ct
        0x14t
        0x18t
        0x10t
        0x17t
        0x10t
        0x17t
        0x1et
        0x2at
        0x18t
        0x14t
        0x9t
        0x15t
        0x1ct
        0xat
        0x38t
        0xdt
        0x2dt
        0x10t
        0x14t
        0x1ct
        0xat
        0xdt
        0x18t
        0x14t
        0x9t
        0x36t
        0x1ft
        0x1ft
        0xat
        0x1ct
        0xdt
        0x59t
        0x44t
        0x48t
        0x1at
        0xdt
        0x5t
        0x9t
        0x1t
        0x6t
        0x1t
        0x6t
        0xft
        0x3bt
        0x9t
        0x5t
        0x18t
        0x4t
        0xdt
        0x1bt
        0x21t
        0x6t
        0x2bt
        0x0t
        0x1dt
        0x6t
        0x3t
        0x48t
        0x63t
        0x6ft
        0x3dt
        0x2at
        0x22t
        0x2et
        0x26t
        0x21t
        0x26t
        0x21t
        0x28t
        0x1bt
        0x26t
        0x22t
        0x2at
        0x3ct
        0x3bt
        0x2et
        0x22t
        0x3ft
        0xbt
        0x2at
        0x23t
        0x3bt
        0x2et
        0xct
        0x27t
        0x2et
        0x21t
        0x28t
        0x2at
        0x3ct
        0x6ft
        0x78t
        0x62t
        0x30t
        0x27t
        0x2ft
        0x23t
        0x2bt
        0x2ct
        0x2bt
        0x2ct
        0x25t
        0x11t
        0x3bt
        0x2ct
        0x21t
        0x2at
        0x30t
        0x2dt
        0x2ct
        0x2bt
        0x38t
        0x23t
        0x36t
        0x2bt
        0x2dt
        0x2ct
        0x11t
        0x23t
        0x2ft
        0x32t
        0x2et
        0x27t
        0x31t
        0x62t
        0x63t
        0x56t
        0x4dt
        0x4ft
        0x72t
        0x43t
        0x50t
        0x51t
        0x47t
        0x50t
        0x51t
        0x1et
        0x23t
        0x38t
        0x3et
        0x28t
        0x28t
        0x32t
        0x2dt
        0x3et
        0x7bt
        0x34t
        0x39t
        0x2et
        0x4t
        0x28t
        0x32t
        0x21t
        0x3et
        0x37t
        0x10t
        0x1dt
        0x11t
        0x10t
        0xdt
        0x17t
        0xdt
        0xat
        0x1bt
        0x10t
        0xat
        0x5et
        0xdt
        0xat
        0x1ct
        0x12t
        0x5et
        0x1ct
        0x11t
        0x6t
        0x5et
        0x18t
        0x11t
        0xct
        0x5et
        0xat
        0xct
        0x1ft
        0x1dt
        0x15t
        0x5et
        0x8t
        0x2ft
        0x37t
        0x20t
        0x2dt
        0x28t
        0x25t
        0x61t
        0x32t
        0x20t
        0x2ct
        0x31t
        0x2dt
        0x24t
        0x61t
        0x33t
        0x20t
        0x35t
        0x24t
        0x61t
        0x27t
        0x2et
        0x33t
        0x61t
        0x5t
        0x2et
        0x2dt
        0x23t
        0x38t
        0x61t
        0x15t
        0x33t
        0x34t
        0x24t
        0x9t
        0x5t
        0x61t
        0xct
        0xdt
        0x11t
        0x61t
        0x32t
        0x35t
        0x33t
        0x24t
        0x20t
        0x2ct
        0x7bt
        0x61t
        0x3ft
        0x13t
        0x1et
        0x14t
        0x1dt
        0x0t
        0x1ft
        0x17t
        0x16t
        0x52t
        0x1t
        0x13t
        0x1ft
        0x2t
        0x1et
        0x17t
        0x52t
        0x6t
        0x13t
        0x10t
        0x1et
        0x17t
        0x52t
        0x5at
        0x1t
        0x6t
        0x10t
        0x1et
        0x5bt
        0x52t
        0x1ft
        0x1bt
        0x1t
        0x1t
        0x1bt
        0x1ct
        0x15t
        0x52t
        0x1t
        0x13t
        0x1ft
        0x2t
        0x1et
        0x17t
        0x52t
        0x16t
        0x17t
        0x1t
        0x11t
        0x0t
        0x1bt
        0x2t
        0x6t
        0x1bt
        0x1dt
        0x1ct
        0x52t
        0x5at
        0x1t
        0x6t
        0x1t
        0x16t
        0x5bt
        0x21t
        0x1et
        0x1bt
        0x1dt
        0x26t
        0xbt
        0xft
        0xat
        0x5et
        0x66t
        0x64t
        0x7dt
        0x7dt
        0x68t
        0x69t
        0x2dt
        0x60t
        0x68t
        0x79t
        0x6ct
        0x69t
        0x6ct
        0x79t
        0x6ct
        0x2dt
        0x7at
        0x64t
        0x79t
        0x65t
        0x2dt
        0x78t
        0x63t
        0x66t
        0x63t
        0x62t
        0x7at
        0x63t
        0x2dt
        0x66t
        0x68t
        0x74t
        0x2dt
        0x64t
        0x63t
        0x69t
        0x68t
        0x75t
        0x37t
        0x2dt
        0x5dt
        0x7bt
        0x68t
        0x6at
        0x62t
        0x29t
        0x61t
        0x68t
        0x7at
        0x29t
        0x67t
        0x66t
        0x29t
        0x7at
        0x68t
        0x64t
        0x79t
        0x65t
        0x6ct
        0x29t
        0x7dt
        0x68t
        0x6bt
        0x65t
        0x6ct
        0x29t
        0x7at
        0x60t
        0x73t
        0x6ct
        0x29t
        0x60t
        0x67t
        0x6ft
        0x66t
        0x7bt
        0x64t
        0x68t
        0x7dt
        0x60t
        0x66t
        0x67t
        0x6dt
        0x56t
        0x5dt
        0x40t
        0x48t
        0x5dt
        0x5bt
        0x4ct
        0x5dt
        0x5ct
        0x18t
        0x5dt
        0x56t
        0x5ct
        0x18t
        0x57t
        0x5et
        0x18t
        0x5bt
        0x50t
        0x4dt
        0x56t
        0x53t
        0x18t
        0x5ct
        0x59t
        0x4ct
        0x59t
        0x5at
        0x61t
        0x7ct
        0x7at
        0x7ft
        0x7ft
        0x60t
        0x7dt
        0x7bt
        0x6at
        0x6bt
        0x2ft
        0x6ct
        0x60t
        0x63t
        0x60t
        0x7dt
        0x2ft
        0x7bt
        0x76t
        0x7ft
        0x6at
        0x35t
        0x2ft
        0x48t
        0x73t
        0x6et
        0x68t
        0x6dt
        0x6dt
        0x72t
        0x6ft
        0x69t
        0x78t
        0x79t
        0x3dt
        0x74t
        0x73t
        0x74t
        0x69t
        0x74t
        0x7ct
        0x71t
        0x42t
        0x79t
        0x74t
        0x6et
        0x6dt
        0x71t
        0x7ct
        0x64t
        0x42t
        0x79t
        0x78t
        0x71t
        0x7ct
        0x64t
        0x42t
        0x6dt
        0x6ft
        0x78t
        0x6et
        0x78t
        0x73t
        0x69t
        0x42t
        0x7bt
        0x71t
        0x7ct
        0x7at
        0x69t
        0x52t
        0x4ft
        0x49t
        0x4ct
        0x4ct
        0x53t
        0x4et
        0x48t
        0x59t
        0x58t
        0x1ct
        0x51t
        0x59t
        0x58t
        0x55t
        0x5dt
        0x1ct
        0x4et
        0x5dt
        0x48t
        0x59t
        0x12t
        0x19t
        0x22t
        0x3ft
        0x39t
        0x3ct
        0x3ct
        0x23t
        0x3et
        0x38t
        0x29t
        0x28t
        0x6ct
        0x23t
        0x2et
        0x39t
        0x13t
        0x29t
        0x34t
        0x38t
        0x29t
        0x22t
        0x3ft
        0x25t
        0x23t
        0x22t
        0x13t
        0x2at
        0x20t
        0x2dt
        0x2bt
        0x64t
        0x5ft
        0x42t
        0x44t
        0x41t
        0x41t
        0x5et
        0x43t
        0x45t
        0x54t
        0x55t
        0x11t
        0x5et
        0x53t
        0x44t
        0x6et
        0x45t
        0x48t
        0x41t
        0x54t
        0xbt
        0x11t
        0x53t
        0x68t
        0x75t
        0x73t
        0x76t
        0x76t
        0x69t
        0x74t
        0x72t
        0x63t
        0x62t
        0x26t
        0x74t
        0x63t
        0x62t
        0x73t
        0x65t
        0x63t
        0x62t
        0x59t
        0x75t
        0x72t
        0x6ft
        0x6at
        0x6at
        0x59t
        0x76t
        0x6ft
        0x65t
        0x72t
        0x73t
        0x74t
        0x63t
        0x59t
        0x6et
        0x63t
        0x67t
        0x62t
        0x63t
        0x74t
        0x34t
        0xft
        0x12t
        0x14t
        0x11t
        0x11t
        0xet
        0x13t
        0x15t
        0x4t
        0x5t
        0x41t
        0x15t
        0x8t
        0xct
        0x8t
        0xft
        0x6t
        0x3et
        0x8t
        0xft
        0x7t
        0xet
        0x3et
        0x11t
        0x13t
        0x4t
        0x12t
        0x4t
        0xft
        0x15t
        0x3et
        0x7t
        0xdt
        0x0t
        0x6t
        0x60t
        0x71t
        0x71t
        0x6dt
        0x68t
        0x62t
        0x60t
        0x75t
        0x68t
        0x6et
        0x6ft
        0x2et
        0x75t
        0x75t
        0x6ct
        0x6dt
        0x2at
        0x79t
        0x6ct
        0x6dt
        0x21t
        0x30t
        0x30t
        0x2ct
        0x29t
        0x23t
        0x21t
        0x34t
        0x29t
        0x2ft
        0x2et
        0x6ft
        0x38t
        0x6dt
        0x23t
        0x21t
        0x2dt
        0x25t
        0x32t
        0x21t
        0x6dt
        0x2dt
        0x2ft
        0x34t
        0x29t
        0x2ft
        0x2et
        0x4et
        0x5ft
        0x5ft
        0x43t
        0x46t
        0x4ct
        0x4et
        0x5bt
        0x46t
        0x40t
        0x41t
        0x0t
        0x57t
        0x2t
        0x42t
        0x5ft
        0x1bt
        0x2t
        0x4ct
        0x4at
        0x4et
        0x2t
        0x19t
        0x1ft
        0x17t
        0x5ft
        0x4et
        0x4et
        0x52t
        0x57t
        0x5dt
        0x5ft
        0x4at
        0x57t
        0x51t
        0x50t
        0x11t
        0x46t
        0x13t
        0x53t
        0x4et
        0xat
        0x13t
        0x48t
        0x4at
        0x4at
        0x3dt
        0x2ct
        0x2ct
        0x30t
        0x35t
        0x3ft
        0x3dt
        0x28t
        0x35t
        0x33t
        0x32t
        0x73t
        0x24t
        0x71t
        0x2dt
        0x29t
        0x35t
        0x3ft
        0x37t
        0x28t
        0x35t
        0x31t
        0x39t
        0x71t
        0x28t
        0x24t
        0x6ft
        0x3bt
        0x50t
        0x44t
        0x55t
        0x58t
        0x5et
        0x1et
        0x2t
        0x56t
        0x41t
        0x41t
        0x3at
        0x2et
        0x3ft
        0x32t
        0x34t
        0x74t
        0x3at
        0x38t
        0x68t
        0x2at
        0x3et
        0x2ft
        0x22t
        0x24t
        0x64t
        0x2at
        0x28t
        0x7ft
        0x2et
        0x3at
        0x2bt
        0x26t
        0x20t
        0x60t
        0x2et
        0x23t
        0x2et
        0x2ct
        0x22t
        0x36t
        0x27t
        0x2at
        0x2ct
        0x6ct
        0x22t
        0x2et
        0x31t
        0x6et
        0x34t
        0x21t
        0x4dt
        0x59t
        0x48t
        0x45t
        0x43t
        0x3t
        0x49t
        0x4dt
        0x4ft
        0x1ft
        0x3t
        0x17t
        0x6t
        0xbt
        0xdt
        0x4dt
        0x4t
        0xet
        0x3t
        0x1t
        0x67t
        0x73t
        0x62t
        0x6ft
        0x69t
        0x29t
        0x61t
        0x31t
        0x37t
        0x37t
        0x2bt
        0x67t
        0x6at
        0x67t
        0x71t
        0x4at
        0x5et
        0x4ft
        0x42t
        0x44t
        0x4t
        0x4ct
        0x1ct
        0x1at
        0x1at
        0x6t
        0x46t
        0x47t
        0x4at
        0x5ct
        0x22t
        0x36t
        0x27t
        0x2at
        0x2ct
        0x6ct
        0x2et
        0x2bt
        0x22t
        0x72t
        0x17t
        0x3t
        0x12t
        0x1ft
        0x19t
        0x59t
        0x1bt
        0x1et
        0x1bt
        0x47t
        0x60t
        0x74t
        0x65t
        0x68t
        0x6et
        0x2et
        0x6ct
        0x71t
        0x35t
        0x60t
        0x2ct
        0x6dt
        0x60t
        0x75t
        0x6ct
        0x16t
        0x2t
        0x13t
        0x1et
        0x18t
        0x58t
        0x1at
        0x7t
        0x12t
        0x10t
        0x44t
        0x50t
        0x41t
        0x4ct
        0x4at
        0xat
        0x4at
        0x55t
        0x50t
        0x56t
        0x59t
        0x4dt
        0x5ct
        0x51t
        0x57t
        0x17t
        0x4at
        0x59t
        0x4ft
        0x4at
        0x5et
        0x4ft
        0x42t
        0x44t
        0x4t
        0x5ft
        0x59t
        0x5et
        0x4et
        0x6t
        0x43t
        0x4ft
        0x72t
        0x66t
        0x77t
        0x7at
        0x7ct
        0x3ct
        0x65t
        0x7dt
        0x77t
        0x3dt
        0x77t
        0x67t
        0x60t
        0x20t
        0x34t
        0x25t
        0x28t
        0x2et
        0x6et
        0x37t
        0x2ft
        0x25t
        0x6ft
        0x25t
        0x35t
        0x32t
        0x6ft
        0x29t
        0x25t
        0x44t
        0x50t
        0x41t
        0x4ct
        0x4at
        0xat
        0x53t
        0x4bt
        0x41t
        0xbt
        0x41t
        0x51t
        0x56t
        0xbt
        0x4dt
        0x41t
        0x1et
        0x55t
        0x57t
        0x4at
        0x43t
        0x4ct
        0x49t
        0x40t
        0x18t
        0x49t
        0x47t
        0x57t
        0x58t
        0x4ct
        0x5dt
        0x50t
        0x56t
        0x16t
        0x4ft
        0x57t
        0x5dt
        0x17t
        0x5dt
        0x4dt
        0x4at
        0x17t
        0x4ct
        0x51t
        0x5dt
        0x2t
        0x49t
        0x4bt
        0x56t
        0x5ft
        0x50t
        0x55t
        0x5ct
        0x4t
        0x49t
        0xbt
        0x36t
        0x37t
        0x36t
        0x64t
        0x57t
        0x56t
        0x57t
        0x47t
        0x4ft
        0x49t
        0x42t
        0x4ft
        0x32t
        0x34t
        0x3ft
        0x22t
        0x4at
        0x41t
        0x40t
        0x45t
        0x4dt
        0x68t
        0x5dt
        0x46t
        0x44t
        0x7at
        0x40t
        0x53t
        0x4ct
        0x9t
        0x44t
        0x5ct
        0x5at
        0x5dt
        0x9t
        0x4bt
        0x4ct
        0x9t
        0x59t
        0x46t
        0x5at
        0x40t
        0x5dt
        0x40t
        0x5ft
        0x4ct
        0x31t
        0x25t
        0x3at
        0x36t
        0x77t
        0x36t
        0x23t
        0x38t
        0x3at
        0x77t
        0x3et
        0x24t
        0x77t
        0x3at
        0x36t
        0x39t
        0x33t
        0x36t
        0x23t
        0x38t
        0x25t
        0x2et
        0x3bt
        0x2bt
        0x20t
        0x21t
        0x68t
        0x29t
        0x3ct
        0x27t
        0x25t
        0x68t
        0x21t
        0x3bt
        0x68t
        0x25t
        0x29t
        0x26t
        0x2ct
        0x29t
        0x3ct
        0x27t
        0x3at
        0x31t
        0xft
        0x1et
        0x15t
        0x18t
        0x5bt
        0x1at
        0xft
        0x14t
        0x16t
        0x5bt
        0x12t
        0x8t
        0x5bt
        0x16t
        0x1at
        0x15t
        0x1ft
        0x1at
        0xft
        0x14t
        0x9t
        0x2t
        0x5t
        0x1at
        0x17t
        0x16t
        0x1ct
        0x5ct
        0x40t
        0x14t
        0x3t
        0x3t
        0x43t
        0x5ct
        0x51t
        0x50t
        0x5at
        0x1at
        0x54t
        0x43t
        0x5t
        0x4t
        0x23t
        0x3ct
        0x31t
        0x30t
        0x3at
        0x7at
        0x34t
        0x23t
        0x36t
        0x48t
        0x57t
        0x5at
        0x5bt
        0x51t
        0x11t
        0x5at
        0x51t
        0x52t
        0x5ct
        0x47t
        0x13t
        0x48t
        0x57t
        0x4dt
        0x57t
        0x51t
        0x50t
        0x44t
        0x5bt
        0x56t
        0x57t
        0x5dt
        0x1dt
        0x5at
        0x57t
        0x44t
        0x51t
        0x1at
        0x5t
        0x8t
        0x9t
        0x3t
        0x43t
        0x1t
        0x1ct
        0x9t
        0xbt
        0x5ft
        0x40t
        0x4dt
        0x4ct
        0x46t
        0x6t
        0x51t
        0x4t
        0x5ft
        0x47t
        0x4dt
        0x7t
        0x46t
        0x47t
        0x1bt
        0x7t
        0x5ft
        0x59t
        0x11t
        0x3t
        0x1ct
        0x11t
        0x10t
        0x1at
        0x5at
        0xdt
        0x58t
        0x3t
        0x1bt
        0x11t
        0x5bt
        0x1at
        0x1bt
        0x47t
        0x5bt
        0x3t
        0x5t
        0x4ct
    .end array-data
.end method

.method public static A0Q(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 3

    .line 41019
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v2

    .line 41020
    .local v0, "endPosition":I
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41021
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq v1, v0, :cond_0

    .line 41022
    add-int/lit8 v2, v2, 0x4

    .line 41023
    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41024
    return-void
.end method

.method public static A0R(Lcom/facebook/ads/redexgen/X/4J;IIIIILcom/facebook/ads/androidx/media3/common/DrmInitData;Lcom/facebook/ads/redexgen/X/IM;I)V
    .locals 33
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Adding Colorspace support for AV1"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 41025
    move/from16 v31, p2

    move-object/from16 v25, p6

    move/from16 v32, p1

    add-int/lit8 v0, v31, 0x8

    add-int/lit8 v0, v0, 0x8

    move-object/from16 v10, p0

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41026
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41027
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v29

    .line 41028
    .local v5, "width":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v28

    .line 41029
    .local v6, "height":I
    const/16 v30, 0x0

    .line 41030
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v27, 0x3f800000    # 1.0f

    .line 41031
    .local v8, "pixelWidthHeightRatio":F
    const/16 v0, 0x32

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41032
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v9

    .line 41033
    .local v9, "childPosition":I
    const v1, 0x656e6376

    move-object/from16 p0, p7

    move/from16 p1, p3

    move/from16 v0, v32

    if-ne v0, v1, :cond_1

    .line 41034
    move/from16 v1, v31

    move/from16 v0, p1

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A08(Lcom/facebook/ads/redexgen/X/4J;II)Landroid/util/Pair;

    move-result-object v2

    .line 41035
    .local v10, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v2, :cond_0

    .line 41036
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 41037
    .end local p8    # null:I
    .local v12, "atomType":I
    if-nez v25, :cond_34

    .line 41038
    const/16 v25, 0x0

    .line 41039
    .end local p13
    .local v3, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A03:[Lcom/facebook/ads/redexgen/X/In;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/In;

    aput-object v0, v1, p8

    .line 41040
    :cond_0
    invoke-virtual {v10, v9}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41041
    .end local v10    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    :cond_1
    const/4 v6, 0x0

    .line 41042
    .local v10, "mimeType":Ljava/lang/String;
    const v1, 0x6d317620

    move/from16 v0, v32

    if-ne v0, v1, :cond_33

    .line 41043
    const/16 v2, 0x4db

    const/16 v1, 0xa

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41044
    :cond_2
    :goto_1
    const/4 v12, 0x0

    .line 41045
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v13, 0x0

    .line 41046
    .local v14, "codecs":Ljava/lang/String;
    const/16 v26, 0x0

    .line 41047
    .local v15, "projectionData":[B
    const/4 v11, -0x1

    .line 41048
    .local v16, "stereoMode":I
    const/16 v17, 0x0

    .line 41049
    .local v17, "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    const/4 v8, -0x1

    .line 41050
    .local v18, "colorSpace":I
    const/4 v5, -0x1

    .line 41051
    .local v19, "colorRange":I
    const/4 v7, -0x1

    .line 41052
    .local v20, "colorTransfer":I
    const/4 v4, 0x0

    .line 41053
    .end local v16    # "stereoMode":I
    .end local v18    # "colorSpace":I
    .end local v19    # "colorRange":I
    .end local v20    # "colorTransfer":I
    .local v21, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .local v22, "stereoMode":I
    .local v23, "colorSpace":I
    .local v24, "colorRange":I
    .local v25, "colorTransfer":I
    :goto_2
    sub-int v3, v9, v31

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .end local v3    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .local v18, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "UV8763Z4eJ1eqclMrzFGVnLWDHgV5Y7v"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    move/from16 v0, p1

    if-ge v3, v0, :cond_5

    .line 41054
    invoke-virtual {v10, v9}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41055
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v1

    .line 41056
    .local v11, "childStartPosition":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v14

    .line 41057
    .local v3, "childAtomSize":I
    if-nez v14, :cond_b

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v2

    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v20, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    sub-int v2, v2, v31

    move/from16 v0, p1

    if-ne v2, v0, :cond_b

    .line 41058
    .end local v5    # "width":I
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v12    # "atomType":I
    .end local v13
    .end local v14    # "codecs":Ljava/lang/String;
    .end local v15    # "projectionData":[B
    .end local v23    # "colorSpace":I
    .end local v24    # "colorRange":I
    .end local v25    # "colorTransfer":I
    .restart local v4
    .local v6, "colorRange":I
    .local v7, "colorTransfer":I
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v27
    .restart local v28
    .restart local v29
    .restart local v30
    .restart local v31
    .restart local v32
    .restart local p4    # null:I
    :cond_5
    if-nez v6, :cond_6

    .line 41059
    return-void

    .line 41060
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 41061
    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2D;->A0g(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41062
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41063
    .end local p4    # null:I
    .restart local v14    # "codecs":Ljava/lang/String;
    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/2D;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 41064
    .end local v32
    .restart local v5    # "width":I
    move/from16 v0, v29

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0r(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 41065
    .end local v31
    .local v8, "height":I
    move/from16 v0, v28

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0f(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 41066
    .end local v30
    .local v11, "pixelWidthHeightRatio":F
    move/from16 v0, v27

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0Y(F)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41067
    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2D;->A0l(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 41068
    .end local v29
    .restart local v15    # "projectionData":[B
    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A13([B)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41069
    .end local v22    # "stereoMode":I
    .local v13, "stereoMode":I
    invoke-virtual {v0, v11}, Lcom/facebook/ads/redexgen/X/2D;->A0o(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41070
    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 41071
    .end local v18    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .local v0, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    move-object/from16 v0, v25

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v3

    .line 41072
    .local v1, "formatBuilder":Lcom/facebook/ads/redexgen/X/2D;
    const/4 v0, -0x1

    .end local v0    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .restart local v18    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    if-ne v8, v0, :cond_7

    if-ne v5, v0, :cond_7

    if-ne v7, v0, :cond_7

    if-eqz v4, :cond_8

    .line 41073
    :cond_7
    nop

    .line 41074
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "iNSGYMD2WjZqNKpCGRiE11Ag0KcZMJ4O"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "kUdBVFFCHZ7OFsLW60c88KXDOWnZQcPh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_3
    new-instance v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-direct {v0, v8, v5, v7, v4}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;-><init>(III[B)V

    .line 41075
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0t(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Lcom/facebook/ads/redexgen/X/2D;

    .line 41076
    :cond_8
    if-eqz v17, :cond_9

    .line 41077
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/IK;->A01(Lcom/facebook/ads/redexgen/X/IK;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/AD;->A04(J)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0a(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v2

    .line 41078
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/IK;->A00(Lcom/facebook/ads/redexgen/X/IK;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/AD;->A04(J)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0j(I)Lcom/facebook/ads/redexgen/X/2D;

    .line 41079
    :cond_9
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A02:Lcom/facebook/ads/redexgen/X/or;

    .line 41080
    return-void

    .line 41081
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 41082
    .end local v13    # "stereoMode":I
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_b
    if-lez v14, :cond_32

    const/4 v15, 0x1

    :goto_4
    const/16 v3, 0x442

    const/16 v2, 0x1e

    const/16 v0, 0x4f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v0, 0x57

    if-eq v2, v0, :cond_f

    invoke-static {v15, v3}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 41083
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 41084
    .local v1, "childAtomType":I
    const v0, 0x61766343

    if-ne v2, v0, :cond_10

    .line 41085
    :goto_5
    if-nez v6, :cond_e

    const/4 v2, 0x1

    :goto_6
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 41086
    const/16 v3, 0x4b6

    const/16 v2, 0x9

    const/16 v0, 0x33

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41087
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    add-int/lit8 v0, v1, 0x8

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41088
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/GJ;->A00(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/GJ;

    move-result-object v2

    .line 41089
    .local v10, "avcConfig":Lcom/facebook/ads/redexgen/X/GJ;
    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/GJ;->A05:Ljava/util/List;

    .line 41090
    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "stereoMode":I
    .end local v2    # "mimeType":Ljava/lang/String;
    .local p8, "mimeType":Ljava/lang/String;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/GJ;->A02:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:I

    .line 41091
    if-nez v30, :cond_c

    .line 41092
    iget v0, v2, Lcom/facebook/ads/redexgen/X/GJ;->A00:F

    move/from16 v27, v0

    .line 41093
    :cond_c
    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/GJ;->A04:Ljava/lang/String;

    .line 41094
    .end local v10    # "avcConfig":Lcom/facebook/ads/redexgen/X/GJ;
    .end local v14    # "codecs":Ljava/lang/String;
    .local v2, "codecs":Ljava/lang/String;
    .end local v4
    .end local v6    # "colorRange":I
    .end local v20
    .end local v27
    .end local v29
    .end local v30
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    .restart local v8    # "height":I
    .restart local v13    # "stereoMode":I
    .restart local v15    # "projectionData":[B
    .restart local v23    # "colorSpace":I
    .restart local v24    # "colorRange":I
    .restart local v25    # "colorTransfer":I
    :cond_d
    :goto_7
    add-int/2addr v9, v14

    .line 41095
    .end local v1    # "childAtomType":I
    .end local v3    # "childAtomSize":I
    .end local v11    # "pixelWidthHeightRatio":F
    goto/16 :goto_2

    .line 41096
    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    :cond_f
    sget-object v16, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v2, "a7F234D58gsc4SWrdwKeU3Lp"

    const/4 v0, 0x2

    aput-object v2, v16, v0

    invoke-static {v15, v3}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 41097
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 41098
    .local v1, "childAtomType":I
    const v0, 0x61766343

    if-ne v2, v0, :cond_10

    goto :goto_5

    .line 41099
    .end local v2    # "codecs":Ljava/lang/String;
    .end local v13    # "stereoMode":I
    .end local p8    # "mimeType":Ljava/lang/String;
    .local v10, "mimeType":Ljava/lang/String;
    .restart local v14    # "codecs":Ljava/lang/String;
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_10
    const v0, 0x68766343

    if-ne v2, v0, :cond_13

    .line 41100
    if-nez v6, :cond_12

    const/4 v2, 0x1

    :goto_8
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 41101
    const/16 v3, 0x4d1

    const/16 v2, 0xa

    const/16 v0, 0x54

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41102
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    add-int/lit8 v0, v1, 0x8

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41103
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Gj;->A00(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Gj;

    move-result-object v2

    .line 41104
    .local v10, "hevcConfig":Lcom/facebook/ads/redexgen/X/Gj;
    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/Gj;->A08:Ljava/util/List;

    .line 41105
    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "stereoMode":I
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local p8    # "mimeType":Ljava/lang/String;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Gj;->A05:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:I

    .line 41106
    if-nez v30, :cond_11

    .line 41107
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Gj;->A00:F

    move/from16 v27, v0

    .line 41108
    :cond_11
    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/Gj;->A07:Ljava/lang/String;

    .line 41109
    .end local v14    # "codecs":Ljava/lang/String;
    .local v2, "codecs":Ljava/lang/String;
    iget v8, v2, Lcom/facebook/ads/redexgen/X/Gj;->A02:I

    .line 41110
    .end local v23    # "colorSpace":I
    .local v14, "colorSpace":I
    .end local v2    # "codecs":Ljava/lang/String;
    .local v19, "codecs":Ljava/lang/String;
    iget v5, v2, Lcom/facebook/ads/redexgen/X/Gj;->A01:I

    .line 41111
    .end local v24    # "colorRange":I
    .local v2, "colorRange":I
    iget v7, v2, Lcom/facebook/ads/redexgen/X/Gj;->A03:I

    .line 41112
    .end local v25    # "colorTransfer":I
    .local v10, "colorTransfer":I
    goto :goto_7

    .line 41113
    :cond_12
    const/4 v2, 0x0

    goto :goto_8

    .line 41114
    .end local v2    # "colorRange":I
    .end local v13    # "stereoMode":I
    .end local v19    # "codecs":Ljava/lang/String;
    .end local p8    # "mimeType":Ljava/lang/String;
    .local v10, "mimeType":Ljava/lang/String;
    .local v14, "codecs":Ljava/lang/String;
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v23    # "colorSpace":I
    .restart local v24    # "colorRange":I
    .restart local v25    # "colorTransfer":I
    :cond_13
    const v0, 0x64766343

    if-eq v2, v0, :cond_14

    const v0, 0x64767643

    if-ne v2, v0, :cond_15

    .line 41115
    .end local v5    # "width":I
    .end local v8    # "height":I
    .end local v12
    .end local v14    # "codecs":Ljava/lang/String;
    .end local v15    # "projectionData":[B
    .end local v23    # "colorSpace":I
    .end local v24    # "colorRange":I
    .end local v25    # "colorTransfer":I
    .restart local v4
    .local v6, "colorRange":I
    .local v7, "colorTransfer":I
    .restart local v27
    .restart local v28
    .restart local v29
    .restart local v30
    .restart local v31
    .restart local v32
    .restart local p4    # null:I
    :cond_14
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/GU;->A00(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/GU;

    move-result-object v0

    .line 41116
    .local v5, "dolbyVisionConfig":Lcom/facebook/ads/redexgen/X/GU;
    if-eqz v0, :cond_d

    .line 41117
    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/GU;->A02:Ljava/lang/String;

    .line 41118
    .end local p4    # null:I
    .restart local v14    # "codecs":Ljava/lang/String;
    const/16 v2, 0x4bf

    const/16 v1, 0x12

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 41119
    :cond_15
    const v0, 0x76706343

    if-ne v2, v0, :cond_1a

    .line 41120
    if-nez v6, :cond_19

    const/4 v2, 0x1

    :goto_9
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 41121
    const v2, 0x76703038

    move/from16 v0, v32

    if-ne v0, v2, :cond_18

    const/16 v3, 0x4e5

    const/16 v2, 0x13

    const/16 v0, 0x4f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41122
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    :goto_a
    add-int/lit8 v0, v1, 0xc

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41123
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41124
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    const/4 v2, 0x1

    .line 41125
    .local v10, "fullRangeFlag":Z
    :goto_b
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 41126
    .local v13, "colorPrimaries":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 41127
    .local v27, "transferCharacteristics":I
    invoke-static {v1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A00(I)I

    move-result v8

    .line 41128
    if-eqz v2, :cond_16

    const/4 v5, 0x1

    .line 41129
    .end local v24
    .local v19, "colorRange":I
    :goto_c
    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01(I)I

    move-result v7

    .line 41130
    .end local v13    # "colorPrimaries":I
    .end local v25
    .end local v27    # "transferCharacteristics":I
    .local v10, "colorTransfer":I
    goto/16 :goto_7

    .line 41131
    :cond_16
    const/4 v5, 0x2

    goto :goto_c

    .line 41132
    :cond_17
    const/4 v2, 0x0

    goto :goto_b

    .line 41133
    :cond_18
    const/16 v3, 0x4f8

    const/16 v2, 0x13

    const/16 v0, 0x13

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    .line 41134
    :cond_19
    const/4 v2, 0x0

    goto :goto_9

    .line 41135
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v19    # "colorRange":I
    .local v10, "mimeType":Ljava/lang/String;
    .restart local v24    # "colorRange":I
    .restart local v25    # "colorTransfer":I
    :cond_1a
    const v3, 0x61763143

    sget-object v16, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v16, v0

    const/4 v15, 0x4

    aget-object v18, v16, v15

    const/16 v15, 0x1e

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v0, v16

    if-eq v0, v15, :cond_1c

    sget-object v16, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v15, "obOtuNmXmw3Srs7TxB3R2veWOWOW6QJb"

    const/4 v0, 0x5

    aput-object v15, v16, v0

    if-ne v2, v3, :cond_1d

    .line 41136
    :goto_d
    if-nez v6, :cond_1b

    const/4 v2, 0x1

    :goto_e
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 41137
    const/16 v3, 0x4ac

    const/16 v2, 0xa

    const/16 v0, 0x53

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41138
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local v2    # "mimeType":Ljava/lang/String;
    add-int/lit8 v0, v1, 0x8

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41139
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/IO;->A0B(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    .line 41140
    .local v10, "colorInfo":Lcom/facebook/ads/androidx/media3/common/ColorInfo;
    iget v8, v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A02:I

    .line 41141
    .end local v23
    .local v13, "colorSpace":I
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local p8    # "mimeType":Ljava/lang/String;
    iget v5, v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01:I

    .line 41142
    .end local v24    # "colorRange":I
    .local v2, "colorRange":I
    iget v7, v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    .line 41143
    .end local v25    # "colorTransfer":I
    .local v10, "colorTransfer":I
    goto/16 :goto_7

    .line 41144
    :cond_1b
    const/4 v2, 0x0

    goto :goto_e

    :cond_1c
    if-ne v2, v3, :cond_1d

    goto :goto_d

    .line 41145
    .end local v2    # "colorRange":I
    .end local v13    # "colorSpace":I
    .end local p8    # "mimeType":Ljava/lang/String;
    .local v10, "mimeType":Ljava/lang/String;
    .restart local v23    # "colorSpace":I
    .restart local v24    # "colorRange":I
    .restart local v25    # "colorTransfer":I
    :cond_1d
    const v0, 0x636c6c69

    if-ne v2, v0, :cond_20

    .line 41146
    if-nez v4, :cond_1e

    .line 41147
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IO;->A0N()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 41148
    .end local v21    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .local v2, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_1e
    const/16 v0, 0x15

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41149
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0b()S

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41150
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0b()S

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_1f

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "cMBnz4dZXlFeWyM9hfqqzsh9zqwjLPKg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "lv8fWd8FNFrcw1jaRvaQVznvgsfH83Rg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    goto/16 :goto_7

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "x7EuuBNN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "05WogHTT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    goto/16 :goto_7

    .line 41151
    .end local v2    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .restart local v21    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_20
    const v0, 0x6d646376

    if-ne v2, v0, :cond_22

    .line 41152
    if-nez v4, :cond_21

    .line 41153
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IO;->A0N()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 41154
    .end local v21    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .restart local v2    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_21
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0b()S

    move-result v24

    .line 41155
    .local v13, "displayPrimariesGX":S
    .end local v7    # "colorTransfer":I
    .local v27, "pixelWidthHeightRatioFromPasp":Z
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0b()S

    move-result v23

    .line 41156
    .local v7, "displayPrimariesGY":S
    .end local v12
    .local v28, "atomType":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0b()S

    move-result v22

    .line 41157
    .local v12, "displayPrimariesBX":S
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0b()S

    move-result v21

    .line 41158
    .local v4, "displayPrimariesBY":S
    .end local v15
    .local v29, "projectionData":[B
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0b()S

    move-result v20

    .line 41159
    .local v15, "displayPrimariesRX":S
    .end local v8
    .local v30, "pixelWidthHeightRatio":F
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0b()S

    move-result v19

    .line 41160
    .local v8, "displayPrimariesRY":S
    .end local v6    # "colorRange":I
    .local v31, "height":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0b()S

    move-result v18

    .line 41161
    .local v6, "whitePointX":S
    .end local v5    # "dolbyVisionConfig":Lcom/facebook/ads/redexgen/X/GU;
    .local v32, "width":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0b()S

    move-result v16

    .line 41162
    .local v5, "whitePointY":S
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v2

    .line 41163
    .local p0, "maxDisplayMasteringLuminance":J
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v0

    .line 41164
    .local p2, "minDisplayMasteringLuminance":J
    const/4 v15, 0x1

    .end local v14    # "codecs":Ljava/lang/String;
    .local p4, "codecs":Ljava/lang/String;
    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41165
    move/from16 v15, v20

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41166
    move/from16 v15, v19

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41167
    move/from16 v15, v24

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41168
    move/from16 v15, v23

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41169
    move/from16 v15, v22

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41170
    move/from16 v15, v21

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41171
    move/from16 v15, v18

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41172
    move/from16 v15, v16

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41173
    const-wide/16 v18, 0x2710

    .end local v4    # "displayPrimariesBY":S
    .end local v5    # "whitePointY":S
    .local p8, "displayPrimariesBY":S
    .local p13, "whitePointY":S
    div-long v2, v2, v18

    long-to-int v15, v2

    int-to-short v2, v15

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41174
    div-long v0, v0, v18

    long-to-int v2, v0

    int-to-short v0, v2

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41175
    .end local v6    # "whitePointX":S
    .end local v7    # "displayPrimariesGY":S
    .end local v8    # "displayPrimariesRY":S
    .end local v12    # "displayPrimariesBX":S
    .end local v13    # "displayPrimariesGX":S
    .end local v15    # "displayPrimariesRX":S
    .end local p0    # "maxDisplayMasteringLuminance":J
    .end local p2    # "minDisplayMasteringLuminance":J
    .end local p8    # "displayPrimariesBY":S
    .end local p13
    goto/16 :goto_7

    .end local v2    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .end local v27    # "pixelWidthHeightRatioFromPasp":Z
    .end local v28    # "atomType":I
    .end local v29    # "projectionData":[B
    .end local v30    # "pixelWidthHeightRatio":F
    .end local v31    # "height":I
    .end local v32    # "width":I
    .end local p4    # "codecs":Ljava/lang/String;
    .local v5, "width":I
    .local v6, "height":I
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    .local v8, "pixelWidthHeightRatio":F
    .local v12, "atomType":I
    .restart local v14    # "codecs":Ljava/lang/String;
    .local v15, "projectionData":[B
    .restart local v21    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "pixelWidthHeightRatioFromPasp":Z
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v12    # "atomType":I
    .end local v14    # "codecs":Ljava/lang/String;
    .end local v15    # "projectionData":[B
    .restart local v27    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v28    # "atomType":I
    .restart local v29    # "projectionData":[B
    .restart local v30    # "pixelWidthHeightRatio":F
    .restart local v31    # "height":I
    .restart local v32    # "width":I
    .restart local p4    # "codecs":Ljava/lang/String;
    :cond_22
    const v0, 0x64323633

    if-ne v2, v0, :cond_24

    .line 41176
    if-nez v6, :cond_23

    const/4 v1, 0x1

    :goto_f
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 41177
    const/16 v2, 0x4a2

    const/16 v1, 0xa

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .end local v10    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    goto/16 :goto_7

    .line 41178
    :cond_23
    const/4 v1, 0x0

    goto :goto_f

    .line 41179
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    :cond_24
    const v0, 0x65736473

    if-ne v2, v0, :cond_26

    .line 41180
    if-nez v6, :cond_25

    const/4 v2, 0x1

    :goto_10
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 41181
    invoke-static {v10, v1}, Lcom/facebook/ads/redexgen/X/IO;->A0G(Lcom/facebook/ads/redexgen/X/4J;I)Lcom/facebook/ads/redexgen/X/IK;

    move-result-object v17

    .line 41182
    .end local v17    # "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    .local v4, "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/IK;->A02(Lcom/facebook/ads/redexgen/X/IK;)Ljava/lang/String;

    move-result-object v6

    .line 41183
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v5, "mimeType":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/IK;->A03(Lcom/facebook/ads/redexgen/X/IK;)[B

    move-result-object v0

    .line 41184
    .local v6, "initializationDataBytes":[B
    if-eqz v0, :cond_d

    .line 41185
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Am;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v12

    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto/16 :goto_7

    .line 41186
    :cond_25
    const/4 v2, 0x0

    goto :goto_10

    .line 41187
    .end local v4    # "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local v17    # "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_26
    const v0, 0x70617370

    if-ne v2, v0, :cond_27

    .line 41188
    invoke-static {v10, v1}, Lcom/facebook/ads/redexgen/X/IO;->A00(Lcom/facebook/ads/redexgen/X/4J;I)F

    move-result v27

    .line 41189
    .end local v30    # "pixelWidthHeightRatio":F
    .local v4, "pixelWidthHeightRatio":F
    const/16 v30, 0x1

    .end local v27    # "pixelWidthHeightRatioFromPasp":Z
    .local v5, "pixelWidthHeightRatioFromPasp":Z
    goto/16 :goto_7

    .line 41190
    .end local v4    # "pixelWidthHeightRatio":F
    .end local v5    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v27    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v30    # "pixelWidthHeightRatio":F
    :cond_27
    const v0, 0x73763364

    if-ne v2, v0, :cond_28

    .line 41191
    invoke-static {v10, v1, v14}, Lcom/facebook/ads/redexgen/X/IO;->A0W(Lcom/facebook/ads/redexgen/X/4J;II)[B

    move-result-object v26

    .end local v29    # "projectionData":[B
    .local v4, "projectionData":[B
    goto/16 :goto_7

    .line 41192
    .end local v4    # "projectionData":[B
    .restart local v29    # "projectionData":[B
    :cond_28
    const v0, 0x73743364

    if-ne v2, v0, :cond_2b

    .line 41193
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 41194
    .local v4, "version":I
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41195
    if-nez v1, :cond_29

    .line 41196
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 41197
    .local v5, "layout":I
    packed-switch v0, :pswitch_data_0

    .line 41198
    .end local v4    # "version":I
    .end local v5    # "layout":I
    :cond_29
    :goto_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41199
    :pswitch_0
    const/4 v11, 0x3

    .line 41200
    goto :goto_11

    .line 41201
    :pswitch_1
    const/4 v11, 0x2

    .line 41202
    goto :goto_11

    .line 41203
    :pswitch_2
    const/4 v11, 0x1

    .line 41204
    goto :goto_11

    .line 41205
    :pswitch_3
    const/4 v11, 0x0

    .line 41206
    goto :goto_11

    .line 41207
    :cond_2a
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "0aivzU98O0ZXtjwpHxuX2T7FoukhoekU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "nV94P8gaAxhOD3b386SRtcx64PXkWIfI"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    goto/16 :goto_7

    .line 41208
    :cond_2b
    const v0, 0x636f6c72

    if-ne v2, v0, :cond_30

    .line 41209
    const/4 v0, -0x1

    .end local v23    # "colorSpace":I
    .local v4, "colorSpace":I
    if-ne v8, v0, :cond_30

    .end local v24    # "colorRange":I
    .local v6, "colorRange":I
    if-ne v5, v0, :cond_30

    .end local v25    # "colorTransfer":I
    .local v7, "colorTransfer":I
    if-ne v7, v0, :cond_30

    .line 41210
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v2

    .line 41211
    .local v5, "colorType":I
    const v0, 0x6e636c78

    if-eq v2, v0, :cond_2c

    const v0, 0x6e636c63

    if-ne v2, v0, :cond_2f

    .line 41212
    :cond_2c
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v2

    .line 41213
    .local v8, "colorPrimaries":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v1

    .line 41214
    .local v12, "transferCharacteristics":I
    const/4 v5, 0x2

    invoke-virtual {v10, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41215
    const/16 v0, 0x13

    if-ne v14, v0, :cond_2e

    .line 41216
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    .line 41217
    .local v15, "fullRangeFlag":Z
    :goto_12
    invoke-static {v2}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A00(I)I

    move-result v8

    .line 41218
    if-eqz v0, :cond_2d

    const/4 v5, 0x1

    .line 41219
    :cond_2d
    invoke-static {v1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01(I)I

    move-result v7

    .line 41220
    .end local v8    # "colorPrimaries":I
    .end local v12    # "transferCharacteristics":I
    .end local v15    # "fullRangeFlag":Z
    goto/16 :goto_7

    .line 41221
    :cond_2e
    const/4 v0, 0x0

    goto :goto_12

    .line 41222
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x1d6

    const/16 v1, 0x18

    const/16 v0, 0x69

    invoke-static {v15, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/II;->A02(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb2

    const/16 v1, 0xb

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 41223
    .end local v23
    .end local v24
    .end local v25
    .restart local v4    # "colorSpace":I
    .restart local v6    # "colorRange":I
    .restart local v7    # "colorTransfer":I
    :cond_30
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_31

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "ZXEhGysO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "dMfXFnuv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    goto/16 :goto_7

    :cond_31
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "PjY9iWjn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "RXgmgrZF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    goto/16 :goto_7

    .line 41224
    :cond_32
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 41225
    :cond_33
    const v1, 0x48323633

    move/from16 v0, v32

    if-ne v0, v1, :cond_2

    .line 41226
    const/16 v2, 0x4a2

    const/16 v1, 0xa

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 41227
    :cond_34
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/In;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/In;->A02:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A01(Ljava/lang/String;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    move-result-object v25

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0S(Lcom/facebook/ads/redexgen/X/4J;IIIILjava/lang/String;Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 7

    .line 41228
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41229
    const/4 v5, 0x0

    .line 41230
    .local v0, "initializationData":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<[B>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 41231
    .local v1, "subsampleOffsetUs":J
    const v2, 0x54544d4c

    if-ne p1, v2, :cond_0

    .line 41232
    const/16 v4, 0x2b3

    const/16 v3, 0x14

    const/16 v2, 0x67

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41233
    .local v3, "mimeType":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 41234
    invoke-virtual {v2, p4}, Lcom/facebook/ads/redexgen/X/2D;->A0g(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v2

    .line 41235
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v2

    .line 41236
    invoke-virtual {v2, p5}, Lcom/facebook/ads/redexgen/X/2D;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v2

    .line 41237
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/2D;->A0s(J)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41238
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41239
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, p6, Lcom/facebook/ads/redexgen/X/IM;->A02:Lcom/facebook/ads/redexgen/X/or;

    .line 41240
    return-void

    .line 41241
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_0
    const v2, 0x74783367

    if-ne p1, v2, :cond_1

    .line 41242
    const/16 v4, 0x310

    const/16 v3, 0x1c

    const/16 v2, 0x3a

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41243
    .restart local v3    # "mimeType":Ljava/lang/String;
    add-int/lit8 v2, p3, -0x8

    add-int/lit8 v4, v2, -0x8

    .line 41244
    .local v4, "sampleDescriptionLength":I
    new-array v3, v4, [B

    .line 41245
    .local v5, "sampleDescriptionData":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 41246
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Am;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v5

    .line 41247
    .end local v4    # "sampleDescriptionLength":I
    .end local v5    # "sampleDescriptionData":[B
    goto :goto_0

    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_1
    const v2, 0x77767474

    if-ne p1, v2, :cond_2

    .line 41248
    const/16 v4, 0x2fb

    const/16 v3, 0x15

    const/16 v2, 0x58

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 41249
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_2
    const v2, 0x73747070

    if-ne p1, v2, :cond_3

    .line 41250
    const/16 v2, 0x2b3

    const/16 v1, 0x14

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41251
    .restart local v3    # "mimeType":Ljava/lang/String;
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 41252
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_3
    const v2, 0x63363038

    if-ne p1, v2, :cond_4

    .line 41253
    const/16 v4, 0x2e2

    const/16 v3, 0x19

    const/16 v2, 0x49

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41254
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/4 v2, 0x1

    iput v2, p6, Lcom/facebook/ads/redexgen/X/IM;->A01:I

    goto :goto_0

    .line 41255
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static A0T(Lcom/facebook/ads/redexgen/X/4J;IIIILjava/lang/String;ZLcom/facebook/ads/androidx/media3/common/DrmInitData;Lcom/facebook/ads/redexgen/X/IM;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 41256
    move/from16 v3, p1

    move/from16 p1, p2

    move-object/from16 v2, p7

    add-int/lit8 v1, p1, 0x8

    const/16 v0, 0x8

    add-int/2addr v1, v0

    move-object/from16 v11, p0

    invoke-virtual {v11, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41257
    const/4 v6, 0x0

    .line 41258
    .local v7, "quickTimeSoundDescriptionVersion":I
    const/4 v7, 0x6

    if-eqz p6, :cond_37

    .line 41259
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v6

    .line 41260
    invoke-virtual {v11, v7}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41261
    :goto_0
    const/16 v18, 0x0

    .line 41262
    .local v8, "sampleRateMlp":I
    const/4 v10, -0x1

    .line 41263
    .local v10, "pcmEncoding":I
    const/16 p0, 0x0

    .line 41264
    .local v11, "codecs":Ljava/lang/String;
    const/16 v17, 0x0

    .line 41265
    .local v12, "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    const/4 v8, 0x2

    const/16 v5, 0x10

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "6JAwliLs"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "MHNM5nZH"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const/4 v0, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v0, :cond_36

    .line 41266
    :cond_2
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v12

    .line 41267
    .restart local v13
    invoke-virtual {v11, v7}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41268
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0J()I

    move-result v9

    .line 41269
    .restart local v9
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v11, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41270
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v18

    .line 41271
    if-ne v6, v0, :cond_3

    .line 41272
    const/16 v0, 0x10

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41273
    :cond_3
    :goto_1
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v8

    .line 41274
    .local v14, "childPosition":I
    const v0, 0x656e6361

    .end local v7    # "quickTimeSoundDescriptionVersion":I
    .local v18, "quickTimeSoundDescriptionVersion":I
    move-object/from16 v13, p8

    move/from16 p3, p3

    if-ne v3, v0, :cond_4

    .line 41275
    move/from16 v1, p1

    move/from16 v0, p3

    invoke-static {v11, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A08(Lcom/facebook/ads/redexgen/X/4J;II)Landroid/util/Pair;

    move-result-object v4

    .line 41276
    .local v15, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v4, :cond_34

    .line 41277
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 41278
    .end local p8    # null:Lcom/facebook/ads/redexgen/X/IM;
    .local v7, "atomType":I
    if-nez v2, :cond_33

    .line 41279
    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_32

    const/4 v2, 0x0

    .line 41280
    .end local p14
    .local v5, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :goto_2
    iget-object v5, v13, Lcom/facebook/ads/redexgen/X/IM;->A03:[Lcom/facebook/ads/redexgen/X/In;

    .end local v5    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .restart local p14
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/ads/redexgen/X/In;

    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v6, v0

    const/4 v1, 0x6

    aget-object v6, v6, v1

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_31

    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "lvh8KGFHktoLjastkJ82cPetj14Rk4EU"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const-string v1, "lCZg4scnRLhDwR3AaCs1YjGUJehF9RDz"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    aput-object v4, v5, p9

    .line 41281
    .end local p8
    .end local p14
    .local v5, "atomType":I
    .local v7, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :goto_3
    invoke-virtual {v11, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41282
    .end local p8
    .end local p14
    .restart local v5    # "atomType":I
    .restart local v7    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :cond_4
    const/4 v7, 0x0

    .line 41283
    .local v15, "mimeType":Ljava/lang/String;
    .end local v9
    .local p2, "sampleRate":I
    const v0, 0x61632d33

    .end local v10    # "pcmEncoding":I
    .local p3, "pcmEncoding":I
    const v5, 0x616c6163

    if-ne v3, v0, :cond_17

    .line 41284
    const/16 v3, 0x336

    const/16 v1, 0x9

    const/16 v0, 0x3d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    .line 41285
    .end local p3    # "pcmEncoding":I
    .restart local v9
    :cond_5
    :goto_4
    const/4 v6, 0x0

    .line 41286
    .end local p2    # "sampleRate":I
    .local v11, "sampleRate":I
    .local v12, "codecs":Ljava/lang/String;
    .local v13, "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    .local v14, "channelCount":I
    .local v15, "childPosition":I
    .local p4, "mimeType":Ljava/lang/String;
    .local p5, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_5
    sub-int v1, v8, p1

    move-object/from16 v14, p5

    move/from16 p2, p4

    move/from16 v0, p3

    if-ge v1, v0, :cond_39

    .line 41287
    invoke-virtual {v11, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41288
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v5

    .line 41289
    .local v10, "childAtomSize":I
    if-lez v5, :cond_16

    const/4 v4, 0x1

    :goto_6
    const/16 v3, 0x442

    const/16 v1, 0x1e

    const/16 v0, 0x4f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v15

    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v3, v0

    const/4 v1, 0x4

    aget-object v3, v3, v1

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "1WqyRoRGMALZfYpxNfh8k5AQ"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-static {v4, v15}, Lcom/facebook/ads/redexgen/X/GZ;->A01(ZLjava/lang/String;)V

    .line 41290
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v0

    .line 41291
    .local v1, "childAtomType":I
    const v1, 0x6d686143

    if-ne v0, v1, :cond_7

    .line 41292
    const/16 v0, 0xd

    .line 41293
    .local v2, "mhacHeaderSize":I
    .end local v5    # "atomType":I
    .local p2, "atomType":I
    sub-int v3, v5, v0

    .line 41294
    .local v5, "childAtomBodySize":I
    .end local v13    # "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    .local p3, "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    new-array v1, v3, [B

    .line 41295
    .local v13, "initializationDataBytes":[B
    .end local v9
    .local p6, "pcmEncoding":I
    add-int/2addr v0, v8

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41296
    const/4 v0, 0x0

    invoke-virtual {v11, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 41297
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Am;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v6

    .line 41298
    .end local v5    # "childAtomBodySize":I
    .end local v13    # "initializationDataBytes":[B
    .end local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_6
    :goto_7
    add-int/2addr v8, v5

    .line 41299
    .end local v1    # "childAtomType":I
    .end local v10    # "childAtomSize":I
    goto :goto_5

    .line 41300
    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local p2    # "atomType":I
    .end local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    .end local p6    # "pcmEncoding":I
    .local v5, "atomType":I
    .restart local v9
    .local v13, "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    .restart local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v5    # "atomType":I
    .end local v9
    .end local v13    # "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    .restart local p2    # "atomType":I
    .restart local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    .restart local p6    # "pcmEncoding":I
    :cond_7
    const v4, 0x65736473

    if-eq v0, v4, :cond_8

    if-eqz p6, :cond_c

    const v3, 0x77617665

    sget-object v15, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v15, v15, v1

    const/16 v1, 0x17

    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v1, 0x57

    if-eq v15, v1, :cond_b

    if-ne v0, v3, :cond_c

    .line 41301
    .end local p4    # "mimeType":Ljava/lang/String;
    .restart local v5    # "atomType":I
    :cond_8
    :goto_8
    if-ne v0, v4, :cond_a

    .line 41302
    move v1, v8

    .line 41303
    .local v2, "esdsAtomPosition":I
    :goto_9
    const/4 v0, -0x1

    if-eq v1, v0, :cond_6

    .line 41304
    invoke-static {v11, v1}, Lcom/facebook/ads/redexgen/X/IO;->A0G(Lcom/facebook/ads/redexgen/X/4J;I)Lcom/facebook/ads/redexgen/X/IK;

    move-result-object v17

    .line 41305
    .end local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    .local v13, "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/IK;->A02(Lcom/facebook/ads/redexgen/X/IK;)Ljava/lang/String;

    move-result-object v7

    .line 41306
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/IK;->A03(Lcom/facebook/ads/redexgen/X/IK;)[B

    move-result-object v4

    .line 41307
    .local v9, "initializationDataBytes":[B
    if-eqz v4, :cond_6

    .line 41308
    const/16 v3, 0x3a4

    const/16 v1, 0xf

    const/16 v0, 0x67

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41309
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/GB;->A03([B)Lcom/facebook/ads/redexgen/X/GA;

    move-result-object v0

    .line 41310
    .local v0, "aacConfig":Lcom/facebook/ads/redexgen/X/GA;
    iget v9, v0, Lcom/facebook/ads/redexgen/X/GA;->A01:I

    .line 41311
    iget v12, v0, Lcom/facebook/ads/redexgen/X/GA;->A00:I

    .line 41312
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GA;->A02:Ljava/lang/String;

    move-object/from16 p0, v0

    .line 41313
    .end local v0    # "aacConfig":Lcom/facebook/ads/redexgen/X/GA;
    :cond_9
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Am;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v6

    goto :goto_7

    .line 41314
    :cond_a
    invoke-static {v11, v4, v8, v5}, Lcom/facebook/ads/redexgen/X/IO;->A04(Lcom/facebook/ads/redexgen/X/4J;III)I

    move-result v1

    goto :goto_9

    :cond_b
    sget-object v16, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v15, "uRIbW45A"

    const/4 v1, 0x0

    aput-object v15, v16, v1

    const-string v15, "EDIb1o31"

    const/4 v1, 0x3

    aput-object v15, v16, v1

    if-ne v0, v3, :cond_c

    goto :goto_8

    .line 41315
    :cond_c
    const v1, 0x64616333

    if-ne v0, v1, :cond_d

    .line 41316
    add-int/lit8 v0, v8, 0x8

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41317
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v14, v2}, Lcom/facebook/ads/redexgen/X/GF;->A07(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, v13, Lcom/facebook/ads/redexgen/X/IM;->A02:Lcom/facebook/ads/redexgen/X/or;

    goto :goto_7

    .line 41318
    :cond_d
    const v1, 0x64656333

    if-ne v0, v1, :cond_e

    .line 41319
    add-int/lit8 v0, v8, 0x8

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41320
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v14, v2}, Lcom/facebook/ads/redexgen/X/GF;->A08(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, v13, Lcom/facebook/ads/redexgen/X/IM;->A02:Lcom/facebook/ads/redexgen/X/or;

    goto/16 :goto_7

    .line 41321
    :cond_e
    const v1, 0x64616334

    if-ne v0, v1, :cond_f

    .line 41322
    add-int/lit8 v0, v8, 0x8

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41323
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v14, v2}, Lcom/facebook/ads/redexgen/X/GI;->A03(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, v13, Lcom/facebook/ads/redexgen/X/IM;->A02:Lcom/facebook/ads/redexgen/X/or;

    goto/16 :goto_7

    .line 41324
    :cond_f
    const v4, 0x646d6c70

    sget-object v15, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v1, v15, v1

    const/4 v3, 0x4

    aget-object v15, v15, v3

    const/16 v3, 0x1e

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_10

    sget-object v15, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v3, "XWUeG0Lj6KL9JW7Z7jfQ0rtemNqiryGw"

    const/4 v1, 0x7

    aput-object v3, v15, v1

    const-string v3, "DGFAmtAGFYrNnmS6p9Hy3BCjcLzUjlt2"

    const/4 v1, 0x4

    aput-object v3, v15, v1

    if-ne v0, v4, :cond_11

    .line 41325
    :goto_a
    if-lez v18, :cond_38

    .line 41326
    .end local v11    # "sampleRate":I
    .local v2, "sampleRate":I
    const/4 v12, 0x2

    move/from16 v9, v18

    .end local v14    # "channelCount":I
    .local v5, "channelCount":I
    goto/16 :goto_7

    :cond_10
    if-ne v0, v4, :cond_11

    goto :goto_a

    .line 41327
    :cond_11
    const v1, 0x64647473

    if-eq v0, v1, :cond_12

    const v1, 0x75647473

    if-ne v0, v1, :cond_13

    .line 41328
    :cond_12
    new-instance v1, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 41329
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0g(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41330
    .end local p4
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41331
    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41332
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41333
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2D;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41334
    invoke-virtual {v0, v14}, Lcom/facebook/ads/redexgen/X/2D;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41335
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, v13, Lcom/facebook/ads/redexgen/X/IM;->A02:Lcom/facebook/ads/redexgen/X/or;

    goto/16 :goto_7

    .line 41336
    :cond_13
    const v1, 0x644f7073

    if-ne v0, v1, :cond_14

    .line 41337
    add-int/lit8 v3, v5, -0x8

    .line 41338
    .local v2, "childAtomBodySize":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A02:[B

    sget-object v0, Lcom/facebook/ads/redexgen/X/IO;->A02:[B

    array-length v0, v0

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 41339
    .local v9, "headerBytes":[B
    add-int/lit8 v0, v8, 0x8

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41340
    sget-object v0, Lcom/facebook/ads/redexgen/X/IO;->A02:[B

    array-length v0, v0

    invoke-virtual {v11, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 41341
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Gr;->A06([B)Ljava/util/List;

    move-result-object v6

    .line 41342
    .end local v9    # "headerBytes":[B
    .end local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto/16 :goto_7

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_14
    const v1, 0x64664c61

    if-ne v0, v1, :cond_15

    .line 41343
    add-int/lit8 v3, v5, -0xc

    .line 41344
    .local v2, "childAtomBodySize":I
    add-int/lit8 v0, v3, 0x4

    new-array v1, v0, [B

    .line 41345
    .local v9, "initializationDataBytes":[B
    const/16 v4, 0x66

    const/4 v0, 0x0

    aput-byte v4, v1, v0

    .line 41346
    const/16 v4, 0x4c

    const/4 v0, 0x1

    aput-byte v4, v1, v0

    .line 41347
    const/16 v4, 0x61

    const/4 v0, 0x2

    aput-byte v4, v1, v0

    .line 41348
    const/4 v4, 0x3

    const/16 v0, 0x43

    aput-byte v0, v1, v4

    .line 41349
    add-int/lit8 v0, v8, 0xc

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41350
    const/4 v0, 0x4

    invoke-virtual {v11, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 41351
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Am;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v6

    .line 41352
    .end local v9    # "initializationDataBytes":[B
    .end local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto/16 :goto_7

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_15
    const v1, 0x616c6163

    if-ne v0, v1, :cond_6

    .line 41353
    add-int/lit8 v3, v5, -0xc

    .line 41354
    .local v2, "childAtomBodySize":I
    new-array v1, v3, [B

    .line 41355
    .local v5, "initializationDataBytes":[B
    add-int/lit8 v0, v8, 0xc

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41356
    const/4 v0, 0x0

    invoke-virtual {v11, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 41357
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3U;->A00([B)Landroid/util/Pair;

    move-result-object v3

    .line 41358
    .local v9, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 41359
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 41360
    .end local v14
    .local v13, "channelCount":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Am;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v6

    .end local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v14, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto/16 :goto_7

    .line 41361
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 41362
    :cond_17
    const v0, 0x65632d33

    if-ne v3, v0, :cond_18

    .line 41363
    const/16 v3, 0x35e

    const/16 v1, 0xa

    const/16 v0, 0x4a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41364
    :cond_18
    const v0, 0x61632d34

    if-ne v3, v0, :cond_1a

    .line 41365
    const/16 v3, 0x33f

    sget-object v4, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v4, v4, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_19

    sget-object v4, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "ajRR6yPd"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "wapOpR6f"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const/16 v1, 0x9

    const/16 v0, 0x2d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_19
    const/16 v1, 0x9

    const/16 v0, 0x2d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41366
    :cond_1a
    const v0, 0x64747363

    if-ne v3, v0, :cond_1b

    .line 41367
    const/16 v4, 0x3dd

    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x6

    aget-object v3, v3, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "KJpCB4t3K52AuUO24XLWBqo9"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/16 v1, 0xd

    const/16 v0, 0x75

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41368
    :cond_1b
    const v4, 0x64747368

    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v6, v0

    const/4 v0, 0x4

    aget-object v6, v6, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1d

    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "E8vPAuGqR2xNMC3W8Z6piDguEQA0iYD6"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const-string v1, "JqGyLM9U6ZTAdL5rS6oZcwJBCNvZXK39"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    if-eq v3, v4, :cond_1c

    :goto_b
    const v0, 0x6474736c

    if-ne v3, v0, :cond_1e

    .line 41369
    .end local v9    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    :cond_1c
    const/16 v3, 0x3ea

    const/16 v1, 0x10

    const/16 v0, 0x27

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_1d
    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "jXw0aAnX"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    const-string v1, "tHH1zIUY"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    if-eq v3, v4, :cond_1c

    goto :goto_b

    .line 41370
    :cond_1e
    const v0, 0x64747365

    if-ne v3, v0, :cond_1f

    .line 41371
    const/16 v3, 0x3fa

    const/16 v1, 0x1c

    const/16 v0, 0x43

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41372
    :cond_1f
    const v0, 0x64747378

    if-ne v3, v0, :cond_20

    .line 41373
    const/16 v3, 0x416

    const/16 v1, 0x1c

    const/16 v0, 0x5f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41374
    :cond_20
    const v4, 0x73616d72

    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v6, v0

    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_21

    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "UBbPjz2J"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    const-string v1, "vZen3GMl"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    if-ne v3, v4, :cond_22

    .line 41375
    :goto_c
    const/16 v3, 0x32c

    const/16 v1, 0xa

    const/16 v0, 0x57

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_21
    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "gBDk9Jrqoo24V0L1mHSTaoLt"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    if-ne v3, v4, :cond_22

    goto :goto_c

    .line 41376
    :cond_22
    const v0, 0x73617762

    if-ne v3, v0, :cond_23

    .line 41377
    const/16 v3, 0x352

    const/16 v1, 0xc

    const/16 v0, 0x25

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41378
    :cond_23
    const v0, 0x6c70636d

    if-eq v3, v0, :cond_24

    const v0, 0x736f7774

    if-ne v3, v0, :cond_25

    .line 41379
    :cond_24
    const/16 v3, 0x3c7

    const/16 v1, 0x9

    const/16 v0, 0x5e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    .line 41380
    const/4 v10, 0x2

    .end local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    .restart local v9    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto/16 :goto_4

    .line 41381
    :cond_25
    const v0, 0x74776f73

    if-ne v3, v0, :cond_26

    .line 41382
    const/16 v3, 0x3c7

    const/16 v1, 0x9

    const/16 v0, 0x5e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    .line 41383
    const/high16 v10, 0x10000000

    .end local p3
    .local v9, "pcmEncoding":I
    goto/16 :goto_4

    .line 41384
    .end local v9    # "pcmEncoding":I
    .restart local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    :cond_26
    const v0, 0x2e6d7032

    if-eq v3, v0, :cond_27

    const v0, 0x2e6d7033

    if-ne v3, v0, :cond_28

    .line 41385
    :cond_27
    const/16 v3, 0x3b3

    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41386
    :cond_28
    const v0, 0x6d686131

    if-ne v3, v0, :cond_29

    .line 41387
    const/16 v3, 0x390

    const/16 v1, 0xa

    const/16 v0, 0x25

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41388
    :cond_29
    const v0, 0x6d686d31

    if-ne v3, v0, :cond_2a

    .line 41389
    const/16 v3, 0x39a

    const/16 v1, 0xa

    const/16 v0, 0x10

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41390
    :cond_2a
    if-ne v3, v5, :cond_2c

    .line 41391
    const/16 v4, 0x348

    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_2b

    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "Tx0aPYhLQcdbhycZDJ63DJlxAHLYnZiL"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const-string v1, "3h5vNAL3r5q44mC2VqL1y1SAaDe1rbn7"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const/4 v1, 0x1

    const/16 v0, 0x1f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_2b
    sget-object v3, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "qx3Rs2jX7JB6Nuy9TisbRByWp1zn9Qj8"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const/16 v1, 0xa

    const/16 v0, 0x29

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41392
    :cond_2c
    const v0, 0x616c6177

    if-ne v3, v0, :cond_2d

    .line 41393
    const/16 v3, 0x372

    const/16 v1, 0xf

    const/16 v0, 0x60

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41394
    :cond_2d
    const v0, 0x756c6177

    if-ne v3, v0, :cond_2e

    .line 41395
    const/16 v3, 0x381

    const/16 v1, 0xf

    const/16 v0, 0x4d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41396
    :cond_2e
    const v0, 0x4f707573

    if-ne v3, v0, :cond_2f

    .line 41397
    const/16 v3, 0x3bd

    const/16 v1, 0xa

    const/16 v0, 0x43

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41398
    :cond_2f
    const v0, 0x664c6143

    if-ne v3, v0, :cond_30

    .line 41399
    const/16 v3, 0x368

    const/16 v1, 0xa

    const/4 v0, 0x4

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 41400
    :cond_30
    const v0, 0x6d6c7061

    if-ne v3, v0, :cond_5

    .line 41401
    const/16 v3, 0x3d0

    const/16 v1, 0xd

    const/16 v0, 0x4d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_31
    sget-object v6, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "dju2geGd"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    const-string v1, "bzT2ebja"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    aput-object v4, v5, p9

    goto/16 :goto_3

    :cond_32
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "GRTMmxkT"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "8R10f2wp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 41402
    .end local v7    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .restart local p8    # null:Lcom/facebook/ads/redexgen/X/IM;
    :cond_33
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/In;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/In;->A02:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A01(Ljava/lang/String;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    move-result-object v2

    goto/16 :goto_2

    .line 41403
    :cond_34
    sget-object v4, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_35

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_35
    sget-object v4, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "gPFMLbY3dC1lU3feUmGywMAQlXFn4oyw"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "p7gqQJ524nkvgJLmUWGAgmNX9hqHunnJ"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    goto/16 :goto_3

    .line 41404
    :cond_36
    if-ne v6, v8, :cond_3c

    .line 41405
    invoke-virtual {v11, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 41406
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A06()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v9, v0

    .line 41407
    .local v9, "sampleRate":I
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v12

    .line 41408
    .local v13, "channelCount":I
    const/16 v0, 0x14

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    goto/16 :goto_1

    .line 41409
    :cond_37
    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    goto/16 :goto_0

    .line 41410
    .end local v2    # "childAtomBodySize":I
    .end local v5    # "initializationDataBytes":[B
    .restart local v11    # "sampleRate":I
    .restart local v14    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xef

    const/16 v1, 0x31

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IO;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 41411
    .end local p2    # "atomType":I
    .end local p6    # "pcmEncoding":I
    .local v5, "atomType":I
    .local v9, "pcmEncoding":I
    .end local v9    # "pcmEncoding":I
    .end local v13    # "channelCount":I
    .end local p4
    .local v5, "mimeType":Ljava/lang/String;
    .restart local p2    # "atomType":I
    .restart local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/IK;
    .restart local p6    # "pcmEncoding":I
    :cond_39
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/IM;->A02:Lcom/facebook/ads/redexgen/X/or;

    if-nez v0, :cond_3b

    if-eqz v7, :cond_3b

    .line 41412
    new-instance v1, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 41413
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0g(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41414
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 41415
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41416
    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41417
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41418
    .end local p6    # "pcmEncoding":I
    .restart local v9    # "pcmEncoding":I
    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/2D;->A0i(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41419
    .end local p5
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41420
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2D;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 41421
    invoke-virtual {v0, v14}, Lcom/facebook/ads/redexgen/X/2D;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v3

    .line 41422
    .local v0, "formatBuilder":Lcom/facebook/ads/redexgen/X/2D;
    if-eqz v17, :cond_3a

    .line 41423
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/IK;->A01(Lcom/facebook/ads/redexgen/X/IK;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/AD;->A04(J)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0a(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v2

    .line 41424
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/IK;->A00(Lcom/facebook/ads/redexgen/X/IK;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/AD;->A04(J)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0j(I)Lcom/facebook/ads/redexgen/X/2D;

    .line 41425
    :cond_3a
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, v13, Lcom/facebook/ads/redexgen/X/IM;->A02:Lcom/facebook/ads/redexgen/X/or;

    .line 41426
    .end local p5
    .end local p6
    .restart local v1    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v9    # "pcmEncoding":I
    :cond_3b
    return-void

    .line 41427
    .end local v9    # "pcmEncoding":I
    .end local v13
    :cond_3c
    return-void
.end method

.method public static A0U(Lcom/facebook/ads/redexgen/X/4J;IIILcom/facebook/ads/redexgen/X/IM;)V
    .locals 1

    .line 41428
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41429
    const v0, 0x6d657474

    if-ne p1, v0, :cond_0

    .line 41430
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0U()Ljava/lang/String;

    .line 41431
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0U()Ljava/lang/String;

    move-result-object p0

    .line 41432
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 41433
    new-instance v0, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/2D;->A0g(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, p4, Lcom/facebook/ads/redexgen/X/IM;->A02:Lcom/facebook/ads/redexgen/X/or;

    .line 41434
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static A0V([JJJJ)Z
    .locals 6

    .line 41435
    array-length v4, p0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 41436
    .local v0, "lastIndex":I
    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-static {v2, v1, v4}, Lcom/facebook/ads/redexgen/X/4a;->A07(III)I

    move-result v3

    .line 41437
    .local v4, "latestDelayIndex":I
    array-length v0, p0

    sub-int/2addr v0, v2

    .line 41438
    invoke-static {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/4a;->A07(III)I

    move-result v4

    .line 41439
    .local v2, "earliestPaddingIndex":I
    aget-wide v1, p0, v1

    cmp-long v0, v1, p3

    if-gtz v0, :cond_0

    aget-wide v0, p0, v3

    cmp-long v3, p3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "4d2838LB6zuHL2SDSRFgaAe0bfX5eWcN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "2DmC9sheXkti4jYQDflGydtNBiOhlXlc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-gez v3, :cond_0

    aget-wide v1, p0, v4

    cmp-long v0, v1, p5

    if-gez v0, :cond_0

    cmp-long v0, p5, p1

    if-gtz v0, :cond_0

    :goto_0
    return v5
.end method

.method public static A0W(Lcom/facebook/ads/redexgen/X/4J;II)[B
    .locals 6

    .line 41440
    add-int/lit8 v3, p1, 0x8

    .line 41441
    .local v0, "childPosition":I
    :goto_0
    sub-int v0, v3, p1

    if-ge v0, p2, :cond_2

    .line 41442
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 41443
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v5

    .line 41444
    .local v1, "childAtomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 41445
    .local v2, "childAtomType":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/IO;->A01:[Ljava/lang/String;

    const-string v1, "QfAHDCYR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "If6V2JqI"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const v0, 0x70726f6a

    if-ne v4, v0, :cond_0

    .line 41446
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    add-int v0, v3, v5

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 41447
    :cond_0
    add-int/2addr v3, v5

    .line 41448
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41449
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
