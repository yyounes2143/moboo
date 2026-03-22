.class public final Lcom/facebook/ads/redexgen/X/Gu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ZG;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4K;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/LJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 0

    .line 38852
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gu;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACl()V
    .locals 2

    .line 38853
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gu;->A00:Lcom/facebook/ads/redexgen/X/4K;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0i(Lcom/facebook/ads/redexgen/X/4K;Z)V

    .line 38854
    return-void
.end method

.method public final AEL()V
    .locals 1

    .line 38855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gu;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A07(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A15(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gu;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0b(Lcom/facebook/ads/redexgen/X/4K;)V

    .line 38857
    :cond_0
    return-void
.end method
