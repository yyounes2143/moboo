.class public final Lcom/facebook/ads/redexgen/X/kO;
.super Lcom/facebook/ads/redexgen/X/Iz;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/J0;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/H5;

.field public A02:Lcom/facebook/ads/redexgen/X/H7;

.field public A03:Lcom/facebook/ads/redexgen/X/J0;

.field public A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3049
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uV3egKqPt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vbtXlOI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gip2ILD7nBGTUOP5yb7zSULibNYEk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ypzju5tbq0Qdtgd67o3qNaulkzBfCJSX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gCa1Tkio4U0hXnRqOcWVPONwWAtrpMS5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "m"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OXoEHzgO5FTzqO33f"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/kO;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/kO;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 92048
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Iz;-><init>()V

    return-void
.end method

.method public static A00(BII)I
    .locals 2

    .line 92049
    shr-int/2addr p0, p2

    rsub-int/lit8 v1, p1, 0x8

    const/16 v0, 0xff

    ushr-int/2addr v0, v1

    and-int/2addr p0, v0

    return p0
.end method

.method public static A01(BLcom/facebook/ads/redexgen/X/J0;)I
    .locals 2

    .line 92050
    iget v1, p1, Lcom/facebook/ads/redexgen/X/J0;->A00:I

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/kO;->A00(BII)I

    move-result v1

    .line 92051
    .local v0, "modeNumber":I
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/J0;->A04:[Lcom/facebook/ads/redexgen/X/H6;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/H6;->A03:Z

    if-nez v0, :cond_0

    .line 92052
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/J0;->A02:Lcom/facebook/ads/redexgen/X/H7;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/H7;->A03:I

    .line 92053
    .local v1, "currentBlockSize":I
    .restart local v1    # "currentBlockSize":I
    :goto_0
    return v0

    .line 92054
    .end local v1    # "currentBlockSize":I
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/J0;->A02:Lcom/facebook/ads/redexgen/X/H7;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/H7;->A04:I

    goto :goto_0
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/J0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A02:Lcom/facebook/ads/redexgen/X/H7;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92056
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/H8;->A06(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/H7;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A02:Lcom/facebook/ads/redexgen/X/H7;

    .line 92057
    return-object v1

    .line 92058
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A01:Lcom/facebook/ads/redexgen/X/H5;

    if-nez v0, :cond_1

    .line 92059
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/H8;->A04(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/H5;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A01:Lcom/facebook/ads/redexgen/X/H5;

    .line 92060
    return-object v1

    .line 92061
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kO;->A02:Lcom/facebook/ads/redexgen/X/H7;

    .line 92062
    .local v0, "vorbisIdHeader":Lcom/facebook/ads/redexgen/X/H7;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/kO;->A01:Lcom/facebook/ads/redexgen/X/H5;

    .line 92063
    .local v1, "commentHeader":Lcom/facebook/ads/redexgen/X/H5;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    new-array v5, v0, [B

    .line 92064
    .local p0, "setupHeaderData":[B
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v1

    const/4 v0, 0x0

    invoke-static {v2, v0, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92065
    iget v0, v3, Lcom/facebook/ads/redexgen/X/H7;->A05:I

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/H8;->A0D(Lcom/facebook/ads/redexgen/X/4J;I)[Lcom/facebook/ads/redexgen/X/H6;

    move-result-object v6

    .line 92066
    .local p1, "modes":[Lcom/facebook/ads/redexgen/X/H6;
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/H8;->A00(I)I

    move-result v7

    .line 92067
    .local p2, "iLogModes":I
    new-instance v2, Lcom/facebook/ads/redexgen/X/J0;

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/J0;-><init>(Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/H5;[B[Lcom/facebook/ads/redexgen/X/H6;I)V

    return-object v2
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/kO;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1d

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

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/kO;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x6ct
        -0x58t
        -0x69t
        -0x64t
        -0x5et
        0x62t
        -0x57t
        -0x5et
        -0x5bt
        -0x6bt
        -0x64t
        -0x5at
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4J;J)V
    .locals 7

    .line 92068
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A08()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    .line 92069
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0i([B)V

    .line 92070
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v6

    .line 92071
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/lit8 v1, v0, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 92072
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/lit8 v1, v0, -0x3

    const/16 v0, 0x8

    ushr-long v4, p1, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 92073
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/16 v0, 0x10

    ushr-long v4, p1, v0

    and-long/2addr v4, v2

    long-to-int v0, v4

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 92074
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v0, 0x18

    ushr-long/2addr p1, v0

    and-long/2addr v2, p1

    long-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    .line 92075
    return-void

    .line 92076
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    goto :goto_0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4J;)Z
    .locals 1

    .line 92077
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, p0, v0}, Lcom/facebook/ads/redexgen/X/H8;->A0C(ILcom/facebook/ads/redexgen/X/4J;Z)Z

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/2i; {:try_start_0 .. :try_end_0} :catch_0

    .line 92078
    .local v0, "e":Lcom/facebook/ads/redexgen/X/2i;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/4J;)J
    .locals 6

    .line 92079
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/4 v5, 0x0

    aget-byte v0, v0, v5

    const/4 v4, 0x1

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_0

    .line 92080
    const-wide/16 v0, -0x1

    return-wide v0

    .line 92081
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    aget-byte v3, v0, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/kO;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/kO;->A06:[Ljava/lang/String;

    const-string v1, "17tCp0Qcd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "uqZ30DdcDRhFwj0kQ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A03:Lcom/facebook/ads/redexgen/X/J0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J0;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/kO;->A01(BLcom/facebook/ads/redexgen/X/J0;)I

    move-result v1

    .line 92082
    .local v0, "packetBlockSize":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A04:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A00:I

    add-int/2addr v0, v1

    div-int/lit8 v5, v0, 0x4

    .line 92083
    .local v1, "samplesInPacket":I
    :cond_2
    int-to-long v2, v5

    invoke-static {p1, v2, v3}, Lcom/facebook/ads/redexgen/X/kO;->A05(Lcom/facebook/ads/redexgen/X/4J;J)V

    .line 92084
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/kO;->A04:Z

    .line 92085
    iput v1, p0, Lcom/facebook/ads/redexgen/X/kO;->A00:I

    .line 92086
    int-to-long v0, v5

    return-wide v0
.end method

.method public final A0A(J)V
    .locals 4

    .line 92087
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Iz;->A0A(J)V

    .line 92088
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A04:Z

    .line 92089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A02:Lcom/facebook/ads/redexgen/X/H7;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A02:Lcom/facebook/ads/redexgen/X/H7;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/H7;->A03:I

    :cond_0
    iput v1, p0, Lcom/facebook/ads/redexgen/X/kO;->A00:I

    .line 92090
    return-void

    .line 92091
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B(Z)V
    .locals 1

    .line 92092
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Iz;->A0B(Z)V

    .line 92093
    if-eqz p1, :cond_0

    .line 92094
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A03:Lcom/facebook/ads/redexgen/X/J0;

    .line 92095
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A02:Lcom/facebook/ads/redexgen/X/H7;

    .line 92096
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A01:Lcom/facebook/ads/redexgen/X/H5;

    .line 92097
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A00:I

    .line 92098
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A04:Z

    .line 92099
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4J;JLcom/facebook/ads/redexgen/X/Iy;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 92100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A03:Lcom/facebook/ads/redexgen/X/J0;

    if-eqz v0, :cond_0

    .line 92101
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/Iy;->A00:Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92102
    const/4 v0, 0x0

    return v0

    .line 92103
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kO;->A02(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/J0;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A03:Lcom/facebook/ads/redexgen/X/J0;

    .line 92104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kO;->A03:Lcom/facebook/ads/redexgen/X/J0;

    const/4 v7, 0x1

    if-nez v0, :cond_1

    .line 92105
    return v7

    .line 92106
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kO;->A03:Lcom/facebook/ads/redexgen/X/J0;

    .line 92107
    .local v0, "vorbisSetup":Lcom/facebook/ads/redexgen/X/J0;
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/J0;->A02:Lcom/facebook/ads/redexgen/X/H7;

    .line 92108
    .local v2, "idHeader":Lcom/facebook/ads/redexgen/X/H7;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92109
    .local v3, "codecInitializationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/H7;->A09:[B

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92110
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/J0;->A03:[B

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92111
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/J0;->A01:Lcom/facebook/ads/redexgen/X/H5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/H5;->A02:[Ljava/lang/String;

    .line 92112
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i1;->A02([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 92113
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/H8;->A02(Ljava/util/List;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v2

    .line 92114
    .local v4, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    new-instance v6, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 92115
    const/4 v4, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x16

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/kO;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/H7;->A02:I

    .line 92116
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0a(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/H7;->A00:I

    .line 92117
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0j(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/H7;->A05:I

    .line 92118
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/H7;->A06:I

    .line 92119
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 92120
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 92121
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2D;->A0v(Lcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 92122
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    iput-object v0, p4, Lcom/facebook/ads/redexgen/X/Iy;->A00:Lcom/facebook/ads/redexgen/X/or;

    .line 92123
    return v7
.end method
