.class public final Lcom/facebook/ads/redexgen/X/Fn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Lcom/facebook/ads/redexgen/X/Fo;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fo;)V
    .locals 1

    .line 36450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36451
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    .line 36452
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Lcom/facebook/ads/redexgen/X/Fo;

    .line 36453
    return-void

    .line 36454
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00(IJ)V
    .locals 2

    .line 36455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 36456
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Fj;-><init>(Lcom/facebook/ads/redexgen/X/Fn;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36457
    :cond_0
    return-void
.end method

.method public final A01(IJ)V
    .locals 2

    .line 36458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 36459
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fa;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Fa;-><init>(Lcom/facebook/ads/redexgen/X/Fn;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36460
    :cond_0
    return-void
.end method

.method public final synthetic A02(IJ)V
    .locals 1

    .line 36461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    .line 36462
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Fo;->ACr(IJ)V

    .line 36463
    return-void
.end method

.method public final synthetic A03(IJ)V
    .locals 1

    .line 36464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Fo;->AD7(IJ)V

    return-void
.end method

.method public final A04(ILcom/facebook/ads/redexgen/X/or;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "New event handler"
    .end annotation

    .line 36465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Lcom/facebook/ads/redexgen/X/Fo;

    if-eqz v0, :cond_0

    .line 36466
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fm;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fm;-><init>(Lcom/facebook/ads/redexgen/X/Fn;ILcom/facebook/ads/redexgen/X/or;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36467
    :cond_0
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V
    .locals 2

    .line 36468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 36469
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fg;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fg;-><init>(Lcom/facebook/ads/redexgen/X/Fn;Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36470
    :cond_0
    return-void
.end method

.method public final synthetic A06(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V
    .locals 1

    .line 36471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Fo;->AFk(Lcom/facebook/ads/redexgen/X/or;)V

    .line 36472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fo;->AFl(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V

    .line 36473
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/o4;)V
    .locals 2

    .line 36474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 36475
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fi;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Fi;-><init>(Lcom/facebook/ads/redexgen/X/Fn;Lcom/facebook/ads/redexgen/X/o4;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36476
    :cond_0
    return-void
.end method

.method public final synthetic A08(Lcom/facebook/ads/redexgen/X/o4;)V
    .locals 1

    .line 36477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Fo;->AFr(Lcom/facebook/ads/redexgen/X/o4;)V

    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 2

    .line 36478
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5g;->A02()V

    .line 36479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 36480
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fk;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Fk;-><init>(Lcom/facebook/ads/redexgen/X/Fn;Lcom/facebook/ads/redexgen/X/5g;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36481
    :cond_0
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 2

    .line 36482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 36483
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fe;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Fe;-><init>(Lcom/facebook/ads/redexgen/X/Fn;Lcom/facebook/ads/redexgen/X/5g;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36484
    :cond_0
    return-void
.end method

.method public final synthetic A0B(Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 1

    .line 36485
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5g;->A02()V

    .line 36486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Fo;->AFe(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 36487
    return-void
.end method

.method public final synthetic A0C(Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 1

    .line 36488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Fo;->AFf(Lcom/facebook/ads/redexgen/X/5g;)V

    return-void
.end method

.method public final A0D(Ljava/lang/Object;)V
    .locals 4

    .line 36489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 36490
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 36491
    .local v0, "renderTimeMs":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ff;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/facebook/ads/redexgen/X/Ff;-><init>(Lcom/facebook/ads/redexgen/X/Fn;Ljava/lang/Object;J)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36492
    .end local v0    # "renderTimeMs":J
    :cond_0
    return-void
.end method

.method public final synthetic A0E(Ljava/lang/Object;J)V
    .locals 1

    .line 36493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Fo;->AEx(Ljava/lang/Object;J)V

    return-void
.end method

.method public final A0F(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "New event handler"
    .end annotation

    .line 36494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 36495
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fh;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Fh;-><init>(Lcom/facebook/ads/redexgen/X/Fn;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36496
    :cond_0
    return-void
.end method

.method public final A0G(Ljava/lang/String;JJ)V
    .locals 8

    .line 36497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 36498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Fd;

    move-object v2, p0

    move-wide v6, p4

    move-wide v4, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Fd;-><init>(Lcom/facebook/ads/redexgen/X/Fn;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36499
    :cond_0
    return-void
.end method

.method public final synthetic A0H(Ljava/lang/String;JJ)V
    .locals 6

    .line 36500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A01:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    .line 36501
    move-wide v4, p4

    move-wide v2, p2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Fo;->AFd(Ljava/lang/String;JJ)V

    .line 36502
    return-void
.end method
