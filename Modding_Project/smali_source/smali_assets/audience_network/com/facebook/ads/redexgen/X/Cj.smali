.class public final Lcom/facebook/ads/redexgen/X/Cj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/mG;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/mG;

.field public A02:Lcom/facebook/ads/redexgen/X/mG;

.field public A03:Lcom/facebook/ads/redexgen/X/mG;

.field public final A04:I

.field public final A05:Lcom/facebook/ads/redexgen/X/4J;

.field public final A06:Lcom/facebook/ads/redexgen/X/EO;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 638
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1TUPUvqjuckMieKxy618dXqeho2I2nXO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1tw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Rv8BHxt03y9lIrpcW4kHhbfWsqmFKBVK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "r8Px"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "D2vXeeTjlCXB4Odv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uuD40"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TpLNmCJV5wG1YwTXf3toM93vl9iWeWk7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cj;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/EO;)V
    .locals 4

    .line 33084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33085
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cj;->A06:Lcom/facebook/ads/redexgen/X/EO;

    .line 33086
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/EO;->A8A()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A04:I

    .line 33087
    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A05:Lcom/facebook/ads/redexgen/X/4J;

    .line 33088
    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Cj;->A04:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/mG;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/mG;-><init>(JI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    .line 33089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A02:Lcom/facebook/ads/redexgen/X/mG;

    .line 33090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    .line 33091
    return-void
.end method

.method private A00(I)I
    .locals 6

    .line 33092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    if-nez v0, :cond_0

    .line 33093
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A06:Lcom/facebook/ads/redexgen/X/EO;

    .line 33094
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/EO;->A41()Lcom/facebook/ads/redexgen/X/EM;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/mG;->A00:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Cj;->A04:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/mG;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/mG;-><init>(JI)V

    .line 33095
    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/mG;->A03(Lcom/facebook/ads/redexgen/X/EM;Lcom/facebook/ads/redexgen/X/mG;)V

    .line 33096
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/mG;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A00:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/mG;J)Lcom/facebook/ads/redexgen/X/mG;
    .locals 3

    .line 33097
    :goto_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    .line 33098
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:Lcom/facebook/ads/redexgen/X/mG;

    goto :goto_0

    .line 33099
    :cond_0
    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/mG;JLjava/nio/ByteBuffer;I)Lcom/facebook/ads/redexgen/X/mG;
    .locals 3

    .line 33100
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Cj;->A01(Lcom/facebook/ads/redexgen/X/mG;J)Lcom/facebook/ads/redexgen/X/mG;

    move-result-object p0

    .line 33101
    .local v0, "remaining":I
    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 33102
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:J

    sub-long/2addr v1, p1

    long-to-int v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 33103
    .local v1, "toCopy":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    .line 33104
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/EM;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/EM;->A01:[B

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/mG;->A00(J)I

    move-result v0

    invoke-virtual {p3, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 33105
    sub-int/2addr p4, v2

    .line 33106
    int-to-long v0, v2

    add-long/2addr p1, v0

    .line 33107
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 33108
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:Lcom/facebook/ads/redexgen/X/mG;

    goto :goto_0

    .line 33109
    :cond_1
    return-object p0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/mG;J[BI)Lcom/facebook/ads/redexgen/X/mG;
    .locals 5

    .line 33110
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Cj;->A01(Lcom/facebook/ads/redexgen/X/mG;J)Lcom/facebook/ads/redexgen/X/mG;

    move-result-object p0

    .line 33111
    move v4, p4

    .line 33112
    .local v0, "remaining":I
    :cond_0
    :goto_0
    if-lez v4, :cond_1

    .line 33113
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:J

    sub-long/2addr v0, p1

    long-to-int v2, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 33114
    .local v1, "toCopy":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    .line 33115
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/EM;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/EM;->A01:[B

    .line 33116
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/mG;->A00(J)I

    move-result v1

    sub-int v0, p4, v4

    .line 33117
    invoke-static {v2, v1, p3, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33118
    sub-int/2addr v4, v3

    .line 33119
    int-to-long v0, v3

    add-long/2addr p1, v0

    .line 33120
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 33121
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:Lcom/facebook/ads/redexgen/X/mG;

    goto :goto_0

    .line 33122
    :cond_1
    return-object p0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/mG;Lcom/facebook/ads/redexgen/X/nY;Lcom/facebook/ads/redexgen/X/Cl;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/mG;
    .locals 15

    .line 33123
    move-object/from16 v6, p2

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    .line 33124
    .local v2, "offset":J
    const/4 v5, 0x1

    move-object/from16 v4, p3

    invoke-virtual {v4, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 33125
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    invoke-static {p0, v0, v1, v2, v5}, Lcom/facebook/ads/redexgen/X/Cj;->A03(Lcom/facebook/ads/redexgen/X/mG;J[BI)Lcom/facebook/ads/redexgen/X/mG;

    move-result-object v7

    .line 33126
    .end local p8
    .local v5, "allocationNode":Lcom/facebook/ads/redexgen/X/mG;
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 33127
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    const/4 v8, 0x0

    aget-byte v3, v2, v8

    .line 33128
    .local v6, "signalByte":B
    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_6

    .line 33129
    .local v4, "subsampleEncryption":Z
    :goto_0
    and-int/lit8 v3, v3, 0x7f

    .line 33130
    .local v8, "ivSize":I
    move-object/from16 v2, p1

    iget-object v10, v2, Lcom/facebook/ads/redexgen/X/nY;->A05:Lcom/facebook/ads/redexgen/X/5N;

    .line 33131
    .local p0, "cryptoInfo":Lcom/facebook/ads/redexgen/X/5N;
    iget-object v2, v10, Lcom/facebook/ads/redexgen/X/5N;->A04:[B

    if-nez v2, :cond_5

    .line 33132
    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, v10, Lcom/facebook/ads/redexgen/X/5N;->A04:[B

    .line 33133
    :goto_1
    iget-object v2, v10, Lcom/facebook/ads/redexgen/X/5N;->A04:[B

    invoke-static {v7, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Cj;->A03(Lcom/facebook/ads/redexgen/X/mG;J[BI)Lcom/facebook/ads/redexgen/X/mG;

    move-result-object v7

    .line 33134
    int-to-long v2, v3

    add-long/2addr v0, v2

    .line 33135
    if-eqz v5, :cond_4

    .line 33136
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 33137
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    invoke-static {v7, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Cj;->A03(Lcom/facebook/ads/redexgen/X/mG;J[BI)Lcom/facebook/ads/redexgen/X/mG;

    move-result-object v7

    .line 33138
    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 33139
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v11

    .line 33140
    .local v10, "subsampleCount":I
    .local v14, "subsampleCount":I
    :goto_2
    iget-object v12, v10, Lcom/facebook/ads/redexgen/X/5N;->A06:[I

    .line 33141
    .local v10, "clearDataSizes":[I
    if-eqz v12, :cond_0

    array-length v2, v12

    if-ge v2, v11, :cond_1

    .line 33142
    :cond_0
    new-array v12, v11, [I

    .line 33143
    .end local v10    # "clearDataSizes":[I
    .local p4, "clearDataSizes":[I
    :cond_1
    iget-object v13, v10, Lcom/facebook/ads/redexgen/X/5N;->A07:[I

    .line 33144
    .local v10, "encryptedDataSizes":[I
    if-eqz v13, :cond_2

    array-length v2, v13

    if-ge v2, v11, :cond_3

    .line 33145
    :cond_2
    new-array v13, v11, [I

    .line 33146
    .end local v10    # "encryptedDataSizes":[I
    .local p5, "encryptedDataSizes":[I
    :cond_3
    if-eqz v5, :cond_7

    .line 33147
    mul-int/lit8 v3, v11, 0x6

    .line 33148
    .local v10, "subsampleDataLength":I
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 33149
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    invoke-static {v7, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Cj;->A03(Lcom/facebook/ads/redexgen/X/mG;J[BI)Lcom/facebook/ads/redexgen/X/mG;

    move-result-object v7

    .line 33150
    int-to-long v2, v3

    add-long/2addr v0, v2

    .line 33151
    invoke-virtual {v4, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 33152
    const/4 v3, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v3, v11, :cond_8

    .line 33153
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v2

    aput v2, v12, v3

    .line 33154
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v2

    aput v2, v13, v3

    .line 33155
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 33156
    .end local v10    # "subsampleDataLength":I
    :cond_4
    const/4 v11, 0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Cj;->A07:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v3, v3, v2

    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x69

    if-eq v3, v2, :cond_a

    sget-object v9, Lcom/facebook/ads/redexgen/X/Cj;->A07:[Ljava/lang/String;

    const-string v3, "Hpyz1f8ALnZx1iP9R6alck8MxH3P54oK"

    const/4 v2, 0x7

    aput-object v3, v9, v2

    goto :goto_2

    .line 33157
    :cond_5
    iget-object v2, v10, Lcom/facebook/ads/redexgen/X/5N;->A04:[B

    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1

    .line 33158
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 33159
    :cond_7
    aput v8, v12, v8

    .line 33160
    iget v9, v6, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    sub-long v2, v0, v4

    long-to-int v4, v2

    sub-int/2addr v9, v4

    aput v9, v13, v8

    .line 33161
    :cond_8
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Cl;->A02:Lcom/facebook/ads/redexgen/X/Gz;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Gz;

    .line 33162
    .local v7, "cryptoData":Lcom/facebook/ads/redexgen/X/Gz;
    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/Gz;->A03:[B

    iget-object p0, v10, Lcom/facebook/ads/redexgen/X/5N;->A04:[B

    iget v4, v2, Lcom/facebook/ads/redexgen/X/Gz;->A01:I

    iget v3, v2, Lcom/facebook/ads/redexgen/X/Gz;->A02:I

    iget v2, v2, Lcom/facebook/ads/redexgen/X/Gz;->A00:I

    .end local v14    # "subsampleCount":I
    .local p7, "subsampleCount":I
    .end local p0    # "cryptoInfo":Lcom/facebook/ads/redexgen/X/5N;
    .local p6, "cryptoInfo":Lcom/facebook/ads/redexgen/X/5N;
    move/from16 p2, v3

    move/from16 p3, v2

    move/from16 p1, v4

    invoke-virtual/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/5N;->A02(I[I[I[B[BIII)V

    .line 33163
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    sub-long/2addr v0, v2

    long-to-int v3, v0

    .line 33164
    .local v1, "bytesRead":I
    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    int-to-long v0, v3

    add-long/2addr v4, v0

    iput-wide v4, v6, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cj;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_9

    .line 33165
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cj;->A07:[Ljava/lang/String;

    const-string v1, "b8i1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "bRWrT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    sub-int/2addr v0, v3

    iput v0, v6, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    .line 33166
    return-object v7

    .line 33167
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cj;->A07:[Ljava/lang/String;

    const-string v1, "nTpP9ibfF3cbwjVbkTA4UIhNPpZui5fl"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    sub-int/2addr v0, v3

    iput v0, v6, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    .line 33168
    return-object v7

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/mG;Lcom/facebook/ads/redexgen/X/nY;Lcom/facebook/ads/redexgen/X/Cl;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/mG;
    .locals 7

    .line 33169
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/nY;->A0E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33170
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cj;->A04(Lcom/facebook/ads/redexgen/X/mG;Lcom/facebook/ads/redexgen/X/nY;Lcom/facebook/ads/redexgen/X/Cl;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/mG;

    move-result-object p0

    .line 33171
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5I;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33172
    const/4 v6, 0x4

    invoke-virtual {p3, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 33173
    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    invoke-static {p0, v0, v1, v2, v6}, Lcom/facebook/ads/redexgen/X/Cj;->A03(Lcom/facebook/ads/redexgen/X/mG;J[BI)Lcom/facebook/ads/redexgen/X/mG;

    move-result-object v4

    .line 33174
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4J;->A0L()I

    move-result v5

    .line 33175
    .local v1, "sampleSize":I
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    const-wide/16 v0, 0x4

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    .line 33176
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    sub-int/2addr v0, v6

    iput v0, p2, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    .line 33177
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/nY;->A0C(I)V

    .line 33178
    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    invoke-static {v4, v1, v2, v0, v5}, Lcom/facebook/ads/redexgen/X/Cj;->A02(Lcom/facebook/ads/redexgen/X/mG;JLjava/nio/ByteBuffer;I)Lcom/facebook/ads/redexgen/X/mG;

    move-result-object v4

    .line 33179
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    int-to-long v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    .line 33180
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    sub-int/2addr v0, v5

    iput v0, p2, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    .line 33181
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/nY;->A0D(I)V

    .line 33182
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/nY;->A03:Ljava/nio/ByteBuffer;

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    .line 33183
    invoke-static {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Cj;->A02(Lcom/facebook/ads/redexgen/X/mG;JLjava/nio/ByteBuffer;I)Lcom/facebook/ads/redexgen/X/mG;

    move-result-object v0

    .line 33184
    .end local v1    # "sampleSize":I
    :goto_0
    return-object v0

    .line 33185
    :cond_1
    iget v0, p2, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/nY;->A0C(I)V

    .line 33186
    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    .line 33187
    invoke-static {p0, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/Cj;->A02(Lcom/facebook/ads/redexgen/X/mG;JLjava/nio/ByteBuffer;I)Lcom/facebook/ads/redexgen/X/mG;

    move-result-object v0

    goto :goto_0
.end method

.method private A06(I)V
    .locals 5

    .line 33188
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Cj;->A00:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Cj;->A00:J

    .line 33189
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Cj;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/mG;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 33190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/mG;->A02:Lcom/facebook/ads/redexgen/X/mG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    .line 33191
    :cond_0
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/mG;)V
    .locals 1

    .line 33192
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    if-nez v0, :cond_0

    .line 33193
    return-void

    .line 33194
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A06:Lcom/facebook/ads/redexgen/X/EO;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/EO;->AGu(Lcom/facebook/ads/redexgen/X/EN;)V

    .line 33195
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/mG;->A01()Lcom/facebook/ads/redexgen/X/mG;

    .line 33196
    return-void
.end method


# virtual methods
.method public final A08(Lcom/facebook/ads/redexgen/X/20;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33197
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Cj;->A00(I)I

    move-result v4

    .line 33198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/EM;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A00:J

    .line 33199
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/mG;->A00(J)I

    move-result v0

    .line 33200
    invoke-interface {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/20;->read([BII)I

    move-result v1

    .line 33201
    .local v0, "bytesAppended":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 33202
    if-eqz p3, :cond_0

    .line 33203
    return v0

    .line 33204
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 33205
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Cj;->A06(I)V

    .line 33206
    return v1
.end method

.method public final A09()J
    .locals 2

    .line 33207
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A00:J

    return-wide v0
.end method

.method public final A0A()V
    .locals 4

    .line 33208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cj;->A07(Lcom/facebook/ads/redexgen/X/mG;)V

    .line 33209
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A04:I

    const-wide/16 v1, 0x0

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/mG;->A02(JI)V

    .line 33210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A02:Lcom/facebook/ads/redexgen/X/mG;

    .line 33211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    .line 33212
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Cj;->A00:J

    .line 33213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A06:Lcom/facebook/ads/redexgen/X/EO;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/EO;->AJi()V

    .line 33214
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 33215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A02:Lcom/facebook/ads/redexgen/X/mG;

    .line 33216
    return-void
.end method

.method public final A0C(J)V
    .locals 6

    .line 33217
    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 33218
    return-void

    .line 33219
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/mG;->A00:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    .line 33220
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cj;->A06:Lcom/facebook/ads/redexgen/X/EO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/EO;->AGt(Lcom/facebook/ads/redexgen/X/EM;)V

    .line 33221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/mG;->A01()Lcom/facebook/ads/redexgen/X/mG;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    goto :goto_0

    .line 33222
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A02:Lcom/facebook/ads/redexgen/X/mG;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/mG;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/mG;->A01:J

    cmp-long v3, v4, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cj;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cj;->A07:[Ljava/lang/String;

    const-string v1, "kTcq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Dj6YZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-gez v3, :cond_2

    .line 33223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A01:Lcom/facebook/ads/redexgen/X/mG;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A02:Lcom/facebook/ads/redexgen/X/mG;

    .line 33224
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/4J;I)V
    .locals 5

    .line 33225
    :goto_0
    if-lez p2, :cond_0

    .line 33226
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Cj;->A00(I)I

    move-result v4

    .line 33227
    .local v0, "bytesAppended":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/EM;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Cj;->A03:Lcom/facebook/ads/redexgen/X/mG;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A00:J

    .line 33228
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/mG;->A00(J)I

    move-result v0

    .line 33229
    invoke-virtual {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 33230
    sub-int/2addr p2, v4

    .line 33231
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Cj;->A06(I)V

    .line 33232
    .end local v0    # "bytesAppended":I
    goto :goto_0

    .line 33233
    :cond_0
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/nY;Lcom/facebook/ads/redexgen/X/Cl;)V
    .locals 2

    .line 33234
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cj;->A02:Lcom/facebook/ads/redexgen/X/mG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A05:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Cj;->A05(Lcom/facebook/ads/redexgen/X/mG;Lcom/facebook/ads/redexgen/X/nY;Lcom/facebook/ads/redexgen/X/Cl;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/mG;

    .line 33235
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/nY;Lcom/facebook/ads/redexgen/X/Cl;)V
    .locals 2

    .line 33236
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cj;->A02:Lcom/facebook/ads/redexgen/X/mG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A05:Lcom/facebook/ads/redexgen/X/4J;

    invoke-static {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Cj;->A05(Lcom/facebook/ads/redexgen/X/mG;Lcom/facebook/ads/redexgen/X/nY;Lcom/facebook/ads/redexgen/X/Cl;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/mG;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cj;->A02:Lcom/facebook/ads/redexgen/X/mG;

    .line 33237
    return-void
.end method
