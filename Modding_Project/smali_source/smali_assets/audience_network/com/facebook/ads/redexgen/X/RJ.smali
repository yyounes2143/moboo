.class public final Lcom/facebook/ads/redexgen/X/RJ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/AudienceNetworkActivity;

.field public final A01:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    .line 62515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62516
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RJ;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 62517
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RJ;->A00:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 62518
    return-void
.end method

.method private A00()I
    .locals 3

    .line 62519
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 62520
    .local v0, "activityRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A00:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 62521
    .local v1, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 62522
    const/4 v0, 0x2

    return v0

    .line 62523
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 62524
    iget v0, v2, Landroid/graphics/Rect;->top:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_1

    .line 62525
    const/4 v0, 0x1

    .line 62526
    :goto_0
    return v0

    .line 62527
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A01()V
    .locals 4

    .line 62528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0H()Lcom/facebook/ads/redexgen/X/SO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SO;->A01()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 62529
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_1

    .line 62530
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/RI;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/RI;-><init>(Lcom/facebook/ads/redexgen/X/RJ;)V

    .line 62531
    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62532
    :cond_1
    return-void
.end method

.method public final synthetic A02()V
    .locals 2

    .line 62533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A00:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RJ;->A00()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->ABU(I)V

    .line 62535
    :cond_0
    return-void
.end method
