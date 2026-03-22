.class public final Lcom/facebook/ads/redexgen/X/NL;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Y0;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Y0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y0;)V
    .locals 0

    .line 53998
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NL;->A00:Lcom/facebook/ads/redexgen/X/Y0;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 53999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A00:Lcom/facebook/ads/redexgen/X/Y0;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Y0;->A00:Lcom/facebook/ads/redexgen/X/R0;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->finish(I)V

    .line 54000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A00:Lcom/facebook/ads/redexgen/X/Y0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Y0;->A00:Lcom/facebook/ads/redexgen/X/R0;

    .line 54001
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R0;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v2

    .line 54002
    const/high16 v1, 0x10a0000

    const v0, 0x10a0001

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->overridePendingTransition(II)V

    .line 54003
    return-void
.end method
