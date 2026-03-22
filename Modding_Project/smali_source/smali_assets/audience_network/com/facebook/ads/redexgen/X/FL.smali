.class public final Lcom/facebook/ads/redexgen/X/FL;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xo;


# static fields
.field public static A0B:[B

.field public static final A0C:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/R0;

.field public A01:Landroid/content/Intent;

.field public A02:Landroid/os/Bundle;

.field public A03:Lcom/facebook/ads/redexgen/X/Xo;

.field public final A04:Lcom/facebook/ads/redexgen/X/hy;

.field public final A05:Lcom/facebook/ads/redexgen/X/hy;

.field public final A06:Lcom/facebook/ads/redexgen/X/R0;

.field public final A07:Lcom/facebook/ads/redexgen/X/dL;

.field public final A08:Lcom/facebook/ads/redexgen/X/US;

.field public final A09:Lcom/facebook/ads/redexgen/X/XC;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Xn;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 690
    invoke-static {}, Lcom/facebook/ads/redexgen/X/FL;->A0A()V

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/FL;->A0C:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 2

    .line 36021
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36022
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FL;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 36023
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FL;->A08:Lcom/facebook/ads/redexgen/X/US;

    .line 36024
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FL;->A05:Lcom/facebook/ads/redexgen/X/hy;

    .line 36025
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/FL;->A04:Lcom/facebook/ads/redexgen/X/hy;

    .line 36026
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/FL;->A0A:Lcom/facebook/ads/redexgen/X/Xn;

    .line 36027
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/FL;->A06:Lcom/facebook/ads/redexgen/X/R0;

    .line 36028
    new-instance v0, Lcom/facebook/ads/redexgen/X/XC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XC;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A09:Lcom/facebook/ads/redexgen/X/XC;

    .line 36029
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FL;->A09:Lcom/facebook/ads/redexgen/X/XC;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XB;->A02:Lcom/facebook/ads/redexgen/X/XB;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XC;->A05(Lcom/facebook/ads/redexgen/X/XB;)V

    .line 36030
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/FL;)Landroid/content/Intent;
    .locals 0

    .line 36031
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FL;->A01:Landroid/content/Intent;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/FL;)Landroid/os/Bundle;
    .locals 0

    .line 36032
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FL;->A02:Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/Xo;
    .locals 0

    .line 36033
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FL;->A03:Lcom/facebook/ads/redexgen/X/Xo;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/Xo;)Lcom/facebook/ads/redexgen/X/Xo;
    .locals 0

    .line 36034
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FL;->A03:Lcom/facebook/ads/redexgen/X/Xo;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/cz;Lcom/facebook/ads/redexgen/X/YY;)Lcom/facebook/ads/redexgen/X/Xo;
    .locals 0

    .line 36035
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FL;->A05(Lcom/facebook/ads/redexgen/X/cz;Lcom/facebook/ads/redexgen/X/YY;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object p0

    return-object p0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/cz;Lcom/facebook/ads/redexgen/X/YY;)Lcom/facebook/ads/redexgen/X/Lc;
    .locals 10

    .line 36036
    new-instance v1, Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FL;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FL;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FL;->A0A:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/FL;->A04:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A04:Lcom/facebook/ads/redexgen/X/hy;

    .line 36037
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1A()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    move-object v7, p2

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/Lc;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/YY;ZLcom/facebook/ads/redexgen/X/cz;)V

    .line 36038
    return-object v1
.end method

