.class public final Lcom/facebook/ads/redexgen/X/G3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/G2;->A0Z()Lcom/facebook/ads/redexgen/X/Xm;
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

    .line 37002
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G3;->A00:Lcom/facebook/ads/redexgen/X/G2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACC(Lcom/facebook/ads/redexgen/X/Xm;)V
    .locals 3

    .line 37003
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 37004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G3;->A00:Lcom/facebook/ads/redexgen/X/G2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G2;->A0e()V

    .line 37005
    :goto_0
    return-void

    .line 37006
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G3;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/G2;->A06:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A07:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 37007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G3;->A00:Lcom/facebook/ads/redexgen/X/G2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G2;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37008
    return-void

    .line 37009
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G3;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/G2;->A09:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G3;->A00:Lcom/facebook/ads/redexgen/X/G2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A0A:Lcom/facebook/ads/redexgen/X/YY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A7o()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    goto :goto_0
.end method
