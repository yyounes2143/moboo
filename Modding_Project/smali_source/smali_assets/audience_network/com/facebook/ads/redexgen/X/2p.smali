.class public final Lcom/facebook/ads/redexgen/X/2p;
.super Lcom/facebook/ads/redexgen/X/Da;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/dL;

.field public final A02:Lcom/facebook/ads/redexgen/X/Tf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Tf<",
            "Lcom/facebook/ads/redexgen/X/3d;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/Tf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Tf<",
            "Lcom/facebook/ads/redexgen/X/DQ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 90
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hk0dnqphYZ0B2FA2HHbeoaEOUC9cHUBv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tTD1hmxYdA3U5n9t8Z20NsAIS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BfpeWRttIDT9n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BdF5VvNpfNEd8dAFz8yBB3tju8j2QPKu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "opIRFI8OjkHX6xnIsWRzCqWD0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Ob0oYr4gU4dgC4EVWukqT8XlG8BtSCcB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HPuRIIJ62FmEL4YF0ip1f4WrSa12U9bK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7SB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2p;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 1

    .line 10380
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>(Lcom/facebook/ads/redexgen/X/dL;Z)V

    .line 10381
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Z)V
    .locals 3

    .line 10382
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Da;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 10383
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Cz;-><init>(Lcom/facebook/ads/redexgen/X/2p;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A03:Lcom/facebook/ads/redexgen/X/Tf;

    .line 10384
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cy;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Cy;-><init>(Lcom/facebook/ads/redexgen/X/2p;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:Lcom/facebook/ads/redexgen/X/Tf;

    .line 10385
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 10386
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:Landroid/widget/ImageView;

    .line 10387
    if-nez p2, :cond_0

    .line 10388
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 10389
    .local v0, "scaleType":Landroid/widget/ImageView$ScaleType;
    const/high16 v1, -0x1000000

    .line 10390
    .local v1, "color":I
    .restart local v1    # "color":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 10391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 10392
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:Landroid/widget/ImageView;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2p;->addView(Landroid/view/View;)V

    .line 10394
    return-void

    .line 10395
    .end local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .end local v1    # "color":I
    :cond_0
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 10396
    .restart local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 10397
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Da;->A07()V

    .line 10398
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10399
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v4

    const/4 v0, 0x2

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A04:[Ljava/lang/String;

    const-string v1, "Nqq"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "4efeQvUmAeHBj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A03:Lcom/facebook/ads/redexgen/X/Tf;

    aput-object v0, v3, v5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:Lcom/facebook/ads/redexgen/X/Tf;

    aput-object v0, v3, v1

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 10400
    :cond_1
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 10401
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10402
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:Lcom/facebook/ads/redexgen/X/Tf;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A03:Lcom/facebook/ads/redexgen/X/Tf;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A04([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 10403
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Da;->A08()V

    .line 10404
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 10405
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:Landroid/widget/ImageView;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 10406
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1

    .line 10407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2p;->setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Zo;)V

    .line 10408
    return-void
.end method

.method public setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Zo;)V
    .locals 3

    .line 10409
    if-nez p1, :cond_0

    .line 10410
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2p;->setVisibility(I)V

    .line 10411
    return-void

    .line 10412
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2p;->setVisibility(I)V

    .line 10413
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 10414
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04()Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v0

    .line 10415
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/KZ;
    if-eqz p2, :cond_1

    .line 10416
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/KZ;->A06(Lcom/facebook/ads/redexgen/X/Zo;)Lcom/facebook/ads/redexgen/X/KZ;

    .line 10417
    :cond_1
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 10418
    return-void
.end method
