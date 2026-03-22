.class public final Lcom/facebook/ads/redexgen/X/Ia;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5K;->AAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5K;)V
    .locals 0

    .line 41982
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 41983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A06(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Lcom/facebook/ads/redexgen/X/5K;

    .line 41984
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A00(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A00(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    .line 41985
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->AAf(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V

    .line 41986
    return-void
.end method
