.class public final Lcom/facebook/ads/redexgen/X/Gh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Gg;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/Gg;

.field public final A0B:Lcom/facebook/ads/androidx/media3/common/Metadata;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 730
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Hy9erbcn1CD2Cs5ZlmG25MdtXf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HOFQhwFeFgK1hjIc7qCVfLVKe4hb2KPj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rEWyESjnSr6bXcR3qBgtsTRMI2K9qdSB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BvL17bJBTlRgAjITBDDuBrnomI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AZrfJovBkJndynqGcgKN1LZzk8fHrrw4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fdLmSfOckTno1kV1pYqKvwBW8a156Tx5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "emxoz2tvvjMM3L"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "p0b9qfAXEvDLZmNF0KID"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gh;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gh;->A04()V

    return-void
.end method

.method public constructor <init>(IIIIIIIJLcom/facebook/ads/redexgen/X/Gg;Lcom/facebook/ads/androidx/media3/common/Metadata;)V
    .locals 1

    .line 38015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38016
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gh;->A05:I

    .line 38017
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:I

    .line 38018
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:I

    .line 38019
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:I

    .line 38020
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Gh;->A07:I

    .line 38021
    invoke-static {p5}, Lcom/facebook/ads/redexgen/X/Gh;->A01(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A08:I

    .line 38022
    iput p6, p0, Lcom/facebook/ads/redexgen/X/Gh;->A02:I

    .line 38023
    iput p7, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    .line 38024
    invoke-static {p7}, Lcom/facebook/ads/redexgen/X/Gh;->A00(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:I

    .line 38025
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/Gh;->A09:J

    .line 38026
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/Gh;->A0A:Lcom/facebook/ads/redexgen/X/Gg;

    .line 38027
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/Gh;->A0B:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 38028
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 38029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38030
    new-instance v1, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    .line 38031
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4I;
    mul-int/lit8 v0, p2, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 38032
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A05:I

    .line 38033
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:I

    .line 38034
    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:I

    .line 38035
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:I

    .line 38036
    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A07:I

    .line 38037
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A07:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gh;->A01(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A08:I

    .line 38038
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A02:I

    .line 38039
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    .line 38040
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gh;->A00(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:I

    .line 38041
    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A05(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A09:J

    .line 38042
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A0A:Lcom/facebook/ads/redexgen/X/Gg;

    .line 38043
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A0B:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 38044
    return-void
.end method

.method public static A00(I)I
    .locals 3

    .line 38045
    sparse-switch p0, :sswitch_data_0

    .line 38046
    const/4 v0, -0x1

    return v0

    .line 38047
    :sswitch_0
    const/4 v0, 0x6

    return v0

    .line 38048
    :sswitch_1
    const/4 p0, 0x5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gh;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gh;->A0D:[Ljava/lang/String;

    const-string v1, "GVm7TyTvdgGXuIF1m2KSKJr8Vg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "pCX2CyoVa54AgSUVxisn2xa5Aw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return p0

    .line 38049
    :sswitch_2
    const/4 v0, 0x4

    return v0

    .line 38050
    :sswitch_3
    const/4 v0, 0x2

    return v0

    .line 38051
    :sswitch_4
    const/4 p0, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gh;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gh;->A0D:[Ljava/lang/String;

    const-string v1, "V04NPWFEbILAkvleA9Xxz0FwJQ4eDV3p"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "3QJh7HKROfuZmn4fVSBdYwrM5PNWxwSf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return p0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gh;->A0D:[Ljava/lang/String;

    const-string v1, "IuGfV3sFLU7aLzdayuZ51nmzsb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "kvaRWCMq8GtPZOTZqMfFBSkWA2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return p0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_4
        0xc -> :sswitch_3
        0x10 -> :sswitch_2
        0x14 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public static A01(I)I
    .locals 0

    .line 38052
    sparse-switch p0, :sswitch_data_0

    .line 38053
    const/4 p0, -0x1

    return p0

    .line 38054
    :sswitch_0
    const/4 p0, 0x3

    return p0

    .line 38055
    :sswitch_1
    const/4 p0, 0x2

    return p0

    .line 38056
    :sswitch_2
    const/16 p0, 0xb

    return p0

    .line 38057
    :sswitch_3
    const/4 p0, 0x1

    return p0

    .line 38058
    :sswitch_4
    const/16 p0, 0xa

    return p0

    .line 38059
    :sswitch_5
    const/16 p0, 0x9

    return p0

    .line 38060
    :sswitch_6
    const/16 p0, 0x8

    return p0

    .line 38061
    :sswitch_7
    const/4 p0, 0x7

    return p0

    .line 38062
    :sswitch_8
    const/4 p0, 0x6

    return p0

    .line 38063
    :sswitch_9
    const/4 p0, 0x5

    return p0

    .line 38064
    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method

.method private final A02(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 1

    .line 38065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A0B:Lcom/facebook/ads/androidx/media3/common/Metadata;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A0B:Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A04(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object p1

    goto :goto_0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gh;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3d

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

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gh;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x1ft
        0xet
        0x3t
        0x5t
        0x45t
        0xct
        0x6t
        0xbt
        0x9t
    .end array-data
.end method


# virtual methods
.method public final A05()J
    .locals 6

    .line 38066
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:I

    if-lez v0, :cond_0

    .line 38067
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:I

    int-to-long v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    const-wide/16 v0, 0x2

    div-long/2addr v2, v0

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 38068
    .local v0, "approxBytesPerFrame":J
    .local v0, "approxBytesPerFrame":J
    :goto_0
    return-wide v2

    .line 38069
    .end local v0    # "approxBytesPerFrame":J
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Gh;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A05:I

    if-lez v0, :cond_1

    .line 38070
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A05:I

    int-to-long v4, v0

    .line 38071
    .local v0, "blockSizeSamples":J
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A02:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    int-to-long v0, v0

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x8

    div-long/2addr v2, v0

    const-wide/16 v0, 0x40

    add-long/2addr v2, v0

    goto :goto_0

    .line 38072
    :cond_1
    const-wide/16 v4, 0x1000

    goto :goto_1
.end method

.method public final A06()J
    .locals 5

    .line 38073
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Gh;->A09:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A09:J

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A07:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    goto :goto_0
.end method

.method public final A07(J)J
    .locals 8

    .line 38074
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A07:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    .line 38075
    .local v0, "sampleNumber":J
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Gh;->A09:J

    const-wide/16 v0, 0x1

    sub-long/2addr v6, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/4a;->A0T(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A08([BLcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/or;
    .locals 6

    .line 38076
    const/4 v1, 0x4

    const/16 v0, -0x80

    aput-byte v0, p1, v1

    .line 38077
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:I

    if-lez v0, :cond_0

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:I

    .line 38078
    .local v0, "maxInputSize":I
    :goto_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Gh;->A02(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v4

    .line 38079
    .local v1, "metadataWithId3":Lcom/facebook/ads/androidx/media3/common/Metadata;
    new-instance v3, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 38080
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 38081
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2D;->A0h(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A02:I

    .line 38082
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A07:I

    .line 38083
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 38084
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 38085
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2D;->A0v(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 38086
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 38087
    return-object v0

    .line 38088
    :cond_0
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/Gg;)Lcom/facebook/ads/redexgen/X/Gh;
    .locals 12

    .line 38089
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gh;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Gh;->A05:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Gh;->A07:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Gh;->A02:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/Gh;->A09:J

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/Gh;->A0B:Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/Gh;-><init>(IIIIIIIJLcom/facebook/ads/redexgen/X/Gg;Lcom/facebook/ads/androidx/media3/common/Metadata;)V

    return-object v0
.end method

.method public final A0A(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Gh;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Gh;"
        }
    .end annotation

    .line 38090
    .local p3, "pictureFrames":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;>;"
    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, p1}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A02(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v11

    .line 38091
    .local v0, "appendedMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gh;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Gh;->A05:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Gh;->A07:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Gh;->A02:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/Gh;->A09:J

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/Gh;->A0A:Lcom/facebook/ads/redexgen/X/Gg;

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/Gh;-><init>(IIIIIIIJLcom/facebook/ads/redexgen/X/Gg;Lcom/facebook/ads/androidx/media3/common/Metadata;)V

    return-object v0
.end method

.method public final A0B(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Gh;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Gh;"
        }
    .end annotation

    .line 38092
    .local p3, "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/H8;->A02(Ljava/util/List;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A02(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v11

    .line 38093
    .local v0, "appendedMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gh;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Gh;->A05:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Gh;->A07:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Gh;->A02:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/Gh;->A09:J

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/Gh;->A0A:Lcom/facebook/ads/redexgen/X/Gg;

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/Gh;-><init>(IIIIIIIJLcom/facebook/ads/redexgen/X/Gg;Lcom/facebook/ads/androidx/media3/common/Metadata;)V

    return-object v0
.end method
