.class public final synthetic Lcom/facebook/ads/redexgen/X/Fk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5g;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Fn;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Fn;Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 0

    .line 36438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fk;->A01:Lcom/facebook/ads/redexgen/X/Fn;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fk;->A00:Lcom/facebook/ads/redexgen/X/5g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 36439
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fk;->A01:Lcom/facebook/ads/redexgen/X/Fn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fk;->A00:Lcom/facebook/ads/redexgen/X/5g;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fn;->A0B(Lcom/facebook/ads/redexgen/X/5g;)V

    return-void
.end method
