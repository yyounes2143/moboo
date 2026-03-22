.class public final Lcom/facebook/ads/redexgen/X/9b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/nl;


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/net/Uri;

.field public A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/nl;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 562
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "DnWOFrWNtrruVDlZPcn7mSzqB1u3fyA1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4khCAmOyD7V9Z9fo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Y1he90jrlOSSnjRb2RN33xbae"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sN3uyyiAo7qwm0FA39xGDer"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "C"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MIilbOvYRfmfRo2RH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "W4KUp4d37G5W3qTHHFYFOJnsXzg3Y9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7BjcD7lz4UoePoP5n6bqbpOg1qjeNk3c"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9b;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nl;)V
    .locals 1

    .line 28332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28333
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nl;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A03:Lcom/facebook/ads/redexgen/X/nl;

    .line 28334
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A01:Landroid/net/Uri;

    .line 28335
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A02:Ljava/util/Map;

    .line 28336
    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 28337
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A00:J

    return-wide v0
.end method

.method public final A01()Landroid/net/Uri;
    .locals 1

    .line 28338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A01:Landroid/net/Uri;

    return-object v0
.end method

.method public final A02()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 28339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A02:Ljava/util/Map;

    return-object v0
.end method

.method public final A3v(Lcom/facebook/ads/redexgen/X/5H;)V
    .locals 1

    .line 28340
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A03:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/nl;->A3v(Lcom/facebook/ads/redexgen/X/5H;)V

    .line 28342
    return-void
.end method

.method public final A8l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 28343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A03:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->A8l()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A9H()Landroid/net/Uri;
    .locals 1

    .line 28344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A03:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->A9H()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final AFy(Lcom/facebook/ads/redexgen/X/56;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28345
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/56;->A06:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A01:Landroid/net/Uri;

    .line 28346
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A02:Ljava/util/Map;

    .line 28347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A03:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/nl;->AFy(Lcom/facebook/ads/redexgen/X/56;)J

    move-result-wide v1

    .line 28348
    .local v0, "availableBytes":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9b;->A9H()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A01:Landroid/net/Uri;

    .line 28349
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9b;->A8l()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A02:Ljava/util/Map;

    .line 28350
    return-wide v1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A03:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nl;->close()V

    .line 28352
    return-void
.end method

.method public final read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9b;->A03:Lcom/facebook/ads/redexgen/X/nl;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/20;->read([BII)I

    move-result v7

    .line 28354
    .local v0, "bytesRead":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 28355
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/9b;->A00:J

    int-to-long v2, v7

    sget-object v6, Lcom/facebook/ads/redexgen/X/9b;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v6, v0

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v6, Lcom/facebook/ads/redexgen/X/9b;->A04:[Ljava/lang/String;

    const-string v1, "l8Xa62wp4MYShhMptlDz52jvD"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const-string v1, "PdriuKYg1yn0hjm9"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/9b;->A00:J

    .line 28356
    :cond_0
    return v7

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
