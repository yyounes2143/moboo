.class public abstract Lcom/facebook/ads/redexgen/X/PM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/PL;,
        Lcom/facebook/ads/redexgen/X/6m;,
        Lcom/facebook/ads/redexgen/X/gS;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/PL;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1493
    new-instance v0, Lcom/facebook/ads/redexgen/X/6m;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6m;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/PM;->A00:Lcom/facebook/ads/redexgen/X/PL;

    .line 1494
    return-void
.end method

.method public static A00(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    .line 58183
    sget-object v0, Lcom/facebook/ads/redexgen/X/PM;->A00:Lcom/facebook/ads/redexgen/X/PL;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/PL;->A00(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static A01(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1

    .line 58184
    sget-object v0, Lcom/facebook/ads/redexgen/X/PM;->A00:Lcom/facebook/ads/redexgen/X/PL;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/PL;->A01(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 58185
    return-void
.end method
