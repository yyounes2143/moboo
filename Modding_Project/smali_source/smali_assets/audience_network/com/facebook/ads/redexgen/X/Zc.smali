.class public final Lcom/facebook/ads/redexgen/X/Zc;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static A05:Lcom/facebook/ads/redexgen/X/Xn;

.field public static A06:[B

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/fy;

.field public A01:Lcom/facebook/ads/redexgen/X/dL;

.field public A02:Lcom/facebook/ads/redexgen/X/0K;

.field public A03:Lcom/facebook/ads/redexgen/X/LE;

.field public A04:Lcom/facebook/ads/redexgen/X/aJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2460
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zc;->A02()V

    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zc;->A08:I

    .line 2461
    sget v0, Lcom/facebook/ads/redexgen/X/Zc;->A08:I

    mul-int/lit8 v0, v0, 0xa

    sput v0, Lcom/facebook/ads/redexgen/X/Zc;->A07:I

    .line 2462
    const/high16 v1, 0x41700000    # 15.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Zc;->A09:I

    .line 2463
    new-instance v0, Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LD;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zc;->A05:Lcom/facebook/ads/redexgen/X/Xn;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 2

    .line 74914
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 74915
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zc;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 74916
    new-instance v0, Lcom/facebook/ads/redexgen/X/0K;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/0K;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/0K;

    .line 74917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/0K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 74918
    new-instance v0, Lcom/facebook/ads/redexgen/X/6h;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6h;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A00:Lcom/facebook/ads/redexgen/X/fy;

    .line 74919
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zc;->A00:Lcom/facebook/ads/redexgen/X/fy;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/0K;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fy;->A0G(Lcom/facebook/ads/redexgen/X/6g;)V

    .line 74920
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74921
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/0K;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Zc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74923
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zc;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/hy;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/hy;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/cn;",
            ">;"
        }
    .end annotation

    .line 74924
    if-nez p1, :cond_0

    .line 74925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 74926
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/hy;->A27()Ljava/util/List;

    move-result-object v5

    .line 74927
    .local v0, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 74928
    .local v1, "mCarouselCardInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 74929
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Mp;

    .line 74930
    .local v3, "adInfo":Lcom/facebook/ads/redexgen/X/Mp;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cn;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/cn;-><init>(IILcom/facebook/ads/redexgen/X/Mp;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74931
    .end local v3    # "adInfo":Lcom/facebook/ads/redexgen/X/Mp;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74932
    .end local v2    # "i":I
    :cond_1
    return-object v4
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zc;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x2t
        0x20t
        0x33t
        0x2et
        0x34t
        0x32t
        0x24t
        0x2dt
        0x61t
        0xft
        0x20t
        0x35t
        0x28t
        0x37t
        0x24t
        0x61t
        0x37t
        0x28t
        0x24t
        0x36t
        0x61t
        0x20t
        0x25t
        0x24t
        0x31t
        0x35t
        0x24t
        0x33t
        0x61t
        0x28t
        0x32t
        0x2ft
        0x66t
        0x35t
        0x61t
        0x22t
        0x33t
        0x24t
        0x20t
        0x35t
        0x24t
        0x25t
        0x61t
        0x31t
        0x33t
        0x2et
        0x31t
        0x24t
        0x33t
        0x2dt
        0x38t
        0x43t
        0x41t
        0x4at
        0x41t
        0x56t
        0x4dt
        0x47t
    .end array-data
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Zc;I)V
    .locals 0

    .line 74933
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Zc;->setUpLayoutForCardAtIndex(I)V

    return-void
.end method

.method public static getDummyListener()Lcom/facebook/ads/redexgen/X/Xn;
    .locals 1

    .line 74957
    sget-object v0, Lcom/facebook/ads/redexgen/X/Zc;->A05:Lcom/facebook/ads/redexgen/X/Xn;

    return-object v0
.end method

.method private setUpLayoutForCardAtIndex(I)V
    .locals 1

    .line 74963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    if-eqz v0, :cond_0

    .line 74964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/aJ;->A00(I)V

    .line 74965
    :cond_0
    return-void
