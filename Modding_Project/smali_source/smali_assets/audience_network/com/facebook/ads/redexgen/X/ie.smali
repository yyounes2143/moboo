.class public final Lcom/facebook/ads/redexgen/X/ie;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/MW;->A0L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MW;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ie;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MW;Ljava/lang/String;)V
    .locals 0

    .line 86530
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ie;->A00:Lcom/facebook/ads/redexgen/X/MW;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ie;->A01:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ie;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

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

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ie;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x24t
        0x30t
        0x27t
        0x33t
        0x37t
        0x27t
        0x2ct
        0x21t
        0x3bt
        0x1dt
        0x21t
        0x23t
        0x32t
        0x32t
        0x2bt
        0x2ct
        0x25t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 86531
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ie;->A00(III)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ie;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A06(Lcom/facebook/ads/redexgen/X/MW;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 86532
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ie;->A00:Lcom/facebook/ads/redexgen/X/MW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ie;->A01:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0I(Lcom/facebook/ads/redexgen/X/MW;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ie;->A00:Lcom/facebook/ads/redexgen/X/MW;

    .line 86534
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A00(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/MV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MV;->A05()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ie;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/N2;

    .line 86535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    long-to-int v0, v2

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/N2;->A04(I)V

    .line 86536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ie;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A00(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/MV;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ie;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MV;->A07(Ljava/lang/String;)V

    .line 86537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ie;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A00(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/MV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MV;->A06()V

    .line 86538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ie;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0C(Lcom/facebook/ads/redexgen/X/MW;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86539
    :catch_0
    move-exception v3

    .line 86540
    .local v1, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ie;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0M()V

    .line 86541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ie;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A02(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/SQ;

    move-result-object v0

    .line 86542
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Sv;->A1A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 86543
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    goto :goto_0

    .line 86544
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 86545
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ie;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A02(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/SQ;

    move-result-object v0

    .line 86546
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Sv;->A1B:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 86547
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 86548
    :cond_0
    :goto_0
    return-void
.end method
