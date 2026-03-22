.class public final Lcom/facebook/ads/redexgen/X/J6;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Is;->A0n(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Is;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Is;Z)V
    .locals 0

    .line 43321
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J6;->A00:Lcom/facebook/ads/redexgen/X/Is;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/J6;->A01:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 43322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J6;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0H(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    .line 43323
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Xm;
    if-eqz v1, :cond_0

    .line 43324
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/J6;->A01:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Xm;->A0B()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setPageDetailsVisible(Z)V

    .line 43325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J6;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Is;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 43326
    :cond_0
    return-void

    .line 43327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
