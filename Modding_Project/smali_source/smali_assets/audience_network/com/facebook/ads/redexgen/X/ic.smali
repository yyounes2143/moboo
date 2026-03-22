.class public final Lcom/facebook/ads/redexgen/X/ic;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Re;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7L;->A0G(Lcom/facebook/ads/redexgen/X/V4;Lcom/facebook/ads/redexgen/X/TF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7L;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/7L;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/TF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7L;ILcom/facebook/ads/redexgen/X/TF;Lcom/facebook/ads/redexgen/X/7L;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86525
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ic;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ic;->A01:Lcom/facebook/ads/redexgen/X/7L;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/ic;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/ic;->A03:Lcom/facebook/ads/redexgen/X/TF;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/ic;->A02:Lcom/facebook/ads/redexgen/X/7L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACM()V
    .locals 3

    .line 86526
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ic;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$1;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ic;->A01:Lcom/facebook/ads/redexgen/X/7L;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ic;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ic;->A03:Lcom/facebook/ads/redexgen/X/TF;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7L;->A0E(Lcom/facebook/ads/redexgen/X/7L;ILcom/facebook/ads/redexgen/X/TF;)V

    .line 86527
    return-void
.end method

.method public final ACN()V
    .locals 3

    .line 86528
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ic;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ic;->A01:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A00(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/MX;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ic;->A02:Lcom/facebook/ads/redexgen/X/7L;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V1;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MX;->ADj(Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/redexgen/X/V1;)V

    .line 86529
    return-void
.end method
