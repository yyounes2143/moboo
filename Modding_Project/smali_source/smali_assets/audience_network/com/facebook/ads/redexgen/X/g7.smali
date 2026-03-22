.class public final Lcom/facebook/ads/redexgen/X/g7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6g;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6g;)V
    .locals 0

    .line 81952
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/g7;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81953
    return-void
.end method


# virtual methods
.method public final ACK(Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 3

    .line 81954
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Qg;->A0d(Z)V

    .line 81955
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A06:Lcom/facebook/ads/redexgen/X/Qg;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A07:Lcom/facebook/ads/redexgen/X/Qg;

    if-nez v0, :cond_0

    .line 81956
    iput-object v1, p1, Lcom/facebook/ads/redexgen/X/Qg;->A06:Lcom/facebook/ads/redexgen/X/Qg;

    .line 81957
    :cond_0
    iput-object v1, p1, Lcom/facebook/ads/redexgen/X/Qg;->A07:Lcom/facebook/ads/redexgen/X/Qg;

    .line 81958
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0J(Lcom/facebook/ads/redexgen/X/Qg;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81959
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/g7;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6g;->A1x(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81960
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/g7;->A00:Lcom/facebook/ads/redexgen/X/6g;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6g;->removeDetachedView(Landroid/view/View;Z)V

    .line 81961
    :cond_1
    return-void
.end method
