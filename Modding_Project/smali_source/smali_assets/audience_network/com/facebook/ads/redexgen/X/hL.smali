.class public abstract Lcom/facebook/ads/redexgen/X/hL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Me;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/hK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NativeAdsManagerNativeAdapterListener"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Qc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Qc;)V
    .locals 0

    .line 84680
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hL;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    .line 84681
    return-void
.end method

.method public final AEG(Lcom/facebook/ads/redexgen/X/iN;)V
    .locals 1

    .line 84682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hL;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hL;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A16()Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hL;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A16()Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Uh;->ACD()V

    .line 84684
    :cond_0
    return-void
.end method

.method public final AEI(Lcom/facebook/ads/redexgen/X/iN;)V
    .locals 0

    .line 84685
    return-void
.end method

.method public final AEK(Lcom/facebook/ads/redexgen/X/iN;Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 0

    .line 84686
    return-void
.end method
