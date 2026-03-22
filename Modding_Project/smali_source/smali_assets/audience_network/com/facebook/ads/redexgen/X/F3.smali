.class public final Lcom/facebook/ads/redexgen/X/F3;
.super Lcom/facebook/ads/redexgen/X/eW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/3q;->A0G(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3q;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3q;)V
    .locals 0

    .line 35372
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eW;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 3

    .line 35373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A09(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35374
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A09(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3q;->A0J(Lcom/facebook/ads/redexgen/X/3q;Lcom/facebook/ads/redexgen/X/XH;)V

    .line 35375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A0D(Lcom/facebook/ads/redexgen/X/3q;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35376
    new-instance v1, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    .line 35377
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A0B(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    .line 35378
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A09(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    .line 35379
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A03(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    .line 35380
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v2

    .line 35381
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A08(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A0D(Lcom/facebook/ads/redexgen/X/3q;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/US;->AB5(Ljava/lang/String;Ljava/util/Map;)V

    .line 35382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    .line 35383
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A04(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A07(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 35384
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N3;->A07(Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 35385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A07(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3D()V

    .line 35386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    .line 35387
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A05(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0t()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/3q;

    .line 35388
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3q;->A06(Lcom/facebook/ads/redexgen/X/3q;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X0;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 35389
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 35390
    .end local v0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
