.class public final Lcom/facebook/ads/redexgen/X/jl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KJ;


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:Lcom/facebook/ads/redexgen/X/or;

.field public A0D:Lcom/facebook/ads/redexgen/X/H1;

.field public A0E:Ljava/lang/String;

.field public A0F:Ljava/lang/String;

.field public A0G:Z

.field public A0H:Z

.field public final A0I:Lcom/facebook/ads/redexgen/X/4I;

.field public final A0J:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0K:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3023
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "j9JFF3HN4WHOogTAo3Zp2vJcrDXalLKC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xTu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "o"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YpEMu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "L"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xqkbJV3NP5tWtCpR6dlW7fuQWbu0Okpq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9ZwPJyvjhOXD2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3pAsgJTRE4XOqhE7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jl;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/jl;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 90080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90081
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jl;->A0K:Ljava/lang/String;

    .line 90082
    const/16 v1, 0x400

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    .line 90083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0I:Lcom/facebook/ads/redexgen/X/4I;

    .line 90084
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0B:J

    .line 90085
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4I;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 90086
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4I;->A01()I

    move-result v2

    .line 90087
    .local v0, "bitsLeft":I
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/GB;->A02(Lcom/facebook/ads/redexgen/X/4I;Z)Lcom/facebook/ads/redexgen/X/GA;

    move-result-object v1

    .line 90088
    .local v1, "config":Lcom/facebook/ads/redexgen/X/GA;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/GA;->A02:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0E:Ljava/lang/String;

    .line 90089
    iget v0, v1, Lcom/facebook/ads/redexgen/X/GA;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A05:I

    .line 90090
    iget v0, v1, Lcom/facebook/ads/redexgen/X/GA;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A02:I

    .line 90091
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4I;->A01()I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/4I;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 90092
    const/4 v2, 0x0

    .line 90093
    .local v0, "muxSlotLengthBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A03:I

    if-nez v0, :cond_1

    .line 90094
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 90095
    .local v1, "tmp":I
    add-int/2addr v2, v1

    .line 90096
    const/16 v0, 0xff

    if-eq v1, v0, :cond_0

    .line 90097
    return v2

    .line 90098
    .end local v1    # "tmp":I
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4I;)J
    .locals 1

    .line 90099
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    .line 90100
    .local v0, "bytesForValue":I
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/jl;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/jl;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/jl;->A0M:[Ljava/lang/String;

    const-string v1, "ZyB29Ut14cj6jISqnQaPpNUB2bA7E60q"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x39

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/jl;->A0L:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x17t
        0x6t
        0xbt
        0xdt
        0x4dt
        0xft
        0x12t
        0x56t
        0x3t
        0x4ft
        0xet
        0x3t
        0x16t
        0xft
    .end array-data
.end method

.method private A05(I)V
    .locals 2

    .line 90101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 90102
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jl;->A0I:Lcom/facebook/ads/redexgen/X/4I;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A0D([B)V

    .line 90103
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/4I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 90104
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    .line 90105
    .local v0, "useSameStreamMux":Z
    if-nez v0, :cond_2

    .line 90106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0H:Z

    .line 90107
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jl;->A08(Lcom/facebook/ads/redexgen/X/4I;)V

    .line 90108
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A00:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 90109
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A04:I

    if-nez v0, :cond_3

    .line 90110
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jl;->A01(Lcom/facebook/ads/redexgen/X/4I;)I

    move-result v0

    .line 90111
    .local v1, "muxSlotLengthBytes":I
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/jl;->A09(Lcom/facebook/ads/redexgen/X/4I;I)V

    .line 90112
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0G:Z

    if-eqz v0, :cond_1

    .line 90113
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/jl;->A09:J

    long-to-int v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90114
    .end local v1    # "muxSlotLengthBytes":I
    :cond_1
    return-void

    .line 90115
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0H:Z

    if-nez v0, :cond_0

    .line 90116
    return-void

    .line 90117
    :cond_3
    invoke-static {v1, v1}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 90118
    :cond_4
    invoke-static {v1, v1}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/4I;)V
    .locals 1

    .line 90119
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A03:I

    .line 90120
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A03:I

    packed-switch v0, :pswitch_data_0

    .line 90121
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 90122
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90123
    goto :goto_0

    .line 90124
    :pswitch_2
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90125
    goto :goto_0

    .line 90126
    :pswitch_3
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90127
    goto :goto_0

    .line 90128
    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90129
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/4I;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 90130
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v4

    .line 90131
    .local v1, "audioMuxVersion":I
    const/4 v3, 0x0

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A00:I

    .line 90132
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A00:I

    const/4 v6, 0x0

    if-nez v0, :cond_a

    .line 90133
    if-ne v4, v5, :cond_0

    .line 90134
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/jl;->A02(Lcom/facebook/ads/redexgen/X/4I;)J

    .line 90135
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 90136
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A04:I

    .line 90137
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v8

    .line 90138
    .local v3, "numProgram":I
    const/4 v7, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/jl;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 90139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/jl;->A0M:[Ljava/lang/String;

    const-string v1, "b1jqAFGEyfNrz2WgotNy1OFmmbCQivCc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    .line 90140
    .local v5, "numLayer":I
    if-nez v8, :cond_8

    if-nez v0, :cond_8

    .line 90141
    const/16 v6, 0x8

    if-nez v4, :cond_7

    .line 90142
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4I;->A03()I

    move-result v0

    .line 90143
    .local v6, "startPosition":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jl;->A00(Lcom/facebook/ads/redexgen/X/4I;)I

    move-result v1

    .line 90144
    .local v7, "readBits":I
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 90145
    add-int/lit8 v0, v1, 0x7

    div-int/2addr v0, v6

    new-array v2, v0, [B

    .line 90146
    .local v8, "initData":[B
    invoke-virtual {p1, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/4I;->A0F([BII)V

    .line 90147
    new-instance v1, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0F:Ljava/lang/String;

    .line 90148
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v7

    .line 90149
    const/4 v3, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x5b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/jl;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0E:Ljava/lang/String;

    .line 90150
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A02:I

    .line 90151
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A05:I

    .line 90152
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 90153
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0K:Ljava/lang/String;

    .line 90154
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 90155
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v7

    .line 90156
    .local v2, "format":Lcom/facebook/ads/redexgen/X/or;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0C:Lcom/facebook/ads/redexgen/X/or;

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/or;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 90157
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/jl;->A0C:Lcom/facebook/ads/redexgen/X/or;

    .line 90158
    iget v0, v7, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    int-to-long v2, v0

    const-wide/32 v0, 0x3d090000

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0A:J

    .line 90159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0D:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0, v7}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 90160
    .end local v2    # "format":Lcom/facebook/ads/redexgen/X/or;
    .end local v6    # "startPosition":I
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jl;->A07(Lcom/facebook/ads/redexgen/X/4I;)V

    .line 90161
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0G:Z

    .line 90162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A09:J

    .line 90163
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0G:Z

    if-eqz v0, :cond_4

    .line 90164
    if-ne v4, v5, :cond_6

    .line 90165
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/jl;->A02(Lcom/facebook/ads/redexgen/X/4I;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A09:J

    .line 90166
    .end local v0
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    .line 90167
    .local v0, "crcCheckPresent":Z
    if-eqz v0, :cond_5

    .line 90168
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 90169
    .end local v0    # "crcCheckPresent":Z
    .end local v3    # "numProgram":I
    .end local v5    # "numLayer":I
    :cond_5
    return-void

    .line 90170
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v4

    .line 90171
    .local v0, "otherDataLenEsc":Z
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/jl;->A09:J

    shl-long/2addr v2, v6

    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/jl;->A09:J

    .line 90172
    if-nez v4, :cond_6

    goto :goto_2

    .line 90173
    :cond_7
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/jl;->A02(Lcom/facebook/ads/redexgen/X/4I;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 90174
    .local v2, "ascLen":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/jl;->A00(Lcom/facebook/ads/redexgen/X/4I;)I

    move-result v0

    .line 90175
    .local v6, "bitsRead":I
    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    goto :goto_1

    .line 90176
    .restart local v3    # "numProgram":I
    .restart local v5    # "numLayer":I
    :cond_8
    invoke-static {v6, v6}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 90177
    .end local v3    # "numProgram":I
    .end local v5    # "numLayer":I
    :cond_9
    invoke-static {v6, v6}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 90178
    :cond_a
    invoke-static {v6, v6}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/4I;I)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 90179
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4I;->A03()I

    move-result v2

    .line 90180
    .local v0, "bitPosition":I
    and-int/lit8 v0, v2, 0x7

    move v5, p2

    if-nez v0, :cond_1

    .line 90181
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jl;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    shr-int/lit8 v0, v2, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 90182
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jl;->A0D:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 90183
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/jl;->A0B:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 90184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jl;->A0D:Lcom/facebook/ads/redexgen/X/H1;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/jl;->A0B:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 90185
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/jl;->A0B:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0A:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/jl;->A0B:J

    .line 90186
    :cond_0
    return-void

    .line 90187
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    mul-int/lit8 v0, v5, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A0F([BII)V

    .line 90188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    goto :goto_0
.end method


# virtual methods
.method public final A52(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 90189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0D:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90190
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lez v0, :cond_3

    .line 90191
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A08:I

    const/16 v4, 0x56

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 90192
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 90193
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/jl;->A06:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A01:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 90194
    .local v0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0I:Lcom/facebook/ads/redexgen/X/4I;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A01:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 90195
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A01:I

    .line 90196
    iget v1, p0, Lcom/facebook/ads/redexgen/X/jl;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A06:I

    if-ne v1, v0, :cond_0

    .line 90197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0I:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 90198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0I:Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jl;->A06(Lcom/facebook/ads/redexgen/X/4I;)V

    .line 90199
    iput v3, p0, Lcom/facebook/ads/redexgen/X/jl;->A08:I

    goto :goto_0

    .line 90200
    .end local v0    # "bytesToRead":I
    :pswitch_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A07:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v1, v0, 0x8

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/jl;->A06:I

    .line 90201
    iget v1, p0, Lcom/facebook/ads/redexgen/X/jl;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0J:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    array-length v0, v0

    if-le v1, v0, :cond_1

    .line 90202
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A06:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jl;->A05(I)V

    .line 90203
    :cond_1
    iput v3, p0, Lcom/facebook/ads/redexgen/X/jl;->A01:I

    .line 90204
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A08:I

    .line 90205
    goto :goto_0

    .line 90206
    :pswitch_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v2

    .line 90207
    .local v0, "secondByte":I
    and-int/lit16 v1, v2, 0xe0

    const/16 v0, 0xe0

    if-ne v1, v0, :cond_2

    .line 90208
    iput v2, p0, Lcom/facebook/ads/redexgen/X/jl;->A07:I

    .line 90209
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A08:I

    goto :goto_0

    .line 90210
    :cond_2
    if-eq v2, v4, :cond_0

    .line 90211
    iput v3, p0, Lcom/facebook/ads/redexgen/X/jl;->A08:I

    goto :goto_0

    .line 90212
    .end local v0    # "secondByte":I
    :pswitch_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 90213
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A08:I

    goto/16 :goto_0

    .line 90214
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A5U(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 2

    .line 90215
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A05()V

    .line 90216
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0D:Lcom/facebook/ads/redexgen/X/H1;

    .line 90217
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ke;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0F:Ljava/lang/String;

    .line 90218
    return-void
.end method

.method public final AG5()V
    .locals 0

    .line 90219
    return-void
.end method

.method public final AG6(JI)V
    .locals 3

    .line 90220
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 90221
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/jl;->A0B:J

    .line 90222
    :cond_0
    return-void
.end method

.method public final AIL()V
    .locals 3

    .line 90223
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/jl;->A08:I

    .line 90224
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/jl;->A0B:J

    .line 90225
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/jl;->A0H:Z

    .line 90226
    return-void
.end method
