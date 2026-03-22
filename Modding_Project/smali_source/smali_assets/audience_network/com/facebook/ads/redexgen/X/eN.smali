.class public final Lcom/facebook/ads/redexgen/X/eN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/CM;->setControlsAnchorView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/CM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CM;)V
    .locals 0

    .line 80134
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eN;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 80135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eN;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A00(Lcom/facebook/ads/redexgen/X/CM;)Landroid/widget/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 80136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eN;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A00(Lcom/facebook/ads/redexgen/X/CM;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eN;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A00(Lcom/facebook/ads/redexgen/X/CM;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 80138
    :cond_0
    :goto_0
    return v1

    .line 80139
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eN;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A00(Lcom/facebook/ads/redexgen/X/CM;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method
