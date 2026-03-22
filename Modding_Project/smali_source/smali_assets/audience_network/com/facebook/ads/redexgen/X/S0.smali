.class public final Lcom/facebook/ads/redexgen/X/S0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/S1;

.field public static A01:Z

.field public static A02:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1581
    invoke-static {}, Lcom/facebook/ads/redexgen/X/S0;->A02()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/S0;->A01:Z

    .line 1582
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/S1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/S0;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x12

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
    .locals 5

    .line 63391
    const-class v1, Lcom/facebook/ads/redexgen/X/S0;

    monitor-enter v1

    .line 63392
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/S1;

    if-nez v0, :cond_0

    .line 63393
    monitor-exit v1

    return-void

    .line 63394
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63395
    sget-object v0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S1;->AHr()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 63396
    .local v0, "e":Lcom/facebook/ads/redexgen/X/Sw;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A05(I)V

    .line 63397
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SP;->A00()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    .line 63398
    .local v1, "sdkContext":Lcom/facebook/ads/redexgen/X/cu;
    if-eqz v0, :cond_1

    .line 63399
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S0;->A00(III)Ljava/lang/String;

    move-result-object v1

    .line 63400
    const/16 v0, 0xd49

    invoke-interface {v3, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 63401
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/S1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/S1;->reset()V

    .line 63402
    return-void

    .line 63403
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/Sw;
    .end local v1    # "sdkContext":Lcom/facebook/ads/redexgen/X/cu;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/S0;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x5bt
        -0x58t
        -0x4ft
        -0x5at
        -0x55t
        -0x50t
        -0x5ct
        -0x4bt
        -0x52t
    .end array-data
.end method

.method public static A03(J)V
    .locals 3

    .line 63404
    const-wide/16 v1, 0x0

    cmp-long v0, p0, v1

    if-lez v0, :cond_0

    .line 63405
    new-instance v0, Lcom/facebook/ads/redexgen/X/dw;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/dw;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/S1;

    .line 63406
    new-instance v0, Lcom/facebook/ads/redexgen/X/S2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/S2;-><init>(J)V

    .line 63407
    :cond_0
    return-void
.end method
