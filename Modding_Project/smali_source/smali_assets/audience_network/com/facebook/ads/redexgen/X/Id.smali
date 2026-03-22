.class public final Lcom/facebook/ads/redexgen/X/Id;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bs;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5K;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/YY;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5K;)V
    .locals 0

    .line 42003
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Id;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEm()V
    .locals 2

    .line 42004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Id;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A01(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/R0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Id;->A00:Lcom/facebook/ads/redexgen/X/5K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5K;->A01(Lcom/facebook/ads/redexgen/X/5K;)Lcom/facebook/ads/redexgen/X/R0;

    move-result-object v1

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->finish(I)V

    .line 42006
    :cond_0
    return-void
.end method
