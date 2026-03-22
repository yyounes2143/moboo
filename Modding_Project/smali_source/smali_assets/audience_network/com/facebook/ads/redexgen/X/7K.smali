.class public final Lcom/facebook/ads/redexgen/X/7K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/id;


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/MX;

.field public A02:Lcom/facebook/ads/redexgen/X/MY;

.field public A03:Lcom/facebook/ads/redexgen/X/iD;

.field public A04:Lcom/facebook/ads/redexgen/X/iB;

.field public A05:Lcom/facebook/ads/redexgen/X/6M;

.field public A06:Lcom/facebook/ads/redexgen/X/Y8;

.field public A07:Lcom/facebook/ads/redexgen/X/Y9;

.field public final A08:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 428
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0TFgGHCmbDEnT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P3BoNX3HbYs3p91Xznd9cH02Ego1LEzw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OWrFl7C0gkEmqIZvATANnxtRvMpHSetZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XjLJU23F7IQ7TgYJbWjoa78"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8eUGin29aZrVydG4hLQZ04ng176drDiv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tE42BGb8ExLW22Y3fw0IicKZ4ID1w2IZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "N0c3cK9W7W98ikBdYu66t8J"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EarR2SOYmotvRVJvY11PbnGgxllwGrNq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7K;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7K;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21281
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A08:Ljava/lang/String;

    .line 21282
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A00:J

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7K;)J
    .locals 1

    .line 21283
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7K;)Lcom/facebook/ads/redexgen/X/MX;
    .locals 0

    .line 21284
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7K;->A01:Lcom/facebook/ads/redexgen/X/MX;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7K;)Lcom/facebook/ads/redexgen/X/iD;
    .locals 0

    .line 21285
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7K;->A03:Lcom/facebook/ads/redexgen/X/iD;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7K;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x10

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

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7K;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x51t
        -0x40t
        -0xbt
        -0x13t
        -0x14t
        -0xft
        -0x3t
        -0xbt
        -0x19t
        -0x6t
        -0x13t
        -0x15t
        -0x4t
        -0x17t
        -0xat
        -0x11t
        -0xct
        -0x13t
    .end array-data
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/iB;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/MX;Lcom/facebook/ads/redexgen/X/Y9;)V
    .locals 9

    .line 21286
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v2

    .line 21287
    .local v1, "clientToken":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21288
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 21289
    .local v2, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ua;
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0e(Lcom/facebook/ads/redexgen/X/Ua;)V

    .line 21290
    .end local v2    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ua;
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0F()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7K;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/7K;->A0A:[Ljava/lang/String;

    const-string v1, "l0iKT0z7S0YTo68xxrsf1qJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "FTb7Q8n5ne47CtPUjUxYv1n"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 21291
    new-instance v3, Lcom/facebook/ads/redexgen/X/SD;

    .line 21292
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0F()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 21293
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0F()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Up;->getHeight()I

    move-result v5

    .line 21294
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0F()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Up;->getWidth()I

    move-result v6

    .line 21295
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0Y()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7K;->A03(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 21296
    .local v2, "adIconImageData":Lcom/facebook/ads/redexgen/X/SD;
    const/4 v2, 0x0

    const/4 v1, -0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/SL;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/SL;-><init>(ZII)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SD;->A01:Lcom/facebook/ads/redexgen/X/SL;

    .line 21297
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/SF;->A0W()V

    .line 21298
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/SF;->A0c(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 21299
    .end local v2    # "adIconImageData":Lcom/facebook/ads/redexgen/X/SD;
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0E()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21300
    new-instance v3, Lcom/facebook/ads/redexgen/X/SD;

    .line 21301
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0E()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 21302
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0E()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Up;->getHeight()I

    move-result v5

    .line 21303
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0E()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Up;->getWidth()I

    move-result v6

    .line 21304
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0Y()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7K;->A03(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 21305
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/SF;->A0c(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 21306
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0b()Ljava/lang/String;

    move-result-object v4

    .line 21307
    .local v2, "videoUrl":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21308
    new-instance v3, Lcom/facebook/ads/redexgen/X/SB;

    .line 21309
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0Y()Ljava/lang/String;

    move-result-object v5

    .line 21310
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0A()J

    move-result-wide v7

    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7K;->A03(III)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/SB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 21311
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/SF;->A0b(Lcom/facebook/ads/redexgen/X/SB;)V

    .line 21312
    :cond_4
    new-instance v4, Lcom/facebook/ads/redexgen/X/iP;

    invoke-direct {v4, p0, p5, p4, p1}, Lcom/facebook/ads/redexgen/X/iP;-><init>(Lcom/facebook/ads/redexgen/X/7K;Lcom/facebook/ads/redexgen/X/Y9;Lcom/facebook/ads/redexgen/X/MX;Lcom/facebook/ads/redexgen/X/6M;)V

    .line 21313
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/iB;->A0Y()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7K;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/S8;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/S8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21314
    invoke-virtual {p3, v4, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0X(Lcom/facebook/ads/redexgen/X/S7;Lcom/facebook/ads/redexgen/X/S8;)V

    .line 21315
    return-void
.end method


# virtual methods
.method public final A7G()Ljava/lang/String;
    .locals 1

    .line 21316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A04:Lcom/facebook/ads/redexgen/X/iB;

    if-nez v0, :cond_0

    .line 21317
    const/4 v0, 0x0

    return-object v0

    .line 21318
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A04:Lcom/facebook/ads/redexgen/X/iB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iB;->A7G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A8c()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 21319
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->MEDIUM_RECTANGLE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final AAk(Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/V4;Lcom/facebook/ads/redexgen/X/MX;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/TF;)V
    .locals 16

    .line 21320
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/j9;->A4F()V

    .line 21321
    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/7K;->A05:Lcom/facebook/ads/redexgen/X/6M;

    .line 21322
    move-object/from16 v1, p4

    iput-object v1, v2, Lcom/facebook/ads/redexgen/X/7K;->A01:Lcom/facebook/ads/redexgen/X/MX;

    .line 21323
    new-instance v8, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v8, v3}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 21324
    .local v10, "adCacheManager":Lcom/facebook/ads/redexgen/X/SF;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/facebook/ads/redexgen/X/7K;->A00:J

    .line 21325
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/16 v0, 0x3c

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/7K;->A03(III)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21326
    invoke-static {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/Mg;->A00(Lcom/facebook/ads/redexgen/X/dL;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/iB;

    move-result-object v14

    .line 21327
    .local v2, "nativeAdModel":Lcom/facebook/ads/redexgen/X/iB;
    iput-object v14, v2, Lcom/facebook/ads/redexgen/X/7K;->A04:Lcom/facebook/ads/redexgen/X/iB;

    .line 21328
    move-object/from16 v7, p2

    invoke-static {v3, v14, v7}, Lcom/facebook/ads/redexgen/X/ML;->A06(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/MK;Lcom/facebook/ads/redexgen/X/US;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21329
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A4u()V

    .line 21330
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V1;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/MX;->ADj(Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/redexgen/X/V1;)V

    .line 21331
    return-void

    .line 21332
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/iR;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/iR;-><init>(Lcom/facebook/ads/redexgen/X/7K;Lcom/facebook/ads/redexgen/X/6M;)V

    .line 21333
    .local v0, "adViewListener":Lcom/facebook/ads/redexgen/X/Y8;
    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/7K;->A06:Lcom/facebook/ads/redexgen/X/Y8;

    .line 21334
    new-instance v5, Lcom/facebook/ads/redexgen/X/Y9;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21335
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/TF;->A04()I

    move-result v10

    .line 21336
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/TF;->A07()I

    move-result v11

    .line 21337
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/TF;->A08()I

    move-result v12

    .line 21338
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/ads/redexgen/X/TF;->A09()I

    move-result v13

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/7K;->A08:Ljava/lang/String;

    move-object v6, v3

    invoke-direct/range {v5 .. v15}, Lcom/facebook/ads/redexgen/X/Y9;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/SF;Ljava/lang/ref/WeakReference;IIIILcom/facebook/ads/redexgen/X/iB;Ljava/lang/String;)V

    .line 21339
    .local v7, "adView":Lcom/facebook/ads/redexgen/X/Y9;
    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/7K;->A07:Lcom/facebook/ads/redexgen/X/Y9;

    .line 21340
    new-instance v0, Lcom/facebook/ads/redexgen/X/iQ;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/iQ;-><init>(Lcom/facebook/ads/redexgen/X/7K;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/MX;)V

    .line 21341
    .local v13, "impressionHelper":Lcom/facebook/ads/redexgen/X/MS;
    new-instance v9, Lcom/facebook/ads/redexgen/X/iD;

    .line 21342
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Y9;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v12

    move-object v10, v3

    move-object v11, v0

    move-object v13, v7

    move-object v14, v14

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/iD;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/MS;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/iB;)V

    iput-object v9, v2, Lcom/facebook/ads/redexgen/X/7K;->A03:Lcom/facebook/ads/redexgen/X/iD;

    .line 21343
    .end local v0    # "adViewListener":Lcom/facebook/ads/redexgen/X/Y8;
    .local v8, "adViewListener":Lcom/facebook/ads/redexgen/X/Y8;
    move-object/from16 v9, p0

    move-object v10, v3

    .end local v2    # "nativeAdModel":Lcom/facebook/ads/redexgen/X/iB;
    .local v9, "nativeAdModel":Lcom/facebook/ads/redexgen/X/iB;
    move-object v4, v1

    move-object v11, v14

    move-object v12, v8

    move-object v13, v1

    move-object v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/7K;->A05(Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/iB;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/MX;Lcom/facebook/ads/redexgen/X/Y9;)V

    .line 21344
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/7K;->A08:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/MY;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/facebook/ads/redexgen/X/MY;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/redexgen/X/MX;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/7K;->A02:Lcom/facebook/ads/redexgen/X/MY;

    .line 21345
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/7K;->A02:Lcom/facebook/ads/redexgen/X/MY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MY;->A02()V

    .line 21346
    return-void
.end method

.method public final AJa()Z
    .locals 1

    .line 21347
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 21348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A05:Lcom/facebook/ads/redexgen/X/6M;

    if-eqz v0, :cond_0

    .line 21349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A05:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7K;->A0A:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/7K;->A0A:[Ljava/lang/String;

    const-string v1, "tMGyCfr9ucO4oWdztKDfdPlDfRrhkMp8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A07:Lcom/facebook/ads/redexgen/X/Y9;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/j9;->A4D(Z)V

    .line 21350
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A07:Lcom/facebook/ads/redexgen/X/Y9;

    if-eqz v0, :cond_1

    .line 21351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A07:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y9;->A0I()V

    .line 21352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A07:Lcom/facebook/ads/redexgen/X/Y9;

    .line 21353
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A06:Lcom/facebook/ads/redexgen/X/Y8;

    .line 21354
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7K;->A02:Lcom/facebook/ads/redexgen/X/MY;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7K;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/7K;->A0A:[Ljava/lang/String;

    const-string v1, "5ZoCIskAsYlLTmabnaeKVzywNB4LbbVC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 21355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A02:Lcom/facebook/ads/redexgen/X/MY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MY;->A03()V

    .line 21356
    :cond_2
    return-void

    .line 21357
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
