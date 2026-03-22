.class public final Lcom/facebook/ads/redexgen/X/3L;
.super Lcom/facebook/ads/redexgen/X/DX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/D9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/D9;)V
    .locals 0

    .line 10880
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3L;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DX;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 3

    .line 10881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A00:Lcom/facebook/ads/redexgen/X/D9;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/D9;->A0E(Lcom/facebook/ads/redexgen/X/D9;Z)Z

    .line 10882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A09(Lcom/facebook/ads/redexgen/X/D9;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10883
    return-void

    .line 10884
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A04(Lcom/facebook/ads/redexgen/X/D9;)V

    .line 10885
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3L;->A00:Lcom/facebook/ads/redexgen/X/D9;

    const/4 v0, 0x0

    invoke-static {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/D9;->A05(Lcom/facebook/ads/redexgen/X/D9;ZZ)V

    .line 10886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/D9;->A0D(Lcom/facebook/ads/redexgen/X/D9;Z)Z

    .line 10887
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 10888
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3L;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method
