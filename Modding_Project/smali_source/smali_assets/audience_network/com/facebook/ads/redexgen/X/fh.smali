.class public final Lcom/facebook/ads/redexgen/X/fh;
.super Lcom/facebook/ads/redexgen/X/R8;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/MediaViewApi;
.implements Lcom/facebook/ads/internal/context/Repairable;
.implements Lcom/facebook/ads/redexgen/X/SM;


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Landroid/view/View;

.field public A02:Landroid/widget/ImageView;

.field public A03:Lcom/facebook/ads/MediaView;

.field public A04:Lcom/facebook/ads/MediaViewListener;

.field public A05:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A07:Lcom/facebook/ads/redexgen/X/dL;

.field public A08:Lcom/facebook/ads/redexgen/X/0L;

.field public A09:Lcom/facebook/ads/redexgen/X/Zl;

.field public A0A:Lcom/facebook/ads/redexgen/X/5G;

.field public A0B:Lcom/facebook/ads/redexgen/X/cw;

.field public A0C:Z

.field public A0D:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2758
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "opPNeHLRCwNMjghH70VvpS5N8kNNBiJu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eEOY2RUjN4bpbDsCyz0GPhNNbfKnjNLD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VFQc0pqb8IELGhnpfLoj2hUSBo2VhTCu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GBUHck22"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gxS7cL5mKFosIlCCzwl1gr8LaZQoy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JvRhV7isjcFk5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Q8NK4BrUIZ6kI5bk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yT7QEu4e"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/fh;->A08()V

    const-class v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fh;->A0G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81152
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R8;-><init>()V

    .line 81153
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/MediaView;
    .locals 0

    .line 81154
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 81155
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 81156
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/redexgen/X/5G;
    .locals 0

    .line 81157
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/fh;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v1, "ck5ggAbj2vioxfDq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "NneLGMvrJ83sFMBsADIKrHrKRcoTv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05()V
    .locals 3

    .line 81158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    if-eqz v0, :cond_0

    .line 81159
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->setVisibility(I)V

    .line 81160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    .line 81161
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5G;->getDynamicWebViewController()Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bt;->A0O()Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 81162
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/P3;->A0A(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 81163
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 81164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    .line 81165
    :cond_0
    return-void
.end method

.method private A06()V
    .locals 3

    .line 81166
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0D:Z

    if-nez v0, :cond_1

    .line 81167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A08:Lcom/facebook/ads/redexgen/X/0L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 81169
    :cond_0
    sget v2, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    .line 81170
    .local v0, "density":F
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 81171
    .local v1, "hPadding":I
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 81172
    .local v2, "vPadding":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A08:Lcom/facebook/ads/redexgen/X/0L;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/0L;->setChildSpacing(I)V

    .line 81173
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A08:Lcom/facebook/ads/redexgen/X/0L;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Lcom/facebook/ads/redexgen/X/0L;->setPadding(IIII)V

    .line 81174
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A08:Lcom/facebook/ads/redexgen/X/0L;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0L;->setVisibility(I)V

    .line 81175
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81176
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A08:Lcom/facebook/ads/redexgen/X/0L;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    .line 81178
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81179
    return-void

    .line 81180
    .end local v0    # "density":F
    .end local v1    # "hPadding":I
    .end local v2    # "vPadding":I
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fh;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A07()V
    .locals 2

    .line 81181
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wq;->A0B:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Wq;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 81182
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wq;->A0B:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Wq;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 81183
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wq;->A0B:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Wq;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 81184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wq;->A0B:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Wq;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 81185
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x12d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fh;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x3dt
        -0x1ft
        -0xet
        -0x11t
        -0xbt
        -0xdt
        -0x1bt
        -0x14t
        -0x60t
        -0xet
        -0x1bt
        -0x12t
        -0x1ct
        -0x1bt
        -0xet
        -0x1bt
        -0xet
        -0x60t
        -0x13t
        -0xbt
        -0xdt
        -0xct
        -0x60t
        -0x1et
        -0x1bt
        -0x60t
        -0xdt
        -0x1bt
        -0xct
        -0x60t
        -0x1et
        -0x1bt
        -0x1at
        -0x11t
        -0xet
        -0x1bt
        -0x60t
        -0x12t
        -0x1ft
        -0xct
        -0x17t
        -0xat
        -0x1bt
        -0x3ft
        -0x1ct
        -0x52t
        0x9t
        0x5t
        0x4t
        0x38t
        0x27t
        0x2ct
        0x28t
        0x31t
        0x26t
        0x28t
        0x11t
        0x28t
        0x37t
        0x3at
        0x32t
        0x35t
        0x2et
        -0x34t
        -0x10t
        -0x1ct
        -0x16t
        -0x18t
        -0x5dt
        -0xbt
        -0x18t
        -0xft
        -0x19t
        -0x18t
        -0xbt
        -0x18t
        -0xbt
        -0x5dt
        -0x10t
        -0x8t
        -0xat
        -0x9t
        -0x5dt
        -0x1bt
        -0x18t
        -0x5dt
        -0xat
        -0x18t
        -0x9t
        -0x5dt
        -0x1bt
        -0x18t
        -0x17t
        -0xet
        -0xbt
        -0x18t
        -0x5dt
        -0xft
        -0x1ct
        -0x9t
        -0x14t
        -0x7t
        -0x18t
        -0x3ct
        -0x19t
        -0x4ft
        -0x7t
        0x1dt
        0x11t
        0x17t
        0x15t
        -0x30t
        0x22t
        0x15t
        0x1et
        0x14t
        0x15t
        0x22t
        0x15t
        0x22t
        -0x30t
        0x1dt
        0x25t
        0x23t
        0x24t
        -0x30t
        0x12t
        0x15t
        -0x30t
        0x23t
        0x15t
        0x24t
        -0x30t
        0x12t
        0x15t
        0x16t
        0x1ft
        0x22t
        0x15t
        -0x30t
        0x1et
        0x11t
        0x24t
        0x19t
        0x26t
        0x15t
        -0xet
        0x11t
        0x1et
        0x1et
        0x15t
        0x22t
        -0xft
        0x14t
        -0x22t
        -0x53t
        -0x2et
        -0x26t
        -0x3bt
        -0x30t
        -0x33t
        -0x38t
        -0x7ct
        -0x46t
        -0x33t
        -0x37t
        -0x25t
        -0x7ct
        -0x39t
        -0x2dt
        -0x2et
        -0x29t
        -0x28t
        -0x2at
        -0x27t
        -0x39t
        -0x28t
        -0x2dt
        -0x2at
        -0x7ct
        -0x2ct
        -0x3bt
        -0x2at
        -0x3bt
        -0x2ft
        -0x29t
        -0x7ct
        -0x28t
        -0x23t
        -0x2ct
        -0x37t
        -0x6et
        -0x3et
        -0x2bt
        -0x18t
        -0x23t
        -0x16t
        -0x27t
        -0x6ct
        -0x4bt
        -0x28t
        -0x6ct
        -0x43t
        -0x29t
        -0x1dt
        -0x1et
        -0x6ct
        -0x23t
        -0x19t
        -0x6ct
        -0x1et
        -0x17t
        -0x20t
        -0x20t
        -0x5et
        -0x1at
        -0x7t
        -0xct
        -0xbt
        -0x1t
        -0x50t
        0x2t
        -0xbt
        -0x2t
        -0xct
        -0xbt
        0x2t
        -0xbt
        0x2t
        -0x50t
        -0x3t
        0x5t
        0x3t
        0x4t
        -0x50t
        -0xet
        -0xbt
        -0x50t
        0x3t
        -0xbt
        0x4t
        -0x50t
        -0xet
        -0xbt
        -0xat
        -0x1t
        0x2t
        -0xbt
        -0x50t
        -0x2t
        -0xft
        0x4t
        -0x7t
        0x6t
        -0xbt
        -0x2ft
        -0xct
        -0x42t
        -0x29t
        -0x1at
        -0x21t
        -0x46t
        -0x3at
        -0x3ct
        -0x7bt
        -0x43t
        -0x48t
        -0x46t
        -0x44t
        -0x47t
        -0x3at
        -0x3at
        -0x3et
        -0x7bt
        -0x48t
        -0x45t
        -0x36t
        -0x7bt
        -0x3bt
        -0x48t
        -0x35t
        -0x40t
        -0x33t
        -0x44t
        -0x7bt
        -0x46t
        -0x3dt
        -0x40t
        -0x46t
        -0x3et
        -0x44t
        -0x45t
        -0xft
        -0x1ct
        -0x21t
        -0x20t
        -0x16t
        -0x30t
        -0x13t
        -0x19t
        -0x48t
    .end array-data
.end method

.method private final A09(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 81186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R8;->A01(Z)V

    .line 81187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R8;->A01(Z)V

    .line 81189
    return-void
.end method

.method private A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Qc;)V
    .locals 3

    .line 81190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0B:Lcom/facebook/ads/redexgen/X/cw;

    if-eqz v0, :cond_0

    .line 81191
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0B:Lcom/facebook/ads/redexgen/X/cw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 81192
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qc;->A1g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81193
    return-void

    .line 81194
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qc;->A1D()Ljava/lang/String;

    move-result-object v1

    .line 81195
    .local v0, "mediationData":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81196
    .local v1, "context":Landroid/content/Context;
    if-nez v0, :cond_2

    .line 81197
    return-void

    .line 81198
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/cv;->A01(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/cw;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0B:Lcom/facebook/ads/redexgen/X/cw;

    .line 81199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0B:Lcom/facebook/ads/redexgen/X/cw;

    if-eqz v0, :cond_3

    .line 81200
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81201
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81202
    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81203
    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81204
    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81205
    const/16 v1, 0x10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81206
    const/16 v1, 0x11

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0B:Lcom/facebook/ads/redexgen/X/cw;

    invoke-direct {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/fh;->A09(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81208
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0B:Lcom/facebook/ads/redexgen/X/cw;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 81209
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method private A0B(Landroid/widget/ImageView;)V
    .locals 4

    .line 81210
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0D:Z

    if-nez v0, :cond_2

    .line 81211
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/fh;->A02:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v1, "0pGJtKTiEG7M1QZmgSqLESVqtH6XSoGw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 81212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A02:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 81213
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81214
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81215
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81217
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XP;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 81218
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fh;->A02:Landroid/widget/ImageView;

    .line 81219
    return-void

    .line 81220
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v2, 0x6a

    const/16 v1, 0x31

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fh;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V
    .locals 1

    .line 81221
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    .line 81222
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->A0B(Landroid/widget/ImageView;)V

    .line 81223
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Zl;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->A0H(Lcom/facebook/ads/redexgen/X/Zl;)V

    .line 81224
    new-instance v0, Lcom/facebook/ads/redexgen/X/0L;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/0L;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A08:Lcom/facebook/ads/redexgen/X/0L;

    .line 81225
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fh;->A06()V

    .line 81226
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 81227
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fh;->A07()V

    .line 81228
    return-void
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V
    .locals 1

    .line 81229
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    .line 81230
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->A0B(Landroid/widget/ImageView;)V

    .line 81231
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zl;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Zl;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->A0H(Lcom/facebook/ads/redexgen/X/Zl;)V

    .line 81232
    new-instance v0, Lcom/facebook/ads/redexgen/X/0L;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/0L;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A08:Lcom/facebook/ads/redexgen/X/0L;

    .line 81233
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fh;->A06()V

    .line 81234
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 81235
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fh;->A07()V

    .line 81236
    return-void
.end method

.method private final A0E(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 81237
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    .line 81238
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->A0B(Landroid/widget/ImageView;)V

    .line 81239
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zl;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Zl;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->A0H(Lcom/facebook/ads/redexgen/X/Zl;)V

    .line 81240
    new-instance v0, Lcom/facebook/ads/redexgen/X/0L;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/0L;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A08:Lcom/facebook/ads/redexgen/X/0L;

    .line 81241
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fh;->A06()V

    .line 81242
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 81243
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fh;->A07()V

    .line 81244
    return-void
.end method

.method private final A0F(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 81245
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    .line 81246
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->A0B(Landroid/widget/ImageView;)V

    .line 81247
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zl;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Zl;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->A0H(Lcom/facebook/ads/redexgen/X/Zl;)V

    .line 81248
    new-instance v0, Lcom/facebook/ads/redexgen/X/0L;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/0L;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A08:Lcom/facebook/ads/redexgen/X/0L;

    .line 81249
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fh;->A06()V

    .line 81250
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 81251
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fh;->A07()V

    .line 81252
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/Qc;ZLcom/facebook/ads/redexgen/X/Up;)V
    .locals 3

    .line 81253
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fh;->A02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 81254
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04()Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    .line 81255
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/KZ;
    if-eqz p2, :cond_0

    .line 81256
    new-instance v0, Lcom/facebook/ads/redexgen/X/fo;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/fo;-><init>(Lcom/facebook/ads/redexgen/X/fh;Lcom/facebook/ads/redexgen/X/Qc;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A06(Lcom/facebook/ads/redexgen/X/Zo;)Lcom/facebook/ads/redexgen/X/KZ;

    .line 81257
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 81258
    return-void
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/Zl;)V
    .locals 3

    .line 81259
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0D:Z

    if-nez v0, :cond_1

    .line 81260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    if-eqz v0, :cond_0

    .line 81261
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 81262
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Zl;->setVisibility(I)V

    .line 81263
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81264
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81266
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    .line 81267
    return-void

    .line 81268
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v2, 0x3f

    const/16 v1, 0x2b

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fh;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0I(Lcom/facebook/ads/NativeAd;)Z
    .locals 4

    .line 81269
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RK;->A03()Ljava/util/List;

    move-result-object v0

    .line 81270
    .local v0, "carousel":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/NativeAd;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 81271
    return v2

    .line 81272
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    .line 81273
    .local v3, "childNativeAd":Lcom/facebook/ads/NativeAd;
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-nez v0, :cond_1

    .line 81274
    return v2

    .line 81275
    :cond_2
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v1, "NNKiamhSotpSBh0S"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "WQowSckFUFZtjqKDGN1yGWQ8HKryj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3
.end method

.method private A0J(Lcom/facebook/ads/NativeAd;)Z
    .locals 1

    .line 81276
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RK;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 81277
    :goto_0
    return v0

    .line 81278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/fh;Lcom/facebook/ads/NativeAd;)Z
    .locals 0

    .line 81279
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/fh;->A0J(Lcom/facebook/ads/NativeAd;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0L(Lcom/facebook/ads/NativeAd;)V
    .locals 17

    .line 81280
    move-object/from16 v3, p0

    move-object v3, v3

    .line 81281
    move-object/from16 v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    .line 81282
    .local v2, "adObjectContext":Lcom/facebook/ads/redexgen/X/dL;
    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/dL;->A0O(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 81283
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/dL;->A0L(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 81284
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dL;->A0K(Lcom/facebook/ads/redexgen/X/LH;)V

    .line 81285
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/facebook/ads/redexgen/X/fh;->A0D:Z

    .line 81286
    invoke-virtual {v6}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v2

    .line 81287
    .local v4, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Qc;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1T(Lcom/facebook/ads/MediaView;)V

    .line 81288
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A02:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81289
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A02:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81290
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    const/16 v5, 0xd

    const/4 v1, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1Y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81291
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v0

    .line 81292
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 81293
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v10

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0A:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v10, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 81294
    :goto_0
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/fh;->A05()V

    .line 81295
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Zl;->setVisibility(I)V

    .line 81296
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0, v8, v8}, Lcom/facebook/ads/redexgen/X/Zl;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 81297
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 81298
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 81299
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RH;

    .line 81300
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A03()V

    .line 81301
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81302
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 81303
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Zc;

    if-eqz v0, :cond_2

    .line 81304
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zc;->A04()V

    .line 81305
    :cond_0
    :goto_1
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/R8;->A01(Z)V

    .line 81306
    new-instance v12, Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {v12, v3, v2, v6}, Lcom/facebook/ads/redexgen/X/fm;-><init>(Lcom/facebook/ads/redexgen/X/fh;Lcom/facebook/ads/redexgen/X/Qc;Lcom/facebook/ads/NativeAd;)V

    .line 81307
    .local v14, "nativeDSLListener":Lcom/facebook/ads/redexgen/X/bi;
    new-instance v9, Lcom/facebook/ads/redexgen/X/5G;

    iget-object v10, v3, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 81308
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v11

    .line 81309
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v13

    .line 81310
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A1A()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v16

    const/16 v8, 0x105

    const/16 v6, 0x1f

    const/16 v0, 0xd

    invoke-static {v8, v6, v0}, Lcom/facebook/ads/redexgen/X/fh;->A04(III)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    invoke-direct/range {v9 .. v16}, Lcom/facebook/ads/redexgen/X/5G;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/bi;Lcom/facebook/ads/redexgen/X/hy;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/XH;)V

    iput-object v9, v3, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    .line 81311
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wq;->A0B:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Wq;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 81312
    const/4 v0, -0x2

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81313
    .local v5, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81314
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    invoke-virtual {v1, v0, v6}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81315
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A00:Landroid/view/View;

    .line 81316
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/fh;->bringChildToFront(Landroid/view/View;)V

    .line 81317
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/5G;->setVisibility(I)V

    .line 81318
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A0A:Lcom/facebook/ads/redexgen/X/5G;

    invoke-direct {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/fh;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Qc;)V

    .line 81319
    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/R8;->A01(Z)V

    .line 81320
    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "nativeDSLListener":Lcom/facebook/ads/redexgen/X/bi;
    :cond_1
    :goto_2
    return-void

    .line 81321
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/6g;->setAdapter(Lcom/facebook/ads/redexgen/X/QC;)V

    goto :goto_1

    .line 81322
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v10

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A09:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v10, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    goto/16 :goto_0

    .line 81323
    :cond_4
    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/fh;->A0I(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 81324
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v6

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A04:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v6, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 81325
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A18()Lcom/facebook/ads/redexgen/X/Us;

    move-result-object v6

    sget-object v0, Lcom/facebook/ads/redexgen/X/Us;->A0B:Lcom/facebook/ads/redexgen/X/Us;

    if-ne v6, v0, :cond_8

    const/4 v6, 0x1

    .line 81326
    .local v5, "enableTextInNativeCarousel":Z
    :goto_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez v6, :cond_a

    .line 81327
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/R8;->A01(Z)V

    .line 81328
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v12

    .line 81329
    .local v11, "width":I
    if-nez v12, :cond_9

    .line 81330
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    :goto_4
    check-cast v10, Landroid/view/ViewGroup;

    .line 81331
    .local v12, "parentView":Landroid/view/ViewGroup;
    :goto_5
    if-nez v12, :cond_9

    if-eqz v10, :cond_9

    .line 81332
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    .line 81333
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v11, v0, Landroid/view/ViewGroup;

    sget-object v13, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v6, v13, v0

    const/4 v0, 0x0

    aget-object v13, v13, v0

    const/16 v0, 0x1f

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v6, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v13, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v6, "X2xGJjQ8zu6cU8Eo"

    const/4 v0, 0x6

    aput-object v6, v13, v0

    const-string v6, "AZj2zr3QMe0wQwV9kynIxRcnRDB4X"

    const/4 v0, 0x4

    aput-object v6, v13, v0

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    :goto_6
    check-cast v10, Landroid/view/ViewGroup;

    goto :goto_5

    :cond_6
    move-object v10, v8

    goto :goto_6

    .line 81334
    :cond_7
    move-object v10, v8

    goto :goto_4

    .line 81335
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 81336
    .end local v12    # "parentView":Landroid/view/ViewGroup;
    :cond_9
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 81337
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81338
    .local v9, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81339
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Zc;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    .line 81340
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    invoke-virtual {v1, v0, v6}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81341
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zc;

    invoke-virtual {v0, v2, v12}, Lcom/facebook/ads/redexgen/X/Zc;->A05(Lcom/facebook/ads/redexgen/X/Qc;I)V

    .line 81342
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 81343
    invoke-virtual {v3, v7}, Lcom/facebook/ads/redexgen/X/R8;->A01(Z)V

    .line 81344
    .end local v9    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "width":I
    goto :goto_8

    .line 81345
    :cond_a
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A08:Lcom/facebook/ads/redexgen/X/0L;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    .line 81346
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/0L;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/0L;->setCurrentPosition(I)V

    .line 81347
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/0L;

    .line 81348
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/0L;->setShowTextInCarousel(Z)V

    .line 81349
    if-eqz v6, :cond_b

    .line 81350
    nop

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v5, Lcom/facebook/ads/redexgen/X/0L;

    .line 81351
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A1I()Ljava/util/List;

    move-result-object v1

    .line 81352
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A17()Lcom/facebook/ads/redexgen/X/Ur;

    move-result-object v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/7A;

    invoke-direct {v6, v7, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/0L;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Ur;)V

    .line 81353
    .local v3, "viewAdapter":Lcom/facebook/ads/redexgen/X/i6;
    .restart local v3    # "viewAdapter":Lcom/facebook/ads/redexgen/X/i6;
    :goto_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/fl;

    invoke-direct {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/fl;-><init>(Lcom/facebook/ads/redexgen/X/fh;Lcom/facebook/ads/redexgen/X/Qc;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/i6;->A0P(Lcom/facebook/ads/redexgen/X/Mk;)V

    .line 81354
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/6g;->setAdapter(Lcom/facebook/ads/redexgen/X/QC;)V

    .line 81355
    .end local v3    # "viewAdapter":Lcom/facebook/ads/redexgen/X/i6;
    :goto_8
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A00:Landroid/view/View;

    .line 81356
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/fh;->A05()V

    .line 81357
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Zl;->setVisibility(I)V

    .line 81358
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0, v8, v8}, Lcom/facebook/ads/redexgen/X/Zl;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 81359
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 81360
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 81361
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RH;

    .line 81362
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A03()V

    .line 81363
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/fh;->bringChildToFront(Landroid/view/View;)V

    .line 81364
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81365
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    invoke-direct {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/fh;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Qc;)V

    .line 81366
    .end local v5    # "enableTextInNativeCarousel":Z
    goto/16 :goto_2

    .line 81367
    .end local v3
    :cond_b
    nop

    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v5, Lcom/facebook/ads/redexgen/X/0L;

    .line 81368
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A1I()Ljava/util/List;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Lcom/facebook/ads/redexgen/X/79;

    invoke-direct {v6, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/79;-><init>(Lcom/facebook/ads/redexgen/X/0L;Ljava/util/List;Lcom/facebook/ads/redexgen/X/dL;)V

    goto :goto_7

    .line 81369
    :cond_c
    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/fh;->A0J(Lcom/facebook/ads/NativeAd;)Z

    move-result v7

    sget-object v5, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v5, v0

    const/4 v0, 0x7

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d
    sget-object v5, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v1, "QrlGDx1qLp0kN"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    if-eqz v7, :cond_13

    .line 81370
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0D:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 81371
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A0C:Z

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1e(Z)V

    .line 81372
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A00:Landroid/view/View;

    .line 81373
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/fh;->A05()V

    .line 81374
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/Zl;->setVisibility(I)V

    .line 81375
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0, v8, v8}, Lcom/facebook/ads/redexgen/X/Zl;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 81376
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 81377
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 81378
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Zc;

    if-eqz v0, :cond_12

    .line 81379
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zc;->A04()V

    .line 81380
    :cond_e
    :goto_9
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/fh;->bringChildToFront(Landroid/view/View;)V

    .line 81381
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v5, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v5, v0

    const/4 v0, 0x0

    aget-object v5, v5, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_11

    sget-object v5, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v1, "KRt7yuKunmEFowe58PEdTHnfFAzQvUNu"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "FpiuEPXAVB8biFGx18DJjcPDa6TrT1Ju"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 81382
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RH;

    .line 81383
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/RH;->A04(Lcom/facebook/ads/NativeAd;)V

    .line 81384
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 81385
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A14()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 81386
    :goto_a
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/dL;)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    .line 81387
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/fk;

    invoke-direct {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/fk;-><init>(Lcom/facebook/ads/redexgen/X/fh;Lcom/facebook/ads/redexgen/X/Qc;)V

    .line 81388
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A06(Lcom/facebook/ads/redexgen/X/Zo;)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    .line 81389
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A14()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 81390
    :cond_f
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 81391
    sget-object v7, Lcom/facebook/ads/redexgen/X/fh;->A0G:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x124

    const/16 v1, 0x9

    const/16 v0, 0x31

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/fh;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RK;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81392
    :cond_10
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/fh;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Qc;)V

    goto/16 :goto_2

    :cond_11
    sget-object v5, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v1, "rknJE6EzKshvoL3E"

    const/4 v0, 0x6

    aput-object v1, v5, v0

    const-string v1, "1VlRGSe6v9ZgAEzaXTE4MJVCDSD8V"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 81393
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RH;

    .line 81394
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/RH;->A04(Lcom/facebook/ads/NativeAd;)V

    .line 81395
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 81396
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A14()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    if-eqz v0, :cond_f

    goto/16 :goto_a

    .line 81397
    :cond_12
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/6g;->setAdapter(Lcom/facebook/ads/redexgen/X/QC;)V

    goto/16 :goto_9

    .line 81398
    :cond_13
    invoke-virtual {v6}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81399
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0B:Lcom/facebook/ads/redexgen/X/LT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->AJ9(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 81400
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zl;->getBodyImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A00:Landroid/view/View;

    .line 81401
    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/fh;->A05()V

    .line 81402
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 81403
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 81404
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RH;

    .line 81405
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A03()V

    .line 81406
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 81407
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 81408
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Zc;

    if-eqz v0, :cond_15

    .line 81409
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zc;->A04()V

    .line 81410
    :cond_14
    :goto_b
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/fh;->bringChildToFront(Landroid/view/View;)V

    .line 81411
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Zl;->setVisibility(I)V

    .line 81412
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Lcom/facebook/ads/redexgen/X/Zl;Lcom/facebook/ads/redexgen/X/dL;)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    .line 81413
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/fj;

    invoke-direct {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/fj;-><init>(Lcom/facebook/ads/redexgen/X/fh;Lcom/facebook/ads/redexgen/X/Qc;)V

    .line 81414
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A06(Lcom/facebook/ads/redexgen/X/Zo;)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    .line 81415
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A14()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 81416
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-direct {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/fh;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Qc;)V

    goto/16 :goto_2

    .line 81417
    :cond_15
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/6g;->setAdapter(Lcom/facebook/ads/redexgen/X/QC;)V

    goto :goto_b
.end method

.method public final A0M(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
    .locals 8

    .line 81418
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    .line 81419
    .local v0, "adObjectContext":Lcom/facebook/ads/redexgen/X/dL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/dL;->A0L(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 81420
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/dL;->A0O(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 81421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0D:Z

    .line 81422
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v4

    .line 81423
    .local v1, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Qc;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1S(Lcom/facebook/ads/MediaView;)V

    .line 81424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Zl;->setVisibility(I)V

    .line 81425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/Zl;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 81426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 81427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 81428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A03()V

    .line 81429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Zc;

    if-eqz v0, :cond_5

    .line 81432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zc;->A04()V

    .line 81433
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A02:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fh;->bringChildToFront(Landroid/view/View;)V

    .line 81435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A02:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A00:Landroid/view/View;

    .line 81436
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qc;->A15()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v3

    .line 81437
    .local v2, "adIcon":Lcom/facebook/ads/redexgen/X/Up;
    if-eqz v3, :cond_3

    .line 81438
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qc;->A11()Lcom/facebook/ads/redexgen/X/SF;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v1, "8vonm0Gh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "EfYx5Mmt"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0N(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81439
    .local v3, "preloadedBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 81440
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A02:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81441
    if-eqz p2, :cond_1

    .line 81442
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/fp;

    invoke-direct {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Lcom/facebook/ads/redexgen/X/fh;Lcom/facebook/ads/redexgen/X/Qc;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->post(Ljava/lang/Runnable;)Z

    .line 81443
    .end local v3    # "preloadedBitmap":Landroid/graphics/Bitmap;
    .end local v4
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A02:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/fh;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Qc;)V

    .line 81444
    return-void

    .line 81445
    :cond_2
    invoke-direct {p0, v4, p2, v3}, Lcom/facebook/ads/redexgen/X/fh;->A0G(Lcom/facebook/ads/redexgen/X/Qc;ZLcom/facebook/ads/redexgen/X/Up;)V

    goto :goto_1

    .line 81446
    :cond_3
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qc;->A16()Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v7

    .line 81447
    .local v3, "adListener":Lcom/facebook/ads/redexgen/X/QQ;
    sget-object v6, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 81448
    .local v4, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v5

    .line 81449
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qc;->A0y()J

    move-result-wide v2

    .line 81450
    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 81451
    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 81452
    invoke-interface {v5, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3F(JILjava/lang/String;)V

    .line 81453
    if-eqz v7, :cond_4

    .line 81454
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/V1;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/facebook/ads/redexgen/X/Uh;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 81455
    :cond_4
    const/16 v2, 0x2e

    const/16 v1, 0x11

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fh;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81456
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 81458
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v6

    sget v5, Lcom/facebook/ads/redexgen/X/Sv;->A0W:I

    const/16 v2, 0xc0

    const/16 v1, 0x17

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fh;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 81459
    const/16 v2, 0x102

    const/4 v1, 0x3

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fh;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    goto :goto_1

    .line 81460
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6g;->setAdapter(Lcom/facebook/ads/redexgen/X/QC;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0N()Z
    .locals 4

    .line 81461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v1, "f43XNCk8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "DdRxJSTL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final A6e()Lcom/facebook/ads/redexgen/X/dL;
    .locals 1

    .line 81462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    return-object v0
.end method

.method public final bringChildToFront(Landroid/view/View;)V
    .locals 4

    .line 81463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A01:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    if-eq p1, v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/fh;->A02:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v1, "R8dYcckG0onv7yQggjKFRkmHXZbq9UJh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne p1, v3, :cond_2

    .line 81464
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 81465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0B:Lcom/facebook/ads/redexgen/X/cw;

    if-eqz v0, :cond_2

    .line 81466
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0B:Lcom/facebook/ads/redexgen/X/cw;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 81467
    :cond_2
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 81468
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 81469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 81470
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 81471
    return-object p0
.end method

.method public final getAdContentsView()Landroid/view/View;
    .locals 1

    .line 81472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A00:Landroid/view/View;

    return-object v0
.end method

.method public final getMediaHeight()I
    .locals 1

    .line 81473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zl;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 81474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zl;->getImageHeight()I

    move-result v0

    return v0

    .line 81475
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 81476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 81477
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 81478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v0

    return v0

    .line 81479
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final getMediaWidth()I
    .locals 4

    .line 81480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zl;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 81481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A09:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zl;->getImageWidth()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v1, "us0p5hBNoGIfish2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "DFvDCw92fILzmemlu9XfPwpsPQRiq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 81482
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v1, "7zc9sXuG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ncWuDUJK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 81483
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 81484
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 81485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    return v0

    .line 81486
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaView;)V
    .locals 6

    .line 81487
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 81488
    .local v0, "context":Landroid/content/Context;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/dL;

    if-eqz v0, :cond_0

    .line 81489
    check-cast v1, Lcom/facebook/ads/redexgen/X/dL;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 81490
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/dL;->A0O(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 81491
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v0

    move-object v5, p2

    packed-switch v0, :pswitch_data_0

    .line 81492
    const/16 v2, 0x9b

    const/16 v1, 0x25

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fh;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81493
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/RB;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    goto :goto_0

    .line 81494
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 81495
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 81496
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v3

    .line 81497
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v4

    .line 81498
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/fh;->A0C(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V

    .line 81499
    goto :goto_1

    .line 81500
    :pswitch_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 81501
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_1

    .line 81502
    sget-object v2, Lcom/facebook/ads/redexgen/X/fh;->A0F:[Ljava/lang/String;

    const-string v1, "4tObUcmoIw93Quo4uXvWt9YCbUPkknut"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v0

    .line 81503
    invoke-direct {p0, v4, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/fh;->A0D(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V

    .line 81504
    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 81505
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/fh;->A0E(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V

    .line 81506
    goto :goto_1

    .line 81507
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-direct {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/fh;->A0F(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/MediaView;)V

    .line 81508
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R8;->A01(Z)V

    .line 81509
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V
    .locals 0

    .line 81510
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R8;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 81511
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/fh;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 81512
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 3

    .line 81513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v2

    .line 81514
    .local v0, "currentWidth":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    .line 81515
    .local v1, "currentHeight":I
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 81516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    .line 81517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81519
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    const v0, -0x333334

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->setBackgroundColor(I)V

    .line 81520
    :goto_0
    return-void

    .line 81521
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setListener(Lcom/facebook/ads/MediaViewListener;)V
    .locals 2

    .line 81522
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fh;->A04:Lcom/facebook/ads/MediaViewListener;

    .line 81523
    if-nez p1, :cond_0

    .line 81524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RH;

    .line 81525
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A07(Lcom/facebook/ads/redexgen/X/Y1;)V

    .line 81526
    return-void

    .line 81527
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RH;

    new-instance v0, Lcom/facebook/ads/redexgen/X/fi;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/fi;-><init>(Lcom/facebook/ads/redexgen/X/fh;Lcom/facebook/ads/MediaViewListener;)V

    .line 81528
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A07(Lcom/facebook/ads/redexgen/X/Y1;)V

    .line 81529
    return-void
.end method

.method public final setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 3

    .line 81530
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0D:Z

    if-nez v0, :cond_1

    .line 81531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eqz v0, :cond_0

    .line 81532
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 81533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 81534
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 81535
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A05(Lcom/facebook/ads/redexgen/X/US;)V

    .line 81536
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 81537
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81538
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/fh;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/fh;->A09(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81540
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 81541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    instance-of v0, v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fh;->A0C:Z

    .line 81542
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XP;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setId(I)V

    .line 81543
    return-void

    .line 81544
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v2, 0xd7

    const/16 v1, 0x2b

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fh;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
