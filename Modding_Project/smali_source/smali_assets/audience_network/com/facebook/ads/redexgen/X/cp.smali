.class public final Lcom/facebook/ads/redexgen/X/cp;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A08:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5y;

.field public A01:Lcom/facebook/ads/redexgen/X/EG;

.field public A02:Lcom/facebook/ads/redexgen/X/3i;

.field public A03:Lcom/facebook/ads/redexgen/X/D1;

.field public A04:Lcom/facebook/ads/redexgen/X/2p;

.field public A05:Lcom/facebook/ads/redexgen/X/2R;

.field public final A06:Lcom/facebook/ads/redexgen/X/dL;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ua;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2588
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cp;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;)V
    .locals 0

    .line 78210
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78211
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cp;->A07:Lcom/facebook/ads/redexgen/X/Ua;

    .line 78212
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cp;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 78213
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cp;->setUpView(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 78214
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/cp;)Lcom/facebook/ads/redexgen/X/2R;
    .locals 0

    .line 78215
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cp;->A05:Lcom/facebook/ads/redexgen/X/2R;

    return-object p0
.end method

.method private setUpPlugins(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 5

    .line 78240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0b()V

    .line 78241
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/2p;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A04:Lcom/facebook/ads/redexgen/X/2p;

    .line 78242
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A04:Lcom/facebook/ads/redexgen/X/2p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 78243
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cp;->A07:Lcom/facebook/ads/redexgen/X/Ua;

    new-instance v0, Lcom/facebook/ads/redexgen/X/D1;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/D1;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A03:Lcom/facebook/ads/redexgen/X/D1;

    .line 78244
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3D;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/3D;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 78245
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A03:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 78246
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cp;->A07:Lcom/facebook/ads/redexgen/X/Ua;

    const/4 v4, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/2R;

    invoke-direct {v0, p1, v4, v1}, Lcom/facebook/ads/redexgen/X/2R;-><init>(Lcom/facebook/ads/redexgen/X/dL;ZLcom/facebook/ads/redexgen/X/Ua;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A05:Lcom/facebook/ads/redexgen/X/2R;

    .line 78247
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A05:Lcom/facebook/ads/redexgen/X/2R;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 78248
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cp;->A05:Lcom/facebook/ads/redexgen/X/2R;

    sget-object v1, Lcom/facebook/ads/redexgen/X/dr;->A02:Lcom/facebook/ads/redexgen/X/dr;

    new-instance v0, Lcom/facebook/ads/redexgen/X/D4;

    invoke-direct {v0, v2, v1, v4, v4}, Lcom/facebook/ads/redexgen/X/D4;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/dr;ZZ)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 78249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78250
    return-void

    .line 78251
    :cond_0
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78252
    .local v0, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78253
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78254
    sget v3, Lcom/facebook/ads/redexgen/X/cp;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/cp;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/cp;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/cp;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 78255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A03:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/D1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78256
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A03:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5y;->addView(Landroid/view/View;)V

    .line 78257
    return-void
.end method

.method private setUpVideo(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 4

    .line 78258
    new-instance v0, Lcom/facebook/ads/redexgen/X/5y;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/5y;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    .line 78259
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/E1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 78261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cp;->addView(Landroid/view/View;)V

    .line 78262
    new-instance v0, Lcom/facebook/ads/redexgen/X/co;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/co;-><init>(Lcom/facebook/ads/redexgen/X/cp;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cp;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78263
    return-void
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 0

    .line 78264
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cp;->setUpVideo(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 78265
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cp;->setUpPlugins(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 78266
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 78216
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0l(ZI)V

    .line 78217
    return-void
.end method

.method public final A02()V
    .locals 2

    .line 78218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A01:Lcom/facebook/ads/redexgen/X/EG;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A01:Lcom/facebook/ads/redexgen/X/EG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EG;->A07()V

    .line 78220
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/cp;->A01:Lcom/facebook/ads/redexgen/X/EG;

    .line 78221
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A02:Lcom/facebook/ads/redexgen/X/3i;

    if-eqz v0, :cond_1

    .line 78222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A02:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3i;->A0p()V

    .line 78223
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/cp;->A02:Lcom/facebook/ads/redexgen/X/3i;

    .line 78224
    :cond_1
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Tf;)V
    .locals 1

    .line 78225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Te;->A05(Lcom/facebook/ads/redexgen/X/Tf;)Z

    .line 78226
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/US;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78227
    .local p4, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cp;->A02()V

    .line 78228
    new-instance v0, Lcom/facebook/ads/redexgen/X/3i;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cp;->A06:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    const/4 v5, 0x0

    move-object v7, p3

    move-object v4, p2

    move-object v2, p1

    move-object v2, v2

    move-object v4, v4

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/3i;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/E1;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A02:Lcom/facebook/ads/redexgen/X/3i;

    .line 78229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A06:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1v(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78230
    new-instance v0, Lcom/facebook/ads/redexgen/X/EG;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cp;->A06:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/cp;->A02:Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/EG;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/E1;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/Dc;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A01:Lcom/facebook/ads/redexgen/X/EG;

    .line 78231
    :goto_0
    return-void

    .line 78232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A01:Lcom/facebook/ads/redexgen/X/EG;

    goto :goto_0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/db;)V
    .locals 2

    .line 78233
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    const/16 v0, 0xd

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 78234
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 78235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0s()Z

    move-result v0

    return v0
.end method

.method public getSimpleVideoView()Lcom/facebook/ads/redexgen/X/E1;
    .locals 1

    .line 78236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 78237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getVolume()F

    move-result v0

    return v0
.end method

.method public setPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 78238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A04:Lcom/facebook/ads/redexgen/X/2p;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2p;->setImage(Ljava/lang/String;)V

    .line 78239
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1

    .line 78267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E1;->setVideoURI(Ljava/lang/String;)V

    .line 78268
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 78269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A00:Lcom/facebook/ads/redexgen/X/5y;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E1;->setVolume(F)V

    .line 78270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cp;->A03:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D1;->A09()V

    .line 78271
    return-void
.end method
