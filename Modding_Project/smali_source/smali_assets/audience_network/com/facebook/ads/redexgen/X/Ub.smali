.class public final Lcom/facebook/ads/redexgen/X/Ub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Uc;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/UZ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UZ;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ua;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/UZ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67748
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ub;->A01:Lcom/facebook/ads/redexgen/X/Ua;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ub;->A00:Lcom/facebook/ads/redexgen/X/UZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 67749
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ub;->A01:Lcom/facebook/ads/redexgen/X/Ua;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ub;->A00:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 67750
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 67751
    return-void
.end method
