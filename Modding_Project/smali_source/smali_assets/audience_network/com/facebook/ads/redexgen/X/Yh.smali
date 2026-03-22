.class public final Lcom/facebook/ads/redexgen/X/Yh;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I


# instance fields
.field public A00:Z

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2420
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yh;->A04:I

    .line 2421
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yh;->A05:I

    .line 2422
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yh;->A06:I

    .line 2423
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yh;->A03:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 4

    .line 73880
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A00:Z

    .line 73882
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setOrientation(I)V

    .line 73883
    sget v3, Lcom/facebook/ads/redexgen/X/Yh;->A04:I

    sget v2, Lcom/facebook/ads/redexgen/X/Yh;->A05:I

    sget v1, Lcom/facebook/ads/redexgen/X/Yh;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yh;->A05:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setPadding(IIII)V

    .line 73884
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yh;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A01:Landroid/widget/ImageView;

    .line 73885
    sget v1, Lcom/facebook/ads/redexgen/X/Yh;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yh;->A03:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73886
    .local v0, "imageViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73887
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yh;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A02:Landroid/widget/TextView;

    .line 73888
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73889
    .local v1, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Yh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A02:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Yh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73891
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yh;->A00()V

    .line 73892
    return-void
.end method

.method private A00()V
    .locals 3

    .line 73893
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 73894
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 73895
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A00:Z

    if-eqz v0, :cond_1

    const v0, -0xca871b

    .line 73896
    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 73897
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 73898
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 73899
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yh;->A02:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 73900
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A00:Z

    if-eqz v0, :cond_0

    .line 73901
    const/4 v1, -0x1

    .line 73902
    .local v1, "textColor":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 73904
    return-void

    .line 73905
    :cond_0
    const v1, -0x9f9890

    goto :goto_1

    .line 73906
    :cond_1
    const v0, -0x141210

    goto :goto_0
.end method


# virtual methods
.method public final A01()V
    .locals 1

    .line 73907
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A00:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setSelected(Z)V

    .line 73908
    return-void
.end method

.method public setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V
    .locals 3

    .line 73909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73910
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 73911
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yh;->A01:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73913
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yh;->A02:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/Yh;->A06:I

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73914
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yh;->A00()V

    .line 73915
    return-void

    .line 73916
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yh;->A01:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yh;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 73918
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Yh;->A00:Z

    .line 73919
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yh;->A00()V

    .line 73920
    return-void
.end method
