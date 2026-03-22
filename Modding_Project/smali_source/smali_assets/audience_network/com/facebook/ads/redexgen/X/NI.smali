.class public abstract Lcom/facebook/ads/redexgen/X/NI;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xo;


# static fields
.field public static A0F:[B


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/Wd;

.field public A02:Lcom/facebook/ads/redexgen/X/cX;

.field public A03:Z

.field public A04:Z

.field public A05:Lcom/facebook/ads/redexgen/X/Ml;

.field public A06:Lcom/facebook/ads/redexgen/X/dI;

.field public A07:Z

.field public final A08:Lcom/facebook/ads/redexgen/X/XC;

.field public final A09:Lcom/facebook/ads/redexgen/X/Xn;

.field public final A0A:Lcom/facebook/ads/redexgen/X/hy;

.field public final A0B:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0C:Lcom/facebook/ads/redexgen/X/US;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Xm;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NI;->A0R()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;)V
    .locals 8

    .line 53850
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Z

    .line 53852
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Z

    .line 53853
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A03:Z

    .line 53854
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NI;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 53855
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NI;->A0C:Lcom/facebook/ads/redexgen/X/US;

    .line 53856
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NI;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    .line 53857
    new-instance v0, Lcom/facebook/ads/redexgen/X/XC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XC;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Lcom/facebook/ads/redexgen/X/XC;

    .line 53858
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    .line 53859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    .line 53860
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A0C:Lcom/facebook/ads/redexgen/X/US;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0D:Lcom/facebook/ads/redexgen/X/Ua;

    .line 53861
    new-instance v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NI;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 53862
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NI;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/NI;->A0D:Lcom/facebook/ads/redexgen/X/Ua;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    .line 53863
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1t()I

    move-result v6

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Ua;IIZ)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A0E:Lcom/facebook/ads/redexgen/X/Xm;

    .line 53864
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt v1, v0, :cond_0

    .line 53865
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NI;->setFitsSystemWindows(Z)V

    .line 53866
    :cond_0
    return-void
.end method

.method private A0M(I)Lcom/facebook/ads/redexgen/X/My;
    .locals 1

    .line 53867
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 53868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/Ml;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    return-object v0

    .line 53869
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/Ml;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A00()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/NI;)Lcom/facebook/ads/redexgen/X/Xn;
    .locals 0

    .line 53870
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NI;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    return-object p0
.end method

