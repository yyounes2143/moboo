.class public final Lcom/facebook/ads/redexgen/X/Cp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/e2;


# instance fields
.field public A00:Landroid/graphics/drawable/TransitionDrawable;

.field public A01:Landroid/graphics/drawable/TransitionDrawable;

.field public A02:Lcom/facebook/ads/redexgen/X/e1;

.field public final A03:I

.field public final A04:Landroid/graphics/drawable/Drawable;

.field public final A05:Landroid/graphics/drawable/Drawable;

.field public final A06:Landroid/os/Handler;

.field public final A07:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 33291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33292
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A06:Landroid/os/Handler;

    .line 33293
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A02:Lcom/facebook/ads/redexgen/X/e1;

    .line 33294
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Cp;->A03:I

    .line 33295
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A07:Landroid/view/View;

    .line 33296
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Cp;->A05:Landroid/graphics/drawable/Drawable;

    .line 33297
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Cp;->A04:Landroid/graphics/drawable/Drawable;

    .line 33298
    const/4 v4, 0x2

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    const/4 v2, 0x1

    aput-object p4, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A01:Landroid/graphics/drawable/TransitionDrawable;

    .line 33299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 33300
    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    aput-object p4, v1, v3

    aput-object p3, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A00:Landroid/graphics/drawable/TransitionDrawable;

    .line 33301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 33302
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33303
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Cp;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33304
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A04:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Cp;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33305
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A05:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Cp;)Landroid/view/View;
    .locals 0

    .line 33306
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A07:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Cp;Lcom/facebook/ads/redexgen/X/e1;)Lcom/facebook/ads/redexgen/X/e1;
    .locals 0

    .line 33307
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A02:Lcom/facebook/ads/redexgen/X/e1;

    return-object p1
.end method

.method private A04(Z)V
    .locals 4

    .line 33308
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33309
    if-eqz p1, :cond_0

    .line 33310
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A05:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A02:Lcom/facebook/ads/redexgen/X/e1;

    .line 33311
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33312
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A00:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 33313
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Cp;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Cq;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Cq;-><init>(Lcom/facebook/ads/redexgen/X/Cp;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33314
    :goto_0
    return-void

    .line 33315
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A05:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33316
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A02:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_0
.end method

.method private A05(Z)V
    .locals 4

    .line 33317
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33318
    if-eqz p1, :cond_0

    .line 33319
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A03:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A02:Lcom/facebook/ads/redexgen/X/e1;

    .line 33320
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33321
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A01:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 33322
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Cp;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ct;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Ct;-><init>(Lcom/facebook/ads/redexgen/X/Cp;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33323
    :goto_0
    return-void

    .line 33324
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A04:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33325
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A02:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A02:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_0
.end method


# virtual methods
.method public final A42(ZZ)V
    .locals 0

    .line 33326
    if-eqz p2, :cond_0

    .line 33327
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Cp;->A04(Z)V

    .line 33328
    :goto_0
    return-void

    .line 33329
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Cp;->A05(Z)V

    goto :goto_0
.end method

.method public final A93()Lcom/facebook/ads/redexgen/X/e1;
    .locals 1

    .line 33330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A02:Lcom/facebook/ads/redexgen/X/e1;

    return-object v0
.end method

.method public final cancel()V
    .locals 2

    .line 33331
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 33333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 33334
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A02:Lcom/facebook/ads/redexgen/X/e1;

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A03:Lcom/facebook/ads/redexgen/X/e1;

    if-ne v1, v0, :cond_0

    .line 33335
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    .line 33336
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cp;->A02:Lcom/facebook/ads/redexgen/X/e1;

    .line 33337
    return-void

    .line 33338
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A02:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_0
.end method
