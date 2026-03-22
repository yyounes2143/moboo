.class public final Lcom/facebook/ads/redexgen/X/U2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Um;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TD;->A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/U2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/TD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TD;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66708
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Lcom/facebook/ads/redexgen/X/TD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/U2;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AIk()V
    .locals 2

    .line 66709
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U2;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->setVolume(F)V

    .line 66710
    return-void
.end method

.method public final AIp(Lcom/facebook/ads/NativeAd;)V
    .locals 3

    .line 66711
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Lcom/facebook/ads/redexgen/X/TD;

    .line 66712
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v1

    .line 66713
    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TD;->A0G(Lcom/facebook/ads/redexgen/X/TD;Lcom/facebook/ads/redexgen/X/Qc;Lcom/facebook/ads/redexgen/X/Uk;)V

    .line 66714
    return-void
.end method

.method public final AJn()V
    .locals 1

    .line 66715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U2;->A01:Lcom/facebook/ads/redexgen/X/TD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TD;->A0F(Lcom/facebook/ads/redexgen/X/TD;)V

    .line 66716
    return-void
.end method
