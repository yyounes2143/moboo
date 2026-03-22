.class public final Lcom/facebook/ads/redexgen/X/la;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/0O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnFrameRenderedListenerV23"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/0O;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0O;Lcom/facebook/ads/redexgen/X/AO;)V
    .locals 1

    .line 96768
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/la;->A00:Lcom/facebook/ads/redexgen/X/0O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96769
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/redexgen/X/AO;->AIq(Lcom/facebook/ads/redexgen/X/AN;Landroid/os/Handler;)V

    .line 96770
    return-void
.end method


# virtual methods
.method public final ADL(Lcom/facebook/ads/redexgen/X/AO;JJ)V
    .locals 1

    .line 96771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/la;->A00:Lcom/facebook/ads/redexgen/X/0O;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/0O;->A00:Lcom/facebook/ads/redexgen/X/la;

    if-eq p0, v0, :cond_0

    .line 96772
    return-void

    .line 96773
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/la;->A00:Lcom/facebook/ads/redexgen/X/0O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0O;->A27()V

    .line 96774
    return-void
.end method
