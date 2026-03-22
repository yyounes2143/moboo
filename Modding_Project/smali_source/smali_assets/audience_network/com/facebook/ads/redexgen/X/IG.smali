.class public final Lcom/facebook/ads/redexgen/X/IG;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xo;


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/String;

.field public final A01:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A02:Lcom/facebook/ads/redexgen/X/bt;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 765
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wtXzJScKRPxajxCcdRbPmb0KadlxC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7nKoFE8ui8VEpuvPlBMmVCUEP2sqkB6T"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "33CWdOtYDTa7rzeiAlLBu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "strpzcWL7DajPBiGDWIDQH24h3nkF6Q8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KD2NqWHNK6oFw2qGkV253wUFP2DdgfCk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fVTYPEGDbO1sEyo8c0rX1ThQbYeRG1Ca"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mBAzb1XhvrptTGzmv2edBpTADNq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IG;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/bt;Ljava/lang/String;)V
    .locals 0

    .line 40257
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40258
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/IG;->A02:Lcom/facebook/ads/redexgen/X/bt;

    .line 40259
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/IG;->A01:Lcom/facebook/ads/redexgen/X/Xn;

    .line 40260
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/IG;->A00:Ljava/lang/String;

    .line 40261
    return-void
.end method


# virtual methods
.method public final AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 3

    .line 40262
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bt;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 40263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IG;->A02:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0V()V

    .line 40264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IG;->A02:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0O()Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 40265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IG;->A02:Lcom/facebook/ads/redexgen/X/bt;

    .line 40266
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0O()Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 40267
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/IG;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40268
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IG;->A01:Lcom/facebook/ads/redexgen/X/Xn;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 40269
    return-void
.end method

.method public final AEV(Z)V
    .locals 0

    .line 40270
    return-void
.end method

.method public final AF0(Z)V
    .locals 0

    .line 40271
    return-void
.end method

.method public final AIB(Landroid/os/Bundle;)V
    .locals 0

    .line 40272
    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 40273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IG;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 40274
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 40275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IG;->A02:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0U()V

    .line 40276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IG;->A02:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0N()Lcom/facebook/ads/redexgen/X/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IG;->A02:Lcom/facebook/ads/redexgen/X/bt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0N()Lcom/facebook/ads/redexgen/X/bi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/bi;->ADO()V

    .line 40278
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bt;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/IG;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/IG;->A03:[Ljava/lang/String;

    const-string v1, "U60adJ6O15pnx6aeoiW8dFURNXF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "aGZEm4xR2YGCAhvP8isAV9os5hRSz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 40279
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 0

    .line 40280
    return-void
.end method
