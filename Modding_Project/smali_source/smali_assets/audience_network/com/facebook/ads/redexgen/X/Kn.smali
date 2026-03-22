.class public abstract Lcom/facebook/ads/redexgen/X/Kn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Km;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 958
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "sX38XYxjSWs23SpIJtTv7zqsiULa6NDN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GVdzvLjErUQlCiFlI6sj0UXKxa4oVMD1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mIptDDVqgJzdzMBxnTdyNQyM9U5NEVN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EbHk890dVqPqb4rol71PU8NjsI2mWG9N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NaaYWHcYaAW6JEQtPhbZM5A"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ny7KRitGLB3lrMhzsw8kbWX2NySq0vmW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JAavj5eiIDuEB7ikgcXMWWkFbaDdUxIE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "svQ0hoJoeE45w1Y6xC2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kn;->A05()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/lN;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49682
    const/16 v5, 0x8

    new-instance v3, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 49683
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4J;
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/Km;->A00(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Km;

    move-result-object v2

    .line 49684
    .local v2, "chunkHeader":Lcom/facebook/ads/redexgen/X/Km;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Km;->A00:I

    const v0, 0x64733634

    if-eq v1, v0, :cond_0

    .line 49685
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 49686
    const-wide/16 v0, -0x1

    return-wide v0

    .line 49687
    :cond_0
    invoke-interface {p0, v5}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 49688
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 49689
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p0, v0, v1, v5}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 49690
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4J;->A0N()J

    move-result-wide v3

    .line 49691
    .local v3, "sampleDataSize":J
    iget-wide v1, v2, Lcom/facebook/ads/redexgen/X/Km;->A01:J

    long-to-int v0, v1

    add-int/2addr v0, v5

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 49692
    return-wide v3
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/lN;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/lN;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49693
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 49694
    const/16 v2, 0x8

    new-instance v1, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 49695
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4J;
    const v0, 0x64617461

    invoke-static {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A03(ILcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Km;

    move-result-object v3

    .line 49696
    .local v2, "chunkHeader":Lcom/facebook/ads/redexgen/X/Km;
    invoke-interface {p0, v2}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 49697
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    .line 49698
    .local v3, "dataStartPosition":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Km;->A01:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/lN;)Lcom/facebook/ads/redexgen/X/Kl;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49699
    const/16 v8, 0x10

    new-instance v7, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v7, v8}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 49700
    .local v1, "scratch":Lcom/facebook/ads/redexgen/X/4J;
    const v0, 0x666d7420

    invoke-static {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/Kn;->A03(ILcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Km;

    move-result-object v6

    .line 49701
    .local v3, "chunkHeader":Lcom/facebook/ads/redexgen/X/Km;
    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/Km;->A01:J

    const-wide/16 v1, 0x10

    const/4 v3, 0x0

    cmp-long v0, v4, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 49702
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-interface {p0, v0, v3, v8}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 49703
    invoke-virtual {v7, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 49704
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0G()I

    move-result v8

    .line 49705
    .local v4, "audioFormatType":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0G()I

    move-result v9

    .line 49706
    .local v5, "numChannels":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0F()I

    move-result v10

    .line 49707
    .local v6, "frameRateHz":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0F()I

    move-result v11

    .line 49708
    .local v7, "averageBytesPerSecond":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0G()I

    move-result v12

    .line 49709
    .local p2, "blockSize":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4J;->A0G()I

    move-result v13

    .line 49710
    .local p3, "bitsPerSample":I
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Km;->A01:J

    long-to-int v2, v0

    add-int/lit8 v0, v2, -0x10

    .line 49711
    .local v2, "bytesLeft":I
    if-lez v0, :cond_0

    .line 49712
    new-array v14, v0, [B

    .line 49713
    .local v9, "extraData":[B
    invoke-interface {p0, v14, v3, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 49714
    .local v8, "extraData":[B
    :goto_1
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->A8a()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v2, v0

    invoke-interface {p0, v2}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 49715
    new-instance v7, Lcom/facebook/ads/redexgen/X/Kl;

    invoke-direct/range {v7 .. v14}, Lcom/facebook/ads/redexgen/X/Kl;-><init>(IIIIII[B)V

    return-object v7

    .line 49716
    .end local v9    # "extraData":[B
    :cond_0
    sget-object v14, Lcom/facebook/ads/redexgen/X/4a;->A07:[B

    goto :goto_1

    .line 49717
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A03(ILcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Km;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49718
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Km;->A00(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Km;

    move-result-object v5

    .line 49719
    .local v0, "chunkHeader":Lcom/facebook/ads/redexgen/X/Km;
    :goto_0
    iget v0, v5, Lcom/facebook/ads/redexgen/X/Km;->A00:I

    if-eq v0, p0, :cond_1

    .line 49720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    const/16 v1, 0x1c

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Km;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5b

    const/16 v1, 0xf

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 49721
    const-wide/16 v3, 0x8

    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/Km;->A01:J

    add-long/2addr v1, v3

    .line 49722
    .local v3, "bytesToSkip":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    .line 49723
    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 49724
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Km;->A00(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Km;

    move-result-object v5

    .line 49725
    .end local v3    # "bytesToSkip":J
    goto :goto_0

    .line 49726
    .restart local v3    # "bytesToSkip":J
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x28

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Km;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2i;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 49727
    .end local v3    # "bytesToSkip":J
    :cond_1
    return-object v5
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x43

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x6a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kn;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x3bt
        0x10t
        0xdt
        0x16t
        0x13t
        0x58t
        0x11t
        0xbt
        0x58t
        0xct
        0x17t
        0x17t
        0x58t
        0x14t
        0x19t
        0xat
        0x1ft
        0x1dt
        0x58t
        0x50t
        0x6t
        0x4at
        0x3ft
        0x3at
        0x53t
        0x51t
        0x58t
        0xct
        0x17t
        0x58t
        0xbt
        0x13t
        0x11t
        0x8t
        0x43t
        0x58t
        0x11t
        0x1ct
        0x42t
        0x58t
        0x2dt
        0x3t
        0xat
        0xbt
        0x16t
        0xdt
        0xat
        0x3t
        0x44t
        0x11t
        0xat
        0xft
        0xat
        0xbt
        0x13t
        0xat
        0x44t
        0x33t
        0x25t
        0x32t
        0x44t
        0x7t
        0xct
        0x11t
        0xat
        0xft
        0x5et
        0x44t
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
        0x5at
        0x53t
        0x4et
        0x51t
        0x1ct
        0x48t
        0x45t
        0x4ct
        0x59t
        0x6t
        0x1ct
        0x69t
        0x5ft
        0x48t
        0x76t
        0x5bt
        0x5ft
        0x5at
        0x5bt
        0x4ct
        0x6ct
        0x5bt
        0x5ft
        0x5at
        0x5bt
        0x4ct
    .end array-data
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49728
    const/16 v0, 0x8

    new-instance v6, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    .line 49729
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/4J;
    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/Km;->A00(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Km;

    move-result-object v2

    .line 49730
    .local v1, "chunkHeader":Lcom/facebook/ads/redexgen/X/Km;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Km;->A00:I

    const v0, 0x52494646

    const/4 v4, 0x0

    if-eq v1, v0, :cond_1

    iget v5, v2, Lcom/facebook/ads/redexgen/X/Km;->A00:I

    const v3, 0x52463634

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Kn;->A01:[Ljava/lang/String;

    const-string v1, "7d3HBnqB6pKujyEoyh9Hov6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_1

    .line 49731
    return v4

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49732
    :cond_1
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    const/4 v0, 0x4

    invoke-interface {p0, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 49733
    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 49734
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v5

    .line 49735
    .local v2, "formType":I
    const v0, 0x57415645

    if-eq v5, v0, :cond_2

    .line 49736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x44

    const/16 v1, 0x17

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5b

    const/16 v1, 0xf

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kn;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 49737
    return v4

    .line 49738
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
