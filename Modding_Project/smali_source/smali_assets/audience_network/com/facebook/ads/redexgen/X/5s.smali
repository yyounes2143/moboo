.class public final Lcom/facebook/ads/redexgen/X/5s;
.super Lcom/facebook/ads/redexgen/X/FH;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 379
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "f1NrkMLFHAOxAk1WYXb4ZQBI9BQGMxNf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ieQbYkP9qXWhodiL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FasCpRA2RHhykdlBGUblwYUAQMGKU0mS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sjzKgK2sh59qhJK5Sm5NCXrbKyy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "73hXtYSYooo4yypUFlMlXcqu25ITYI9G"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jFG3gQjXUuH0GALbmhZbm14pHMTfeDNL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AB4YZhA3BNaHUCHwFjy4bae76Yz8EFa9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dMMrkYyDXzmdfTW8HhUzXkOm8W"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5s;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0h;ILjava/util/List;Lcom/facebook/ads/redexgen/X/eX;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/0h;",
            "I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cn;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/eX;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 17132
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/FH;-><init>(Lcom/facebook/ads/redexgen/X/0h;ILjava/util/List;Lcom/facebook/ads/redexgen/X/eX;Landroid/os/Bundle;)V

    .line 17133
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/6g;->A1h(Lcom/facebook/ads/redexgen/X/QT;)V

    .line 17134
    new-instance v0, Lcom/facebook/ads/redexgen/X/LG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LG;-><init>(Lcom/facebook/ads/redexgen/X/5s;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A03:Lcom/facebook/ads/redexgen/X/bY;

    .line 17135
    return-void
.end method

.method private A00()V
    .locals 4

    .line 17136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A25()I

    move-result v1

    .line 17137
    .local v0, "curPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A05:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    .line 17138
    add-int/lit8 v3, v1, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/5s;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5s;->A00:[Ljava/lang/String;

    const-string v1, "QoZYEwWSRtnMYn7R6MgH1oBp1kGEXSrp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/FH;->A0U(I)V

    .line 17139
    :cond_1
    return-void
.end method

.method private A01(I)V
    .locals 3

    .line 17140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A26()I

    move-result v2

    .line 17141
    .local v0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A27()I

    move-result v1

    .line 17142
    .local v1, "lastVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A25()I

    move-result v0

    .line 17143
    .local v2, "visibleItem":I
    if-eq v0, v2, :cond_0

    .line 17144
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/FH;->A0S(I)V

    .line 17145
    :cond_0
    if-eq v0, v1, :cond_1

    .line 17146
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/FH;->A0S(I)V

    .line 17147
    :cond_1
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FH;->A0T(I)V

    .line 17148
    invoke-virtual {p0, v2, v1, p1}, Lcom/facebook/ads/redexgen/X/FH;->A0V(III)V

    .line 17149
    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/5s;)V
    .locals 0

    .line 17150
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5s;->A00()V

    return-void
.end method


# virtual methods
.method public final A0L(Lcom/facebook/ads/redexgen/X/6g;I)V
    .locals 0

    .line 17151
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/6g;II)V
    .locals 2

    .line 17152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A25()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 17153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gI;->A25()I

    move-result v1

    .line 17154
    .local v0, "shouldPlayPosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A0C:Lcom/facebook/ads/redexgen/X/gI;

    .line 17155
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/gI;->A1o(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ir;

    .line 17156
    .local v1, "curCard":Lcom/facebook/ads/redexgen/X/Ir;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ir;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ir;->A1S()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17157
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ir;->A1Q()V

    .line 17158
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/5s;->A01(I)V

    .line 17159
    .end local v0    # "shouldPlayPosition":I
    .end local v1    # "curCard":Lcom/facebook/ads/redexgen/X/Ir;
    :cond_1
    return-void
.end method

.method public final A0X(Landroid/view/View;Z)V
    .locals 1

    .line 17160
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 17161
    return-void

    .line 17162
    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/Ir;Z)V
    .locals 1

    .line 17163
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/5s;->A0X(Landroid/view/View;Z)V

    .line 17164
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ir;->A1S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17165
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ir;->A1P()V

    .line 17166
    :cond_0
    return-void
.end method

.method public final A0a(Landroid/view/View;)Z
    .locals 2

    .line 17167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 17168
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 17169
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0b()Lcom/facebook/ads/redexgen/X/eX;
    .locals 1

    .line 17170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FH;->A04:Lcom/facebook/ads/redexgen/X/eX;

    return-object v0
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/eX;)V
    .locals 0

    .line 17171
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FH;->A04:Lcom/facebook/ads/redexgen/X/eX;

    .line 17172
    return-void
.end method

.method public final A0d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cn;",
            ">;)V"
        }
    .end annotation

    .line 17173
    .local p1, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FH;->A05:Ljava/util/List;

    .line 17174
    return-void
.end method
