.class public final Lcom/facebook/ads/redexgen/X/5o;
.super Lcom/facebook/ads/redexgen/X/DE;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5h;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5h;)V
    .locals 0

    .line 16486
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5o;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DE;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DF;)V
    .locals 2

    .line 16487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5o;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5h;->getVideoView()Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5o;->A00:Lcom/facebook/ads/redexgen/X/5h;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5h;->A07:Lcom/facebook/ads/redexgen/X/FH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FH;->A0P()Lcom/facebook/ads/redexgen/X/ba;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5o;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5h;->getVideoView()Lcom/facebook/ads/redexgen/X/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cp;->getVolume()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ba;->setVolume(F)V

    .line 16489
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 16490
    check-cast p1, Lcom/facebook/ads/redexgen/X/DF;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5o;->A00(Lcom/facebook/ads/redexgen/X/DF;)V

    return-void
.end method
