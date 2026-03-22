.class public final Lcom/facebook/ads/redexgen/X/Ef;
.super Lcom/facebook/ads/redexgen/X/QC;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/QC<",
        "Lcom/facebook/ads/redexgen/X/EY;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:I

.field public final A03:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/6g;

.field public final A06:Lcom/facebook/ads/redexgen/X/dL;

.field public final A07:Lcom/facebook/ads/redexgen/X/KE;

.field public final A08:Ljava/lang/Runnable;

.field public final A09:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/List;ILcom/facebook/ads/redexgen/X/6g;Lcom/facebook/ads/redexgen/X/KE;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/6g;",
            "Lcom/facebook/ads/redexgen/X/KE;",
            "I)V"
        }
    .end annotation

    .line 35016
    .local p2, "screenshotUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QC;-><init>()V

    .line 35017
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A00:I

    .line 35018
    new-instance v0, Lcom/facebook/ads/internal/view/rewardedvideo/EndCardV2ScreenshotRecyclerAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/rewardedvideo/EndCardV2ScreenshotRecyclerAdapter$1;-><init>(Lcom/facebook/ads/redexgen/X/Ef;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A03:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 35019
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ef;->A09:Ljava/util/List;

    .line 35020
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ef;->A02:I

    .line 35021
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ef;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 35022
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Ef;->A05:Lcom/facebook/ads/redexgen/X/6g;

    .line 35023
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A04:Landroid/os/Handler;

    .line 35024
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Ef;->A07:Lcom/facebook/ads/redexgen/X/KE;

    .line 35025
    iput p6, p0, Lcom/facebook/ads/redexgen/X/Ef;->A01:I

    .line 35026
    new-instance v0, Lcom/facebook/ads/redexgen/X/dF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dF;-><init>(Lcom/facebook/ads/redexgen/X/Ef;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A08:Ljava/lang/Runnable;

    .line 35027
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ef;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A08:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35028
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    .line 35029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A06:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 35031
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A03:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 35032
    invoke-virtual {v1, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35033
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ef;)I
    .locals 0

    .line 35034
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ef;)Landroid/os/Handler;
    .locals 0

    .line 35035
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ef;)Lcom/facebook/ads/redexgen/X/6g;
    .locals 0

    .line 35036
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A05:Lcom/facebook/ads/redexgen/X/6g;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ef;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 35037
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A06:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Ef;)Lcom/facebook/ads/redexgen/X/KE;
    .locals 0

    .line 35038
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A07:Lcom/facebook/ads/redexgen/X/KE;

    return-object p0
.end method

.method private final A05(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/EY;
    .locals 2

    .line 35039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A06:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Lcom/facebook/ads/redexgen/X/EW;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/EW;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 35040
    .local v0, "view":Lcom/facebook/ads/redexgen/X/EW;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A06:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35041
    new-instance v0, Lcom/facebook/ads/redexgen/X/dG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dG;-><init>(Lcom/facebook/ads/redexgen/X/Ef;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/EW;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35042
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/EY;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/EY;-><init>(Lcom/facebook/ads/redexgen/X/EW;)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Ef;)Ljava/lang/Runnable;
    .locals 0

    .line 35043
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A08:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/EY;I)V
    .locals 5

    .line 35044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    .line 35045
    .local v0, "actualPosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A09:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 35046
    .local v1, "url":Ljava/lang/String;
    const/16 v1, 0x190

    const/4 v0, -0x1

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 35047
    .local v2, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ef;->A02:I

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A02:I

    invoke-virtual {v3, v2, v1, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 35048
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EY;->A0p()Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/EW;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35049
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EY;->A0p()Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/EW;->setUrl(Ljava/lang/String;)V

    .line 35050
    return-void
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 35051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final bridge synthetic A0F(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 1

    .line 35052
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ef;->A05(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/EY;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0K(Lcom/facebook/ads/redexgen/X/Qg;I)V
    .locals 0

    .line 35053
    check-cast p1, Lcom/facebook/ads/redexgen/X/EY;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ef;->A07(Lcom/facebook/ads/redexgen/X/EY;I)V

    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 2

    .line 35054
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/QC;->A0L(Lcom/facebook/ads/redexgen/X/6g;)V

    .line 35055
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ef;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A08:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35056
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    .line 35057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A06:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 35059
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0E()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ef;->A03:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 35060
    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35061
    :cond_0
    return-void
.end method

.method public final A0O(I)V
    .locals 0

    .line 35062
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ef;->A01:I

    .line 35063
    return-void
.end method