.method private A06()Lcom/facebook/ads/redexgen/X/3r;
    .locals 9

    .line 36039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A04:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A07()Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36040
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FL;->A05:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A04:Lcom/facebook/ads/redexgen/X/hy;

    .line 36041
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    .line 36042
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    .line 36043
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A07()Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v0

    .line 36044
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NB;->A0N()Z

    move-result v0

    .line 36045
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1M(Z)V

    .line 36046
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FL;->A05:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A04:Lcom/facebook/ads/redexgen/X/hy;

    .line 36047
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    .line 36048
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    .line 36049
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A07()Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v0

    .line 36050
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NB;->A0P()Z

    move-result v0

    .line 36051
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1N(Z)V

    .line 36052
    :cond_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/LX;-><init>()V

    .line 36053
    .local v0, "adBehaviour":Lcom/facebook/ads/redexgen/X/YY;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A04:Lcom/facebook/ads/redexgen/X/hy;

    invoke-direct {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/FL;->A07(Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/cz;

    move-result-object v1

    .line 36054
    .local v8, "playableAdsView":Lcom/facebook/ads/redexgen/X/cz;
    new-instance v2, Lcom/facebook/ads/redexgen/X/3r;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FL;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/FL;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/FL;->A05:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A07:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v7, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/FL;->A0A:Lcom/facebook/ads/redexgen/X/Xn;

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/3r;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Xn;)V

    .line 36055
    .local v1, "videoView":Lcom/facebook/ads/redexgen/X/3r;
    new-instance v0, Lcom/facebook/ads/redexgen/X/FM;

    invoke-direct {v0, p0, v1, v4}, Lcom/facebook/ads/redexgen/X/FM;-><init>(Lcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/cz;Lcom/facebook/ads/redexgen/X/YY;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/3r;->setVideoLeadingPlayableAdListener(Lcom/facebook/ads/redexgen/X/cf;)V

    .line 36056
    return-object v2
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/cz;
    .locals 8

    .line 36057
    const/4 v1, 0x0

    .line 36058
    .local v0, "playableAdsView":Lcom/facebook/ads/redexgen/X/cz;
    move-object v3, p2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A07()Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v4

    .line 36059
    .local v1, "playableAdData":Lcom/facebook/ads/redexgen/X/NB;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/NB;->A0M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36060
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 36061
    .local p1, "playableMetricData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FL;->A08(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/YY;->A8d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36062
    new-instance v1, Lcom/facebook/ads/redexgen/X/cz;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FL;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/FL;->A08:Lcom/facebook/ads/redexgen/X/US;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/cz;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/NB;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/cx;Ljava/util/Map;)V

    .line 36063
    .end local p1    # "playableMetricData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FL;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A09()V
    .locals 2

    .line 36064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A03:Lcom/facebook/ads/redexgen/X/Xo;

    if-eqz v0, :cond_0

    .line 36065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A03:Lcom/facebook/ads/redexgen/X/Xo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Xo;->onDestroy()V

    .line 36066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A03:Lcom/facebook/ads/redexgen/X/Xo;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 36067
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FL;->A03:Lcom/facebook/ads/redexgen/X/Xo;

    check-cast v1, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A03:Lcom/facebook/ads/redexgen/X/Xo;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FL;->removeView(Landroid/view/View;)V

    .line 36069
    :cond_0
    return-void
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/FL;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x75t
        0x69t
        0x64t
        0x66t
        0x60t
        0x68t
        0x60t
        0x6bt
        0x71t
    .end array-data
.end method

.method private final A0B(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 1

    .line 36070
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FL;->A06()Lcom/facebook/ads/redexgen/X/3r;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A03:Lcom/facebook/ads/redexgen/X/Xo;

    .line 36071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A03:Lcom/facebook/ads/redexgen/X/Xo;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Xo;->AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V

    .line 36072
    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/FL;)V
    .locals 0

    .line 36073
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FL;->A09()V

    return-void
.end method


# virtual methods
.method public final AAl(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 2

    .line 36074
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FL;->A01:Landroid/content/Intent;

    .line 36075
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FL;->A02:Landroid/os/Bundle;

    .line 36076
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FL;->A00:Lcom/facebook/ads/redexgen/X/R0;

    .line 36077
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FL;->A0A:Lcom/facebook/ads/redexgen/X/Xn;

    sget-object v0, Lcom/facebook/ads/redexgen/X/FL;->A0C:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 36078
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/FL;->A0B(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/R0;)V

    .line 36079
    return-void
.end method

.method public final AEV(Z)V
    .locals 0

    .line 36080
    return-void
.end method

.method public final AF0(Z)V
    .locals 0

    .line 36081
    return-void
.end method

.method public final AIB(Landroid/os/Bundle;)V
    .locals 0

    .line 36082
    return-void
.end method

.method public getContentView()Lcom/facebook/ads/redexgen/X/Xo;
    .locals 1

    .line 36083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A03:Lcom/facebook/ads/redexgen/X/Xo;

    return-object v0
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 36084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FL;->A05:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 36085
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 0

    .line 36086
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 0

    .line 36087
    return-void
.end method
