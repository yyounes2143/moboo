.class public final Lcom/facebook/ads/redexgen/X/ZO;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ZN;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:Landroid/net/Uri;

.field public static final A0K:Landroid/view/View$OnTouchListener;


# instance fields
.field public A00:Landroid/widget/ImageView;

.field public A01:Landroid/widget/ImageView;

.field public A02:Landroid/widget/ImageView;

.field public A03:Landroid/widget/ImageView;

.field public A04:Landroid/widget/LinearLayout;

.field public A05:Lcom/facebook/ads/redexgen/X/ZN;

.field public A06:Lcom/facebook/ads/redexgen/X/ZV;

.field public A07:Ljava/lang/String;

.field public final A08:F

.field public final A09:Landroid/webkit/WebView;

.field public final A0A:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0B:Lcom/facebook/ads/redexgen/X/ZZ;

.field public final A0C:Z

.field public final A0D:Z

.field public final A0E:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2448
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SfnKd94fp0LIHLn5JRYBcVoydcWvvWC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zcIUR0bnd2fDOpnzxhHInmQw6nqRGEtO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Rlzv6bB7Czucpp1t79MjvCXFuIOZg8dc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c1MACJD11uXVhN3Ickl6ZqMudEgzXQA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WTgVZUaV9yT0hbCJXLqGbS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "77CVi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3ZIeaeVMqGSC8jDTqrHFXNca0PmxnycW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZO;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZO;->A0A()V

    const/16 v0, 0xe0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZO;->A0H:I

    .line 2449
    const/16 v2, 0x5a

    const/16 v1, 0x17

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZO;->A0J:Landroid/net/Uri;

    .line 2450
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZI;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZI;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZO;->A0K:Landroid/view/View$OnTouchListener;

    .line 2451
    const/16 v1, 0x22

    const/4 v0, 0x0

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZO;->A0I:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/webkit/WebView;)V
    .locals 1

    .line 74394
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/ZO;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/webkit/WebView;ZZ)V

    .line 74395
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/webkit/WebView;ZZ)V
    .locals 1

    .line 74396
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74397
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZO;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A08:F

    .line 74398
    new-instance v0, Lcom/facebook/ads/redexgen/X/LQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LQ;-><init>(Lcom/facebook/ads/redexgen/X/ZO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0B:Lcom/facebook/ads/redexgen/X/ZZ;

    .line 74399
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZO;->A09:Landroid/webkit/WebView;

    .line 74400
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 74401
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U8;->A06(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0C:Z

    .line 74402
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0E:Z

    .line 74403
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0D:Z

    .line 74404
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZO;->A08()V

    .line 74405
    if-eqz p4, :cond_0

    .line 74406
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZO;->A0C(Z)V

    .line 74407
    :cond_0
    return-void
.end method

.method public static synthetic A00()I
    .locals 1

    .line 74408
    sget v0, Lcom/facebook/ads/redexgen/X/ZO;->A0I:I

    return v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ZO;)Landroid/webkit/WebView;
    .locals 0

    .line 74409
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A09:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/ZO;)Landroid/widget/ImageView;
    .locals 0

    .line 74410
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/ZO;)Landroid/widget/ImageView;
    .locals 0

    .line 74411
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/ZO;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 74412
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/ZO;)Lcom/facebook/ads/redexgen/X/ZN;
    .locals 0

    .line 74413
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A05:Lcom/facebook/ads/redexgen/X/ZN;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZO;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/ZO;)Ljava/lang/String;
    .locals 0

    .line 74414
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A07:Ljava/lang/String;

    return-object p0
.end method