.method public static A0O(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NI;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x25

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0P()V
    .locals 0

    .line 53871
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NI;->removeAllViews()V

    .line 53872
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 53873
    return-void
.end method

.method private A0Q()V
    .locals 7

    .line 53874
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53875
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NI;->A0b()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A02:Lcom/facebook/ads/redexgen/X/cX;

    if-nez v0, :cond_0

    .line 53876
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Z

    .line 53877
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/NI;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    .line 53878
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    .line 53879
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/cV;

    invoke-direct {v1, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/cV;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/N9;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    .line 53880
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cV;->A0A(Lcom/facebook/ads/redexgen/X/My;)Lcom/facebook/ads/redexgen/X/cV;

    move-result-object v0

    .line 53881
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cV;->A0F()Lcom/facebook/ads/redexgen/X/cX;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A02:Lcom/facebook/ads/redexgen/X/cX;

    .line 53882
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NI;->A02:Lcom/facebook/ads/redexgen/X/cX;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A0D:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UZ;->A0U:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/UZ;)V

    .line 53883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Xn;->A3w(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 53884
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A02:Lcom/facebook/ads/redexgen/X/cX;

    invoke-interface {v1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Xn;->A3w(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 53885
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A02:Lcom/facebook/ads/redexgen/X/cX;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NK;-><init>(Lcom/facebook/ads/redexgen/X/NI;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A04(Lcom/facebook/ads/redexgen/X/cW;)V

    .line 53886
    :goto_0
    return-void

    .line 53887
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Xn;->A3w(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 53888
    goto :goto_0
.end method

.method public static A0R()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NI;->A0F:[B

    return-void

    :array_0
    .array-data 1
        -0x5dt
        -0x51t
        -0x53t
        0x6et
        -0x5at
        -0x5ft
        -0x5dt
        -0x5bt
        -0x5et
        -0x51t
        -0x51t
        -0x55t
        0x6et
        -0x5ft
        -0x5ct
        -0x4dt
        0x6et
        -0x57t
        -0x52t
        -0x4ct
        -0x5bt
        -0x4et
        -0x4dt
        -0x4ct
        -0x57t
        -0x4ct
        -0x57t
        -0x5ft
        -0x54t
        0x6et
        -0x57t
        -0x53t
        -0x50t
        -0x4et
        -0x5bt
        -0x4dt
        -0x4dt
        -0x57t
        -0x51t
        -0x52t
        0x6et
        -0x54t
        -0x51t
        -0x59t
        -0x59t
        -0x5bt
        -0x5ct
    .end array-data
.end method

.method private A0S(Lcom/facebook/ads/redexgen/X/My;Z)V
    .locals 3

    .line 53889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0E:Lcom/facebook/ads/redexgen/X/Xm;

    .line 53890
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarHeight()I

    move-result v1

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53891
    .local v0, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53892
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A0E:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A05(Lcom/facebook/ads/redexgen/X/hy;)Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->A0A(Lcom/facebook/ads/redexgen/X/My;Z)V

    .line 53893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0E:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/NI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53894
    return-void
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/NI;Z)Z
    .locals 0

    .line 53895
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Z

    return p1
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/NI;Z)Z
    .locals 0

    .line 53896
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/NI;->A03:Z

    return p1
.end method


# virtual methods
.method public final A0V()V
    .locals 1

    .line 53897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/ae;

    if-nez v0, :cond_1

    .line 53898
    :cond_0
    return-void

    .line 53899
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NI;->A0c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1F()V

    .line 53901
    :goto_0
    return-void

    .line 53902
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1E()V

    goto :goto_0
.end method

.method public abstract A0W()V
.end method

.method public final A0X(I)V
    .locals 2

    .line 53903
    new-instance v1, Lcom/facebook/ads/redexgen/X/NJ;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/NJ;-><init>(Lcom/facebook/ads/redexgen/X/NI;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wd;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Wd;-><init>(ILcom/facebook/ads/redexgen/X/Wc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:Lcom/facebook/ads/redexgen/X/Wd;

    .line 53904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A03:Z

    .line 53905
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NI;->A0V()V

    .line 53906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A07()Z

    .line 53907
    return-void
.end method

.method public final A0Y(Landroid/view/View;ZI)V
    .locals 3

    .line 53908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0E:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Xm;->setFullscreen(Z)V

    .line 53909
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NI;->A00:Landroid/view/View;

    .line 53910
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Lcom/facebook/ads/redexgen/X/XC;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XB;->A02:Lcom/facebook/ads/redexgen/X/XB;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A05(Lcom/facebook/ads/redexgen/X/XB;)V

    .line 53911
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NI;->A0P()V

    .line 53912
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53913
    .local v0, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 53914
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53915
    invoke-virtual {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/NI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53916
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/NI;->A0M(I)Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    .line 53917
    .local v2, "colorInfo":Lcom/facebook/ads/redexgen/X/My;
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/NI;->A0S(Lcom/facebook/ads/redexgen/X/My;Z)V

    .line 53918
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/My;->A08(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 53919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    if-eqz v0, :cond_0

    .line 53920
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NI;->A0Q()V

    .line 53921
    if-eqz p2, :cond_0

    .line 53922
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Lcom/facebook/ads/redexgen/X/XC;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XB;->A03:Lcom/facebook/ads/redexgen/X/XB;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A05(Lcom/facebook/ads/redexgen/X/XB;)V

    .line 53923
    :cond_0
    return-void

    .line 53924
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0E:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarHeight()I

    move-result v0

    goto :goto_0
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 5

    .line 53925
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Lcom/facebook/ads/redexgen/X/XC;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/R0;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A04(Landroid/view/Window;)V

    .line 53926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A05:Lcom/facebook/ads/redexgen/X/Ml;

    .line 53927
    const/4 v1, 0x0

    .line 53928
    .local v0, "adInfo":Lcom/facebook/ads/redexgen/X/Mp;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v1

    .line 53930
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/NI;->A0E:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    .line 53931
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    .line 53932
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    .line 53933
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A04()I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    .line 53934
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A24()Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v0

    .line 53935
    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setPageDetails(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/NF;)V

    .line 53936
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A0E:Lcom/facebook/ads/redexgen/X/Xm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NM;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/NM;-><init>(Lcom/facebook/ads/redexgen/X/NI;Lcom/facebook/ads/redexgen/X/R0;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Xl;)V

    .line 53937
    return-void

    .line 53938
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 4

    .line 53939
    move-object v3, p0

    .line 53940
    .local v0, "interstitialView":Lcom/facebook/ads/redexgen/X/NI;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 53941
    .local v1, "fadeOut":Landroid/view/animation/Animation;
    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 53942
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y0;

    invoke-direct {v0, p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Y0;-><init>(Lcom/facebook/ads/redexgen/X/NI;Lcom/facebook/ads/redexgen/X/NI;Lcom/facebook/ads/redexgen/X/R0;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53943
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/NI;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53944
    return-void
.end method

.method public final A0b()Z
    .locals 1

    .line 53945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A27()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    .line 53946
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 53947
    :goto_0
    return v0

    .line 53948
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0c()Z
    .locals 1

    .line 53949
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A03:Z

    return v0
.end method

.method public final A0d()Z
    .locals 1

    .line 53950
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A04:Z

    return v0
.end method

.method public abstract A0e()Z
.end method

.method public AEV(Z)V
    .locals 1

    .line 53951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:Lcom/facebook/ads/redexgen/X/Wd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:Lcom/facebook/ads/redexgen/X/Wd;

    .line 53952
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A06()Z

    .line 53954
    :cond_0
    return-void
.end method

.method public AF0(Z)V
    .locals 1

    .line 53955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:Lcom/facebook/ads/redexgen/X/Wd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:Lcom/facebook/ads/redexgen/X/Wd;

    .line 53956
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A04()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A01:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A07()Z

    .line 53958
    :cond_0
    return-void
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/US;
    .locals 1

    .line 53959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0C:Lcom/facebook/ads/redexgen/X/US;

    return-object v0
.end method

.method public getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Xn;
    .locals 1

    .line 53960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    return-object v0
.end method

.method public abstract getCloseButtonStyle()I
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 53961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A0A:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 53962
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 53963
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53964
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt v1, v0, :cond_0

    .line 53965
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NI;->setFitsSystemWindows(Z)V

    .line 53966
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 53967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A08:Lcom/facebook/ads/redexgen/X/XC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XC;->A03()V

    .line 53968
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NI;->A0E:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Xl;)V

    .line 53969
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NI;->A0P()V

    .line 53970
    return-void
.end method

.method public setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/XH;)V
    .locals 4

    .line 53971
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/XH;->A05()V

    .line 53972
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NI;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53973
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/NI;->A07:Z

    if-eqz v0, :cond_1

    .line 53974
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NI;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LX;-><init>()V

    .line 53975
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LX;->A88()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 53976
    :cond_0
    :goto_0
    return-void

    .line 53977
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NI;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v3

    .line 53978
    const/4 v2, 0x0

    const/16 v1, 0x2f

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A0O(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 0

    .line 53979
    return-void
.end method

.method public setServerSideRewardHandler(Lcom/facebook/ads/redexgen/X/dI;)V
    .locals 0

    .line 53980
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NI;->A06:Lcom/facebook/ads/redexgen/X/dI;

    .line 53981
    return-void
.end method
