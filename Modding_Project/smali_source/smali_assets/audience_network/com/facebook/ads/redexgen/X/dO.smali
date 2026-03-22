.class public final Lcom/facebook/ads/redexgen/X/dO;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A09:[B


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/E1;

.field public final A03:Lcom/facebook/ads/redexgen/X/DX;

.field public final A04:Lcom/facebook/ads/redexgen/X/DU;

.field public final A05:Lcom/facebook/ads/redexgen/X/h8;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/dO;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E1;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/E1;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79325
    .local p3, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79326
    new-instance v0, Lcom/facebook/ads/redexgen/X/3o;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3o;-><init>(Lcom/facebook/ads/redexgen/X/dO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A04:Lcom/facebook/ads/redexgen/X/DU;

    .line 79327
    new-instance v0, Lcom/facebook/ads/redexgen/X/3n;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3n;-><init>(Lcom/facebook/ads/redexgen/X/dO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A03:Lcom/facebook/ads/redexgen/X/DX;

    .line 79328
    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/dO;->A01:I

    .line 79329
    iput v4, p0, Lcom/facebook/ads/redexgen/X/dO;->A00:I

    .line 79330
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/dO;->A06:Ljava/lang/String;

    .line 79331
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dO;->A02:Lcom/facebook/ads/redexgen/X/E1;

    .line 79332
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/dO;->A07:Ljava/util/Map;

    .line 79333
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/dO;->A08:Z

    .line 79334
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dO;->A06:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/h8;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/h8;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A05:Lcom/facebook/ads/redexgen/X/h8;

    .line 79335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A04:Lcom/facebook/ads/redexgen/X/DU;

    aput-object v0, v2, v4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A03:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 79336
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/dO;)I
    .locals 2

    .line 79337
    iget v1, p0, Lcom/facebook/ads/redexgen/X/dO;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A01:I

    return v1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/dO;)Lcom/facebook/ads/redexgen/X/h8;
    .locals 0

    .line 79338
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dO;->A05:Lcom/facebook/ads/redexgen/X/h8;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/dO;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/dO;)Ljava/lang/String;
    .locals 0

    .line 79339
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dO;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/dO;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x74t
        -0x63t
        -0x74t
        -0x6bt
        -0x65t
        -0x7at
        -0x70t
        -0x6bt
        -0x75t
        -0x74t
        -0x61t
        0x3t
        0xft
        -0x2t
        0xat
        0x2t
        -0x4t
        0x0t
        0xct
        0x12t
        0xbt
        0x11t
        -0x5at
        -0x4et
        -0x5ft
        -0x53t
        -0x5bt
        -0x4dt
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/dO;)Z
    .locals 0

    .line 79340
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/dO;->A08:Z

    return p0
.end method


# virtual methods
.method public final A06()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A05:Lcom/facebook/ads/redexgen/X/h8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/h8;->A03()Ljava/util/List;

    move-result-object v0

    .line 79342
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/video/framebasedlogging/VideoFrameInfo;>;"
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h8;->A01(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 79343
    .local v1, "encodedFrameData":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 79344
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A07:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 79345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A07:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 79346
    :cond_0
    if-nez v3, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dO;->A02(III)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/16 v2, 0x16

    const/4 v1, 0x6

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79347
    iget v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A01:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb

    const/16 v1, 0xb

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79348
    iget v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79349
    return-object v4
.end method

.method public final A07()V
    .locals 4

    .line 79350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A02:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A04:Lcom/facebook/ads/redexgen/X/DU;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dO;->A03:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A04([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 79351
    return-void
.end method
