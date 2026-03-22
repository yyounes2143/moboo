.class public final Lcom/facebook/ads/redexgen/X/Dd;
.super Lcom/facebook/ads/redexgen/X/Nz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Dc;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/dQ;Ljava/lang/String;ZIIZLandroid/os/Bundle;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/dZ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dc;DDDZ)V
    .locals 8

    .line 34102
    move-object v0, p0

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Dc;

    move-object v0, p0

    move/from16 v7, p8

    move-wide v5, p6

    move-wide v3, p4

    move-wide v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/Nz;-><init>(DDDZ)V

    return-void
.end method


# virtual methods
.method public final A00(ZZLcom/facebook/ads/redexgen/X/O1;)V
    .locals 4

    .line 34103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Dc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0G(Lcom/facebook/ads/redexgen/X/Dc;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Dc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0Y(Lcom/facebook/ads/redexgen/X/Dc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34104
    return-void

    .line 34105
    :cond_0
    if-eqz p2, :cond_1

    .line 34106
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Dc;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0a(Lcom/facebook/ads/redexgen/X/Dc;Z)Z

    .line 34107
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Dc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Dc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0I(Lcom/facebook/ads/redexgen/X/Dc;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dd;->A00:Lcom/facebook/ads/redexgen/X/Dc;

    sget-object v0, Lcom/facebook/ads/redexgen/X/dS;->A0B:Lcom/facebook/ads/redexgen/X/dS;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0L(Lcom/facebook/ads/redexgen/X/Dc;Lcom/facebook/ads/redexgen/X/dS;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0Q(Lcom/facebook/ads/redexgen/X/Dc;Ljava/lang/String;Ljava/util/Map;)V

    .line 34108
    :cond_1
    return-void
.end method