.method private A08()V
    .locals 10

    .line 74415
    const/high16 v1, 0x42480000    # 50.0f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A08:F

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 74416
    .local v0, "buttonSizePx":I
    const/4 v7, -0x1

    invoke-static {p0, v7}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 74417
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZO;->setGravity(I)V

    .line 74418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A01:Landroid/widget/ImageView;

    .line 74419
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZO;->A01:Landroid/widget/ImageView;

    const/4 v3, 0x4

    const/4 v1, 0x5

    const/16 v0, 0x10

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74420
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74421
    .local v2, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74422
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0E:Lcom/facebook/ads/redexgen/X/XX;

    .line 74423
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74424
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74425
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ZO;->A0K:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74426
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZJ;-><init>(Lcom/facebook/ads/redexgen/X/ZO;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/ZO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74428
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0C:Z

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74429
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Landroid/widget/ImageView;

    .line 74430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 74432
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74433
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74434
    .local v3, "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74435
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0C:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74436
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ZO;->A0K:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74437
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZK;-><init>(Lcom/facebook/ads/redexgen/X/ZO;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/ZO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74439
    .end local v3    # "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ZV;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A06:Lcom/facebook/ads/redexgen/X/ZV;

    .line 74440
    const/4 v6, -0x2

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74441
    .local v3, "titleViewsParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74442
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 74443
    :goto_0
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 74444
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A06:Lcom/facebook/ads/redexgen/X/ZV;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZV;->setGravity(I)V

    .line 74445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0E:Z

    if-nez v0, :cond_3

    .line 74446
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A04:Landroid/widget/LinearLayout;

    .line 74447
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A04:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74448
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/ZO;->A04:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A08:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    float-to-int v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A08:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v8, v5, v1, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 74449
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 74450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v9}, Lcom/facebook/ads/redexgen/X/ZO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74452
    .local v7, "handlerImgV":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74453
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0X:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74454
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A08:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v0, v3

    float-to-int v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A08:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v8, v5, v1, v5, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 74455
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74456
    .local v8, "handlerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74457
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74458
    .local v1, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A06:Lcom/facebook/ads/redexgen/X/ZV;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74459
    .end local v1    # "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "handlerImgV":Landroid/widget/ImageView;
    .end local v8    # "handlerParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0C:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74460
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Landroid/widget/ImageView;

    .line 74461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 74463
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Landroid/widget/ImageView;

    const/16 v3, 0x9

    const/4 v1, 0x7

    const/16 v0, 0x69

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74464
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74465
    .local v1, "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74466
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0C:Lcom/facebook/ads/redexgen/X/XX;

    .line 74467
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A02(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74468
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74469
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ZO;->A0K:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74470
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZL;-><init>(Lcom/facebook/ads/redexgen/X/ZO;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/ZO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74472
    .end local v1    # "backButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    .line 74473
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74474
    .local v1, "nativeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    const/16 v2, 0x10

    const/16 v1, 0x13

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74475
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74476
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ZO;->A0K:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74477
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZM;-><init>(Lcom/facebook/ads/redexgen/X/ZO;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/ZO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74479
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZO;->A09()V

    .line 74480
    return-void

    .line 74481
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A06:Lcom/facebook/ads/redexgen/X/ZV;

    invoke-virtual {p0, v0, v9}, Lcom/facebook/ads/redexgen/X/ZO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 74482
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_0
.end method

.method private A09()V
    .locals 7

    .line 74483
    const/4 v3, 0x0

    .line 74484
    .local v0, "nativeBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    .line 74485
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0k(Landroid/content/Context;)Z

    move-result v6

    .line 74486
    .local v1, "alwaysShowDefaultExternalBrowserIcon":Z
    const/4 v4, 0x0

    if-nez v6, :cond_0

    .line 74487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 74488
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v5, :cond_0

    .line 74489
    const/16 v2, 0x2e

    const/16 v1, 0x1a

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->A06(III)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/ZO;->A0J:Landroid/net/Uri;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74490
    const/high16 v0, 0x10000

    invoke-virtual {v5, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 74491
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74492
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74493
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0A:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v6, :cond_2

    .line 74494
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74495
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZO;->getExternalBrowserBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 74496
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74497
    return-void

    .line 74498
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6

    .line 74499
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZO;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZO;->A0G:[Ljava/lang/String;

    const-string v1, "Y9G9nX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_6

    .line 74500
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZO;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZO;->A0G:[Ljava/lang/String;

    const-string v1, "hqSHhnICOqiHaN8u87jsv4Qx8TBqcflH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "kBU630hheaj535sYoezwG0Sk33mkxVnX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x12

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 74501
    :goto_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0F:Lcom/facebook/ads/redexgen/X/XX;

    .line 74502
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x12

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 74503
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZO;->getExternalBrowserBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x71

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZO;->A0F:[B

    return-void

    :array_0
    .array-data 1
        -0x17t
        0x8t
        0xat
        0x12t
        -0x72t
        -0x49t
        -0x46t
        -0x42t
        -0x50t
        -0x16t
        0x13t
        0x16t
        0x1bt
        0x5t
        0x16t
        0x8t
        -0x4at
        -0x29t
        -0x34t
        -0x2bt
        -0x79t
        -0x2bt
        -0x38t
        -0x25t
        -0x30t
        -0x23t
        -0x34t
        -0x79t
        -0x37t
        -0x27t
        -0x2at
        -0x22t
        -0x26t
        -0x34t
        -0x27t
        -0x6t
        -0x5t
        0x8t
        0xet
        0xdt
        -0x2dt
        -0x5t
        0x5t
        -0x6t
        0x7t
        0x4t
        0x17t
        0x24t
        0x1at
        0x28t
        0x25t
        0x1ft
        0x1at
        -0x1ct
        0x1ft
        0x24t
        0x2at
        0x1bt
        0x24t
        0x2at
        -0x1ct
        0x17t
        0x19t
        0x2at
        0x1ft
        0x25t
        0x24t
        -0x1ct
        0xct
        -0x1t
        -0x5t
        0xdt
        0x12t
        0x1et
        0x1ct
        -0x23t
        0x10t
        0x1dt
        0x13t
        0x21t
        0x1et
        0x18t
        0x13t
        -0x23t
        0x12t
        0x17t
        0x21t
        0x1et
        0x1ct
        0x14t
        -0x44t
        -0x38t
        -0x38t
        -0x3ct
        -0x72t
        -0x7dt
        -0x7dt
        -0x35t
        -0x35t
        -0x35t
        -0x7et
        -0x46t
        -0x4bt
        -0x49t
        -0x47t
        -0x4at
        -0x3dt
        -0x3dt
        -0x41t
        -0x7et
        -0x49t
        -0x3dt
        -0x3ft
    .end array-data
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/ZO;Z)V
    .locals 0

    .line 74504
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZO;->A0D(Z)V

    return-void
.end method

.method private A0C(Z)V
    .locals 5

    .line 74505
    if-eqz p1, :cond_2

    const/4 v4, 0x0

    .line 74506
    .local v0, "visibility":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZO;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZO;->A0G:[Ljava/lang/String;

    const-string v1, "nknH3C2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 74507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74508
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 74509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74510
    :cond_1
    return-void

    .line 74511
    :cond_2
    const/16 v4, 0x8

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(Z)V
    .locals 1

    .line 74512
    if-eqz p1, :cond_0

    .line 74513
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZO;->A0C(Z)V

    .line 74514
    :cond_0
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/ZO;)Z
    .locals 0

    .line 74515
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0C:Z

    return p0
.end method

.method private getExternalBrowserBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 74517
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0D:Z

    if-eqz v0, :cond_0

    .line 74518
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0H:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 74519
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0G:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/ZZ;
    .locals 1

    .line 74516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A0B:Lcom/facebook/ads/redexgen/X/ZZ;

    return-object v0
.end method

.method public setCloseButtonVisibility(I)V
    .locals 1

    .line 74520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74521
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/ZN;)V
    .locals 0

    .line 74522
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A05:Lcom/facebook/ads/redexgen/X/ZN;

    .line 74523
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 74524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A06:Lcom/facebook/ads/redexgen/X/ZV;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZV;->setTitle(Ljava/lang/String;)V

    .line 74525
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 4

    .line 74526
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A07:Ljava/lang/String;

    .line 74527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A07:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/16 v2, 0x23

    const/16 v1, 0xb

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZO;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74528
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A06:Lcom/facebook/ads/redexgen/X/ZV;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/ZV;->setSubtitle(Ljava/lang/String;)V

    .line 74529
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74530
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/ads/redexgen/X/ZO;->A0H:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 74531
    :goto_0
    return-void

    .line 74532
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A06:Lcom/facebook/ads/redexgen/X/ZV;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A07:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZV;->setSubtitle(Ljava/lang/String;)V

    .line 74533
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZO;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
