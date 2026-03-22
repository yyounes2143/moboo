.class public final Lcom/facebook/ads/redexgen/X/5f;
.super Lcom/facebook/ads/redexgen/X/Jw;
.source ""


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/dA;

.field public A02:Z

.field public final A03:Landroid/os/Handler;

.field public final A04:Landroid/view/View;

.field public final A05:Landroid/widget/RelativeLayout;

.field public final A06:Landroid/widget/RelativeLayout;

.field public final A07:Lcom/facebook/ads/redexgen/X/Xm;

.field public final A08:Lcom/facebook/ads/redexgen/X/Xn;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 369
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nMDGU2nxSEuwqviL2VMZS1cV20s8AaeR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qyrjSMh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FYVwSD308Vq2J6Pd1wLxSNaB8Ewk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LGl0Dyzmn7PlBKL5rOaUh0PbBfsCX6f3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZVJSN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nXNa5aghoVBzvvHD5xAqaEYm1u0bLWjI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "m4Dqbt0aWRjh5FvtlMaj2POC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ux3XUTAXbpH3d88rNaPFFKJHhvK1Uu5c"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5f;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5f;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;)V
    .locals 7

    .line 16081
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Jw;-><init>(Lcom/facebook/ads/redexgen/X/ai;Z)V

    .line 16082
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A03:Landroid/os/Handler;

    .line 16083
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A02:Z

    .line 16084
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A08:Lcom/facebook/ads/redexgen/X/Xn;

    .line 16085
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A07:Lcom/facebook/ads/redexgen/X/Xm;

    .line 16086
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A06:Landroid/widget/RelativeLayout;

    .line 16087
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A05:Landroid/widget/RelativeLayout;

    .line 16088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A05:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 16089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 16090
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A04:Landroid/view/View;

    .line 16091
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5f;->A04()V

    .line 16092
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5f;->A06:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5f;->A05:Landroid/widget/RelativeLayout;

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16093
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5f;->A06:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/5f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16094
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5f;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdInfo()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v0

    .line 16095
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aR;->A00(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 16096
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5f;->A03()V

    .line 16097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 16098
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 16099
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:F

    .line 16100
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wa;->A00(F)Ljava/lang/String;

    move-result-object v2

    .line 16101
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 16102
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A04()Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MH;->A0C(Lcom/facebook/ads/redexgen/X/MH;)Ljava/lang/String;

    move-result-object v6

    .line 16103
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/LH;->AJw(Ljava/lang/String;IZZLjava/lang/String;)V

    .line 16104
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/5f;)Lcom/facebook/ads/redexgen/X/Xm;
    .locals 0

    .line 16105
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5f;->A07:Lcom/facebook/ads/redexgen/X/Xm;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5f;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 8

    .line 16106
    const/4 v0, 0x3

    new-array v2, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A07:Lcom/facebook/ads/redexgen/X/Xm;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XP;->A0Z([Landroid/view/View;)V

    .line 16107
    new-instance v1, Lcom/facebook/ads/redexgen/X/dA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 16108
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    .line 16109
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5f;->A08:Lcom/facebook/ads/redexgen/X/Xn;

    .line 16110
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/5f;->A03:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 16111
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A08()Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/dA;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/KE;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Ua;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/5f;->A01:Lcom/facebook/ads/redexgen/X/dA;

    .line 16112
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16113
    .local v0, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A01:Lcom/facebook/ads/redexgen/X/dA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dA;->A0T()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/5f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16114
    return-void
.end method

.method private A03()V
    .locals 2

    .line 16115
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 16116
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16117
    .local v0, "adDetailsLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/5f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16118
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zv;->setVisibility(I)V

    .line 16119
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5f;->A07(I)V

    .line 16120
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/KL;

    if-eqz v0, :cond_0

    .line 16121
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/KL;

    .line 16122
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KL;->A0q(I)V

    .line 16123
    :cond_0
    return-void
.end method

.method private A04()V
    .locals 4

    .line 16124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A04:Landroid/view/View;

    if-nez v0, :cond_0

    .line 16125
    return-void

    .line 16126
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5f;->A05:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5f;->A04:Landroid/view/View;

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A04:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 16128
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A09:Lcom/facebook/ads/redexgen/X/Wh;

    .line 16129
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wh;->A02(Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/Wg;

    move-result-object v2

    .line 16130
    .local v0, "supported":Lcom/facebook/ads/redexgen/X/Wg;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 16131
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 16132
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0H()Lcom/facebook/ads/redexgen/X/SO;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Wg;->A01:Z

    .line 16133
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SO;->A00(Z)V

    .line 16134
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A09:Lcom/facebook/ads/redexgen/X/Wh;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/Wh;)V

    .line 16135
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Wg;->A00:Z

    if-eqz v0, :cond_2

    .line 16136
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5f;->A04:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ac;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ac;-><init>(Lcom/facebook/ads/redexgen/X/5f;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16137
    :cond_1
    :goto_0
    return-void

    .line 16138
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16139
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5f;->A04:Landroid/view/View;

    .line 16140
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1J(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ad;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ad;-><init>(Lcom/facebook/ads/redexgen/X/5f;)V

    .line 16141
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private A05()V
    .locals 9

    .line 16142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16143
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 16144
    const/4 v5, 0x2

    new-array v2, v5, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A05:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XP;->A0Z([Landroid/view/View;)V

    .line 16145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A07:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0J(Landroid/view/View;)V

    .line 16146
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5f;->A02()V

    .line 16147
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdInfo()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    .line 16148
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/5f;->A02:Z

    .line 16149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A07:Lcom/facebook/ads/redexgen/X/Xm;

    if-eqz v0, :cond_1

    .line 16150
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5f;->A07:Lcom/facebook/ads/redexgen/X/Xm;

    .line 16151
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16152
    const/16 v5, 0x8

    .line 16153
    :cond_0
    invoke-virtual {v1, v5}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 16154
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5f;->A07:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressImmediate(F)V

    .line 16155
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/Wd;

    .line 16156
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdInfo()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0K()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N0;->A00()J

    move-result-wide v0

    long-to-int v3, v0

    .line 16157
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/facebook/ads/redexgen/X/Jt;

    invoke-direct {v8, p0}, Lcom/facebook/ads/redexgen/X/Jt;-><init>(Lcom/facebook/ads/redexgen/X/5f;)V

    const/high16 v4, 0x41a00000    # 20.0f

    const-wide/16 v5, 0x14

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Wd;-><init>(IFJLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Wc;)V

    .line 16158
    .local v0, "endCardCountdownTimer":Lcom/facebook/ads/redexgen/X/Wd;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Wd;->A07()Z

    .line 16159
    .end local v0    # "endCardCountdownTimer":Lcom/facebook/ads/redexgen/X/Wd;
    :cond_2
    return-void
.end method

.method public static A06()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5f;->A09:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x70t
        0x74t
        0x78t
        0x7et
        0x7ct
    .end array-data
.end method

.method private A07(I)V
    .locals 2

    .line 16160
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5f;->A08(I)V

    .line 16161
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5f;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A05:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Jw;->A1U(ILandroid/view/ViewGroup;Landroid/widget/RelativeLayout;)V

    .line 16162
    return-void
.end method

.method private A08(I)V
    .locals 7

    .line 16163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A04:Landroid/view/View;

    if-nez v0, :cond_0

    .line 16164
    return-void

    .line 16165
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A04:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16166
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16167
    const/16 v4, 0xa

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16168
    const/16 v3, 0x9

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16169
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, -0x2

    if-ne p1, v2, :cond_1

    .line 16170
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16171
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16172
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16173
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A04:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16174
    return-void

    .line 16175
    :cond_1
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16176
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16177
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5f;->A0A(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16178
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A05:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16180
    .local v1, "containerLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A05:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16182
    .end local v1    # "containerLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 16183
    :cond_2
    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public static A09(F)Z
    .locals 1

    .line 16184
    const v0, 0x3f333333    # 0.7f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0A(F)Z
    .locals 1

    .line 16185
    const v0, 0x3f99999a    # 1.2f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/5f;Z)Z
    .locals 0

    .line 16186
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5f;->A02:Z

    return p1
.end method


# virtual methods
.method public final A0C()Z
    .locals 1

    .line 16187
    const/4 v0, 0x0

    return v0
.end method

.method public final A0D()Z
    .locals 1

    .line 16188
    const/4 v0, 0x0

    return v0
.end method

.method public final A1B()V
    .locals 2

    .line 16189
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Jw;->A1B()V

    .line 16190
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5f;->A03:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16191
    return-void
.end method

.method public final A1G(Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 0

    .line 16192
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Jw;->A1G(Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 16193
    return-void
.end method

.method public final A1K()Z
    .locals 1

    .line 16194
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdInfo()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0V()Z

    move-result v0

    return v0
.end method

.method public final A1M()Z
    .locals 1

    .line 16195
    const/4 v0, 0x1

    return v0
.end method

.method public final A1N(Z)Z
    .locals 1

    .line 16196
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdInfo()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16197
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5f;->A05()V

    .line 16198
    const/4 v0, 0x1

    return v0

    .line 16199
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A1P(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Zv;
    .locals 15

    .line 16200
    move-object v2, p0

    .line 16201
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 16202
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0M(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/5f;->A00:F

    .line 16203
    iget v0, v2, Lcom/facebook/ads/redexgen/X/5f;->A00:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5f;->A09(F)Z

    move-result v0

    move-object/from16 v6, p3

    if-eqz v0, :cond_0

    .line 16204
    new-instance v0, Lcom/facebook/ads/redexgen/X/5q;

    .line 16205
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    .line 16206
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v2

    sget v3, Lcom/facebook/ads/redexgen/X/Jw;->A0I:I

    .line 16207
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getColors()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v5

    .line 16208
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A07()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v7

    .line 16209
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v8

    .line 16210
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0G()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v9

    .line 16211
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0A()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v10

    .line 16212
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v11

    .line 16213
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0F()Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v12

    .line 16214
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A08()Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/facebook/ads/redexgen/X/5q;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Ua;Z)V

    .line 16215
    return-object v0

    .line 16216
    :cond_0
    iget v3, v2, Lcom/facebook/ads/redexgen/X/5f;->A00:F

    sget-object v1, Lcom/facebook/ads/redexgen/X/5f;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/5f;->A0A:[Ljava/lang/String;

    const-string v1, "qnLfq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "ISSv4uo"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5f;->A0A(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16217
    new-instance v0, Lcom/facebook/ads/redexgen/X/5p;

    .line 16218
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    .line 16219
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v2

    sget v3, Lcom/facebook/ads/redexgen/X/Jw;->A0I:I

    .line 16220
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getColors()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v5

    .line 16221
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A07()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v7

    .line 16222
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v8

    .line 16223
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0G()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v9

    .line 16224
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0A()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v10

    .line 16225
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v11

    .line 16226
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0F()Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v12

    .line 16227
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A08()Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/facebook/ads/redexgen/X/5p;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Ua;Z)V

    .line 16228
    return-object v0

    .line 16229
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/5r;

    .line 16230
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    .line 16231
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v2

    sget v3, Lcom/facebook/ads/redexgen/X/Jw;->A0I:I

    .line 16232
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getColors()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v5

    .line 16233
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A07()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v7

    .line 16234
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v8

    .line 16235
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0G()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v9

    .line 16236
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0A()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v10

    .line 16237
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v11

    .line 16238
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0F()Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v12

    .line 16239
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A08()Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/facebook/ads/redexgen/X/5r;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Ua;Z)V

    .line 16240
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final synthetic A1W(Landroid/view/View;)V
    .locals 4

    .line 16241
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5f;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    return-void
.end method

.method public getCloseButtonStyle()I
    .locals 1

    .line 16242
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A02:Z

    if-eqz v0, :cond_1

    .line 16243
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A2G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16244
    const/16 v0, 0x8

    return v0

    .line 16245
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 16246
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5f;->A1K()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16247
    const/4 v0, 0x1

    return v0

    .line 16248
    :cond_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 16249
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Jw;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A01:Lcom/facebook/ads/redexgen/X/dA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16251
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5f;->A01:Lcom/facebook/ads/redexgen/X/dA;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dA;->A0W(I)V

    .line 16252
    return-void

    .line 16253
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5f;->A07(I)V

    .line 16254
    return-void
.end method
