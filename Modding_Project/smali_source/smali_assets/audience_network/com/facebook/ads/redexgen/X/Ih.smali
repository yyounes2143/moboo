.class public final Lcom/facebook/ads/redexgen/X/Ih;
.super Lcom/facebook/ads/redexgen/X/eW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5K;)V
    .locals 0

    .line 42046
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eW;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 3

    .line 42047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A05(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A05(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A05()V

    .line 42049
    new-instance v1, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    .line 42050
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A0A(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    .line 42051
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A05(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    .line 42052
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v2

    .line 42053
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A03(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A00(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/US;->AB5(Ljava/lang/String;Ljava/util/Map;)V

    .line 42054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    .line 42055
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A07(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A8d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A00(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W2;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 42056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    .line 42057
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A00(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 42058
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N3;->A07(Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 42059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3D()V

    .line 42060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    .line 42061
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A00(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0t()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    .line 42062
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A00(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X0;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 42063
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A06(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A06(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ih;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A07(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A88()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 42066
    .end local v0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
