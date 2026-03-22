.class public final Lcom/facebook/ads/redexgen/X/gj;
.super Lcom/facebook/ads/redexgen/X/Nq;
.source ""

# interfaces
.implements Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/gw;

.field public final A01:Lcom/facebook/ads/redexgen/X/gm;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gj;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ns;Lcom/facebook/ads/redexgen/X/gw;Lcom/facebook/ads/redexgen/X/gm;)V
    .locals 0

    .line 83553
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Nq;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ns;)V

    .line 83554
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/gj;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 83555
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/gj;->A01:Lcom/facebook/ads/redexgen/X/gm;

    .line 83556
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/gj;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4

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

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gj;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x39t
        -0x34t
        -0x2et
        -0x23t
        -0x3dt
        -0x30t
        -0x30t
        -0x33t
        -0x30t
        -0x23t
        -0x3ft
        -0x33t
        -0x3et
        -0x3dt
        -0x23t
        -0x37t
        -0x3dt
        -0x29t
        -0x49t
        -0x44t
        -0x3et
        -0x33t
        -0x40t
        -0x3ct
        -0x33t
        -0x3ct
        -0x49t
        -0x4et
        -0x4dt
        -0x43t
        -0x33t
        -0x4et
        -0x3dt
        -0x40t
        -0x51t
        -0x3et
        -0x49t
        -0x43t
        -0x44t
        -0x33t
        -0x47t
        -0x4dt
        -0x39t
        0x72t
        0x75t
        0x74t
        0x6dt
        -0x7bt
        0x6ft
        0x74t
        0x7ct
        0x67t
        0x72t
        0x6ft
        0x6at
        0x67t
        0x7at
        0x6ft
        0x75t
        0x74t
        -0x7bt
        0x7at
        0x6ft
        0x73t
        0x6bt
        -0x7bt
        0x71t
        0x6bt
        0x7ft
        -0x6bt
        -0x6at
        -0x6ct
        -0x5ft
        -0x79t
        -0x6ct
        -0x6ct
        -0x6ft
        -0x6ct
        -0x5ft
        -0x71t
        -0x79t
        -0x6bt
        -0x6bt
        -0x7dt
        -0x77t
        -0x79t
        -0x5ft
        -0x73t
        -0x79t
        -0x65t
    .end array-data
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 83557
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0x838

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83558
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 6

    .line 83559
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 83560
    .local v0, "extraData":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gj;->A00:Lcom/facebook/ads/redexgen/X/gw;

    .line 83561
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gw;->A0F()J

    move-result-wide v2

    .line 83562
    const/16 v5, 0x2b

    const/16 v1, 0x1a

    const/16 v0, 0x22

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/gj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 83563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gj;->A01:Lcom/facebook/ads/redexgen/X/gm;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/gm;->A00:I

    const/16 v2, 0x12

    const/16 v1, 0x19

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83564
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    const/16 v1, 0x834

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    invoke-interface {v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83565
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 4

    .line 83566
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 83567
    .local v0, "extraData":Landroid/os/Bundle;
    const/16 v2, 0x45

    const/16 v1, 0x15

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gj;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83568
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gj;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83569
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    const/16 v1, 0x837

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    invoke-interface {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83570
    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 4

    .line 83571
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0x839

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83572
    return-void
.end method

.method public final onRewardServerFailed()V
    .locals 4

    .line 83573
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0xbba

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83574
    return-void
.end method

.method public final onRewardServerSuccess()V
    .locals 4

    .line 83575
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0xbb9

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83576
    return-void
.end method

.method public final onRewardedVideoActivityDestroyed()V
    .locals 4

    .line 83577
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0x83a

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83578
    return-void
.end method

.method public final onRewardedVideoClosed()V
    .locals 4

    .line 83579
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0x83e

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83580
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 4

    .line 83581
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nq;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nq;->A01:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0xbb8

    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ns;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 83582
    return-void
.end method
