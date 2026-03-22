.class public final synthetic Lcom/facebook/ads/redexgen/X/1I;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9v;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/pm;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/pa;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/pm;Lcom/facebook/ads/redexgen/X/pa;)V
    .locals 0

    .line 8581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1I;->A00:Lcom/facebook/ads/redexgen/X/pm;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1I;->A01:Lcom/facebook/ads/redexgen/X/pa;

    return-void
.end method


# virtual methods
.method public final AAB(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 8582
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1I;->A00:Lcom/facebook/ads/redexgen/X/pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1I;->A01:Lcom/facebook/ads/redexgen/X/pa;

    check-cast p1, Lcom/facebook/ads/redexgen/X/pu;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/pm;->A0B(Lcom/facebook/ads/redexgen/X/pa;Lcom/facebook/ads/redexgen/X/pu;)Lcom/facebook/ads/redexgen/X/pL;

    move-result-object v0

    return-object v0
.end method
