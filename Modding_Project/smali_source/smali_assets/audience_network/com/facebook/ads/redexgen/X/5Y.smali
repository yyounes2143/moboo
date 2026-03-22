.class public final Lcom/facebook/ads/redexgen/X/5Y;
.super Lcom/facebook/ads/redexgen/X/DE;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5Q;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5Q;)V
    .locals 0

    .line 15500
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5Y;->A00:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DE;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DF;)V
    .locals 2

    .line 15501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Y;->A00:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5Q;->A00(Lcom/facebook/ads/redexgen/X/5Q;)Lcom/facebook/ads/redexgen/X/FH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FH;->A0P()Lcom/facebook/ads/redexgen/X/ba;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Y;->A00:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Q;->getVideoView()Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cp;->getVolume()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ba;->setVolume(F)V

    .line 15502
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 15503
    check-cast p1, Lcom/facebook/ads/redexgen/X/DF;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5Y;->A00(Lcom/facebook/ads/redexgen/X/DF;)V

    return-void
.end method
