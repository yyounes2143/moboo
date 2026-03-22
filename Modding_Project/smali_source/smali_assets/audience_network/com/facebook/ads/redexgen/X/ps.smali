.class public abstract Lcom/facebook/ads/redexgen/X/ps;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/pt;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/pt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 103213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ps;->A00:Lcom/facebook/ads/redexgen/X/pt;

    if-eqz v0, :cond_0

    .line 103214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ps;->A00:Lcom/facebook/ads/redexgen/X/pt;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pt;->onStart()V

    .line 103215
    :cond_0
    return-void
.end method

.method public final A02()V
    .locals 1

    .line 103216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ps;->A00:Lcom/facebook/ads/redexgen/X/pt;

    if-eqz v0, :cond_0

    .line 103217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ps;->A00:Lcom/facebook/ads/redexgen/X/pt;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pt;->onStop()V

    .line 103218
    :cond_0
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/pt;)V
    .locals 0

    .line 103219
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ps;->A00:Lcom/facebook/ads/redexgen/X/pt;

    .line 103220
    return-void
.end method
