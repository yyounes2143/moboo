.class public final Lcom/facebook/ads/redexgen/X/7M;
.super Lcom/facebook/ads/redexgen/X/Kt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7L;->A0F(Lcom/facebook/ads/redexgen/X/TF;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/V4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7L;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/iG;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 430
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dvnbyrX9L5Wlup6c2JnWkpTYBAz3QIun"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ITj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KqeTcLSx6Zay5vtxcnHqZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bGeXa7nDz1byFpBCq22utpLnb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UYph9iPsD3jee8BOLuPQ6r57rjKJpmVb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DfaYbRSw6X21pxGApii0qweOJ64z1eNB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "52vckdype7aS5lLwU46sLHF0XTMQAze7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uuBWL9In1wjj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7M;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7M;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7L;Lcom/facebook/ads/redexgen/X/iG;)V
    .locals 0

    .line 21478
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7M;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7M;->A01:Lcom/facebook/ads/redexgen/X/iG;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kt;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7M;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x69

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

    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7M;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x43t
        0x74t
        0x74t
        0x69t
        0x74t
        0x26t
        0x63t
        0x7et
        0x63t
        0x65t
        0x73t
        0x72t
        0x6ft
        0x68t
        0x61t
        0x26t
        0x67t
        0x65t
        0x72t
        0x6ft
        0x69t
        0x68t
        0x77t
        0x75t
        0x78t
        0x78t
        0x71t
        0x66t
        0x40t
        0x6dt
        0x64t
        0x71t
        0x74t
        0x70t
        0x73t
        0x76t
        0x51t
        0x4at
        0x4dt
        0x55t
        0x51t
        0x41t
        0x6dt
        0x40t
    .end array-data
.end method


# virtual methods
.method public final ACO()V
    .locals 2

    .line 21479
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7M;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/7L;->A0I(Lcom/facebook/ads/redexgen/X/7L;Z)Z

    .line 21480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A0H(Lcom/facebook/ads/redexgen/X/7L;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A0D(Lcom/facebook/ads/redexgen/X/7L;)V

    .line 21482
    :cond_0
    return-void
.end method

.method public final ACj(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21483
    .local v8, "this":Lcom/facebook/ads/redexgen/X/7M;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    .local v10, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/j9;->A4H()V

    .line 21484
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 21485
    .local v0, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x16

    const/16 v1, 0xa

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->A00(III)Ljava/lang/String;

    move-result-object v0

    move-object v9, p2

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    .line 21487
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A09(Lcom/facebook/ads/redexgen/X/7L;)Ljava/lang/String;

    move-result-object v3

    .line 21488
    const/16 v2, 0x24

    const/16 v1, 0x8

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    .line 21490
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    .line 21491
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A04(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/US;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A01:Lcom/facebook/ads/redexgen/X/iG;

    .line 21492
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iG;->A7G()Ljava/lang/String;

    move-result-object v7

    .line 21493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/78;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move-object v10, v4

    .line 21494
    :goto_0
    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/MI;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/N3;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v1

    .line 21495
    .local v1, "adAction":Lcom/facebook/ads/redexgen/X/MH;
    sget-object v3, Lcom/facebook/ads/redexgen/X/ME;->A09:Lcom/facebook/ads/redexgen/X/ME;

    .line 21496
    .local v2, "actionOutcome":Lcom/facebook/ads/redexgen/X/ME;
    if-eqz v1, :cond_1

    goto :goto_1

    .line 21497
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7M;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7M;->A03:[Ljava/lang/String;

    const-string v1, "7FoTEC4l3Pv3ceMVIqf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/7L;->A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/78;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v10

    goto :goto_0

    .line 21498
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/j9;->A4E()V

    .line 21499
    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/MH;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v3

    .line 21500
    goto :goto_2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21501
    :catch_0
    move-exception v5

    .line 21502
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7L;->A07()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21503
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_2
    const/16 v2, 0x20

    const/4 v1, 0x4

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21504
    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MI;->A04(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    .line 21505
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A00(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/MX;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/ME;

    if-eq v3, v0, :cond_2

    .line 21506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A00(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/MX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MX;->ACb(Lcom/facebook/ads/redexgen/X/id;)V

    .line 21507
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ADW()V
    .locals 2

    .line 21508
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7M;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A01(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/iE;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/j9;->A4I(Z)V

    .line 21509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A01(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/iE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A01(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/iE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MR;->A03()V

    .line 21511
    :cond_0
    return-void

    .line 21512
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AET()V
    .locals 1

    .line 21513
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7M;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R()Lcom/facebook/ads/redexgen/X/j9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/j9;->A4K()V

    .line 21514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A01(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/iE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iE;->A09()V

    .line 21515
    return-void
.end method

.method public final AFw()V
    .locals 0

    .line 21516
    .local p0, "this":Lcom/facebook/ads/redexgen/X/7M;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$4;"
    return-void
.end method
