.class public final Lcom/facebook/ads/redexgen/X/da;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Dc;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Dc;)V
    .locals 0

    .line 79472
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 79473
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/da;->A00:Lcom/facebook/ads/redexgen/X/Dc;

    .line 79474
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .line 79475
    const/4 v0, 0x0

    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    .line 79476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A00:Lcom/facebook/ads/redexgen/X/Dc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dc;->A0f()V

    .line 79477
    return-void
.end method
