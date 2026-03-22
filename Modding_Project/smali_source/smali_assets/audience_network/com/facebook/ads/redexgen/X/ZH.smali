.class public final Lcom/facebook/ads/redexgen/X/ZH;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ZG;
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I

.field public static final A0I:Landroid/net/Uri;

.field public static final A0J:Landroid/view/View$OnTouchListener;


# instance fields
.field public A00:Landroid/widget/ImageView;

.field public A01:Landroid/widget/ImageView;

.field public A02:Landroid/widget/ImageView;

.field public A03:Landroid/widget/ImageView;

.field public A04:Lcom/facebook/ads/redexgen/X/ZG;

.field public A05:Lcom/facebook/ads/redexgen/X/ZU;

.field public A06:Ljava/lang/String;

.field public final A07:F

.field public final A08:Landroid/webkit/WebView;

.field public final A09:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0A:Lcom/facebook/ads/redexgen/X/ZZ;

.field public final A0B:Z

.field public final A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2443
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gmSbsJUTV6ssYU6sPFdQApLIq3Ne91IM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MfGeHL5PmkPbpLjQYYWOTSdzt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SJThwTW85f7z2tdQDzwWLTm6w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rQXooJE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LhKJvtc1UCCcm5M0SWMNGP7YHUEfZfxE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2Oh5HyK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZH;->A0A()V

    const/16 v0, 0xe0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZH;->A0G:I

    .line 2444
    const/16 v1, 0x22

    const/4 v0, 0x0

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZH;->A0H:I

    .line 2445
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZH;->A0F:I

    .line 2446
    const/16 v2, 0x5a

    const/16 v1, 0x17

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Landroid/net/Uri;

    .line 2447
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZB;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZH;->A0J:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/webkit/WebView;Z)V
    .locals 1

    .line 74224
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74225
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZH;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A07:F

    .line 74226
    new-instance v0, Lcom/facebook/ads/redexgen/X/LR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LR;-><init>(Lcom/facebook/ads/redexgen/X/ZH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0A:Lcom/facebook/ads/redexgen/X/ZZ;

    .line 74227
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZH;->A08:Landroid/webkit/WebView;

    .line 74228
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    .line 74229
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U8;->A06(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0B:Z

    .line 74230
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0C:Z

    .line 74231
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZH;->A08()V

    .line 74232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A0C(Z)V

    .line 74233
    return-void
.end method

.method public static synthetic A00()I
    .locals 1

    .line 74234
    sget v0, Lcom/facebook/ads/redexgen/X/ZH;->A0H:I

    return v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ZH;)Landroid/webkit/WebView;
    .locals 0

    .line 74235
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A08:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/ZH;)Landroid/widget/ImageView;
    .locals 0

    .line 74236
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/ZH;)Landroid/widget/ImageView;
    .locals 0

    .line 74237
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A02:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/ZH;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 74238
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/ZH;)Lcom/facebook/ads/redexgen/X/ZG;
    .locals 0

    .line 74239
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A04:Lcom/facebook/ads/redexgen/X/ZG;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZH;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/ZH;)Ljava/lang/String;
    .locals 0

    .line 74240
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A06:Ljava/lang/String;

    return-object p0
.end method

