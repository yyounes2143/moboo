.class public final Lcom/facebook/ads/redexgen/X/UD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Um;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TD;->A00(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/UD;
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

    .line 67388
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UD;->A01:Lcom/facebook/ads/redexgen/X/TD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UD;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AIk()V
    .locals 2

    .line 67389
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UD;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->setVolume(F)V

    .line 67390
    return-void
.end method

.method public final AIp(Lcom/facebook/ads/NativeAd;)V
    .locals 4

    .line 67391
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UD;->A01:Lcom/facebook/ads/redexgen/X/TD;

    .line 67392
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v2

    .line 67393
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;-><init>(Lcom/facebook/ads/redexgen/X/Qc;)V

    .line 67394
    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/TD;->A0G(Lcom/facebook/ads/redexgen/X/TD;Lcom/facebook/ads/redexgen/X/Qc;Lcom/facebook/ads/redexgen/X/Uk;)V

    .line 67395
    return-void
.end method

.method public final AJn()V
    .locals 1

    .line 67396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UD;->A01:Lcom/facebook/ads/redexgen/X/TD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TD;->A0F(Lcom/facebook/ads/redexgen/X/TD;)V

    .line 67397
    return-void
.end method
