.class public final Lcom/facebook/ads/redexgen/X/6D;
.super Lcom/facebook/ads/redexgen/X/DR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/64;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/64;)V
    .locals 0

    .line 17390
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6D;->A00:Lcom/facebook/ads/redexgen/X/64;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DR;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Y;)V
    .locals 1

    .line 17391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6D;->A00:Lcom/facebook/ads/redexgen/X/64;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/64;->A00(Lcom/facebook/ads/redexgen/X/64;)Lcom/facebook/ads/redexgen/X/Y1;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17392
    return-void

    .line 17393
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6D;->A00:Lcom/facebook/ads/redexgen/X/64;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/64;->A00(Lcom/facebook/ads/redexgen/X/64;)Lcom/facebook/ads/redexgen/X/Y1;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Y1;->onPause()V

    .line 17394
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 17395
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6D;->A00(Lcom/facebook/ads/redexgen/X/3Y;)V

    return-void
.end method
