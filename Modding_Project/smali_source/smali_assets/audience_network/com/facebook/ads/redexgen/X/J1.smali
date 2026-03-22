.class public final Lcom/facebook/ads/redexgen/X/J1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ZG;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Is;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/LJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Is;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Is;)V
    .locals 0

    .line 43286
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACl()V
    .locals 2

    .line 43287
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/Is;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Is;->A0h(Lcom/facebook/ads/redexgen/X/Is;Z)V

    .line 43288
    return-void
.end method

.method public final AEL()V
    .locals 1

    .line 43289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A15(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J1;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0d(Lcom/facebook/ads/redexgen/X/Is;)V

    .line 43291
    :cond_0
    return-void
.end method
