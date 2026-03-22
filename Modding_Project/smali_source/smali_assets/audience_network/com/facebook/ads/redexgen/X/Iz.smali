.class public abstract Lcom/facebook/ads/redexgen/X/Iz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Iy;,
        Lcom/facebook/ads/redexgen/X/kP;
    }
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/GY;

.field public A07:Lcom/facebook/ads/redexgen/X/H1;

.field public A08:Lcom/facebook/ads/redexgen/X/Iw;

.field public A09:Lcom/facebook/ads/redexgen/X/Iy;

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/Iu;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 788
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XeH1UKKuz1EDpBeQKhAXaKjrjZgsodJU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Qh9sfVWsiKdbMkoZ0Fly5mM08PFSskfX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "g5Vgu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IbV76iHRvjKg6MHaSQGzPOhr6f1ApNQX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "p6vckuBwU2Q2AllMmzSrbAD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CWShENYx4MqsFhdcA74Ut20lXSF9FxoW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "efy3JamC8vBQUYLSbDR2yGzuJR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AxMKck"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Iz;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43193
    new-instance v0, Lcom/facebook/ads/redexgen/X/Iu;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Iu;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A0C:Lcom/facebook/ads/redexgen/X/Iu;

    .line 43194
    new-instance v0, Lcom/facebook/ads/redexgen/X/Iy;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Iy;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A09:Lcom/facebook/ads/redexgen/X/Iy;

    .line 43195
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/lN;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 43196
    move-object/from16 v3, p0

    move-object v3, v3

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/Iz;->A03(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43197
    const/4 v0, -0x1

    return v0

    .line 43198
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Iz;->A09:Lcom/facebook/ads/redexgen/X/Iy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Iy;->A00:Lcom/facebook/ads/redexgen/X/or;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Iz;->A00:I

    .line 43199
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Iz;->A0A:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 43200
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Iz;->A07:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Iz;->A09:Lcom/facebook/ads/redexgen/X/Iy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Iy;->A00:Lcom/facebook/ads/redexgen/X/or;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 43201
    iput-boolean v2, v3, Lcom/facebook/ads/redexgen/X/Iz;->A0A:Z

    .line 43202
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Iz;->A09:Lcom/facebook/ads/redexgen/X/Iy;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Iy;->A01:Lcom/facebook/ads/redexgen/X/Iw;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Iz;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Iz;->A0D:[Ljava/lang/String;

    const-string v1, "ikA5IIIrIRBN8L1z"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x0

    if-eqz v4, :cond_2

    .line 43203
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Iz;->A09:Lcom/facebook/ads/redexgen/X/Iy;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/Iy;->A01:Lcom/facebook/ads/redexgen/X/Iw;

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/Iz;->A08:Lcom/facebook/ads/redexgen/X/Iw;

    .line 43204
    .end local v10
    .end local v13
    :goto_0
    const/4 v1, 0x2

    iput v1, v3, Lcom/facebook/ads/redexgen/X/Iz;->A01:I

    .line 43205
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Iz;->A0C:Lcom/facebook/ads/redexgen/X/Iu;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Iu;->A04()V

    .line 43206
    return v0

    .line 43207
    :cond_2
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v8

    const-wide/16 v6, -0x1

    cmp-long v1, v8, v6

    if-nez v1, :cond_3

    .line 43208
    const/4 v2, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/kP;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/kP;-><init>(Lcom/facebook/ads/redexgen/X/Ix;)V

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/Iz;->A08:Lcom/facebook/ads/redexgen/X/Iw;

    goto :goto_0

    .line 43209
    :cond_3
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Iz;->A0C:Lcom/facebook/ads/redexgen/X/Iu;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Iu;->A02()Lcom/facebook/ads/redexgen/X/Iv;

    move-result-object v4

    .line 43210
    .local v13, "firstPayloadPageHeader":Lcom/facebook/ads/redexgen/X/Iv;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/Iv;->A04:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/16 v16, 0x1

    .line 43211
    .local v10, "isLastPage":Z
    :goto_1
    new-instance v6, Lcom/facebook/ads/redexgen/X/kV;

    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/Iz;->A04:J

    .line 43212
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v10

    iget v2, v4, Lcom/facebook/ads/redexgen/X/Iv;->A01:I

    iget v1, v4, Lcom/facebook/ads/redexgen/X/Iv;->A00:I

    add-int/2addr v2, v1

    int-to-long v12, v2

    iget-wide v14, v4, Lcom/facebook/ads/redexgen/X/Iv;->A05:J

    move-object v7, v3

    invoke-direct/range {v6 .. v16}, Lcom/facebook/ads/redexgen/X/kV;-><init>(Lcom/facebook/ads/redexgen/X/Iz;JJJJZ)V

    iput-object v6, v3, Lcom/facebook/ads/redexgen/X/Iz;->A08:Lcom/facebook/ads/redexgen/X/Iw;

    goto :goto_0

    .line 43213
    :cond_4
    const/16 v16, 0x0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput",
            "oggSeeker",
            "extractorOutput"
        }
    .end annotation

    .line 43214
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Iz;->A08:Lcom/facebook/ads/redexgen/X/Iw;

    move-object/from16 v12, p1

    invoke-interface {v0, v12}, Lcom/facebook/ads/redexgen/X/Iw;->AGd(Lcom/facebook/ads/redexgen/X/lN;)J

    move-result-wide v10

    .line 43215
    .local v2, "position":J
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    cmp-long v0, v10, v4

    if-ltz v0, :cond_0

    .line 43216
    move-object/from16 v0, p2

    iput-wide v10, v0, Lcom/facebook/ads/redexgen/X/Gt;->A00:J

    .line 43217
    return v6

    .line 43218
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, v10, v0

    if-gez v2, :cond_2

    .line 43219
    const-wide/16 v8, 0x2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Iz;->A0D:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/16 v2, 0x1e

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x66

    if-eq v3, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v13, Lcom/facebook/ads/redexgen/X/Iz;->A0D:[Ljava/lang/String;

    const-string v3, "VTxPX"

    const/4 v2, 0x2

    aput-object v3, v13, v2

    const-string v3, "vg288hyM3d7P0eFgaD3UTrluSy"

    const/4 v2, 0x6

    aput-object v3, v13, v2

    add-long/2addr v8, v10

    neg-long v2, v8

    invoke-virtual {v7, v2, v3}, Lcom/facebook/ads/redexgen/X/Iz;->A0A(J)V

    .line 43220
    :cond_2
    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/Iz;->A0B:Z

    if-nez v2, :cond_3

    .line 43221
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Iz;->A08:Lcom/facebook/ads/redexgen/X/Iw;

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Iw;->A5R()Lcom/facebook/ads/redexgen/X/Gw;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Gw;

    .line 43222
    .local v10, "seekMap":Lcom/facebook/ads/redexgen/X/Gw;
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Iz;->A06:Lcom/facebook/ads/redexgen/X/GY;

    invoke-interface {v2, v3}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 43223
    iput-boolean v6, v7, Lcom/facebook/ads/redexgen/X/Iz;->A0B:Z

    .line 43224
    .end local v10    # "seekMap":Lcom/facebook/ads/redexgen/X/Gw;
    :cond_3
    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/Iz;->A03:J

    cmp-long v2, v8, v4

    if-gtz v2, :cond_4

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Iz;->A0C:Lcom/facebook/ads/redexgen/X/Iu;

    invoke-virtual {v2, v12}, Lcom/facebook/ads/redexgen/X/Iu;->A05(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 43225
    :cond_4
    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/Iz;->A03:J

    .line 43226
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Iz;->A0C:Lcom/facebook/ads/redexgen/X/Iu;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Iu;->A01()Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v8

    .line 43227
    .local v4, "payload":Lcom/facebook/ads/redexgen/X/4J;
    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/Iz;->A09(Lcom/facebook/ads/redexgen/X/4J;)J

    move-result-wide v9

    .line 43228
    .local v10, "granulesInPacket":J
    cmp-long v2, v9, v4

    if-ltz v2, :cond_5

    iget-wide v5, v7, Lcom/facebook/ads/redexgen/X/Iz;->A02:J

    add-long/2addr v5, v9

    sget-object v4, Lcom/facebook/ads/redexgen/X/Iz;->A0D:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v4, v2

    const/4 v2, 0x6

    aget-object v2, v4, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_6

    sget-object v4, Lcom/facebook/ads/redexgen/X/Iz;->A0D:[Ljava/lang/String;

    const-string v3, "EPgFULMjpXPDE9er32WaoAxqXEcFdYah"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    iget-wide v3, v7, Lcom/facebook/ads/redexgen/X/Iz;->A05:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_5

    .line 43229
    :goto_0
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/Iz;->A02:J

    invoke-virtual {v7, v2, v3}, Lcom/facebook/ads/redexgen/X/Iz;->A05(J)J

    move-result-wide v12

    .line 43230
    .local v5, "timeUs":J
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/Iz;->A07:Lcom/facebook/ads/redexgen/X/H1;

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v2

    invoke-interface {v3, v8, v2}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 43231
    iget-object v11, v7, Lcom/facebook/ads/redexgen/X/Iz;->A07:Lcom/facebook/ads/redexgen/X/H1;

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x1

    invoke-interface/range {v11 .. v17}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 43232
    iput-wide v0, v7, Lcom/facebook/ads/redexgen/X/Iz;->A05:J

    .line 43233
    .end local v5    # "timeUs":J
    :cond_5
    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/Iz;->A02:J

    add-long/2addr v0, v9

    iput-wide v0, v7, Lcom/facebook/ads/redexgen/X/Iz;->A02:J

    .line 43234
    .end local v4    # "payload":Lcom/facebook/ads/redexgen/X/4J;
    .end local v10    # "granulesInPacket":J
    const/4 v0, 0x0

    return v0

    :cond_6
    iget-wide v3, v7, Lcom/facebook/ads/redexgen/X/Iz;->A05:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_5

    goto :goto_0

    .line 43235
    :cond_7
    const/4 v0, 0x3

    iput v0, v7, Lcom/facebook/ads/redexgen/X/Iz;->A01:I

    .line 43236
    const/4 v0, -0x1

    return v0
.end method

.method private A02()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackOutput",
            "extractorOutput"
        }
    .end annotation

    .line 43237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A07:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43238
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "setupData.format"
        }
        result = true
    .end annotation

    .line 43239
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Iz;->A0C:Lcom/facebook/ads/redexgen/X/Iu;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Iz;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Iz;->A0D:[Ljava/lang/String;

    const-string v1, "RUb6h5R55PuDixsZqq"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/Iu;->A05(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43240
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:I

    .line 43241
    const/4 v0, 0x0

    return v0

    .line 43242
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A04:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Iz;->A03:J

    .line 43243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A0C:Lcom/facebook/ads/redexgen/X/Iu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iu;->A01()Lcom/facebook/ads/redexgen/X/4J;

    move-result-object v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Iz;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A09:Lcom/facebook/ads/redexgen/X/Iy;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Iz;->A0C(Lcom/facebook/ads/redexgen/X/4J;JLcom/facebook/ads/redexgen/X/Iy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43244
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Iz;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Iz;->A0D:[Ljava/lang/String;

    const-string v1, "MjaWWlFxdP245keDLyVkXHL1D0C1Hazn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Iz;->A04:J

    goto :goto_0

    .line 43245
    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43246
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Iz;->A02()V

    .line 43247
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:I

    packed-switch v0, :pswitch_data_0

    .line 43248
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 43249
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 43250
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Iz;->A01(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v0

    return v0

    .line 43251
    :pswitch_2
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Iz;->A04:J

    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/lN;->AJJ(I)V

    .line 43252
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:I

    .line 43253
    const/4 v0, 0x0

    return v0

    .line 43254
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Iz;->A00(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final A05(J)J
    .locals 4

    .line 43255
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A00:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A06(J)J
    .locals 4

    .line 43256
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A00:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A07(JJ)V
    .locals 3

    .line 43257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A0C:Lcom/facebook/ads/redexgen/X/Iu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iu;->A03()V

    .line 43258
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 43259
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A0B:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Iz;->A0B(Z)V

    .line 43260
    :cond_0
    :goto_0
    return-void

    .line 43261
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:I

    if-eqz v0, :cond_0

    .line 43262
    invoke-virtual {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/Iz;->A06(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A05:J

    .line 43263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A08:Lcom/facebook/ads/redexgen/X/Iw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Iw;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A05:J

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Iw;->AJR(J)V

    .line 43264
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:I

    goto :goto_0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 1

    .line 43265
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Iz;->A06:Lcom/facebook/ads/redexgen/X/GY;

    .line 43266
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Iz;->A07:Lcom/facebook/ads/redexgen/X/H1;

    .line 43267
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Iz;->A0B(Z)V

    .line 43268
    return-void
.end method

.method public abstract A09(Lcom/facebook/ads/redexgen/X/4J;)J
.end method

.method public A0A(J)V
    .locals 0

    .line 43269
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Iz;->A02:J

    .line 43270
    return-void
.end method

.method public A0B(Z)V
    .locals 4

    .line 43271
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 43272
    new-instance v0, Lcom/facebook/ads/redexgen/X/Iy;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Iy;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A09:Lcom/facebook/ads/redexgen/X/Iy;

    .line 43273
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Iz;->A04:J

    .line 43274
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:I

    .line 43275
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A05:J

    .line 43276
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Iz;->A02:J

    .line 43277
    return-void

    .line 43278
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iz;->A01:I

    goto :goto_0
.end method

.method public abstract A0C(Lcom/facebook/ads/redexgen/X/4J;JLcom/facebook/ads/redexgen/X/Iy;)Z
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
.end method