.method private A08()V
    .locals 9

    .line 74241
    sget v0, Lcom/facebook/ads/redexgen/X/ZH;->A0F:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A07:F

    mul-float/2addr v1, v0

    float-to-int v2, v1

    .line 74242
    .local v0, "buttonSizePx":I
    const/4 v7, -0x1

    invoke-static {p0, v7}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 74243
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZH;->setGravity(I)V

    .line 74244
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Landroid/widget/ImageView;

    .line 74245
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Landroid/widget/ImageView;

    const/4 v3, 0x4

    const/4 v1, 0x5

    const/16 v0, 0x1c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74246
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74247
    .local v2, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74248
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0E:Lcom/facebook/ads/redexgen/X/XX;

    .line 74249
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74250
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74251
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ZH;->A0J:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74252
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZC;-><init>(Lcom/facebook/ads/redexgen/X/ZH;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/ZH;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74254
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0B:Z

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74255
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Landroid/widget/ImageView;

    .line 74256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 74258
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x36

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74259
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74260
    .local v3, "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74261
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0D:Lcom/facebook/ads/redexgen/X/XX;

    .line 74262
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74263
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74264
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ZH;->A0J:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74265
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZD;-><init>(Lcom/facebook/ads/redexgen/X/ZH;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/ZH;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74267
    .end local v3    # "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ZU;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A05:Lcom/facebook/ads/redexgen/X/ZU;

    .line 74268
    const/4 v6, -0x2

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74269
    .local v3, "titleViewsParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0B:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74270
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 74271
    :goto_0
    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 74272
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A05:Lcom/facebook/ads/redexgen/X/ZU;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZU;->setGravity(I)V

    .line 74273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0C:Z

    if-nez v0, :cond_3

    .line 74274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74275
    .local v7, "titleWithHandlerLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74276
    invoke-virtual {p0, v5, v8}, Lcom/facebook/ads/redexgen/X/ZH;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74277
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 74278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74279
    .local v8, "handlerImgV":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74280
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0X:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74281
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74282
    .local p0, "handlerParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74283
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74284
    .local v1, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A05:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74285
    .end local v1    # "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "titleWithHandlerLayout":Landroid/widget/LinearLayout;
    .end local v8    # "handlerImgV":Landroid/widget/ImageView;
    .end local p0    # "handlerParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74286
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A02:Landroid/widget/ImageView;

    .line 74287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 74289
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZH;->A02:Landroid/widget/ImageView;

    const/16 v3, 0x9

    const/4 v1, 0x7

    const/16 v0, 0x5d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74290
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74291
    .local v1, "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A02:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74292
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A02:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0D:Lcom/facebook/ads/redexgen/X/XX;

    .line 74293
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A02(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74294
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74295
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A02:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ZH;->A0J:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74296
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A02:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZE;-><init>(Lcom/facebook/ads/redexgen/X/ZH;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A02:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/ZH;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74298
    .end local v1    # "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    .line 74299
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74300
    .local v1, "nativeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    const/16 v2, 0x10

    const/16 v1, 0x13

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74301
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74302
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ZH;->A0J:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74303
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZF;-><init>(Lcom/facebook/ads/redexgen/X/ZH;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/ZH;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74305
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZH;->A09()V

    .line 74306
    return-void

    .line 74307
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A05:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-virtual {p0, v0, v8}, Lcom/facebook/ads/redexgen/X/ZH;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 74308
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_0
.end method

.method private A09()V
    .locals 7

    .line 74309
    const/4 v5, 0x0

    .line 74310
    .local v0, "nativeBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    .line 74311
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0k(Landroid/content/Context;)Z

    move-result v6

    .line 74312
    .local v1, "alwaysShowDefaultExternalBrowserIcon":Z
    const/4 v3, 0x0

    if-nez v6, :cond_0

    .line 74313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 74314
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_0

    .line 74315
    const/16 v2, 0x2e

    const/16 v1, 0x1a

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A06(III)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/ZH;->A0I:Landroid/net/Uri;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74316
    const/high16 v0, 0x10000

    invoke-virtual {v4, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 74317
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74318
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74319
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A09:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v6, :cond_6

    .line 74320
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 74321
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    const/4 v0, 0x1

    if-ne v5, v0, :cond_4

    .line 74322
    :goto_1
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4

    .line 74323
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x12

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74324
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0F:Lcom/facebook/ads/redexgen/X/XX;

    .line 74325
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    const-string v1, "OiPmrAn3GllLAwonlzrco6n6FhbN6530"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x1

    if-ne v5, v0, :cond_4

    goto :goto_1

    .line 74326
    :cond_4
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZH;->getExternalBrowserBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    const-string v1, "H3zrzdIXpl7cuf9737Dh0UcXPx3q90pI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74327
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZH;->getExternalBrowserBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 74328
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 74329
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    const-string v1, "C5b1pkMeIVGGxpo7XcAe9IGkuMZh8kn1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void
.end method

.method public static A0A()V
    .locals 4

    const/16 v0, 0x71

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    const-string v1, "Ujyw6mT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Vqhraj8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/ZH;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x2bt
        -0xct
        -0xat
        -0x2t
        -0x44t
        -0x1bt
        -0x18t
        -0x14t
        -0x22t
        0x0t
        0x29t
        0x2ct
        0x31t
        0x1bt
        0x2ct
        0x1et
        0x17t
        0x38t
        0x2dt
        0x36t
        -0x18t
        0x36t
        0x29t
        0x3ct
        0x31t
        0x3et
        0x2dt
        -0x18t
        0x2at
        0x3at
        0x37t
        0x3ft
        0x3bt
        0x2dt
        0x3at
        0x29t
        0x2at
        0x37t
        0x3dt
        0x3ct
        0x2t
        0x2at
        0x34t
        0x29t
        0x36t
        0x33t
        0x37t
        0x44t
        0x3at
        0x48t
        0x45t
        0x3ft
        0x3at
        0x4t
        0x3ft
        0x44t
        0x4at
        0x3bt
        0x44t
        0x4at
        0x4t
        0x37t
        0x39t
        0x4at
        0x3ft
        0x45t
        0x44t
        0x4t
        0x2ct
        0x1ft
        0x1bt
        0x2dt
        -0x1dt
        -0x11t
        -0x13t
        -0x52t
        -0x1ft
        -0x12t
        -0x1ct
        -0xet
        -0x11t
        -0x17t
        -0x1ct
        -0x52t
        -0x1dt
        -0x18t
        -0xet
        -0x11t
        -0x13t
        -0x1bt
        0x3bt
        0x47t
        0x47t
        0x43t
        0xdt
        0x2t
        0x2t
        0x4at
        0x4at
        0x4at
        0x1t
        0x39t
        0x34t
        0x36t
        0x38t
        0x35t
        0x42t
        0x42t
        0x3et
        0x1t
        0x36t
        0x42t
        0x40t
    .end array-data
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/ZH;Z)V
    .locals 0

    .line 74330
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZH;->A0D(Z)V

    return-void
.end method

.method private A0C(Z)V
    .locals 2

    .line 74331
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 74332
    .local v0, "visibility":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 74333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74334
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A02:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 74335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74336
    :cond_1
    return-void

    .line 74337
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private A0D(Z)V
    .locals 1

    .line 74338
    if-eqz p1, :cond_0

    .line 74339
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A0C(Z)V

    .line 74340
    :cond_0
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/ZH;)Z
    .locals 0

    .line 74341
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0B:Z

    return p0
.end method

.method public static getExternalBrowserBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 74343
    sget-object v3, Lcom/facebook/ads/redexgen/X/XX;->A0H:Lcom/facebook/ads/redexgen/X/XX;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    const-string v1, "lUY1mRDCMXM3WZHcFiHRXNaY27JpPEEp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/ZZ;
    .locals 1

    .line 74342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A0A:Lcom/facebook/ads/redexgen/X/ZZ;

    return-object v0
.end method

.method public setCloseButtonVisibility(I)V
    .locals 1

    .line 74344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74345
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/ZG;)V
    .locals 0

    .line 74346
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A04:Lcom/facebook/ads/redexgen/X/ZG;

    .line 74347
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 74348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A05:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZU;->setTitle(Ljava/lang/String;)V

    .line 74349
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 5

    .line 74350
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A06:Ljava/lang/String;

    .line 74351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A06:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/16 v2, 0x23

    const/16 v1, 0xb

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A06(III)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4b

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A0E:[Ljava/lang/String;

    const-string v1, "qQ1cUQL6zuFcmcs6RwakvLgHhcCBx0UL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A06:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74352
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A05:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/ZU;->setSubtitle(Ljava/lang/String;)V

    .line 74353
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74354
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/ads/redexgen/X/ZH;->A0G:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 74355
    :goto_0
    return-void

    .line 74356
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A05:Lcom/facebook/ads/redexgen/X/ZU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZU;->setSubtitle(Ljava/lang/String;)V

    .line 74357
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
