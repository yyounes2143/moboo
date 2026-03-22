.class public final Lcom/facebook/ads/redexgen/X/cQ;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/KE;

.field public final A01:Landroid/view/View$OnClickListener;

.field public final A02:Lcom/facebook/ads/redexgen/X/Mw;

.field public final A03:Lcom/facebook/ads/redexgen/X/N9;

.field public final A04:Lcom/facebook/ads/redexgen/X/dL;

.field public final A05:Lcom/facebook/ads/redexgen/X/aK;

.field public final A06:Lcom/facebook/ads/redexgen/X/aQ;

.field public final A07:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2568
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cQ;->A0B:I

    .line 2569
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cQ;->A0F:I

    .line 2570
    const/high16 v1, 0x41a00000    # 20.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cQ;->A0D:I

    .line 2571
    const/high16 v1, 0x41500000    # 13.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cQ;->A0E:I

    .line 2572
    const/high16 v1, 0x42900000    # 72.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cQ;->A08:I

    .line 2573
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cQ;->A0C:I

    .line 2574
    const/high16 v1, 0x41c00000    # 24.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cQ;->A0A:I

    .line 2575
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cQ;->A09:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/N9;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 7

    .line 77897
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77898
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cQ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 77899
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cQ;->A03:Lcom/facebook/ads/redexgen/X/N9;

    .line 77900
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cQ;->A02:Lcom/facebook/ads/redexgen/X/Mw;

    .line 77901
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/cQ;->A00:Lcom/facebook/ads/redexgen/X/KE;

    .line 77902
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/cQ;->A07:Ljava/lang/String;

    .line 77903
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/cQ;->A01:Landroid/view/View$OnClickListener;

    .line 77904
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cQ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aK;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A05:Lcom/facebook/ads/redexgen/X/aK;

    .line 77905
    new-instance v1, Lcom/facebook/ads/redexgen/X/aQ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cQ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 77906
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/My;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/My;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/aQ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/My;ZZZ)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/cQ;->A06:Lcom/facebook/ads/redexgen/X/aQ;

    .line 77907
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cQ;->A00()V

    .line 77908
    return-void
.end method

.method private A00()V
    .locals 11

    .line 77909
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cQ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A03:Lcom/facebook/ads/redexgen/X/N9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/aR;->A00(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 77910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77911
    .local v0, "closeImageView":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0m:Lcom/facebook/ads/redexgen/X/XX;

    .line 77912
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77913
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77914
    sget v1, Lcom/facebook/ads/redexgen/X/cQ;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/cQ;->A0A:I

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77915
    .local v1, "closeViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, -0x1

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 77916
    const/16 v0, 0xb

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77917
    sget v3, Lcom/facebook/ads/redexgen/X/cQ;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/cQ;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/cQ;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/cQ;->A09:I

    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 77918
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77919
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/cQ;->addView(Landroid/view/View;)V

    .line 77920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A01:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77922
    .local v3, "layout":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77923
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77924
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77925
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A05:Lcom/facebook/ads/redexgen/X/aK;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 77927
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cQ;->A05:Lcom/facebook/ads/redexgen/X/aK;

    sget v0, Lcom/facebook/ads/redexgen/X/cQ;->A0B:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aK;->setRadius(I)V

    .line 77928
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/cQ;->A05:Lcom/facebook/ads/redexgen/X/aK;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cQ;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 77929
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04()Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A03:Lcom/facebook/ads/redexgen/X/N9;

    .line 77930
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 77931
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/cQ;->A06:Lcom/facebook/ads/redexgen/X/aQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A02:Lcom/facebook/ads/redexgen/X/Mw;

    .line 77932
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0F()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A03:Lcom/facebook/ads/redexgen/X/N9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A03()Ljava/lang/String;

    move-result-object v7

    .line 77933
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/aQ;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 77934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A06:Lcom/facebook/ads/redexgen/X/aQ;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/aQ;->setAlignment(I)V

    .line 77935
    const/4 v7, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77936
    .local v4, "titleAndDescriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/cQ;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/cQ;->A0F:I

    invoke-virtual {v5, v2, v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 77937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A06:Lcom/facebook/ads/redexgen/X/aQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aQ;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77938
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cQ;->A05:Lcom/facebook/ads/redexgen/X/aK;

    sget v2, Lcom/facebook/ads/redexgen/X/cQ;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/cQ;->A08:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A06:Lcom/facebook/ads/redexgen/X/aQ;

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A00:Lcom/facebook/ads/redexgen/X/KE;

    if-eqz v0, :cond_0

    .line 77941
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77942
    .local v5, "ctaButtonPrams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/cQ;->A00:Lcom/facebook/ads/redexgen/X/KE;

    sget v4, Lcom/facebook/ads/redexgen/X/cQ;->A0D:I

    sget v2, Lcom/facebook/ads/redexgen/X/cQ;->A0E:I

    sget v1, Lcom/facebook/ads/redexgen/X/cQ;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/cQ;->A0E:I

    invoke-virtual {v5, v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setPadding(IIII)V

    .line 77943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/KE;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77944
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cQ;->A00:Lcom/facebook/ads/redexgen/X/KE;

    sget v1, Lcom/facebook/ads/redexgen/X/cQ;->A0C:I

    .line 77945
    const v0, -0xff6a0a

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A06(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77946
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 77947
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cQ;->A00:Lcom/facebook/ads/redexgen/X/KE;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 77948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0V(Landroid/widget/Button;)V

    .line 77949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cQ;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77950
    .end local v5    # "ctaButtonPrams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/cQ;->addView(Landroid/view/View;)V

    .line 77951
    return-void
.end method
