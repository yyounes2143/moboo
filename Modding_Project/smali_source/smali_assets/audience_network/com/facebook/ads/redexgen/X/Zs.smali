.class public abstract Lcom/facebook/ads/redexgen/X/Zs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Zr;
    }
.end annotation


# direct methods
.method public static A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V
    .locals 2

    .line 75445
    if-nez p1, :cond_1

    .line 75446
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75447
    .end local v0
    :cond_0
    :goto_0
    return-void

    .line 75448
    :cond_1
    if-eqz p1, :cond_0

    .line 75449
    new-instance v1, Lcom/facebook/ads/redexgen/X/Zr;

    invoke-direct {v1, p2}, Lcom/facebook/ads/redexgen/X/Zr;-><init>(Landroid/view/View$OnClickListener;)V

    .line 75450
    .local v0, "clickListener":Lcom/facebook/ads/redexgen/X/Zr;
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75451
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zq;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Zq;-><init>(Lcom/facebook/ads/redexgen/X/Zr;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method
