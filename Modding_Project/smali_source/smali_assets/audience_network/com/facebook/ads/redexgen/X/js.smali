.class public final Lcom/facebook/ads/redexgen/X/js;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KJ;


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/or;

.field public A07:Lcom/facebook/ads/redexgen/X/H1;

.field public A08:Ljava/lang/String;

.field public final A09:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0A:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3029
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dLkHlusgcNv2NHu1x"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kOXDYUAe8n5k0zIrGkajB2ICMzhCI1bW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "J2PER8S0U1OpHQWQYcrbTTlLRvEHJnnX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "68SowiJizkgZ7NsO9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yBvkDSkIOuw9vvMDA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yIdyl2Bhz3wOi3n7q0uPuN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BOu02ldMHGg7m0a8qy56aJXpGwCl3gmF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zi7PV4PgK11phQSkaHF2tMz4gZWLtpOH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/js;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 90974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90975
    const/16 v0, 0x12

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A09:Lcom/facebook/ads/redexgen/X/4J;

    .line 90976
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/js;->A02:I

    .line 90977
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/js;->A05:J

    .line 90978
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/js;->A0A:Ljava/lang/String;

    .line 90979
    return-void
.end method

.method private A00()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 90980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A09:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v3

    .line 90981
    .local v0, "frameData":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A06:Lcom/facebook/ads/redexgen/X/or;

    if-nez v0, :cond_0

    .line 90982
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/js;->A08:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/js;->A0A:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GV;->A03([BLjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A06:Lcom/facebook/ads/redexgen/X/or;

    .line 90983
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/js;->A07:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A06:Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 90984
    :cond_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/GV;->A01([B)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/js;->A01:I

    .line 90985
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/GV;->A02([B)I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A06:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    long-to-int v0, v2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/js;->A04:J

    .line 90986
    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/4J;)Z
    .locals 6

    .line 90987
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_2

    .line 90988
    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A03:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/js;->A03:I

    .line 90989
    iget v1, p0, Lcom/facebook/ads/redexgen/X/js;->A03:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/js;->A03:I

    .line 90990
    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A03:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GV;->A07(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A09:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    .line 90992
    .local v0, "headerData":[B
    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A03:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 90993
    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A03:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v5, 0x1

    aput-byte v0, v2, v5

    .line 90994
    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A03:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x2

    aput-byte v1, v2, v0

    .line 90995
    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A03:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x3

    aput-byte v1, v2, v0

    .line 90996
    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/js;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/js;->A0B:[Ljava/lang/String;

    const-string v1, "EvoORA1qucNZxupBm89VmEjcctmXNkxV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/js;->A00:I

    .line 90997
    iput v4, p0, Lcom/facebook/ads/redexgen/X/js;->A03:I

    .line 90998
    return v5

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 90999
    .end local v0    # "headerData":[B
    :cond_2
    return v4
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/4J;[BI)Z
    .locals 2

    .line 91000
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 91001
    .local v0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 91002
    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/js;->A00:I

    .line 91003
    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A52(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 9

    .line 91004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A07:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91005
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lez v0, :cond_3

    .line 91006
    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A02:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 91007
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 91008
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/js;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A00:I

    sub-int/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 91009
    .local v0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A07:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0, p1, v2}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 91010
    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/js;->A00:I

    .line 91011
    iget v2, p0, Lcom/facebook/ads/redexgen/X/js;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/js;->A01:I

    if-ne v2, v0, :cond_0

    .line 91012
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/js;->A05:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 91013
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/js;->A07:Lcom/facebook/ads/redexgen/X/H1;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/js;->A05:J

    iget v6, p0, Lcom/facebook/ads/redexgen/X/js;->A01:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 91014
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/js;->A05:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/js;->A04:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/js;->A05:J

    .line 91015
    :cond_1
    iput v1, p0, Lcom/facebook/ads/redexgen/X/js;->A02:I

    goto :goto_0

    .line 91016
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A09:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/16 v2, 0x12

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/js;->A02(Lcom/facebook/ads/redexgen/X/4J;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91017
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/js;->A00()V

    .line 91018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A09:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 91019
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/js;->A07:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A09:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 91020
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/js;->A02:I

    goto :goto_0

    .line 91021
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/js;->A01(Lcom/facebook/ads/redexgen/X/4J;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/js;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/js;->A0B:[Ljava/lang/String;

    const-string v1, "LnG0CahPOhXel4OI27B1IhRoFtWtCxEm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "4f6V0CDv6EuXljjMlCYsbwPtjLzOLcdT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 91022
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/js;->A02:I

    goto/16 :goto_0

    .line 91023
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 2

    .line 91024
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A05()V

    .line 91025
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A08:Ljava/lang/String;

    .line 91026
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/js;->A07:Lcom/facebook/ads/redexgen/X/H1;

    .line 91027
    return-void
.end method

.method public final AG5()V
    .locals 0

    .line 91028
    return-void
.end method

.method public final AG6(JI)V
    .locals 3

    .line 91029
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 91030
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/js;->A05:J

    .line 91031
    :cond_0
    return-void
.end method

.method public final AIL()V
    .locals 2

    .line 91032
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/js;->A02:I

    .line 91033
    iput v0, p0, Lcom/facebook/ads/redexgen/X/js;->A00:I

    .line 91034
    iput v0, p0, Lcom/facebook/ads/redexgen/X/js;->A03:I

    .line 91035
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/js;->A05:J

    .line 91036
    return-void
.end method
