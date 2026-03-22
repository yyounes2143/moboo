.class public final Lcom/facebook/ads/redexgen/X/Wh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Wf;,
        Lcom/facebook/ads/redexgen/X/Wg;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Landroid/os/Handler;

.field public final A02:Lcom/facebook/ads/redexgen/X/hy;

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;

.field public final A04:Lcom/facebook/ads/redexgen/X/Wf;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2227
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hdh4k6eZclrlxxYg19ck"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OIQuDIQFpzBifrZrtJIvg4BasUaQd63c"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6y0NffGMqcG8EugdtirNjkqg6svCH2Zl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "13Ua2r6CYJwc6p6BI5coDxRAaPqMz7yS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7WkbYpbXunBRly3lB1oHckvOip2eqLp6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2PYz6J8qU0vRqLO17bgOak7iCaiihwk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gvpJ77qQnx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SLFhDDNvl2CxgKHJ1vqMDyCxDe74woQD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wh;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Wf;)V
    .locals 2

    .line 71396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A00:Z

    .line 71398
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wh;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 71399
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Wh;->A04:Lcom/facebook/ads/redexgen/X/Wf;

    .line 71400
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Wh;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 71401
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A01:Landroid/os/Handler;

    .line 71402
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Wf;)Lcom/facebook/ads/redexgen/X/Wh;
    .locals 1

    .line 71403
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dL;->A0I()Ljava/lang/Object;

    move-result-object v0

    .line 71404
    .local v0, "creativeAsCtaLoggingHelper":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 71405
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wh;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wh;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Wf;)V

    .line 71406
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/dL;->A0P(Ljava/lang/Object;)V

    .line 71407
    :cond_0
    check-cast v0, Lcom/facebook/ads/redexgen/X/Wh;

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/dL;)Z
    .locals 1

    .line 71408
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A1b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71409
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WN;->A0I(Lcom/facebook/ads/redexgen/X/dL;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 71410
    :goto_0
    return v0

    .line 71411
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/Wg;
    .locals 6

    .line 71412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1h(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 71413
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mo;->A1W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wh;->A01(Lcom/facebook/ads/redexgen/X/dL;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71414
    .local v0, "shouldCreativeBeClickable":Z
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wg;

    invoke-direct {v0, v4, v4}, Lcom/facebook/ads/redexgen/X/Wg;-><init>(ZZ)V

    return-object v0

    .line 71415
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 71416
    .end local v0    # "shouldCreativeBeClickable":Z
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mo;->A1W()Z

    move-result v3

    .line 71417
    .restart local v0    # "shouldCreativeBeClickable":Z
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 71418
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wh;->A01(Lcom/facebook/ads/redexgen/X/dL;)Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wh;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wh;->A05:[Ljava/lang/String;

    const-string v1, "D5RQoHah0ZffyX7n6MMHscTeZuBHZQ8g"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "oKN8Sif1fTCm3hFJqGEcKAR8lt3N8fjA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v5, :cond_2

    :goto_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wg;

    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Wg;-><init>(ZZ)V

    .line 71419
    return-object v0

    .line 71420
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A03()V
    .locals 2

    .line 71421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A00:Z

    .line 71422
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wh;->A01:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 71423
    return-void
.end method
