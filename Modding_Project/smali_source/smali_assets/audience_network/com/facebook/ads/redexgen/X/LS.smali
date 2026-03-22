.class public final Lcom/facebook/ads/redexgen/X/LS;
.super Lcom/facebook/ads/redexgen/X/Yd;
.source ""


# static fields
.field public static A05:[B

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Landroid/widget/LinearLayout;

.field public final A02:Landroid/widget/ScrollView;

.field public final A03:Lcom/facebook/ads/redexgen/X/O2;

.field public final A04:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1290
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LS;->A01()V

    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/LS;->A08:I

    .line 1291
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/LS;->A07:I

    .line 1292
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/LS;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;)V
    .locals 5

    .line 50199
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Yd;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;)V

    .line 50200
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LS;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 50201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O3;->A00(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A03:Lcom/facebook/ads/redexgen/X/O2;

    .line 50202
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LS;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    .line 50203
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/LS;->A07:I

    sget v2, Lcom/facebook/ads/redexgen/X/LS;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/LS;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/LS;->A07:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 50204
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 50205
    sget v2, Lcom/facebook/ads/redexgen/X/LS;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/LS;->A06:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50206
    .local v0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x3

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50208
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LS;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A02:Landroid/widget/ScrollView;

    .line 50209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A02:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 50210
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A02:Landroid/widget/ScrollView;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 50211
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LS;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    .line 50212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50213
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    sget v3, Lcom/facebook/ads/redexgen/X/LS;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/LS;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/LS;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/LS;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 50214
    const/4 v0, -0x2

    const/4 v3, -0x1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50215
    .local v1, "mainLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A02:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50216
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A02:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LS;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50217
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/LS;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x18

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/LS;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x34t
        -0x15t
        -0x13t
        -0xbt
        0x78t
        -0x5ft
        -0x5ct
        -0x58t
        -0x66t
        0x55t
        0x76t
        -0x67t
        0x55t
        -0x79t
        -0x66t
        -0x5bt
        -0x5ct
        -0x59t
        -0x57t
        -0x62t
        -0x5dt
        -0x64t
    .end array-data
.end method


# virtual methods
.method public final A0N()V
    .locals 9

    .line 50218
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0O:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50219
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yw;-><init>(Lcom/facebook/ads/redexgen/X/LS;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50220
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v7, Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/Yh;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50222
    .local v0, "hideAdView":Lcom/facebook/ads/redexgen/X/Yh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A03:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0H()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0Y:Lcom/facebook/ads/redexgen/X/XX;

    invoke-virtual {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 50223
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yx;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/Yx;-><init>(Lcom/facebook/ads/redexgen/X/LS;Lcom/facebook/ads/redexgen/X/Yh;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Yh;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50225
    .local v1, "reportAdView":Lcom/facebook/ads/redexgen/X/Yh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A03:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0L()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0p:Lcom/facebook/ads/redexgen/X/XX;

    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 50226
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yy;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/Yy;-><init>(Lcom/facebook/ads/redexgen/X/LS;Lcom/facebook/ads/redexgen/X/Yh;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v5, Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Yh;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50228
    .local v2, "whyAmISeeingThisView":Lcom/facebook/ads/redexgen/X/Yh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A03:Lcom/facebook/ads/redexgen/X/O2;

    .line 50229
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0M()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A06:Lcom/facebook/ads/redexgen/X/XX;

    .line 50230
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 50231
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yz;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Yz;-><init>(Lcom/facebook/ads/redexgen/X/LS;Lcom/facebook/ads/redexgen/X/Yh;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50232
    const/4 v8, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50233
    .local v3, "menuItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/LS;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/LS;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/LS;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/LS;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 50234
    const/16 v1, 0x11

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50235
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LS;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50236
    .local v6, "menuLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50237
    const/4 v0, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50238
    .local v4, "menuParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50239
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 50241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 50242
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50244
    invoke-virtual {v3, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50245
    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50246
    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50247
    return-void
.end method

.method public final A0O()V
    .locals 0

    .line 50248
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0G(Landroid/view/View;)V

    .line 50249
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 50250
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/O6;Lcom/facebook/ads/redexgen/X/O4;)V
    .locals 6

    .line 50251
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50252
    sget-object v0, Lcom/facebook/ads/redexgen/X/O4;->A06:Lcom/facebook/ads/redexgen/X/O4;

    if-ne p2, v0, :cond_0

    .line 50253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A03:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0F()Ljava/lang/String;

    move-result-object v5

    .line 50254
    .local v0, "title":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/XX;->A0p:Lcom/facebook/ads/redexgen/X/XX;

    .line 50255
    .local v1, "icon":Lcom/facebook/ads/redexgen/X/XX;
    const v3, -0x86dc5

    .line 50256
    .local v2, "iconBackground":I
    .restart local v2    # "iconBackground":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LS;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A0B:Lcom/facebook/ads/redexgen/X/Yf;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Yb;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Yf;)V

    .line 50257
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Yb;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A03:Lcom/facebook/ads/redexgen/X/O2;

    .line 50258
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    .line 50259
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O6;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    .line 50260
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->A0K(Z)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    .line 50261
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Yb;->A0E(Lcom/facebook/ads/redexgen/X/XX;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    .line 50262
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Yb;->A0D(I)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    .line 50263
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->A0L(Z)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    .line 50264
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->A0J(Z)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    .line 50265
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0M()Lcom/facebook/ads/redexgen/X/Yc;

    move-result-object v3

    .line 50266
    .local v3, "adHiddenView":Lcom/facebook/ads/redexgen/X/Yc;
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50267
    .local v4, "adHiddenViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50268
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 50270
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A02:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 50271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 50272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50273
    return-void

    .line 50274
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "icon":Lcom/facebook/ads/redexgen/X/XX;
    .end local v2    # "iconBackground":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A03:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0H()Ljava/lang/String;

    move-result-object v5

    .line 50275
    .restart local v0    # "title":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/XX;->A0Y:Lcom/facebook/ads/redexgen/X/XX;

    .line 50276
    .restart local v1    # "icon":Lcom/facebook/ads/redexgen/X/XX;
    const v3, -0xca871b

    goto :goto_0
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/O6;Lcom/facebook/ads/redexgen/X/O4;)V
    .locals 6

    .line 50277
    sget-object v0, Lcom/facebook/ads/redexgen/X/O4;->A06:Lcom/facebook/ads/redexgen/X/O4;

    const/4 v3, 0x0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 50278
    .local v0, "isReportFlow":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LS;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A0B:Lcom/facebook/ads/redexgen/X/Yf;

    .line 50279
    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0p:Lcom/facebook/ads/redexgen/X/XX;

    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/Yv;

    invoke-direct {v4, v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Yv;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/O6;Lcom/facebook/ads/redexgen/X/Yf;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 50280
    .local v2, "optionChooserView":Landroid/view/View;
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50281
    .local v1, "optionChooserParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50282
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50283
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0C:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50284
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Z0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Z0;-><init>(Lcom/facebook/ads/redexgen/X/LS;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50285
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 50287
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A02:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 50288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 50289
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LS;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50291
    return-void

    .line 50292
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0Y:Lcom/facebook/ads/redexgen/X/XX;

    goto :goto_1

    .line 50293
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0R()Z
    .locals 1

    .line 50294
    const/4 v0, 0x1

    return v0
.end method
