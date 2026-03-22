.class public abstract Lcom/facebook/ads/redexgen/X/Oh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Og;,
        Lcom/facebook/ads/redexgen/X/gY;
    }
.end annotation


# static fields
.field public static final A01:Landroid/view/View$AccessibilityDelegate;

.field public static final A02:Lcom/facebook/ads/redexgen/X/Og;


# instance fields
.field public final A00:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1466
    new-instance v0, Lcom/facebook/ads/redexgen/X/gY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/gY;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A02:Lcom/facebook/ads/redexgen/X/Og;

    .line 1467
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A01:Landroid/view/View$AccessibilityDelegate;

    .line 1468
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56302
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A02:Lcom/facebook/ads/redexgen/X/Og;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Og;->A00(Lcom/facebook/ads/redexgen/X/Oh;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A00:Landroid/view/View$AccessibilityDelegate;

    .line 56303
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 56304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A00:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public final A01(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/PU;
    .locals 2

    .line 56305
    sget-object v1, Lcom/facebook/ads/redexgen/X/Oh;->A02:Lcom/facebook/ads/redexgen/X/Og;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Og;->A01(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Lcom/facebook/ads/redexgen/X/PU;

    move-result-object v0

    return-object v0
.end method

.method public final A02(Landroid/view/View;I)V
    .locals 1

    .line 56306
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 56307
    return-void
.end method

.method public final A03(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 56308
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 56309
    return-void
.end method

.method public final A04(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 56310
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 56311
    return-void
.end method

.method public final A05(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 56312
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final A06(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 56313
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 56314
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 56315
    return-void
.end method

.method public A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PS;)V
    .locals 2

    .line 56316
    sget-object v1, Lcom/facebook/ads/redexgen/X/Oh;->A01:Landroid/view/View$AccessibilityDelegate;

    .line 56317
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/PS;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 56318
    invoke-virtual {v1, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 56319
    return-void
.end method

.method public A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 56320
    sget-object v1, Lcom/facebook/ads/redexgen/X/Oh;->A02:Lcom/facebook/ads/redexgen/X/Og;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A01:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Og;->A02(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
