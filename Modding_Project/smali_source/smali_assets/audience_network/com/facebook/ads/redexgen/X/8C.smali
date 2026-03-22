.class public final Lcom/facebook/ads/redexgen/X/8C;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Lcom/facebook/ads/redexgen/X/8D;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 1

    .line 22639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22640
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    .line 22641
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8C;->A01:Lcom/facebook/ads/redexgen/X/8D;

    .line 22642
    return-void

    .line 22643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00(I)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
        value = "New API"
    .end annotation

    .line 22644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22645
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/8C;I)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22646
    :cond_0
    return-void
.end method

.method public final A01(IJJ)V
    .locals 8

    .line 22647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/82;

    move-object v2, p0

    move-wide v6, p4

    move-wide v4, p2

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/82;-><init>(Lcom/facebook/ads/redexgen/X/8C;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22649
    :cond_0
    return-void
.end method

.method public final synthetic A02(IJJ)V
    .locals 6

    .line 22650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8D;

    .line 22651
    move-wide v4, p4

    move-wide v2, p2

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/8D;->ACY(IJJ)V

    .line 22652
    return-void
.end method

.method public final A03(J)V
    .locals 2

    .line 22653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22654
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/83;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/83;-><init>(Lcom/facebook/ads/redexgen/X/8C;J)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22655
    :cond_0
    return-void
.end method

.method public final synthetic A04(J)V
    .locals 1

    .line 22656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8D;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/8D;->ACU(J)V

    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V
    .locals 2

    .line 22657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22658
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/87;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/87;-><init>(Lcom/facebook/ads/redexgen/X/8C;Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22659
    :cond_0
    return-void
.end method

.method public final synthetic A06(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V
    .locals 1

    .line 22660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8D;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8D;->ACS(Lcom/facebook/ads/redexgen/X/or;)V

    .line 22661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8D;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/8D;->ACT(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V

    .line 22662
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 2

    .line 22663
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5g;->A02()V

    .line 22664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22665
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/85;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/85;-><init>(Lcom/facebook/ads/redexgen/X/8C;Lcom/facebook/ads/redexgen/X/5g;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22666
    :cond_0
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 2

    .line 22667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22668
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8B;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/8B;-><init>(Lcom/facebook/ads/redexgen/X/8C;Lcom/facebook/ads/redexgen/X/5g;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22669
    :cond_0
    return-void
.end method

.method public final synthetic A09(Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 1

    .line 22670
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5g;->A02()V

    .line 22671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8D;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8D;->ACQ(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 22672
    return-void
.end method

.method public final synthetic A0A(Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 1

    .line 22673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8D;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8D;->ACR(Lcom/facebook/ads/redexgen/X/5g;)V

    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/8F;)V
    .locals 2

    .line 22674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22675
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/81;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/81;-><init>(Lcom/facebook/ads/redexgen/X/8C;Lcom/facebook/ads/redexgen/X/8F;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22676
    :cond_0
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/8F;)V
    .locals 2

    .line 22677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22678
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7x;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/7x;-><init>(Lcom/facebook/ads/redexgen/X/8C;Lcom/facebook/ads/redexgen/X/8F;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22679
    :cond_0
    return-void
.end method

.method public final A0D(Ljava/lang/Exception;)V
    .locals 2

    .line 22680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22681
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/84;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/84;-><init>(Lcom/facebook/ads/redexgen/X/8C;Ljava/lang/Exception;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22682
    :cond_0
    return-void
.end method

.method public final synthetic A0E(Ljava/lang/Exception;)V
    .locals 1

    .line 22683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8D;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8D;->ACV(Ljava/lang/Exception;)V

    return-void
.end method

.method public final A0F(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
        value = "New API"
    .end annotation

    .line 22684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22685
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/88;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/88;-><init>(Lcom/facebook/ads/redexgen/X/8C;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22686
    :cond_0
    return-void
.end method

.method public final A0G(Ljava/lang/String;JJ)V
    .locals 8

    .line 22687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/7w;

    move-object v2, p0

    move-wide v6, p4

    move-wide v4, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/7w;-><init>(Lcom/facebook/ads/redexgen/X/8C;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22689
    :cond_0
    return-void
.end method

.method public final synthetic A0H(Ljava/lang/String;JJ)V
    .locals 6

    .line 22690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8D;

    .line 22691
    move-wide v4, p4

    move-wide v2, p2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/8D;->ACP(Ljava/lang/String;JJ)V

    .line 22692
    return-void
.end method

.method public final A0I(Z)V
    .locals 2

    .line 22693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22694
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/80;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/80;-><init>(Lcom/facebook/ads/redexgen/X/8C;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22695
    :cond_0
    return-void
.end method

.method public final synthetic A0J(Z)V
    .locals 1

    .line 22696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A01:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8D;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8D;->AFF(Z)V

    return-void
.end method

.method public final A0K([BJ)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
        value = "New API"
    .end annotation

    .line 22697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 22698
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8C;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/89;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/89;-><init>(Lcom/facebook/ads/redexgen/X/8C;[BJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22699
    :cond_0
    return-void
.end method
