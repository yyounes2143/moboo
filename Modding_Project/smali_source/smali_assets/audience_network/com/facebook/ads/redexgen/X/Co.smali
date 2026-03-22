.class public final Lcom/facebook/ads/redexgen/X/Co;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/e2;


# instance fields
.field public A00:I

.field public A01:Landroid/animation/ValueAnimator;

.field public A02:Lcom/facebook/ads/redexgen/X/e1;

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 1

    .line 33244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33245
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A02:Lcom/facebook/ads/redexgen/X/e1;

    .line 33246
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Co;->A05:Landroid/view/View;

    .line 33247
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Co;->A03:I

    .line 33248
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Co;->A00:I

    .line 33249
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Co;->A04:I

    .line 33250
    return-void
.end method

.method private A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 33251
    filled-new-array {p1, p2}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 33252
    .local v0, "slideAnimator":Landroid/animation/ValueAnimator;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A03:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33253
    new-instance v0, Lcom/facebook/ads/redexgen/X/e5;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/e5;-><init>(Lcom/facebook/ads/redexgen/X/Co;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33254
    return-object v2
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Co;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 33255
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Co;->A01:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Co;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 33256
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Co;->A01:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Co;)Landroid/view/View;
    .locals 0

    .line 33257
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Co;->A05:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Co;Lcom/facebook/ads/redexgen/X/e1;)Lcom/facebook/ads/redexgen/X/e1;
    .locals 0

    .line 33258
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Co;->A02:Lcom/facebook/ads/redexgen/X/e1;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Co;Z)V
    .locals 0

    .line 33259
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Co;->A07(Z)V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Co;Z)V
    .locals 0

    .line 33260
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Co;->A08(Z)V

    return-void
.end method

.method private A07(Z)V
    .locals 3

    .line 33261
    if-eqz p1, :cond_0

    .line 33262
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A05:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A02:Lcom/facebook/ads/redexgen/X/e1;

    .line 33263
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Co;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Co;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A05:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Co;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A01:Landroid/animation/ValueAnimator;

    .line 33264
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Co;->A01:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/e4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/e4;-><init>(Lcom/facebook/ads/redexgen/X/Co;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 33266
    .end local v0
    :goto_0
    return-void

    .line 33267
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 33268
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A04:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 33271
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A02:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_0
.end method

.method private A08(Z)V
    .locals 3

    .line 33272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0J(Landroid/view/View;)V

    .line 33273
    if-eqz p1, :cond_0

    .line 33274
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A03:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A02:Lcom/facebook/ads/redexgen/X/e1;

    .line 33275
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Co;->A04:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Co;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A05:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Co;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A01:Landroid/animation/ValueAnimator;

    .line 33276
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Co;->A01:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/e3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/e3;-><init>(Lcom/facebook/ads/redexgen/X/Co;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 33278
    .end local v0
    :goto_0
    return-void

    .line 33279
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 33280
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A00:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33282
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A02:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A02:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_0
.end method


# virtual methods
.method public final A42(ZZ)V
    .locals 0

    .line 33283
    if-eqz p2, :cond_0

    .line 33284
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Co;->A07(Z)V

    .line 33285
    :goto_0
    return-void

    .line 33286
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Co;->A08(Z)V

    goto :goto_0
.end method

.method public final A93()Lcom/facebook/ads/redexgen/X/e1;
    .locals 1

    .line 33287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A02:Lcom/facebook/ads/redexgen/X/e1;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 33288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A01:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 33289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Co;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 33290
    :cond_0
    return-void
.end method
