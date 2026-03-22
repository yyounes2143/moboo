.class public final Lcom/facebook/ads/redexgen/X/4U;
.super Lcom/facebook/ads/redexgen/X/DM;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 0

    .line 13315
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DM;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 2

    .line 13316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0e(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/3Q;)V

    .line 13317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/4K;

    .line 13318
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A00(Lcom/facebook/ads/redexgen/X/4K;)F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0G(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getDuration()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DY;->A00()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 13319
    .local v0, "currentPosMs":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0F(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/cT;->ADI(F)V

    .line 13320
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 13321
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Q;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4U;->A00(Lcom/facebook/ads/redexgen/X/3Q;)V

    return-void
.end method
