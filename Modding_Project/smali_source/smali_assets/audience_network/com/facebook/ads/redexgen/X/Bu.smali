.class public final Lcom/facebook/ads/redexgen/X/Bu;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NetworkCallback"
.end annotation


# instance fields
.field public A00:Z

.field public A01:Z

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Bv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bv;)V
    .locals 0

    .line 31527
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bu;->A02:Lcom/facebook/ads/redexgen/X/Bv;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Bv;Lcom/facebook/ads/redexgen/X/Bp;)V
    .locals 0

    .line 31528
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Bu;-><init>(Lcom/facebook/ads/redexgen/X/Bv;)V

    return-void
.end method

.method private A00()V
    .locals 2

    .line 31529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bu;->A02:Lcom/facebook/ads/redexgen/X/Bv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bv;->A00(Lcom/facebook/ads/redexgen/X/Bv;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bs;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Bs;-><init>(Lcom/facebook/ads/redexgen/X/Bu;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31530
    return-void
.end method

.method private A01()V
    .locals 2

    .line 31531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bu;->A02:Lcom/facebook/ads/redexgen/X/Bv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bv;->A00(Lcom/facebook/ads/redexgen/X/Bv;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bt;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Bt;-><init>(Lcom/facebook/ads/redexgen/X/Bu;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31532
    return-void
.end method


# virtual methods
.method public final synthetic A02()V
    .locals 1

    .line 31533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bu;->A02:Lcom/facebook/ads/redexgen/X/Bv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bv;->A01(Lcom/facebook/ads/redexgen/X/Bv;)Lcom/facebook/ads/redexgen/X/Bu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bu;->A02:Lcom/facebook/ads/redexgen/X/Bv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bv;->A07(Lcom/facebook/ads/redexgen/X/Bv;)V

    .line 31535
    :cond_0
    return-void
.end method

.method public final synthetic A03()V
    .locals 1

    .line 31536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bu;->A02:Lcom/facebook/ads/redexgen/X/Bv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bv;->A01(Lcom/facebook/ads/redexgen/X/Bv;)Lcom/facebook/ads/redexgen/X/Bu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bu;->A02:Lcom/facebook/ads/redexgen/X/Bv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bv;->A08(Lcom/facebook/ads/redexgen/X/Bv;)V

    .line 31538
    :cond_0
    return-void
.end method

.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 31539
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bu;->A00()V

    .line 31540
    return-void
.end method

.method public final onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 0

    .line 31541
    if-nez p2, :cond_0

    .line 31542
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bu;->A01()V

    .line 31543
    :cond_0
    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 31544
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    .line 31545
    .local v0, "networkValidated":Z
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bu;->A01:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bu;->A00:Z

    if-eq v0, v1, :cond_2

    .line 31546
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bu;->A01:Z

    .line 31547
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Bu;->A00:Z

    .line 31548
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bu;->A00()V

    .line 31549
    :cond_1
    :goto_0
    return-void

    .line 31550
    :cond_2
    if-eqz v1, :cond_1

    .line 31551
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bu;->A01()V

    goto :goto_0
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    .line 31552
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bu;->A00()V

    .line 31553
    return-void
.end method
