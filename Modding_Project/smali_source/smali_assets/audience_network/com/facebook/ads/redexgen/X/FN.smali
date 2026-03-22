.class public final Lcom/facebook/ads/redexgen/X/FN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ce;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3r;)V
    .locals 0

    .line 36094
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9d()V
    .locals 4

    .line 36095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3r;->A07(Lcom/facebook/ads/redexgen/X/3r;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/5d;

    if-eqz v0, :cond_0

    .line 36096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3r;->A07(Lcom/facebook/ads/redexgen/X/3r;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5d;->A1W()V

    .line 36097
    sget-object v3, Lcom/facebook/ads/redexgen/X/UZ;->A0e:Lcom/facebook/ads/redexgen/X/UZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36098
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 36099
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    .line 36100
    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;->A02(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 36101
    :cond_0
    return-void
.end method

.method public final AJF()V
    .locals 4

    .line 36102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3r;->A07(Lcom/facebook/ads/redexgen/X/3r;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/5d;

    if-eqz v0, :cond_0

    .line 36103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3r;->A07(Lcom/facebook/ads/redexgen/X/3r;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5d;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3r;->A09(Lcom/facebook/ads/redexgen/X/3r;)Lcom/facebook/ads/redexgen/X/3i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5d;->A1a(Lcom/facebook/ads/redexgen/X/3i;)V

    .line 36104
    sget-object v3, Lcom/facebook/ads/redexgen/X/UZ;->A0e:Lcom/facebook/ads/redexgen/X/UZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 36105
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 36106
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0A()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    .line 36107
    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ua;->A02(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 36108
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3r;->A0k()V

    .line 36109
    return-void
.end method

.method public final AJT()V
    .locals 2

    .line 36110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G2;->A0c()V

    .line 36111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3r;->A07(Lcom/facebook/ads/redexgen/X/3r;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/5d;

    if-eqz v0, :cond_0

    .line 36112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FN;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3r;->A07(Lcom/facebook/ads/redexgen/X/3r;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zv;->setVisibility(I)V

    .line 36113
    :cond_0
    return-void
.end method
