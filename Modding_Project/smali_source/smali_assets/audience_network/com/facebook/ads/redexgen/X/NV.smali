.class public final synthetic Lcom/facebook/ads/redexgen/X/NV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/id;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/NU;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/72;

.field public final synthetic A03:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/72;Lcom/facebook/ads/redexgen/X/id;Ljava/util/List;Lcom/facebook/ads/redexgen/X/NU;)V
    .locals 0

    .line 54197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NV;->A02:Lcom/facebook/ads/redexgen/X/72;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NV;->A00:Lcom/facebook/ads/redexgen/X/id;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NV;->A03:Ljava/util/List;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/NV;->A01:Lcom/facebook/ads/redexgen/X/NU;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 54198
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NV;->A02:Lcom/facebook/ads/redexgen/X/72;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NV;->A00:Lcom/facebook/ads/redexgen/X/id;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NV;->A03:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NV;->A01:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A0a(Lcom/facebook/ads/redexgen/X/id;Ljava/util/List;Lcom/facebook/ads/redexgen/X/NU;)V

    return-void
.end method
