.class public final Lcom/facebook/ads/redexgen/X/Zg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdWebViewInterface"
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/LH;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Zh;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/eX;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Ki;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2465
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MaUhfef1XHChQSOAsPU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "01oMUC4JT554rhL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9TYVZPZrh7WqyaB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ShOi1FYvFM9bF84GqYiu0GZZ4HOF35Af"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "s"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YvdeaQsxQHJ3CZVDgFIjqRdATcpqYXuO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "b384kAccrLIUxrnk6NdGu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "f4PnsWwvvRSNWXAtteJ0H"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zg;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ki;Lcom/facebook/ads/redexgen/X/Zh;Lcom/facebook/ads/redexgen/X/eX;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 2

    .line 75037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75038
    const-class v0, Lcom/facebook/ads/redexgen/X/Zg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Ljava/lang/String;

    .line 75039
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A06:Ljava/lang/ref/WeakReference;

    .line 75040
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A04:Ljava/lang/ref/WeakReference;

    .line 75041
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A05:Ljava/lang/ref/WeakReference;

    .line 75042
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A01:Ljava/lang/ref/WeakReference;

    .line 75043
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A02:Ljava/lang/ref/WeakReference;

    .line 75044
    invoke-virtual {p6}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A03:Ljava/lang/ref/WeakReference;

    .line 75045
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/LH;
    .locals 1

    .line 75046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A03:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/LH;

    .line 75047
    .local v0, "funnel":Lcom/facebook/ads/redexgen/X/LH;
    if-nez v0, :cond_0

    .line 75048
    new-instance v0, Lcom/facebook/ads/redexgen/X/j3;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/j3;-><init>()V

    .line 75049
    :cond_0
    return-object v0
.end method


# virtual methods
.method public alert(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 75050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75051
    return-void
.end method

.method public getAnalogInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 75052
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T5;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wr;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logFunnel(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 75053
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zg;->A00()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/LH;->AK6(ILjava/lang/String;)V

    .line 75054
    return-void
.end method

.method public onMainAssetLoaded()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 75055
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zg;->A00()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AK7()V

    .line 75056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A06:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A01:Ljava/lang/ref/WeakReference;

    .line 75057
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A02:Ljava/lang/ref/WeakReference;

    .line 75058
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 75059
    :cond_0
    return-void

    .line 75060
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A02:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75062
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zg;->A00()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AK8()V

    .line 75063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A06:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ki;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ki;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75064
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zg;->A00()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AK9()V

    .line 75065
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zg;->A05:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ko;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ko;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 75066
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75067
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Zh;

    .line 75068
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Zh;
    if-eqz v2, :cond_3

    .line 75069
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zf;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Zf;-><init>(Lcom/facebook/ads/redexgen/X/Zg;Lcom/facebook/ads/redexgen/X/Zh;)V

    .line 75070
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75071
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/Zh;
    :cond_3
    return-void
.end method

.method public onPageInitialized()V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 75072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A06:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ki;

    .line 75073
    .local v0, "webView":Lcom/facebook/ads/redexgen/X/Ki;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ze;->A0J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75074
    .end local v2
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zg;->A00()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/LH;->AKA(Z)V

    .line 75075
    return-void

    .line 75076
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A04:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Zh;

    .line 75077
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Zh;
    if-eqz v5, :cond_2

    .line 75078
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zg;->A00()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zg;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zg;->A07:[Ljava/lang/String;

    const-string v1, "MExJxptNjWm815DyzsGP1"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/LH;->AKA(Z)V

    .line 75079
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/Zh;->AET()V

    .line 75080
    :goto_0
    return-void

    .line 75081
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zg;->A00()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/LH;->AKA(Z)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
