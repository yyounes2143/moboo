.class public final Lcom/facebook/ads/redexgen/X/2Z;
.super Lcom/facebook/ads/redexgen/X/Da;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/DX;

.field public final A01:Lcom/facebook/ads/redexgen/X/DR;

.field public final A02:Lcom/facebook/ads/redexgen/X/DP;

.field public final A03:Lcom/facebook/ads/redexgen/X/DN;

.field public final A04:Lcom/facebook/ads/redexgen/X/e0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 1

    .line 10008
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2Z;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;)V

    .line 10009
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;)V
    .locals 1

    .line 10010
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/2Z;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V

    .line 10011
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 10012
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Da;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V

    .line 10013
    new-instance v0, Lcom/facebook/ads/redexgen/X/2o;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2o;-><init>(Lcom/facebook/ads/redexgen/X/2Z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A03:Lcom/facebook/ads/redexgen/X/DN;

    .line 10014
    new-instance v0, Lcom/facebook/ads/redexgen/X/2m;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2m;-><init>(Lcom/facebook/ads/redexgen/X/2Z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:Lcom/facebook/ads/redexgen/X/DR;

    .line 10015
    new-instance v0, Lcom/facebook/ads/redexgen/X/2k;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2k;-><init>(Lcom/facebook/ads/redexgen/X/2Z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:Lcom/facebook/ads/redexgen/X/DP;

    .line 10016
    new-instance v0, Lcom/facebook/ads/redexgen/X/2j;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2j;-><init>(Lcom/facebook/ads/redexgen/X/2Z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:Lcom/facebook/ads/redexgen/X/DX;

    .line 10017
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2Z;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 10018
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/facebook/ads/redexgen/X/e0;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/e0;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A04:Lcom/facebook/ads/redexgen/X/e0;

    .line 10019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A04:Lcom/facebook/ads/redexgen/X/e0;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/e0;->setChecked(Z)V

    .line 10020
    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 10021
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2Z;->setVisibility(I)V

    .line 10022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A04:Lcom/facebook/ads/redexgen/X/e0;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/2Z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10023
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2Z;->setClickable(Z)V

    .line 10024
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2Z;->setFocusable(Z)V

    .line 10025
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/2Z;)Lcom/facebook/ads/redexgen/X/e0;
    .locals 0

    .line 10026
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A04:Lcom/facebook/ads/redexgen/X/e0;

    return-object p0
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 10027
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Da;->A07()V

    .line 10028
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/2Z;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A04:Lcom/facebook/ads/redexgen/X/e0;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/e0;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10030
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10031
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A03:Lcom/facebook/ads/redexgen/X/DN;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 10032
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 10033
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10034
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A02:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A01:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A03:Lcom/facebook/ads/redexgen/X/DN;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A04([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 10035
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/2Z;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A04:Lcom/facebook/ads/redexgen/X/e0;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/e0;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10037
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Da;->A08()V

    .line 10038
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

    .line 10039
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2Z;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Da;->getVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v2

    .line 10040
    .local v1, "videoView":Lcom/facebook/ads/redexgen/X/E1;
    if-nez v2, :cond_1

    .line 10041
    return-void

    .line 10042
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A07:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_2

    .line 10043
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A05:Lcom/facebook/ads/redexgen/X/eU;

    if-eq v1, v0, :cond_2

    .line 10044
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A06:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_3

    .line 10045
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/2Z;
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A04:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0xb

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    goto :goto_0

    .line 10046
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A0A:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_4

    .line 10047
    const/4 v1, 0x1

    const/4 v0, 0x7

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0l(ZI)V

    .line 10048
    :cond_4
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "videoView":Lcom/facebook/ads/redexgen/X/E1;
    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setPauseAccessibilityLabel(Ljava/lang/String;)V
    .locals 1

    .line 10049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A04:Lcom/facebook/ads/redexgen/X/e0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/e0;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 10050
    return-void
.end method

.method public setPlayAccessibilityLabel(Ljava/lang/String;)V
    .locals 1

    .line 10051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Z;->A04:Lcom/facebook/ads/redexgen/X/e0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/e0;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 10052
    return-void
.end method
