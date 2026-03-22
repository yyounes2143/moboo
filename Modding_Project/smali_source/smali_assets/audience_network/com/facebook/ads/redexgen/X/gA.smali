.class public final Lcom/facebook/ads/redexgen/X/gA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6g;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 0

    .line 82013
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gA;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AGP(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QJ;)V
    .locals 1

    .line 82014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gA;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/6g;->A1l(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QJ;)V

    .line 82015
    return-void
.end method

.method public final AGR(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QJ;)V
    .locals 1

    .line 82016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gA;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0r:Lcom/facebook/ads/redexgen/X/QW;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QW;->A0Y(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 82017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gA;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/6g;->A1m(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QJ;)V

    .line 82018
    return-void
.end method

.method public final AGT(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QJ;)V
    .locals 1

    .line 82019
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0d(Z)V

    .line 82020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gA;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0C:Z

    if-eqz v0, :cond_1

    .line 82021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gA;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A05:Lcom/facebook/ads/redexgen/X/QK;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/QK;->A0R(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gA;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1O()V

    .line 82023
    :cond_0
    :goto_0
    return-void

    .line 82024
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gA;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A05:Lcom/facebook/ads/redexgen/X/QK;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/QK;->A0Q(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gA;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1O()V

    goto :goto_0
.end method

.method public final AJo(Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 3

    .line 82026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gA;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/6g;->A06:Lcom/facebook/ads/redexgen/X/QO;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gA;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6g;->A0r:Lcom/facebook/ads/redexgen/X/QW;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A1F(Landroid/view/View;Lcom/facebook/ads/redexgen/X/QW;)V

    .line 82027
    return-void
.end method