.end method

.method private setupDotsLayout(Lcom/facebook/ads/redexgen/X/Qc;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Qc;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/cn;",
            ">;)V"
        }
    .end annotation

    .line 74966
    .local p2, "carouselCardInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/0K;

    .line 74967
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0K;->getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/5s;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/L5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/L5;-><init>(Lcom/facebook/ads/redexgen/X/Zc;)V

    .line 74968
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FH;->A0Y(Lcom/facebook/ads/redexgen/X/bW;)V

    .line 74969
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zc;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 74970
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v2

    .line 74971
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/aJ;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/aJ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/My;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    .line 74972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 74973
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74974
    .local v0, "positionDotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/0K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0K;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74975
    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/Zc;->A09:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 74976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A04:Lcom/facebook/ads/redexgen/X/aJ;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Zc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74977
    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 2

    .line 74934
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/0K;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6g;->setAdapter(Lcom/facebook/ads/redexgen/X/QC;)V

    .line 74935
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Qc;I)V
    .locals 11

    .line 74936
    move-object v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zc;->A01(Lcom/facebook/ads/redexgen/X/hy;)Ljava/util/ArrayList;

    move-result-object v3

    .line 74937
    .local v0, "carouselCardInfo":Ljava/util/ArrayList;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/0K;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/0K;->setCardsInfo(Ljava/util/ArrayList;)V

    .line 74938
    new-instance v1, Lcom/facebook/ads/redexgen/X/LE;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zc;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 74939
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 74940
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v5

    sget-object v7, Lcom/facebook/ads/redexgen/X/Zc;->A05:Lcom/facebook/ads/redexgen/X/Xn;

    .line 74941
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Qc;->A10()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/0K;

    .line 74942
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0K;->getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/5s;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/LE;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/List;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Qc;Lcom/facebook/ads/redexgen/X/Xn;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5s;Lcom/facebook/ads/redexgen/X/Cw;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/LE;

    .line 74943
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/0K;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/LE;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6g;->setAdapter(Lcom/facebook/ads/redexgen/X/QC;)V

    .line 74944
    if-eqz p2, :cond_0

    :goto_0
    sget v0, Lcom/facebook/ads/redexgen/X/Zc;->A07:I

    sub-int/2addr p2, v0

    .line 74945
    .local v1, "childWidth":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/LE;

    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-virtual {v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/LE;->A0O(III)V

    .line 74946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/LE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QC;->A0G()V

    .line 74947
    invoke-direct {p0, v6, v3}, Lcom/facebook/ads/redexgen/X/Zc;->setupDotsLayout(Lcom/facebook/ads/redexgen/X/Qc;Ljava/util/ArrayList;)V

    .line 74948
    return-void

    .line 74949
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wl;->A04:Landroid/util/DisplayMetrics;

    iget p2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/eX;)V
    .locals 6

    .line 74950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/LE;

    if-eqz v0, :cond_0

    .line 74951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/LE;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/LE;->A0P(Lcom/facebook/ads/redexgen/X/eX;)V

    .line 74952
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A02:Lcom/facebook/ads/redexgen/X/0K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0K;->A20(Lcom/facebook/ads/redexgen/X/eX;)V

    .line 74953
    return-void

    .line 74954
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 74955
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A1v:I

    const/4 v2, 0x0

    const/16 v1, 0x33

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zc;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 74956
    const/16 v2, 0x33

    const/4 v1, 0x7

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zc;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    goto :goto_0
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 74958
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/LE;

    if-eqz v0, :cond_0

    .line 74959
    sub-int v3, p4, p2

    sget v0, Lcom/facebook/ads/redexgen/X/Zc;->A07:I

    sub-int/2addr v3, v0

    .line 74960
    .local v0, "childWidth":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zc;->A03:Lcom/facebook/ads/redexgen/X/LE;

    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LE;->A0O(III)V

    .line 74961
    .end local v0    # "childWidth":I
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 74962
    return-void
.end method
