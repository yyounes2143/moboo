.class public final Lcom/facebook/ads/redexgen/X/l5;
.super Lcom/facebook/ads/redexgen/X/HI;
.source ""


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/4J;

.field public final A05:Lcom/facebook/ads/redexgen/X/4J;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3097
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "k0wYTkKie1JHeFYg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DKl7H6qsoN4MQmGVFxhVfc9YoKR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eOp5RF4DxMr8YboQGZKTl4GQk1b"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2gSlciuhxyUpZq2z"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EzoVAngWIMXE2t797gVmsxYwwugMTqE8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YSwU3mnkrzPmwh4w8hA9Gpc9iPzLacTq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wmfh6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "T9R7fvqNl5WyvyD6SUGUJNeU84vDYmq7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/l5;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/l5;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 2

    .line 95847
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/HI;-><init>(Lcom/facebook/ads/redexgen/X/H1;)V

    .line 95848
    sget-object v1, Lcom/facebook/ads/redexgen/X/Gq;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l5;->A05:Lcom/facebook/ads/redexgen/X/4J;

    .line 95849
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l5;->A04:Lcom/facebook/ads/redexgen/X/4J;

    .line 95850
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/l5;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/l5;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x44t
        0x7bt
        0x76t
        0x77t
        0x7dt
        0x32t
        0x74t
        0x7dt
        0x60t
        0x7ft
        0x73t
        0x66t
        0x32t
        0x7ct
        0x7dt
        0x66t
        0x32t
        0x61t
        0x67t
        0x62t
        0x62t
        0x7dt
        0x60t
        0x66t
        0x77t
        0x76t
        0x28t
        0x32t
        0x2bt
        0x34t
        0x39t
        0x38t
        0x32t
        0x72t
        0x3ct
        0x2bt
        0x3et
    .end array-data
.end method


# virtual methods
.method public final A0B(Lcom/facebook/ads/redexgen/X/4J;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/l6;
        }
    .end annotation

    .line 95851
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v2

    .line 95852
    .local v0, "header":I
    shr-int/lit8 v0, v2, 0x4

    and-int/lit8 v1, v0, 0xf

    .line 95853
    .local v1, "frameType":I
    and-int/lit8 v4, v2, 0xf

    .line 95854
    .local v2, "videoCodec":I
    const/4 v0, 0x7

    if-ne v4, v0, :cond_1

    .line 95855
    iput v1, p0, Lcom/facebook/ads/redexgen/X/l5;->A00:I

    .line 95856
    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95857
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x1c

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/l5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/l6;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/l6;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/4J;J)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 95858
    move-wide/from16 v11, p2

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v7

    .line 95859
    .local v2, "packetType":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A0D()I

    move-result v0

    .line 95860
    .local v3, "compositionTimeMs":I
    int-to-long v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    add-long/2addr v11, v2

    .line 95861
    .end local p4
    .local v4, "timeUs":J
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez v7, :cond_0

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/l5;->A02:Z

    if-nez v0, :cond_0

    .line 95862
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    new-array v0, v0, [B

    new-instance v2, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>([B)V

    .line 95863
    .local v7, "videoSequence":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    invoke-virtual {v6, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 95864
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/GJ;->A00(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/GJ;

    move-result-object v2

    .line 95865
    .local v8, "avcConfig":Lcom/facebook/ads/redexgen/X/GJ;
    iget v0, v2, Lcom/facebook/ads/redexgen/X/GJ;->A02:I

    iput v0, v4, Lcom/facebook/ads/redexgen/X/l5;->A01:I

    .line 95866
    new-instance v7, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 95867
    const/16 v6, 0x1c

    const/16 v1, 0x9

    const/16 v0, 0x1d

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/l5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/GJ;->A04:Ljava/lang/String;

    .line 95868
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GJ;->A03:I

    .line 95869
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0r(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GJ;->A01:I

    .line 95870
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0f(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/GJ;->A00:F

    .line 95871
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0Y(F)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/GJ;->A05:Ljava/util/List;

    .line 95872
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 95873
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v1

    .line 95874
    .local v9, "format":Lcom/facebook/ads/redexgen/X/or;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/HI;->A00:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 95875
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/l5;->A02:Z

    .line 95876
    return v5

    .line 95877
    .end local v7    # "videoSequence":Lcom/facebook/ads/redexgen/X/4J;
    .end local v8    # "avcConfig":Lcom/facebook/ads/redexgen/X/GJ;
    .end local v9    # "format":Lcom/facebook/ads/redexgen/X/or;
    :cond_0
    if-ne v7, v3, :cond_7

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/l5;->A02:Z

    if-eqz v0, :cond_7

    .line 95878
    iget v7, v4, Lcom/facebook/ads/redexgen/X/l5;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/l5;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/l5;->A07:[Ljava/lang/String;

    const-string v1, "ywa4QqUhdtSZ68DIQ13xWUOznnvwilgI"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v7, v3, :cond_2

    const/4 v9, 0x1

    :goto_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/l5;->A07:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_6

    .line 95879
    .local v14, "isKeyframe":Z
    sget-object v2, Lcom/facebook/ads/redexgen/X/l5;->A07:[Ljava/lang/String;

    const-string v1, "IIAwH"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "qu1M6PwQ9kLePSP6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/l5;->A03:Z

    if-nez v0, :cond_3

    if-nez v9, :cond_3

    .line 95880
    return v5

    .line 95881
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 95882
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/l5;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    .line 95883
    .local v15, "nalLengthData":[B
    aput-byte v5, v1, v5

    .line 95884
    aput-byte v5, v1, v3

    .line 95885
    const/4 v0, 0x2

    aput-byte v5, v1, v0

    .line 95886
    iget v0, v4, Lcom/facebook/ads/redexgen/X/l5;->A01:I

    const/4 v8, 0x4

    rsub-int/lit8 v7, v0, 0x4

    .line 95887
    .local v12, "nalUnitLengthFieldLengthDiff":I
    const/4 v14, 0x0

    .line 95888
    .local v16, "bytesWritten":I
    :goto_1
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-lez v0, :cond_4

    .line 95889
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/l5;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/l5;->A01:I

    invoke-virtual {v6, v1, v7, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 95890
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/l5;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 95891
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/l5;->A04:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v2

    .line 95892
    .local v7, "bytesToWrite":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/l5;->A05:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 95893
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/HI;->A00:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/l5;->A05:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v1, v0, v8}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 95894
    add-int/lit8 v14, v14, 0x4

    .line 95895
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/HI;->A00:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0, v6, v2}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 95896
    add-int/2addr v14, v2

    goto :goto_1

    .line 95897
    .end local v7    # "bytesToWrite":I
    :cond_4
    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/HI;->A00:Lcom/facebook/ads/redexgen/X/H1;

    .line 95898
    if-eqz v9, :cond_5

    const/4 v13, 0x1

    .line 95899
    :goto_2
    const/4 v15, 0x0

    const/16 v16, 0x0

    .end local v12    # "nalUnitLengthFieldLengthDiff":I
    .local p1, "nalUnitLengthFieldLengthDiff":I
    invoke-interface/range {v10 .. v16}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 95900
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/l5;->A03:Z

    .line 95901
    return v3

    .line 95902
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 95903
    .end local v14    # "isKeyframe":Z
    .end local v15    # "nalLengthData":[B
    .end local v16    # "bytesWritten":I
    .end local p1    # "nalUnitLengthFieldLengthDiff":I
    :cond_7
    return v5
.end method
