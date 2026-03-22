.class public abstract Lcom/facebook/ads/redexgen/X/Gf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    value = "Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ge;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 729
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jaTfwC0cI533jMSLFdbnMioREeamNCq8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oxYS1uYBjADPdRUL4vsR12VppXrr4BxP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "o9bG5hJtiKIeIPN2CaXw8mH6vllsT8Pg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8s8MZLb5TSIkvuwEDH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W6kvFYauQlSyWCDb8CQhWvVbWb1Alqwq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aw37R0CiGakhFrBRrvipxmkRXRxeCTzI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Y2zfIeYjiYIsjSkQMxD0jwTDeetOAull"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DaiobFePrAznnRWN86LDTmrCW9O2HPvR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gf;->A08()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/lN;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37926
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 37927
    const/4 v3, 0x2

    new-instance v2, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 37928
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 37929
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v2

    .line 37930
    .local v1, "frameStartMarker":I
    shr-int/lit8 v1, v2, 0x2

    .line 37931
    .local v2, "syncCode":I
    const/16 v0, 0x3ffe

    if-ne v1, v0, :cond_0

    .line 37932
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 37933
    return v2

    .line 37934
    :cond_0
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 37935
    const/16 v2, 0x22

    const/16 v1, 0x2a

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A06(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/lN;Z)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37936
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move-object v1, v2

    .line 37937
    .local v1, "id3FramePredicate":Lcom/facebook/ads/redexgen/X/Hc;
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gk;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gk;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Gk;->A00(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v1

    .line 37938
    .local v2, "id3Metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/androidx/media3/common/Metadata;->A02()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    move-object v2, v1

    goto :goto_1

    .line 37939
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/8i;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    goto :goto_0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/lN;Z)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37940
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 37941
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->A8a()J

    move-result-wide v4

    .line 37942
    .local v0, "startingPeekPosition":J
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Gf;->A01(Lcom/facebook/ads/redexgen/X/lN;Z)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v3

    .line 37943
    .local v2, "id3Metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->A8a()J

    move-result-wide v1

    sub-long/2addr v1, v4

    long-to-int v0, v1

    .line 37944
    .local v4, "peekedId3Bytes":I
    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 37945
    return-object v3
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Gg;
    .locals 12

    .line 37946
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 37947
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0K()I

    move-result v4

    .line 37948
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    int-to-long v2, v0

    int-to-long v0, v4

    add-long/2addr v2, v0

    .line 37949
    .local v1, "seekTableEndPosition":J
    div-int/lit8 v11, v4, 0x12

    .line 37950
    .local v3, "seekPointCount":I
    new-array v7, v11, [J

    .line 37951
    .local v4, "pointSampleNumbers":[J
    new-array v6, v11, [J

    .line 37952
    .local v5, "pointOffsets":[J
    const/4 v10, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 37953
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0P()J

    move-result-wide v8

    .line 37954
    .local v7, "sampleNumber":J
    const-wide/16 v4, -0x1

    cmp-long v0, v8, v4

    if-nez v0, :cond_1

    .line 37955
    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 37956
    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 37957
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 37958
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gg;

    invoke-direct {v0, v7, v6}, Lcom/facebook/ads/redexgen/X/Gg;-><init>([J[J)V

    return-object v0

    .line 37959
    :cond_1
    aput-wide v8, v7, v10

    .line 37960
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0P()J

    move-result-wide v0

    aput-wide v0, v6, v10

    .line 37961
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 37962
    .end local v7    # "sampleNumber":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/lN;I)Lcom/facebook/ads/redexgen/X/Gg;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37963
    new-instance v2, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2, p1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 37964
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 37965
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Gf;->A03(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Gg;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/lN;)Lcom/facebook/ads/redexgen/X/Gh;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37966
    const/16 v1, 0x26

    new-array v2, v1, [B

    .line 37967
    .local v1, "scratchData":[B
    const/4 v0, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 37968
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gh;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Gh;-><init>([BI)V

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gf;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x70

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/lN;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/lN;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37969
    new-instance v2, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2, p1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 37970
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 37971
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 37972
    invoke-static {v2, v1, v1}, Lcom/facebook/ads/redexgen/X/H8;->A05(Lcom/facebook/ads/redexgen/X/4J;ZZ)Lcom/facebook/ads/redexgen/X/H5;

    move-result-object v0

    .line 37973
    .local v1, "commentHeader":Lcom/facebook/ads/redexgen/X/H5;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/H5;->A02:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x4c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gf;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x5t
        0x22t
        0x2at
        0x2ft
        0x26t
        0x27t
        0x63t
        0x37t
        0x2ct
        0x63t
        0x31t
        0x26t
        0x22t
        0x27t
        0x63t
        0x5t
        0xft
        0x2t
        0x0t
        0x63t
        0x30t
        0x37t
        0x31t
        0x26t
        0x22t
        0x2et
        0x63t
        0x2et
        0x22t
        0x31t
        0x28t
        0x26t
        0x31t
        0x6dt
        0x7dt
        0x52t
        0x49t
        0x48t
        0x4ft
        0x1bt
        0x5dt
        0x49t
        0x5at
        0x56t
        0x5et
        0x1bt
        0x5ft
        0x54t
        0x5et
        0x48t
        0x1bt
        0x55t
        0x54t
        0x4ft
        0x1bt
        0x48t
        0x4ft
        0x5at
        0x49t
        0x4ft
        0x1bt
        0x4ct
        0x52t
        0x4ft
        0x53t
        0x1bt
        0x48t
        0x42t
        0x55t
        0x58t
        0x1bt
        0x58t
        0x54t
        0x5ft
        0x5et
        0x15t
    .end array-data
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/lN;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37974
    const/4 v3, 0x4

    new-instance v2, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 37975
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 37976
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v3

    const-wide/32 v1, 0x664c6143

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 37977
    return-void

    .line 37978
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x22

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A06(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37979
    const/4 v2, 0x4

    new-instance v1, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 37980
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {p0, v0, v5, v2}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 37981
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v3

    const-wide/32 v1, 0x664c6143

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Ge;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37982
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 37983
    const/4 v6, 0x4

    new-array v0, v6, [B

    new-instance v2, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    .line 37984
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4I;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4I;->A00:[B

    const/4 v5, 0x0

    invoke-interface {p0, v0, v5, v6}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 37985
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v4

    .line 37986
    .local v2, "isLastMetadataBlock":Z
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 37987
    .local v4, "type":I
    const/16 v0, 0x18

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v3

    add-int/2addr v3, v6

    .line 37988
    .local v5, "length":I
    if-nez v1, :cond_0

    .line 37989
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gf;->A05(Lcom/facebook/ads/redexgen/X/lN;)Lcom/facebook/ads/redexgen/X/Gh;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37990
    :cond_0
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/Ge;->A00:Lcom/facebook/ads/redexgen/X/Gh;

    .line 37991
    .local v6, "flacStreamMetadata":Lcom/facebook/ads/redexgen/X/Gh;
    if-eqz v2, :cond_5

    .line 37992
    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    .line 37993
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/Gf;->A04(Lcom/facebook/ads/redexgen/X/lN;I)Lcom/facebook/ads/redexgen/X/Gg;

    move-result-object v0

    .line 37994
    .local v1, "seekTable":Lcom/facebook/ads/redexgen/X/Gg;
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A09(Lcom/facebook/ads/redexgen/X/Gg;)Lcom/facebook/ads/redexgen/X/Gh;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/Ge;->A00:Lcom/facebook/ads/redexgen/X/Gh;

    .line 37995
    .end local v1    # "seekTable":Lcom/facebook/ads/redexgen/X/Gg;
    goto :goto_0

    :cond_1
    if-ne v1, v6, :cond_2

    .line 37996
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/Gf;->A07(Lcom/facebook/ads/redexgen/X/lN;I)Ljava/util/List;

    move-result-object v0

    .line 37997
    .local v1, "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A0B(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Gh;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/Ge;->A00:Lcom/facebook/ads/redexgen/X/Gh;

    .line 37998
    .end local v1    # "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne v1, v0, :cond_3

    .line 37999
    new-instance v1, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v1, v3}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 38000
    .local p0, "pictureBlock":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p0, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/lN;->readFully([BII)V

    .line 38001
    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 38002
    invoke-static {v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A00(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;

    move-result-object v1

    .line 38003
    .local v1, "pictureFrame":Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;

    aput-object v1, v0, v5

    .line 38004
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i1;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 38005
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A0A(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/Gh;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/Ge;->A00:Lcom/facebook/ads/redexgen/X/Gh;

    .line 38006
    .end local v1    # "pictureFrame":Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;
    .end local p0    # "pictureBlock":Lcom/facebook/ads/redexgen/X/4J;
    goto :goto_0

    .line 38007
    :cond_3
    invoke-interface {p0, v3}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    goto :goto_0

    .line 38008
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A01:[Ljava/lang/String;

    const-string v1, "oF2KQg39ZEK5V6OHUZM6u4PkuH0D3J87"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "opWNo3Pnwj2PHBTvqD8r5OWylRW508kK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-object v3, p1, Lcom/facebook/ads/redexgen/X/Ge;->A00:Lcom/facebook/ads/redexgen/X/Gh;

    .line 38009
    .end local v6    # "flacStreamMetadata":Lcom/facebook/ads/redexgen/X/Gh;
    :goto_0
    return v4

    .line 38010
    .restart local v6    # "flacStreamMetadata":Lcom/facebook/ads/redexgen/X/Gh;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
