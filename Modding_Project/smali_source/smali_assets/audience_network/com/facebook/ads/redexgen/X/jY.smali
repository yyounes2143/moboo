.class public final Lcom/facebook/ads/redexgen/X/jY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KW;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/jX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PmtReader"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Kf;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Landroid/util/SparseIntArray;

.field public final A03:Lcom/facebook/ads/redexgen/X/4I;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/jX;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3016
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ueDbV1wfakHSWIQF7BEzGoLlZXsjLXAz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DUk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "o0l"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JXBQRCbHgV51hCMTPiBs95yrGLtJ9vRB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UUCtZFjpq77XJSMaCIYouODFHgisrwF4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OUp13aafPcRzH6W84Z44X0AbLYnCU3jN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RRsP4MaHzu2rfmisltpPpgYoVzHnYDNm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WbSPhlBTq3Mh8neaDCFEdYJRI0JZWypJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jY;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/jX;I)V
    .locals 2

    .line 89387
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89388
    const/4 v0, 0x5

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    .line 89389
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jY;->A01:Landroid/util/SparseArray;

    .line 89390
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jY;->A02:Landroid/util/SparseIntArray;

    .line 89391
    iput p2, p0, Lcom/facebook/ads/redexgen/X/jY;->A00:I

    .line 89392
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4J;I)Lcom/facebook/ads/redexgen/X/Kb;
    .locals 12

    .line 89393
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v6

    .line 89394
    .local v1, "descriptorsStartPosition":I
    add-int v7, v6, p2

    .line 89395
    .local v2, "descriptorsEndPosition":I
    const/4 v5, -0x1

    .line 89396
    .local v3, "streamType":I
    const/4 v9, 0x0

    .line 89397
    .local v4, "language":Ljava/lang/String;
    const/4 v3, 0x0

    .line 89398
    .local v5, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    if-ge v0, v7, :cond_0

    .line 89399
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v8

    .line 89400
    .local v6, "descriptorTag":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 89401
    .local v7, "descriptorLength":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v4

    add-int/2addr v4, v0

    .line 89402
    .local v8, "positionOfNextDescriptor":I
    if-le v4, v7, :cond_1

    .line 89403
    :cond_0
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 89404
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Kb;

    invoke-direct {v0, v5, v9, v3, v1}, Lcom/facebook/ads/redexgen/X/Kb;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 89405
    return-object v0

    .line 89406
    :cond_1
    const/4 v0, 0x5

    if-ne v8, v0, :cond_6

    .line 89407
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0Q()J

    move-result-wide v10

    .line 89408
    .local v9, "formatIdentifier":J
    const-wide/32 v1, 0x41432d33

    cmp-long v0, v10, v1

    if-nez v0, :cond_3

    .line 89409
    const/16 v5, 0x81

    .line 89410
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89411
    .end local v6    # "descriptorTag":I
    .end local v7    # "descriptorLength":I
    .end local v8    # "positionOfNextDescriptor":I
    goto :goto_0

    .line 89412
    :cond_3
    const-wide/32 v1, 0x45414333

    cmp-long v0, v10, v1

    if-nez v0, :cond_4

    .line 89413
    const/16 v5, 0x87

    goto :goto_1

    .line 89414
    :cond_4
    const-wide/32 v1, 0x41432d34

    cmp-long v0, v10, v1

    if-nez v0, :cond_5

    .line 89415
    const/16 v5, 0xac

    goto :goto_1

    .line 89416
    :cond_5
    const-wide/32 v1, 0x48455643

    cmp-long v0, v10, v1

    if-nez v0, :cond_2

    .line 89417
    const/16 v5, 0x24

    goto :goto_1

    .line 89418
    :cond_6
    const/16 v0, 0x6a

    if-ne v8, v0, :cond_7

    .line 89419
    const/16 v5, 0x81

    goto :goto_1

    .line 89420
    :cond_7
    const/16 v0, 0x7a

    if-ne v8, v0, :cond_8

    .line 89421
    const/16 v5, 0x87

    goto :goto_1

    .line 89422
    :cond_8
    const/16 v10, 0x7f

    sget-object v2, Lcom/facebook/ads/redexgen/X/jY;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/jY;->A05:[Ljava/lang/String;

    const-string v1, "GzIOqzBb8TAh93bRV2CN08O62ZCaAqRX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "fp9XAk3ifz38aVsym619EhTf04al4HEa"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v8, v10, :cond_a

    .line 89423
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 89424
    .local v9, "descriptorTagExt":I
    const/16 v0, 0x15

    if-ne v1, v0, :cond_2

    .line 89425
    const/16 v5, 0xac

    goto :goto_1

    .line 89426
    :cond_a
    const/16 v0, 0x7b

    if-ne v8, v0, :cond_b

    .line 89427
    const/16 v5, 0x8a

    goto :goto_1

    .line 89428
    :cond_b
    const/16 v11, 0xa

    const/4 v10, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/jY;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/jY;->A05:[Ljava/lang/String;

    const-string v1, "wqYpRyaK4cDMDpt9hZQKwXCqV01Ydwf6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "1qKbohas3rI7JmruTyrxsTuTEMq9fdbm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v8, v11, :cond_e

    .line 89429
    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/4J;->A0W(I)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/jY;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/jY;->A05:[Ljava/lang/String;

    const-string v1, "aW10g0SpfKclE3j5mqsPv8AasgcB3Ji3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 89430
    :cond_e
    const/16 v0, 0x59

    if-ne v8, v0, :cond_f

    .line 89431
    const/16 v5, 0x59

    .line 89432
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89433
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 89434
    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/4J;->A0W(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 89435
    .local v9, "dvbLanguage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v8

    .line 89436
    .local v11, "dvbSubtitlingType":I
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 89437
    .local p1, "initializationData":[B
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0k([BII)V

    .line 89438
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ka;

    invoke-direct {v0, v11, v8, v1}, Lcom/facebook/ads/redexgen/X/Ka;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89439
    .end local v9    # "dvbLanguage":Ljava/lang/String;
    .end local v11    # "dvbSubtitlingType":I
    .end local p1    # "initializationData":[B
    goto :goto_2

    .line 89440
    :cond_f
    const/16 v0, 0x6f

    if-ne v8, v0, :cond_2

    .line 89441
    const/16 v5, 0x101

    goto/16 :goto_1
.end method


# virtual methods
.method public final A52(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 12

    .line 89442
    move-object v3, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 89443
    .local v2, "tableId":I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 89444
    return-void

    .line 89445
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A03(Lcom/facebook/ads/redexgen/X/jX;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A03(Lcom/facebook/ads/redexgen/X/jX;)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A01(Lcom/facebook/ads/redexgen/X/jX;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 89446
    .end local v4
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A0E(Lcom/facebook/ads/redexgen/X/jX;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/4R;

    .line 89447
    .restart local v4
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 89448
    .local v7, "secondHeaderByte":I
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    .line 89449
    return-void

    .line 89450
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    .line 89451
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A0E(Lcom/facebook/ads/redexgen/X/jX;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4R;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4R;->A02()J

    move-result-wide v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/4R;

    invoke-direct {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/4R;-><init>(J)V

    .line 89452
    .local v4, "timestampAdjuster":Lcom/facebook/ads/redexgen/X/4R;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A0E(Lcom/facebook/ads/redexgen/X/jX;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89453
    :cond_3
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89454
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v5

    .line 89455
    .local v8, "programNumber":I
    const/4 v10, 0x3

    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89456
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {p1, v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0h(Lcom/facebook/ads/redexgen/X/4I;I)V

    .line 89457
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 89458
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/jX;->A05(Lcom/facebook/ads/redexgen/X/jX;I)I

    .line 89459
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {p1, v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0h(Lcom/facebook/ads/redexgen/X/4I;I)V

    .line 89460
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 89461
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    .line 89462
    .local v10, "programInfoLength":I
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89463
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A03(Lcom/facebook/ads/redexgen/X/jX;)I

    move-result v0

    const/16 v8, 0x2000

    const/16 v9, 0x15

    if-ne v0, v4, :cond_4

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A0B(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/Kf;

    move-result-object v0

    if-nez v0, :cond_4

    .line 89464
    sget-object v1, Lcom/facebook/ads/redexgen/X/4a;->A07:[B

    const/4 v0, 0x0

    new-instance v4, Lcom/facebook/ads/redexgen/X/Kb;

    invoke-direct {v4, v9, v0, v0, v1}, Lcom/facebook/ads/redexgen/X/Kb;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 89465
    .local v3, "id3EsInfo":Lcom/facebook/ads/redexgen/X/Kb;
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A0A(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/Kc;

    move-result-object v0

    invoke-interface {v0, v9, v4}, Lcom/facebook/ads/redexgen/X/Kc;->A5N(ILcom/facebook/ads/redexgen/X/Kb;)Lcom/facebook/ads/redexgen/X/Kf;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/jX;->A0C(Lcom/facebook/ads/redexgen/X/jX;Lcom/facebook/ads/redexgen/X/Kf;)Lcom/facebook/ads/redexgen/X/Kf;

    .line 89466
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A0B(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/Kf;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 89467
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A0B(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/Kf;

    move-result-object v4

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    .line 89468
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A09(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/GY;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v0, v5, v9, v8}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(III)V

    .line 89469
    invoke-interface {v4, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Kf;->AA2(Lcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V

    .line 89470
    .end local v3    # "id3EsInfo":Lcom/facebook/ads/redexgen/X/Kb;
    :cond_4
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 89471
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 89472
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v11

    .line 89473
    .local v3, "remainingEntriesLength":I
    :goto_1
    if-lez v11, :cond_d

    .line 89474
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v4, 0x5

    invoke-virtual {p1, v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0h(Lcom/facebook/ads/redexgen/X/4I;I)V

    .line 89475
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v8

    .line 89476
    .local v6, "streamType":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 89477
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v7

    .line 89478
    .local p2, "elementaryPid":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 89479
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/jY;->A03:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 89480
    .local v9, "esInfoLength":I
    invoke-direct {v3, p1, v1}, Lcom/facebook/ads/redexgen/X/jY;->A00(Lcom/facebook/ads/redexgen/X/4J;I)Lcom/facebook/ads/redexgen/X/Kb;

    move-result-object v2

    .line 89481
    .local v11, "esInfo":Lcom/facebook/ads/redexgen/X/Kb;
    const/4 v0, 0x6

    if-eq v8, v0, :cond_5

    if-ne v8, v4, :cond_6

    .line 89482
    :cond_5
    iget v8, v2, Lcom/facebook/ads/redexgen/X/Kb;->A00:I

    .line 89483
    :cond_6
    add-int/lit8 v0, v1, 0x5

    sub-int/2addr v11, v0

    .line 89484
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A03(Lcom/facebook/ads/redexgen/X/jX;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_b

    move v4, v8

    .line 89485
    .local p0, "trackId":I
    :goto_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A07(Lcom/facebook/ads/redexgen/X/jX;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 89486
    :cond_7
    :goto_3
    const/16 v9, 0x15

    const/4 v10, 0x3

    const/4 v2, 0x4

    const/16 v7, 0xd

    goto :goto_1

    .line 89487
    :cond_8
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A03(Lcom/facebook/ads/redexgen/X/jX;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_a

    if-ne v8, v9, :cond_a

    .line 89488
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A0B(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/Kf;

    move-result-object v8

    .line 89489
    .local p1, "reader":Lcom/facebook/ads/redexgen/X/Kf;
    :goto_4
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A03(Lcom/facebook/ads/redexgen/X/jX;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_9

    iget-object v10, v3, Lcom/facebook/ads/redexgen/X/jY;->A02:Landroid/util/SparseIntArray;

    .line 89490
    const/16 v9, 0x2000

    sget-object v2, Lcom/facebook/ads/redexgen/X/jY;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/jY;->A05:[Ljava/lang/String;

    const-string v1, "JJxGvbQzsWrYD5XHKTSp80Ux1McJryio"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ge v7, v0, :cond_7

    .line 89491
    :cond_9
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 89492
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 89493
    :cond_a
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A0A(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/Kc;

    move-result-object v0

    invoke-interface {v0, v8, v2}, Lcom/facebook/ads/redexgen/X/Kc;->A5N(ILcom/facebook/ads/redexgen/X/Kb;)Lcom/facebook/ads/redexgen/X/Kf;

    move-result-object v8

    goto :goto_4

    .line 89494
    :cond_b
    move v4, v7

    goto :goto_2

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 89495
    :cond_d
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 89496
    .local v5, "trackIdCount":I
    const/4 v8, 0x0

    .local v6, "i":I
    :goto_5
    if-ge v8, v9, :cond_10

    .line 89497
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 89498
    .local v9, "trackId":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 89499
    .local v11, "trackPid":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A07(Lcom/facebook/ads/redexgen/X/jX;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 89500
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A08(Lcom/facebook/ads/redexgen/X/jX;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 89501
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Kf;

    .line 89502
    .local p0, "reader":Lcom/facebook/ads/redexgen/X/Kf;
    if-eqz v4, :cond_f

    .line 89503
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A0B(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/Kf;

    move-result-object v0

    if-eq v4, v0, :cond_e

    .line 89504
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    .line 89505
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A09(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/GY;

    move-result-object v2

    const/16 v1, 0x2000

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {v0, v5, v10, v1}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(III)V

    .line 89506
    invoke-interface {v4, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/Kf;->AA2(Lcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V

    .line 89507
    :cond_e
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A06(Lcom/facebook/ads/redexgen/X/jX;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89508
    .end local v9    # "trackId":I
    .end local v11    # "trackPid":I
    .end local p0    # "reader":Lcom/facebook/ads/redexgen/X/Kf;
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 89509
    .end local v6    # "i":I
    :cond_10
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A03(Lcom/facebook/ads/redexgen/X/jX;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_11

    .line 89510
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A0K(Lcom/facebook/ads/redexgen/X/jX;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 89511
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A09(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/GY;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/jY;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_13

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 89512
    :cond_11
    const/4 v0, 0x0

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/jX;->A06(Lcom/facebook/ads/redexgen/X/jX;)Landroid/util/SparseArray;

    move-result-object v2

    iget v1, v3, Lcom/facebook/ads/redexgen/X/jY;->A00:I

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 89513
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/jX;->A03(Lcom/facebook/ads/redexgen/X/jX;)I

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_12

    :goto_6
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/jX;->A04(Lcom/facebook/ads/redexgen/X/jX;I)I

    .line 89514
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A01(Lcom/facebook/ads/redexgen/X/jX;)I

    move-result v0

    if-nez v0, :cond_14

    .line 89515
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A09(Lcom/facebook/ads/redexgen/X/jX;)Lcom/facebook/ads/redexgen/X/GY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 89516
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/jX;->A0L(Lcom/facebook/ads/redexgen/X/jX;Z)Z

    goto :goto_7

    .line 89517
    :cond_12
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A01(Lcom/facebook/ads/redexgen/X/jX;)I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_6

    .line 89518
    :cond_13
    sget-object v2, Lcom/facebook/ads/redexgen/X/jY;->A05:[Ljava/lang/String;

    const-string v1, "hBvWu7G0FYrLQDeafFD7KKlceKy2jgRX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "VoSHbxg0JUdlXnrGoiizfFeUaWFRK7d9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 89519
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/jX;->A04(Lcom/facebook/ads/redexgen/X/jX;I)I

    .line 89520
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/jY;->A04:Lcom/facebook/ads/redexgen/X/jX;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/jX;->A0L(Lcom/facebook/ads/redexgen/X/jX;Z)Z

    .line 89521
    :cond_14
    :goto_7
    return-void
.end method

.method public final AA2(Lcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 0

    .line 89522
    return-void
.end method
