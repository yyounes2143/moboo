.class public final Lcom/facebook/ads/redexgen/X/FD;
.super Lcom/facebook/ads/redexgen/X/Qg;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xu;


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/N3;

.field public A01:Lcom/facebook/ads/redexgen/X/eW;

.field public A02:Lcom/facebook/ads/redexgen/X/eX;

.field public A03:Lcom/facebook/ads/redexgen/X/eX;

.field public final A04:I

.field public final A05:Landroid/util/SparseBooleanArray;

.field public final A06:Lcom/facebook/ads/redexgen/X/dL;

.field public final A07:Lcom/facebook/ads/redexgen/X/5h;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 687
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "biNTtjxa0xULALtZEUOcP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rMVpYr4hwZgX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "y0rebd1hOaNR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "snwXdVXwO66aPvNuuMD2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jxkMgVVp1g5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Dcah1JX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lglxOXHbCZFpcLf1TWQPAMUDis4zLCZx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "n80A5ryznQOlcAJIvKv7FeLq2ck19EHB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FD;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5h;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/eX;ILcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/N3;)V
    .locals 0

    .line 35761
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Qg;-><init>(Landroid/view/View;)V

    .line 35762
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/FD;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 35763
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    .line 35764
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FD;->A05:Landroid/util/SparseBooleanArray;

    .line 35765
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FD;->A02:Lcom/facebook/ads/redexgen/X/eX;

    .line 35766
    iput p4, p0, Lcom/facebook/ads/redexgen/X/FD;->A04:I

    .line 35767
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/FD;->A00:Lcom/facebook/ads/redexgen/X/N3;

    .line 35768
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/FD;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 35769
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FD;->A05:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/FD;)Lcom/facebook/ads/redexgen/X/N3;
    .locals 0

    .line 35770
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FD;->A00:Lcom/facebook/ads/redexgen/X/N3;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/FD;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 35771
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FD;->A06:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/FD;)Lcom/facebook/ads/redexgen/X/eX;
    .locals 0

    .line 35772
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FD;->A02:Lcom/facebook/ads/redexgen/X/eX;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/FD;)Lcom/facebook/ads/redexgen/X/eX;
    .locals 0

    .line 35773
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FD;->A03:Lcom/facebook/ads/redexgen/X/eX;

    return-object p0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/XH;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cn;)V
    .locals 9

    .line 35774
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FD;->A05:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/cn;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35775
    return-void

    .line 35776
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FD;->A03:Lcom/facebook/ads/redexgen/X/eX;

    if-eqz v0, :cond_2

    .line 35777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FD;->A03:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0V()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/FD;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35778
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/FD;->A08:[Ljava/lang/String;

    const-string v1, "sEemyGdXpNnP2WRBMWcD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "kawPFcVLuq3VyedHvbBIc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FD;->A03:Lcom/facebook/ads/redexgen/X/eX;

    .line 35779
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/cn;->A04()Ljava/util/Map;

    move-result-object v7

    .line 35780
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/FF;

    move-object v3, p0

    move-object v4, p3

    move-object v8, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/FF;-><init>(Lcom/facebook/ads/redexgen/X/FD;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cn;Lcom/facebook/ads/redexgen/X/US;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/XH;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/FD;->A01:Lcom/facebook/ads/redexgen/X/eW;

    .line 35781
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FD;->A01:Lcom/facebook/ads/redexgen/X/eW;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FD;->A06:Lcom/facebook/ads/redexgen/X/dL;

    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/eX;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/eX;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FD;->A03:Lcom/facebook/ads/redexgen/X/eX;

    .line 35782
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FD;->A03:Lcom/facebook/ads/redexgen/X/eX;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eX;->A0Y(Z)V

    .line 35783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FD;->A03:Lcom/facebook/ads/redexgen/X/eX;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/eX;->A0W(I)V

    .line 35784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FD;->A03:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/eX;->A0X(I)V

    .line 35785
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FE;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/FE;-><init>(Lcom/facebook/ads/redexgen/X/FD;Lcom/facebook/ads/redexgen/X/cn;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/bX;)V

    .line 35786
    return-void
.end method


# virtual methods
.method public final A0p(Lcom/facebook/ads/redexgen/X/cn;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/XH;Ljava/lang/String;III)V
    .locals 7

    .line 35787
    move-object v5, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A02()I

    move-result v3

    .line 35788
    .local v2, "position":I
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    const v1, -0x5f000010

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->setTag(ILjava/lang/Object;)V

    .line 35789
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ir;->setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/cn;)V

    .line 35790
    const/4 v0, -0x2

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, p6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 35791
    .local v3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v3, :cond_1

    move v6, p8

    .line 35792
    .local v4, "leftMargin":I
    :goto_0
    iget v0, v5, Lcom/facebook/ads/redexgen/X/FD;->A04:I

    add-int/lit8 v0, v0, -0x1

    if-lt v3, v0, :cond_0

    .line 35793
    .local v6, "rightMargin":I
    :goto_1
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/FD;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35794
    :cond_0
    move p8, p7

    goto :goto_1

    .line 35795
    :cond_1
    move v6, p7

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/FD;->A08:[Ljava/lang/String;

    const-string v1, "ng4t5bAKqCWK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "n9xBZs9SEWUc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v6, v3, p8, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 35796
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A03()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v3

    .line 35797
    .local p0, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A03()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v2

    .line 35798
    .local p1, "videoUrl":Ljava/lang/String;
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->setIsVideo(Z)V

    .line 35799
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5h;->A1T()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35800
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/5h;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    .line 35801
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/SF;->A0T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->setVideoUrl(Ljava/lang/String;)V

    .line 35802
    :goto_2
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/5h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35803
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A03()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->setCTAInfo(Lcom/facebook/ads/redexgen/X/Mz;Ljava/util/Map;)V

    .line 35804
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A1U(Ljava/util/Map;)V

    .line 35805
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/FD;->A05(Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/XH;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cn;)V

    .line 35806
    return-void

    .line 35807
    :cond_3
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/5h;->setImageUrl(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final A0q(Lcom/facebook/ads/redexgen/X/eX;)V
    .locals 0

    .line 35808
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FD;->A02:Lcom/facebook/ads/redexgen/X/eX;

    .line 35809
    return-void
.end method

.method public final AIV()V
    .locals 1

    .line 35810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FD;->A07:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ir;->A1O()V

    .line 35811
    return-void
.end method
