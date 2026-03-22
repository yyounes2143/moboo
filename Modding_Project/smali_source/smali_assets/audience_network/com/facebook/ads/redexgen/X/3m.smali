.class public final Lcom/facebook/ads/redexgen/X/3m;
.super Lcom/facebook/ads/redexgen/X/DR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/EG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/EG;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/EG;)V
    .locals 0

    .line 11291
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:Lcom/facebook/ads/redexgen/X/EG;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DR;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Y;)V
    .locals 1

    .line 11292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:Lcom/facebook/ads/redexgen/X/EG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/EG;->A05(Lcom/facebook/ads/redexgen/X/EG;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:Lcom/facebook/ads/redexgen/X/EG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/EG;->A00(Lcom/facebook/ads/redexgen/X/EG;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AII()V

    .line 11294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:Lcom/facebook/ads/redexgen/X/EG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EG;->A08()V

    .line 11295
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 11296
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3m;->A00(Lcom/facebook/ads/redexgen/X/3Y;)V

    return-void
.end method
