.class public final Lcom/facebook/ads/redexgen/X/A4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/pt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/pb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifecycleControllerListener"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/pm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pm;)V
    .locals 0

    .line 28745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28746
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A4;->A00:Lcom/facebook/ads/redexgen/X/pm;

    .line 28747
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/pm;Lcom/facebook/ads/redexgen/X/pc;)V
    .locals 0

    .line 28748
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/A4;-><init>(Lcom/facebook/ads/redexgen/X/pm;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 1

    .line 28749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A00:Lcom/facebook/ads/redexgen/X/pm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pm;->A0D()V

    .line 28750
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 28751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A00:Lcom/facebook/ads/redexgen/X/pm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/pm;->A0C()V

    .line 28752
    return-void
.end method
