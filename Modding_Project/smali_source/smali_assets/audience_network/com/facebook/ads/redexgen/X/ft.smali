.class public final Lcom/facebook/ads/redexgen/X/ft;
.super Lcom/facebook/ads/redexgen/X/Vg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/fq;->A0E(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/fq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fq;)V
    .locals 0

    .line 81667
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ft;->A00:Lcom/facebook/ads/redexgen/X/fq;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vg;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 81668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ft;->A00:Lcom/facebook/ads/redexgen/X/fq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fq;->A01(Lcom/facebook/ads/redexgen/X/fq;)Lcom/facebook/ads/redexgen/X/Qz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A06()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ft;->A00:Lcom/facebook/ads/redexgen/X/fq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fq;->A01(Lcom/facebook/ads/redexgen/X/fq;)Lcom/facebook/ads/redexgen/X/Qz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A06()Lcom/facebook/ads/AdListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ft;->A00:Lcom/facebook/ads/redexgen/X/fq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fq;->A01(Lcom/facebook/ads/redexgen/X/fq;)Lcom/facebook/ads/redexgen/X/Qz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/AdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 81670
    :cond_0
    return-void
.end method
