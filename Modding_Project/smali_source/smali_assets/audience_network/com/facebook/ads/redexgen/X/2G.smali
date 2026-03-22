.class public final Lcom/facebook/ads/redexgen/X/2G;
.super Lcom/facebook/ads/redexgen/X/DX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Cw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cw;)V
    .locals 0

    .line 9617
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2G;->A00:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DX;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 1

    .line 9618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2G;->A00:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cw;->A00(Lcom/facebook/ads/redexgen/X/Cw;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2G;->A00:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cw;->A05(Lcom/facebook/ads/redexgen/X/Cw;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2G;->A00:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->A06()V

    .line 9620
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 9621
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2G;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method
