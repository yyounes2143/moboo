.class public final Lcom/facebook/ads/redexgen/X/Oe;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/gY;->A00(Lcom/facebook/ads/redexgen/X/Oh;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/gY;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Oh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gY;Lcom/facebook/ads/redexgen/X/Oh;)V
    .locals 0

    .line 56273
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:Lcom/facebook/ads/redexgen/X/gY;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 56274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oh;->A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 56275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:Lcom/facebook/ads/redexgen/X/Oh;

    .line 56276
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oh;->A01(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/PU;

    move-result-object v0

    .line 56277
    .local v0, "provider":Lcom/facebook/ads/redexgen/X/PU;
    if-eqz v0, :cond_0

    .line 56278
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PU;->A02()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 56279
    :goto_0
    return-object v0

    .line 56280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 56281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oh;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 56282
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 56283
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:Lcom/facebook/ads/redexgen/X/Oh;

    .line 56284
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/PS;->A01(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/facebook/ads/redexgen/X/PS;

    move-result-object v0

    .line 56285
    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PS;)V

    .line 56286
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 56287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oh;->A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 56288
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 56289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Oh;->A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 56290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Oh;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 56291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oh;->A02(Landroid/view/View;I)V

    .line 56292
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 56293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Oh;->A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 56294
    return-void
.end method
