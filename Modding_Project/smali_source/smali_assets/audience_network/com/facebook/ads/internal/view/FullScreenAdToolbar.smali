.class public final Lcom/facebook/ads/internal/view/FullScreenAdToolbar;
.super Lcom/facebook/ads/redexgen/X/Xm;
.source ""


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Xk;

.field public A01:Lcom/facebook/ads/redexgen/X/Xl;

.field public A02:Lcom/facebook/ads/redexgen/X/Xl;

.field public A03:Lcom/facebook/ads/redexgen/X/YG;

.field public A04:Z

.field public A05:Z

.field public final A06:Landroid/widget/RelativeLayout;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A08:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A09:Lcom/facebook/ads/redexgen/X/YO;

.field public final A0A:Lcom/facebook/ads/redexgen/X/cm;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1429
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bFTGQZCDUsZohbmTeIVqSIHEteTzH9ln"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yXw5A2C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1AgOSkHO0Pb00RrFT9UOiqy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TxDFqDHdXRoHKl2DTNxbpTLqI26RISWJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CWbWmw8OaNX6ff1fhEYiHQW6wjCjGro9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "znIzyGoGhCcdAsXYdQkLlPNG9alZ5sNL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lf2qO9K"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XEgUxEHpppw1PxIgjlcxmDWHelwWu1Ow"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03()V

    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    .line 1430
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    .line 1431
    sget v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    sub-int/2addr v1, v0

    sput v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    .line 1432
    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    mul-int/lit8 v1, v0, 0x2

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    sub-int/2addr v1, v0

    sput v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0G:I

    .line 1433
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0E:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Ua;IIZ)V
    .locals 10

    .line 54747
    move-object v4, p0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Xm;-><init>(Landroid/content/Context;)V

    .line 54748
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Xl;

    .line 54749
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Z

    .line 54750
    move/from16 v1, p6

    iput-boolean v1, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    .line 54751
    iput-object p2, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/Xn;

    .line 54752
    iput-object p3, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Ua;

    .line 54753
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setGravity(I)V

    .line 54754
    new-instance v0, Lcom/facebook/ads/redexgen/X/YO;

    invoke-direct {v0, p1, p4, v1}, Lcom/facebook/ads/redexgen/X/YO;-><init>(Lcom/facebook/ads/redexgen/X/dL;IZ)V

    iput-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    .line 54755
    iget-object v3, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/YO;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54756
    iget-object v1, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xw;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Xw;-><init>(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YO;->setActionClickListener(Landroid/view/View$OnClickListener;)V

    .line 54757
    iget-boolean v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    const/16 v1, 0x3ee

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, -0x2

    if-nez v0, :cond_1

    .line 54758
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54759
    .local v6, "toolbarActionViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v8, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    sget v7, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    sget v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0G:I

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    invoke-virtual {v9, v8, v7, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 54760
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v4, v0, v9}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54761
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    .line 54762
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54763
    .local v8, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 54764
    new-instance v0, Lcom/facebook/ads/redexgen/X/cm;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/cm;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    .line 54765
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 54766
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54767
    .local v9, "pageDetailsParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 54768
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/cm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54769
    iget-object v1, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 54770
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v2}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54771
    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    .line 54772
    invoke-virtual {v4, p1, p5}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D(Lcom/facebook/ads/redexgen/X/dL;I)V

    .line 54773
    .end local v6    # "toolbarActionViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "pageDetailsParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 54774
    :cond_1
    const/4 v0, -0x1

    if-eq p5, v0, :cond_2

    .line 54775
    invoke-virtual {v4, p1, p5}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D(Lcom/facebook/ads/redexgen/X/dL;I)V

    .line 54776
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    .line 54777
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54778
    .local v6, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 54779
    new-instance v0, Lcom/facebook/ads/redexgen/X/cm;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/cm;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    .line 54780
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 54781
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54782
    .local v8, "pageDetailsParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 54783
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/cm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54784
    iget-object v1, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 54785
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v2}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54786
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54787
    .local v9, "toolbarActionViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    div-int/lit8 v2, v0, 0x2

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    div-int/lit8 v1, v0, 0x2

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v5, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 54788
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/Xl;
    .locals 0

    .line 54789
    iget-object p0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/Xl;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/YO;
    .locals 0

    .line 54790
    iget-object p0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x16

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x18

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C:[Ljava/lang/String;

    const-string v1, "ATFpsL3dKIxr1CEZIKZeGPZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x71t
        -0x66t
        -0x63t
        -0x5ft
        -0x6dt
        0x4et
        0x6ft
        -0x6et
        -0x64t
        -0x51t
        -0x46t
        -0x47t
        -0x44t
        -0x42t
        0x6at
        -0x75t
        -0x52t
        -0x47t
        -0x4ct
        -0x4ct
        -0x4ft
        -0x59t
        -0x5at
        -0x49t
    .end array-data
.end method

.method private A04(Landroid/view/View;Z)V
    .locals 1

    .line 54791
    if-eqz p1, :cond_0

    .line 54792
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54793
    :cond_0
    return-void

    .line 54794
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setReportingViewColor(Landroid/view/View;)V
    .locals 3

    .line 54885
    if-eqz p1, :cond_0

    .line 54886
    const/high16 v2, -0x1000000

    sget v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0E:I

    const/4 v0, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0O(Landroid/view/View;III)V

    .line 54887
    :cond_0
    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 1

    .line 54795
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YO;->A02()V

    .line 54796
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 54797
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Xl;

    if-eqz v0, :cond_0

    .line 54798
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Xl;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/Xl;

    .line 54799
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 1

    .line 54800
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->getToolbarListener()Lcom/facebook/ads/redexgen/X/Xl;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Xl;

    .line 54801
    return-void
.end method

.method public final A09(FI)V
    .locals 1

    .line 54802
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/YO;->A03(FI)V

    .line 54803
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/My;Z)V
    .locals 6

    .line 54804
    iget-boolean v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Z

    .line 54805
    .local v0, "fullScreenEnabled":Z
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/My;->A05(Z)I

    move-result v5

    .line 54806
    .local v1, "accentColor":I
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/My;->A0B(Z)I

    move-result v0

    invoke-virtual {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/cm;->A02(II)V

    .line 54807
    iget-boolean v4, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    const/16 v2, 0x8

    const/16 v1, 0x9

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v1

    if-nez v4, :cond_3

    .line 54808
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    if-eqz v0, :cond_0

    .line 54809
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Xk;->setIconColors(I)V

    .line 54810
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xk;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54811
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0, p1, v3, p2}, Lcom/facebook/ads/redexgen/X/YO;->A04(Lcom/facebook/ads/redexgen/X/My;ZZ)V

    .line 54812
    const/4 v1, 0x0

    if-eqz v3, :cond_2

    .line 54813
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v0, -0x6a000000

    filled-new-array {v0, v1}, [I

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 54814
    .local v2, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 54815
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 54816
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    :goto_1
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setReportingViewColor(Landroid/view/View;)V

    .line 54817
    .end local v2    # "gd":Landroid/graphics/drawable/GradientDrawable;
    :goto_2
    return-void

    .line 54818
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/YG;

    goto :goto_1

    .line 54819
    :cond_2
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    goto :goto_2

    .line 54820
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/YG;

    if-eqz v0, :cond_0

    .line 54821
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/YG;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/YG;->setIconColors(I)V

    .line 54822
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/YG;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/YG;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final A0B()Z
    .locals 1

    .line 54823
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YO;->A05()Z

    move-result v0

    return v0
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;I)V
    .locals 3

    .line 54824
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/YO;->setInitialUnskippableSeconds(I)V

    .line 54825
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    if-eqz v0, :cond_1

    .line 54826
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/YG;

    if-eqz v0, :cond_0

    .line 54827
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/YG;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Ua;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/Xn;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/YG;->setAdDetails(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;)V

    .line 54828
    :cond_0
    :goto_0
    return-void

    .line 54829
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    if-eqz v0, :cond_0

    .line 54830
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Ua;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/Xn;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xk;->setAdDetails(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;)V

    goto :goto_0
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/dL;I)V
    .locals 5

    .line 54831
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    if-eqz v0, :cond_0

    .line 54832
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 54833
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xk;->removeAllViews()V

    .line 54834
    :cond_0
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54835
    .local v0, "adReportingViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    if-nez v0, :cond_1

    .line 54836
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xk;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Xk;-><init>(Lcom/facebook/ads/redexgen/X/dL;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    .line 54837
    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    div-int/lit8 v3, v0, 0x2

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    div-int/lit8 v2, v0, 0x2

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    div-int/lit8 v1, v0, 0x2

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 54838
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54839
    :goto_0
    return-void

    .line 54840
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/YG;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/YG;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/YG;

    .line 54841
    sget v3, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    sget v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    sget v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0G:I

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 54842
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/YG;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getToolbarActionMode()I
    .locals 1

    .line 54843
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YO;->getToolbarActionMode()I

    move-result v0

    return v0
.end method

.method public getToolbarHeight()I
    .locals 1

    .line 54844
    sget v0, Lcom/facebook/ads/redexgen/X/Xm;->A00:I

    return v0
.end method

.method public getToolbarListener()Lcom/facebook/ads/redexgen/X/Xl;
    .locals 1

    .line 54845
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/Xl;

    return-object v0
.end method

.method public setAdReportingVisible(Z)V
    .locals 1

    .line 54846
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    .line 54847
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04(Landroid/view/View;Z)V

    .line 54848
    return-void

    .line 54849
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/YG;

    goto :goto_0
.end method

.method public setCTAClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 54850
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cm;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54851
    return-void
.end method

.method public setCTAClickListener(Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 4

    .line 54852
    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    .line 54853
    const/16 v2, 0x11

    const/4 v1, 0x7

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/aV;->A03(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/aU;

    move-result-object v0

    .line 54854
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/cm;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54855
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0

    .line 54856
    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Z

    .line 54857
    return-void
.end method

.method public setOnlyPageDetails(Lcom/facebook/ads/redexgen/X/N9;)V
    .locals 1

    .line 54858
    if-eqz p1, :cond_0

    .line 54859
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cm;->setPageDetails(Lcom/facebook/ads/redexgen/X/N9;)V

    .line 54860
    :goto_0
    return-void

    .line 54861
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cm;->A01()V

    goto :goto_0
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/NF;)V
    .locals 3

    .line 54862
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/YO;->setInitialUnskippableSeconds(I)V

    .line 54863
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cm;->setPageDetails(Lcom/facebook/ads/redexgen/X/N9;)V

    .line 54864
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    if-eqz v0, :cond_1

    .line 54865
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/YG;

    if-eqz v0, :cond_0

    .line 54866
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/YG;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Ua;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/Xn;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/YG;->setAdDetails(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;)V

    .line 54867
    :cond_0
    :goto_0
    return-void

    .line 54868
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    if-eqz v0, :cond_0

    .line 54869
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Xk;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Ua;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/Xn;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xk;->setAdDetails(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;)V

    goto :goto_0
.end method

.method public setPageDetailsVisible(Z)V
    .locals 2

    .line 54870
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 54871
    if-eqz p1, :cond_0

    .line 54872
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/cm;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 54873
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YO;->setToolbarMessageEnabled(Z)V

    .line 54874
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 54875
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YO;->setProgress(F)V

    .line 54876
    return-void
.end method

.method public setProgressClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 54877
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YO;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    .line 54878
    return-void
.end method

.method public setProgressImage(Lcom/facebook/ads/redexgen/X/XX;)V
    .locals 1

    .line 54879
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YO;->setProgressImage(Lcom/facebook/ads/redexgen/X/XX;)V

    .line 54880
    return-void
.end method

.method public setProgressImmediate(F)V
    .locals 1

    .line 54881
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YO;->setProgressImmediate(F)V

    .line 54882
    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .locals 1

    .line 54883
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YO;->setProgressSpinnerInvisible(Z)V

    .line 54884
    return-void
.end method

.method public setToolbarActionMessage(Ljava/lang/String;)V
    .locals 1

    .line 54888
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YO;->setToolbarMessage(Ljava/lang/String;)V

    .line 54889
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 1

    .line 54890
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/YO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YO;->setToolbarActionMode(I)V

    .line 54891
    return-void
.end method

.method public setToolbarListener(Lcom/facebook/ads/redexgen/X/Xl;)V
    .locals 0

    .line 54892
    iput-object p1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/Xl;

    .line 54893
    return-void
.end method
