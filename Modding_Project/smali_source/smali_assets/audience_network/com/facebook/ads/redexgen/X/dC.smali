.class public abstract Lcom/facebook/ads/redexgen/X/dC;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Landroid/util/DisplayMetrics;)I
    .locals 1

    .line 79108
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 79109
    .local v0, "width":I
    const/16 v0, 0x6a4

    if-le p0, v0, :cond_0

    .line 79110
    const/16 p0, 0x6a4

    .line 79111
    :cond_0
    div-int/lit16 v0, p0, 0x1c0

    return v0
.end method

.method public static A01(Landroid/content/Context;Landroid/view/View;JLandroid/view/View;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 79112
    if-eqz p4, :cond_0

    .line 79113
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79114
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79115
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/dB;

    invoke-direct {v0, p4, p1}, Lcom/facebook/ads/redexgen/X/dB;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 79116
    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79117
    return-void
.end method

.method public static synthetic A02(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 79118
    if-eqz p0, :cond_0

    .line 79119
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79120
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79121
    return-void
.end method
