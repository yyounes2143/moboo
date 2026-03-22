.class public final Lcom/facebook/ads/redexgen/X/D3;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dc;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final A06:I

.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/E1;

.field public final A01:Lcom/facebook/ads/redexgen/X/DX;

.field public final A02:Lcom/facebook/ads/redexgen/X/DR;

.field public final A03:Lcom/facebook/ads/redexgen/X/DP;

.field public final A04:Lcom/facebook/ads/redexgen/X/DN;

.field public final A05:Lcom/facebook/ads/redexgen/X/e0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 646
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/D3;->A07:I

    .line 647
    const/high16 v1, 0x40c00000    # 6.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/D3;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 4

    .line 33605
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33606
    new-instance v0, Lcom/facebook/ads/redexgen/X/2x;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2x;-><init>(Lcom/facebook/ads/redexgen/X/D3;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A04:Lcom/facebook/ads/redexgen/X/DN;

    .line 33607
    new-instance v0, Lcom/facebook/ads/redexgen/X/2w;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2w;-><init>(Lcom/facebook/ads/redexgen/X/D3;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A02:Lcom/facebook/ads/redexgen/X/DR;

    .line 33608
    new-instance v0, Lcom/facebook/ads/redexgen/X/2v;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2v;-><init>(Lcom/facebook/ads/redexgen/X/D3;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A03:Lcom/facebook/ads/redexgen/X/DP;

    .line 33609
    new-instance v0, Lcom/facebook/ads/redexgen/X/2u;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2u;-><init>(Lcom/facebook/ads/redexgen/X/D3;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A01:Lcom/facebook/ads/redexgen/X/DX;

    .line 33610
    sget v1, Lcom/facebook/ads/redexgen/X/D3;->A06:I

    .line 33611
    const/high16 v0, 0x33000000

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A06(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 33612
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33613
    const/4 v3, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/e0;

    invoke-direct {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/e0;-><init>(Lcom/facebook/ads/redexgen/X/dL;Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A05:Lcom/facebook/ads/redexgen/X/e0;

    .line 33614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A05:Lcom/facebook/ads/redexgen/X/e0;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/e0;->setChecked(Z)V

    .line 33615
    sget v2, Lcom/facebook/ads/redexgen/X/D3;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/D3;->A07:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33616
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 33617
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/D3;->setVisibility(I)V

    .line 33618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A05:Lcom/facebook/ads/redexgen/X/e0;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/D3;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33619
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/D3;->setClickable(Z)V

    .line 33620
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/D3;->setFocusable(Z)V

    .line 33621
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/D3;)Lcom/facebook/ads/redexgen/X/e0;
    .locals 0

    .line 33622
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/D3;->A05:Lcom/facebook/ads/redexgen/X/e0;

    return-object p0
.end method


# virtual methods
.method public final AAm(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 4

    .line 33623
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    .line 33624
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/D3;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A05:Lcom/facebook/ads/redexgen/X/e0;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/e0;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    if-eqz v0, :cond_0

    .line 33627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A04:Lcom/facebook/ads/redexgen/X/DN;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A01:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A02:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A03:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 33628
    :cond_0
    return-void
.end method

.method public final AJk(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 4

    .line 33629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    if-eqz v0, :cond_0

    .line 33630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A03:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A02:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A01:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A04:Lcom/facebook/ads/redexgen/X/DN;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A04([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 33631
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/D3;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A05:Lcom/facebook/ads/redexgen/X/e0;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/e0;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33633
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    .line 33634
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 33635
    .local v0, "this":Lcom/facebook/ads/redexgen/X/D3;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    if-nez v0, :cond_1

    .line 33636
    return-void

    .line 33637
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A07:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    .line 33638
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A05:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    .line 33639
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A06:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_3

    .line 33640
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/D3;
    :cond_2
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A04:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0xb

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    goto :goto_0

    .line 33641
    :cond_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A0A:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_4

    .line 33642
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/D3;->A00:Lcom/facebook/ads/redexgen/X/E1;

    const/4 v1, 0x1

    const/4 v0, 0x7

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0l(ZI)V

    .line 33643
    :cond_4
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setPauseAccessibilityLabel(Ljava/lang/String;)V
    .locals 1

    .line 33644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A05:Lcom/facebook/ads/redexgen/X/e0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/e0;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 33645
    return-void
.end method

.method public setPlayAccessibilityLabel(Ljava/lang/String;)V
    .locals 1

    .line 33646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A05:Lcom/facebook/ads/redexgen/X/e0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/e0;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 33647
    return-void
.end method
