.class public final Lcom/facebook/ads/redexgen/X/LQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ZZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ZO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZO;)V
    .locals 0

    .line 50173
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACa(Z)V
    .locals 2

    .line 50174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/ZO;->A0B(Lcom/facebook/ads/redexgen/X/ZO;Z)V

    .line 50175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZO;->A0E(Lcom/facebook/ads/redexgen/X/ZO;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZO;->A02(Lcom/facebook/ads/redexgen/X/ZO;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZO;->A02(Lcom/facebook/ads/redexgen/X/ZO;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 50177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZO;->A02(Lcom/facebook/ads/redexgen/X/ZO;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 50178
    :cond_0
    return-void

    .line 50179
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public final ADJ(Z)V
    .locals 2

    .line 50180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/ZO;->A0B(Lcom/facebook/ads/redexgen/X/ZO;Z)V

    .line 50181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZO;->A0E(Lcom/facebook/ads/redexgen/X/ZO;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZO;->A03(Lcom/facebook/ads/redexgen/X/ZO;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZO;->A03(Lcom/facebook/ads/redexgen/X/ZO;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 50183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/ZO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZO;->A03(Lcom/facebook/ads/redexgen/X/ZO;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 50184
    :cond_0
    return-void

    .line 50185
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method
