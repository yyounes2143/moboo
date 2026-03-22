.class public final Lcom/facebook/ads/redexgen/X/nV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6S;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/DefaultLoadControl$Builder;
    }
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:J

.field public final A08:Lcom/facebook/ads/redexgen/X/lh;

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3182
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WWBqbqM8cT7NtZ20aOE3uXs3Aw8DSv9K"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wsMqXc0RGaIy4bMjDS0CDKFK5K3H0E7a"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tXUn5oHGArEZhR5EfIYxUHEmkE2i7Wlz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "L3oqKt7yiugAXq9nLkVCiYddeszNHWIU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GxMV2HKS42DeS6e3iSG9rTJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iBUmcZRwnnz5BMe8LKV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MLtAALupoqSZMT31TgfSKHmksSEA2gyG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KlBG0Bt2bdiLbLP3pzzetkFN2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nV;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/nV;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 100665
    const/4 v1, 0x1

    const/high16 v0, 0x10000

    new-instance v2, Lcom/facebook/ads/redexgen/X/lh;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lh;-><init>(ZI)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v3, 0xc350

    const v4, 0xc350

    const/16 v5, 0x9c4

    const/16 v6, 0x1388

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/nV;-><init>(Lcom/facebook/ads/redexgen/X/lh;IIIIIZIZ)V

    .line 100666
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/lh;IIIIIZIZ)V
    .locals 7

    .line 100667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100668
    const/4 v4, 0x0

    const/16 v2, 0xa3

    const/16 v1, 0x13

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nV;->A02(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x15

    const/4 v1, 0x1

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nV;->A02(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v4, v6, v3}, Lcom/facebook/ads/redexgen/X/nV;->A04(IILjava/lang/String;Ljava/lang/String;)V

    .line 100669
    const/16 v2, 0x83

    const/16 v1, 0x20

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nV;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v4, v2, v3}, Lcom/facebook/ads/redexgen/X/nV;->A04(IILjava/lang/String;Ljava/lang/String;)V

    .line 100670
    const/16 v5, 0xc1

    const/16 v1, 0xb

    const/16 v0, 0x79

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/nV;->A02(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p4, v5, v6}, Lcom/facebook/ads/redexgen/X/nV;->A04(IILjava/lang/String;Ljava/lang/String;)V

    .line 100671
    invoke-static {p2, p5, v5, v2}, Lcom/facebook/ads/redexgen/X/nV;->A04(IILjava/lang/String;Ljava/lang/String;)V

    .line 100672
    const/16 v2, 0xb6

    const/16 v1, 0xb

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0, v5}, Lcom/facebook/ads/redexgen/X/nV;->A04(IILjava/lang/String;Ljava/lang/String;)V

    .line 100673
    const/16 v2, 0x6f

    const/16 v1, 0x14

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p8, v4, v0, v3}, Lcom/facebook/ads/redexgen/X/nV;->A04(IILjava/lang/String;Ljava/lang/String;)V

    .line 100674
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nV;->A08:Lcom/facebook/ads/redexgen/X/lh;

    .line 100675
    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0O(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A07:J

    .line 100676
    int-to-long v0, p3

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0O(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A06:J

    .line 100677
    int-to-long v0, p4

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0O(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A05:J

    .line 100678
    int-to-long v0, p5

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0O(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A04:J

    .line 100679
    iput p6, p0, Lcom/facebook/ads/redexgen/X/nV;->A02:I

    .line 100680
    iget v1, p0, Lcom/facebook/ads/redexgen/X/nV;->A02:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 100681
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A02:I

    .line 100682
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A00:I

    .line 100683
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/nV;->A09:Z

    .line 100684
    int-to-long v0, p8

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0O(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A03:J

    .line 100685
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A0A:Z

    .line 100686
    return-void

    .line 100687
    :cond_0
    const/high16 v0, 0xc80000

    goto :goto_0
.end method

.method public static A00(I)I
    .locals 3

    .line 100688
    const/high16 v0, 0x20000

    packed-switch p0, :pswitch_data_0

    .line 100689
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 100690
    :pswitch_1
    return v0

    .line 100691
    :pswitch_2
    return v0

    .line 100692
    :pswitch_3
    return v0

    .line 100693
    :pswitch_4
    return v0

    .line 100694
    :pswitch_5
    const/high16 p0, 0x7d00000

    sget-object v1, Lcom/facebook/ads/redexgen/X/nV;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/nV;->A0C:[Ljava/lang/String;

    const-string v1, "ABED08YC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 100695
    :pswitch_6
    const/high16 v0, 0xc80000

    return v0

    .line 100696
    :pswitch_7
    const/high16 v0, 0x89a0000

    return v0

    .line 100697
    :pswitch_8
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final A01([Lcom/facebook/ads/redexgen/X/lj;)I
    .locals 4

    .line 100698
    const/4 v3, 0x0

    .line 100699
    .local v0, "targetBufferSize":I
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 100700
    .local v3, "exoTrackSelection":Lcom/facebook/ads/redexgen/X/lj;
    if-eqz v0, :cond_0

    .line 100701
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/EE;->A9D()Lcom/facebook/ads/redexgen/X/oH;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/oH;->A02:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nV;->A00(I)I

    move-result v0

    add-int/2addr v3, v0

    .line 100702
    .end local v3    # "exoTrackSelection":Lcom/facebook/ads/redexgen/X/lj;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100703
    :cond_1
    const/high16 v0, 0xc80000

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/nV;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/nV;->A0C:[Ljava/lang/String;

    const-string v1, "RHrwW0B94f4UqoylhYQPwgHgnQSWW3zM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/nV;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x45

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xcc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nV;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x7ft
        -0x3ct
        -0x3et
        -0x31t
        -0x31t
        -0x30t
        -0x2bt
        -0x7ft
        -0x3dt
        -0x3at
        -0x7ft
        -0x33t
        -0x3at
        -0x2ct
        -0x2ct
        -0x7ft
        -0x2bt
        -0x37t
        -0x3et
        -0x31t
        -0x7ft
        0x7bt
        -0x5bt
        -0x3at
        -0x39t
        -0x3et
        -0x2at
        -0x33t
        -0x2bt
        -0x53t
        -0x30t
        -0x3et
        -0x3bt
        -0x5ct
        -0x30t
        -0x31t
        -0x2bt
        -0x2dt
        -0x30t
        -0x33t
        0x3t
        0x10t
        0x21t
        0x16t
        0x14t
        0x23t
        -0x31t
        0x11t
        0x24t
        0x15t
        0x15t
        0x14t
        0x21t
        -0x31t
        0x22t
        0x18t
        0x29t
        0x14t
        -0x31t
        0x21t
        0x14t
        0x10t
        0x12t
        0x17t
        0x14t
        0x13t
        -0x31t
        0x26t
        0x18t
        0x23t
        0x17t
        -0x31t
        0x1bt
        0x14t
        0x22t
        0x22t
        -0x31t
        0x23t
        0x17t
        0x10t
        0x1dt
        -0x31t
        -0x1ct
        -0x21t
        -0x21t
        0x1ct
        0x22t
        -0x31t
        0x1et
        0x15t
        -0x31t
        0x11t
        0x24t
        0x15t
        0x15t
        0x14t
        0x21t
        0x14t
        0x13t
        -0x31t
        0x1ct
        0x14t
        0x13t
        0x18t
        0x10t
        -0x31t
        0x13t
        0x10t
        0x23t
        0x10t
        -0x23t
        -0x24t
        -0x25t
        -0x23t
        -0x1bt
        -0x44t
        -0x11t
        -0x20t
        -0x20t
        -0x21t
        -0x14t
        -0x42t
        -0x11t
        -0x14t
        -0x25t
        -0x12t
        -0x1dt
        -0x17t
        -0x18t
        -0x39t
        -0x13t
        -0x4dt
        -0x3at
        -0x49t
        -0x49t
        -0x4at
        -0x3dt
        -0x69t
        -0x40t
        -0x3dt
        -0x5ft
        -0x43t
        -0x4et
        -0x36t
        -0x4dt
        -0x4et
        -0x4ct
        -0x44t
        -0x6et
        -0x49t
        -0x3bt
        -0x4at
        -0x3dt
        -0x5dt
        -0x4at
        -0x4dt
        -0x3at
        -0x49t
        -0x49t
        -0x4at
        -0x3dt
        -0x62t
        -0x3ct
        0x15t
        0x28t
        0x19t
        0x19t
        0x18t
        0x25t
        -0x7t
        0x22t
        0x25t
        0x3t
        0x1ft
        0x14t
        0x2ct
        0x15t
        0x14t
        0x16t
        0x1et
        0x0t
        0x26t
        -0xct
        -0x18t
        -0x1t
        -0x37t
        -0x4t
        -0x13t
        -0x13t
        -0x14t
        -0x7t
        -0x2ct
        -0x6t
        0x2bt
        0x27t
        0x2ct
        0x0t
        0x33t
        0x24t
        0x24t
        0x23t
        0x30t
        0xbt
        0x31t
    .end array-data
.end method

.method public static A04(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 100704
    if-lt p0, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A09(ZLjava/lang/Object;)V

    .line 100705
    return-void

    .line 100706
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private A05(Z)V
    .locals 2

    .line 100707
    iget v1, p0, Lcom/facebook/ads/redexgen/X/nV;->A02:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 100708
    const/high16 v0, 0xc80000

    .line 100709
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A00:I

    .line 100710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A01:Z

    .line 100711
    if-eqz p1, :cond_0

    .line 100712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A08:Lcom/facebook/ads/redexgen/X/lh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lh;->A01()V

    .line 100713
    :cond_0
    return-void

    .line 100714
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A02:I

    goto :goto_0
.end method


# virtual methods
.method public final A6n()Lcom/facebook/ads/redexgen/X/lh;
    .locals 1

    .line 100715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A08:Lcom/facebook/ads/redexgen/X/lh;

    return-object v0
.end method

.method public final A6s(Lcom/facebook/ads/redexgen/X/7m;)J
    .locals 2

    .line 100716
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A03:J

    return-wide v0
.end method

.method public final AEj(Lcom/facebook/ads/redexgen/X/7m;)V
    .locals 1

    .line 100717
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/nV;->A05(Z)V

    .line 100718
    return-void
.end method

.method public final AEu(Lcom/facebook/ads/redexgen/X/7m;)V
    .locals 1

    .line 100719
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/nV;->A05(Z)V

    .line 100720
    return-void
.end method

.method public final AFN(Lcom/facebook/ads/redexgen/X/7m;)V
    .locals 1

    .line 100721
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/nV;->A05(Z)V

    .line 100722
    return-void
.end method

.method public final AFV(Lcom/facebook/ads/redexgen/X/6R;Lcom/facebook/ads/redexgen/X/mA;[Lcom/facebook/ads/redexgen/X/lj;)V
    .locals 2

    .line 100723
    iget v1, p0, Lcom/facebook/ads/redexgen/X/nV;->A02:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 100724
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/nV;->A01([Lcom/facebook/ads/redexgen/X/lj;)I

    move-result v0

    .line 100725
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A00:I

    .line 100726
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nV;->A08:Lcom/facebook/ads/redexgen/X/lh;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(I)V

    .line 100727
    return-void

    .line 100728
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A02:I

    goto :goto_0
.end method

.method public final AI3(Lcom/facebook/ads/redexgen/X/7m;)Z
    .locals 1

    .line 100729
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A0A:Z

    return v0
.end method

.method public final AJB(Lcom/facebook/ads/redexgen/X/6R;)Z
    .locals 10

    .line 100730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A08:Lcom/facebook/ads/redexgen/X/lh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lh;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A00:I

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-lt v1, v0, :cond_6

    const/4 v9, 0x1

    .line 100731
    .local v0, "targetBufferSizeReached":Z
    :goto_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A07:J

    .line 100732
    .local v4, "minBufferUs":J
    iget v3, p1, Lcom/facebook/ads/redexgen/X/6R;->A00:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    .line 100733
    iget v2, p1, Lcom/facebook/ads/redexgen/X/6R;->A00:F

    .line 100734
    invoke-static {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/4a;->A0Q(JF)J

    move-result-wide v2

    .line 100735
    .local v6, "mediaDurationMinBufferUs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A06:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 100736
    .end local v6    # "mediaDurationMinBufferUs":J
    :cond_0
    const-wide/32 v3, 0x7a120

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 100737
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/6R;->A01:J

    cmp-long v0, v1, v7

    if-gez v0, :cond_4

    .line 100738
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A09:Z

    if-nez v0, :cond_1

    if-nez v9, :cond_3

    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/nV;->A01:Z

    .line 100739
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A01:Z

    if-nez v0, :cond_2

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/6R;->A01:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    .line 100740
    const/16 v2, 0x16

    const/16 v1, 0x12

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nV;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x28

    const/16 v1, 0x47

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nV;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 100741
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A01:Z

    return v0

    .line 100742
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 100743
    :cond_4
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/6R;->A01:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/nV;->A06:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_5

    if-eqz v9, :cond_2

    .line 100744
    :cond_5
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/nV;->A01:Z

    goto :goto_2

    .line 100745
    :cond_6
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public final AJE(JFZZJ)Z
    .locals 11

    .line 100746
    move-wide/from16 v0, p6

    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4a;->A0R(JF)J

    move-result-wide v9

    .line 100747
    if-eqz p4, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/nV;->A04:J

    .line 100748
    .local v0, "minBufferDurationUs":J
    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v6, Lcom/facebook/ads/redexgen/X/nV;->A0C:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v5, v6, v2

    const/4 v2, 0x1

    aget-object v6, v6, v2

    const/16 v2, 0x14

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v5, v2, :cond_4

    sget-object v6, Lcom/facebook/ads/redexgen/X/nV;->A0C:[Ljava/lang/String;

    const-string v5, "l7tzQS6toEbIIxnpfZA1NGx"

    const/4 v2, 0x4

    aput-object v5, v6, v2

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    .line 100749
    const-wide/16 v5, 0x2

    div-long/2addr v0, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 100750
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    cmp-long v0, v9, v3

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A09:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A08:Lcom/facebook/ads/redexgen/X/lh;

    .line 100751
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lh;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nV;->A00:I

    if-lt v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 100752
    :goto_1
    return v0

    .line 100753
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 100754
    :cond_3
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/nV;->A05:J

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
