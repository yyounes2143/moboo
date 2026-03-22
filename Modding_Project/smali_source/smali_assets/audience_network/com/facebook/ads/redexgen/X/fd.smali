.class public final Lcom/facebook/ads/redexgen/X/fd;
.super Lcom/facebook/ads/redexgen/X/Vg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/fa;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/fa;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/V1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fa;Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 0

    .line 81068
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/fa;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/fd;->A01:Lcom/facebook/ads/redexgen/X/V1;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vg;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 81069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/fa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fa;->A00(Lcom/facebook/ads/redexgen/X/fa;)Lcom/facebook/ads/redexgen/X/RO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RO;->A00()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/fa;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fa;->A00(Lcom/facebook/ads/redexgen/X/fa;)Lcom/facebook/ads/redexgen/X/RO;

    move-result-object v0

    .line 81071
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RO;->A00()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A01:Lcom/facebook/ads/redexgen/X/V1;

    .line 81072
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WT;->A00(Lcom/facebook/ads/redexgen/X/V1;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdError(Lcom/facebook/ads/AdError;)V

    .line 81073
    :cond_0
    return-void
.end method
