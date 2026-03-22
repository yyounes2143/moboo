.class public final Lcom/facebook/ads/redexgen/X/gk;
.super Lcom/facebook/ads/redexgen/X/Nq;
.source ""

# interfaces
.implements Lcom/facebook/ads/InterstitialAdExtendedListener;


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/gz;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gk;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ns;Lcom/facebook/ads/redexgen/X/gz;)V
    .locals 0

    .line 83583
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Nq;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ns;)V

    .line 83584
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/gk;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 83585
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gk;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1b

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

    const/16 v0, 0x41

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gk;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x3et
        -0x39t
        -0x33t
        -0x28t
        -0x42t
        -0x35t
        -0x35t
        -0x38t
        -0x35t
        -0x28t
        -0x44t
        -0x38t
        -0x43t
        -0x42t
        -0x28t
        -0x3ct
        -0x42t
        -0x2et
        0x75t
        0x78t
        0x77t
        0x70t
        -0x78t
        0x72t
        0x77t
        0x7ft
        0x6at
        0x75t
        0x72t
        0x6dt
        0x6at
        0x7dt
        0x72t
        0x78t
        0x77t
        -0x78t
        0x7dt
        0x72t
        0x76t
        0x6et
        -0x78t
        0x74t
        0x6et
        -0x7et
        -0x42t
        -0x41t
        -0x43t
        -0x36t
        -0x50t
        -0x43t
        -0x43t
        -0x46t
        -0x43t
        -0x36t
        -0x48t
        -0x50t
        -0x42t
        -0x42t
        -0x54t
        -0x4et
        -0x50t
        -0x36t
        -0x4at
        -0x50t
        -0x3ct
    .end array-data
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 83586
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0x400

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83587
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 6

    .line 83588
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 83589
    .local v0, "extraData":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gk;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 83590
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gz;->A0D()J

    move-result-wide v2

    .line 83591
    const/16 v4, 0x12

    const/16 v1, 0x1a

    const/16 v0, 0xe

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/gk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 83592
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    const/16 v1, 0x3fc

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    invoke-interface {v2, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83593
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 4

    .line 83594
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 83595
    .local v0, "extraData":Landroid/os/Bundle;
    const/16 v2, 0x2c

    const/16 v1, 0x15

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gk;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83596
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gk;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83597
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    const/16 v1, 0x3ff

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    invoke-interface {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83598
    return-void
.end method

.method public final onInterstitialActivityDestroyed()V
    .locals 4

    .line 83599
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0x402

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83600
    return-void
.end method

.method public final onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 83601
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0x3fe

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83602
    return-void
.end method

.method public final onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 83603
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0x3fd

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83604
    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 83605
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0x401

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83606
    return-void
.end method

.method public final onRewardedAdCompleted()V
    .locals 4

    .line 83607
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0xbb8

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83608
    return-void
.end method

.method public final onRewardedAdServerFailed()V
    .locals 4

    .line 83609
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0xbba

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83610
    return-void
.end method

.method public final onRewardedAdServerSucceeded()V
    .locals 4

    .line 83611
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0xbb9

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83612
    return-void
.end method
