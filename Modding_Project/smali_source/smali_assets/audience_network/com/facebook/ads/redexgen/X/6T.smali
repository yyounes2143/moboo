.class public final Lcom/facebook/ads/redexgen/X/6T;
.super Lcom/facebook/ads/redexgen/X/DV;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/RH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 0

    .line 17873
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6T;->A00:Lcom/facebook/ads/redexgen/X/RH;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DV;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DW;)V
    .locals 3

    .line 17874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A00:Lcom/facebook/ads/redexgen/X/RH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RH;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 17875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A00:Lcom/facebook/ads/redexgen/X/RH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RH;->A08:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v2

    .line 17876
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1f(ZZ)V

    .line 17877
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6T;->A00:Lcom/facebook/ads/redexgen/X/RH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RH;->A00(Lcom/facebook/ads/redexgen/X/RH;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onError()V

    .line 17878
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 17879
    check-cast p1, Lcom/facebook/ads/redexgen/X/DW;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6T;->A00(Lcom/facebook/ads/redexgen/X/DW;)V

    return-void
.end method
