.class public final Lcom/facebook/ads/redexgen/X/YG;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/O2;

.field public final A02:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2394
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/YG;->A03:I

    .line 2395
    const/high16 v1, 0x41c00000    # 24.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/YG;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 1

    .line 73322
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73323
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YG;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 73324
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O3;->A00(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YG;->A01:Lcom/facebook/ads/redexgen/X/O2;

    .line 73325
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YG;->A00:Landroid/widget/ImageView;

    .line 73326
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YG;->A02()V

    .line 73327
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/YG;)Lcom/facebook/ads/redexgen/X/O2;
    .locals 0

    .line 73328
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YG;->A01:Lcom/facebook/ads/redexgen/X/O2;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/YG;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 73329
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/YG;->A02:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method private A02()V
    .locals 4

    .line 73330
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YG;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0n:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YG;->A03(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 73331
    sget v3, Lcom/facebook/ads/redexgen/X/YG;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/YG;->A03:I

    div-int/lit8 v2, v0, 0x3

    sget v1, Lcom/facebook/ads/redexgen/X/YG;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/YG;->A03:I

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YG;->setPadding(IIII)V

    .line 73332
    sget v2, Lcom/facebook/ads/redexgen/X/YG;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/YG;->A04:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73333
    .local v0, "adChoicesIconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YG;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YG;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73335
    return-void
.end method

.method public static A03(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XX;)V
    .locals 1

    .line 73336
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73337
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73338
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 73339
    return-void
.end method


# virtual methods
.method public setAdDetails(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 6

    .line 73340
    new-instance v0, Lcom/facebook/ads/redexgen/X/YF;

    move-object v1, p0

    move-object v3, p4

    move-object v2, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/YF;-><init>(Lcom/facebook/ads/redexgen/X/YG;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/YG;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73341
    return-void
.end method

.method public setIconColors(I)V
    .locals 1

    .line 73342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YG;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 73343
    return-void
.end method
