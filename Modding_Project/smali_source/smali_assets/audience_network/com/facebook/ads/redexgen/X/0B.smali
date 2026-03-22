.class public Lcom/facebook/ads/redexgen/X/0B;
.super Lcom/facebook/ads/redexgen/X/0E;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/P3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi21Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3462
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0E;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PK;)Lcom/facebook/ads/redexgen/X/PK;
    .locals 2

    .line 3463
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/PK;->A01(Lcom/facebook/ads/redexgen/X/PK;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    .line 3464
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 3465
    .local v1, "result":Landroid/view/WindowInsets;
    if-eq v0, v1, :cond_0

    .line 3466
    new-instance v1, Landroid/view/WindowInsets;

    invoke-direct {v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 3467
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/PK;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/PK;

    move-result-object v0

    return-object v0
.end method

.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PK;)Lcom/facebook/ads/redexgen/X/PK;
    .locals 2

    .line 3468
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/PK;->A01(Lcom/facebook/ads/redexgen/X/PK;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    .line 3469
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p1, v1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 3470
    .local v1, "result":Landroid/view/WindowInsets;
    if-eq v0, v1, :cond_0

    .line 3471
    new-instance v1, Landroid/view/WindowInsets;

    invoke-direct {v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 3472
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/PK;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/PK;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(Landroid/view/View;)V
    .locals 0

    .line 3473
    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    .line 3474
    return-void
.end method

.method public final A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/On;)V
    .locals 1

    .line 3475
    if-nez p2, :cond_0

    .line 3476
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 3477
    return-void

    .line 3478
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/P1;

    invoke-direct {v0, p0, p2}, Lcom/facebook/ads/redexgen/X/P1;-><init>(Lcom/facebook/ads/redexgen/X/0B;Lcom/facebook/ads/redexgen/X/On;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 3479
    return-void
.end method
