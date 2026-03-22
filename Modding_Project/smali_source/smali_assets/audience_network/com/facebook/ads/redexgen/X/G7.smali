.class public final Lcom/facebook/ads/redexgen/X/G7;
.super Lcom/facebook/ads/redexgen/X/eW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/G2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/G2;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/G2;)V
    .locals 0

    .line 37021
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eW;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 3

    .line 37022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A07:Lcom/facebook/ads/redexgen/X/XH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A07:Lcom/facebook/ads/redexgen/X/XH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A05()V

    .line 37024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37025
    new-instance v1, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Zp;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A0B:Lcom/facebook/ads/redexgen/X/eX;

    .line 37026
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A03(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A07:Lcom/facebook/ads/redexgen/X/XH;

    .line 37027
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/XH;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 37028
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Zp;

    move-result-object v0

    .line 37029
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A05()Ljava/util/Map;

    move-result-object v2

    .line 37030
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/G2;->A05:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/US;->AB5(Ljava/lang/String;Ljava/util/Map;)V

    .line 37031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->ADs()V

    .line 37033
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A0A:Lcom/facebook/ads/redexgen/X/YY;

    .line 37034
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A8d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W2;->A0E(Ljava/lang/String;Ljava/lang/String;)V

    .line 37035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 37036
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 37037
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N3;->A07(Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 37038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3D()V

    .line 37039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 37040
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0t()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 37041
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X0;->A00(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 37042
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A02(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 37043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/G2;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A0A:Lcom/facebook/ads/redexgen/X/YY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A88()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    .line 37044
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
