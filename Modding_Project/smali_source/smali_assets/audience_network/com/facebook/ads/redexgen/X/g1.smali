.class public final Lcom/facebook/ads/redexgen/X/g1;
.super Lcom/facebook/ads/redexgen/X/Oh;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/g2;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Oh;

.field public final A01:Lcom/facebook/ads/redexgen/X/6g;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 1

    .line 81874
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oh;-><init>()V

    .line 81875
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/g1;->A01:Lcom/facebook/ads/redexgen/X/6g;

    .line 81876
    new-instance v0, Lcom/facebook/ads/redexgen/X/g2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/g2;-><init>(Lcom/facebook/ads/redexgen/X/g1;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/g1;->A00:Lcom/facebook/ads/redexgen/X/Oh;

    .line 81877
    return-void
.end method


# virtual methods
.method public final A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 81878
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oh;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 81879
    const-class v0, Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 81880
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/6g;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/g1;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81881
    check-cast p1, Lcom/facebook/ads/redexgen/X/6g;

    .line 81882
    .local v0, "rv":Lcom/facebook/ads/redexgen/X/6g;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6g;->getLayoutManager()Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81883
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6g;->getLayoutManager()Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/QO;->A1v(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 81884
    .end local v0    # "rv":Lcom/facebook/ads/redexgen/X/6g;
    :cond_0
    return-void
.end method

.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PS;)V
    .locals 1

    .line 81885
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oh;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PS;)V

    .line 81886
    const-class v0, Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/PS;->A0O(Ljava/lang/CharSequence;)V

    .line 81887
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/g1;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g1;->A01:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getLayoutManager()Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g1;->A01:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getLayoutManager()Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/QO;->A1H(Lcom/facebook/ads/redexgen/X/PS;)V

    .line 81889
    :cond_0
    return-void
.end method

.method public final A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 81890
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Oh;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81891
    const/4 v0, 0x1

    return v0

    .line 81892
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/g1;->A0B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g1;->A01:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getLayoutManager()Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g1;->A01:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getLayoutManager()Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/QO;->A1X(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 81894
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/Oh;
    .locals 1

    .line 81895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g1;->A00:Lcom/facebook/ads/redexgen/X/Oh;

    return-object v0
.end method

.method public final A0B()Z
    .locals 1

    .line 81896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g1;->A01:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->A1r()Z

    move-result v0

    return v0
.end method
