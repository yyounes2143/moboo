.class public final Lcom/facebook/ads/redexgen/X/LU;
.super Lcom/facebook/ads/redexgen/X/Yd;
.source ""


# static fields
.field public static A06:[B

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public final A00:Landroid/widget/HorizontalScrollView;

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Landroid/widget/LinearLayout;

.field public final A03:Landroid/widget/LinearLayout;

.field public final A04:Lcom/facebook/ads/redexgen/X/O2;

.field public final A05:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1305
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LU;->A01()V

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/LU;->A09:I

    .line 1306
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/LU;->A08:I

    .line 1307
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/LU;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;)V
    .locals 6

    .line 50302
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Yd;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;)V

    .line 50303
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 50304
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O3;->A00(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A04:Lcom/facebook/ads/redexgen/X/O2;

    .line 50305
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LU;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A01:Landroid/widget/ImageView;

    .line 50306
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LU;->A01:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/LU;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/LU;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/LU;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/LU;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 50307
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50308
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A01:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 50309
    sget v1, Lcom/facebook/ads/redexgen/X/LU;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/LU;->A07:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50310
    .local v0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50311
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LU;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A02:Landroid/widget/LinearLayout;

    .line 50312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50313
    const/4 v0, -0x2

    const/4 v2, -0x1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50314
    .local v1, "contentParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50315
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LU;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A00:Landroid/widget/HorizontalScrollView;

    .line 50316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 50317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50318
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A00:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50319
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LU;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    .line 50320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50321
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 50322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 50323
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A01:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50324
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50325
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LU;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50326
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 50327
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LU;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/LU;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x20t
        0x22t
        0x2at
        0x3t
        0x2ct
        0x2ft
        0x33t
        0x25t
        0x60t
        0x1t
        0x24t
        0x60t
        0x12t
        0x25t
        0x30t
        0x2ft
        0x32t
        0x34t
        0x29t
        0x2et
        0x27t
    .end array-data
.end method


# virtual methods
.method public final A0N()V
    .locals 8

    .line 50328
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0O:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50329
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ym;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ym;-><init>(Lcom/facebook/ads/redexgen/X/LU;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50330
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LU;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v7, Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/Yh;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50332
    .local v0, "hideAdView":Lcom/facebook/ads/redexgen/X/Yh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A04:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0H()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0Y:Lcom/facebook/ads/redexgen/X/XX;

    invoke-virtual {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 50333
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yn;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/Yn;-><init>(Lcom/facebook/ads/redexgen/X/LU;Lcom/facebook/ads/redexgen/X/Yh;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Yh;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50335
    .local v1, "reportAdView":Lcom/facebook/ads/redexgen/X/Yh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A04:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0L()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0p:Lcom/facebook/ads/redexgen/X/XX;

    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 50336
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yo;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/Yo;-><init>(Lcom/facebook/ads/redexgen/X/LU;Lcom/facebook/ads/redexgen/X/Yh;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v5, Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Yh;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50338
    .local v2, "whyAmISeeingThisView":Lcom/facebook/ads/redexgen/X/Yh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A04:Lcom/facebook/ads/redexgen/X/O2;

    .line 50339
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0M()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A06:Lcom/facebook/ads/redexgen/X/XX;

    .line 50340
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 50341
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yp;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Yp;-><init>(Lcom/facebook/ads/redexgen/X/LU;Lcom/facebook/ads/redexgen/X/Yh;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50342
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50343
    .local v3, "menuItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/LU;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/LU;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/LU;->A09:I

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 50344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 50345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 50346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50349
    return-void
.end method

.method public final A0O()V
    .locals 0

    .line 50350
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0G(Landroid/view/View;)V

    .line 50351
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 50352
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/O6;Lcom/facebook/ads/redexgen/X/O4;)V
    .locals 4

    .line 50353
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50354
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LU;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 50355
    .local v0, "reviewText":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/16 v0, 0xe

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 50356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A04:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50357
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 50358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 50359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 50360
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50361
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/O6;Lcom/facebook/ads/redexgen/X/O4;)V
    .locals 6

    .line 50362
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 50363
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0C:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50364
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yq;-><init>(Lcom/facebook/ads/redexgen/X/LU;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50365
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LU;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LU;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 50367
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LU;->A00:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 50368
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50369
    .local v0, "optionItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/LU;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/LU;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/LU;->A09:I

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 50370
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O6;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/O6;

    .line 50371
    .local v2, "option":Lcom/facebook/ads/redexgen/X/O6;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Yh;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50372
    .local v3, "optionView":Lcom/facebook/ads/redexgen/X/Yh;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/O6;->A04()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 50373
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yr;

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/ads/redexgen/X/Yr;-><init>(Lcom/facebook/ads/redexgen/X/LU;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/O6;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LU;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50375
    .end local v2    # "option":Lcom/facebook/ads/redexgen/X/O6;
    .end local v3    # "optionView":Lcom/facebook/ads/redexgen/X/Yh;
    goto :goto_0

    .line 50376
    :cond_0
    return-void
.end method

.method public final A0R()Z
    .locals 1

    .line 50377
    const/4 v0, 0x1

    return v0
.end method
