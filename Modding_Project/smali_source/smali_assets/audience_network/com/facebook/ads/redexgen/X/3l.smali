.class public final Lcom/facebook/ads/redexgen/X/3l;
.super Lcom/facebook/ads/redexgen/X/DX;
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

    .line 11284
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3l;->A00:Lcom/facebook/ads/redexgen/X/EG;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DX;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 2

    .line 11285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3l;->A00:Lcom/facebook/ads/redexgen/X/EG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/EG;->A05(Lcom/facebook/ads/redexgen/X/EG;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3l;->A00:Lcom/facebook/ads/redexgen/X/EG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/EG;->A00(Lcom/facebook/ads/redexgen/X/EG;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AIG()V

    .line 11287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3l;->A00:Lcom/facebook/ads/redexgen/X/EG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EG;->A08()V

    .line 11288
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3l;->A00:Lcom/facebook/ads/redexgen/X/EG;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/EG;->A06(Lcom/facebook/ads/redexgen/X/EG;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 11289
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 11290
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3l;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method
