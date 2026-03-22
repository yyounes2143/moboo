.class public final Lcom/facebook/ads/redexgen/X/Qk;
.super Lcom/facebook/ads/redexgen/X/MS;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Qc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeAdImpressionHelper"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Qc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qc;)V
    .locals 0

    .line 61332
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qk;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MS;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Qc;Lcom/facebook/ads/redexgen/X/TB;)V
    .locals 0

    .line 61333
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Qk;-><init>(Lcom/facebook/ads/redexgen/X/Qc;)V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 61334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qk;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0N(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qk;->A00:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0N(Lcom/facebook/ads/redexgen/X/Qc;)Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Uh;->AE6()V

    .line 61336
    :cond_0
    return-void
.end method
