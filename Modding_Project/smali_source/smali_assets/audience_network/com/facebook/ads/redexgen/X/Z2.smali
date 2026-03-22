.class public final synthetic Lcom/facebook/ads/redexgen/X/Z2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Landroid/os/Handler;

.field public final synthetic A02:Landroid/view/View$OnClickListener;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Z4;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Z4;Landroid/view/View$OnClickListener;Landroid/os/Handler;I)V
    .locals 0

    .line 74117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/Z4;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Z2;->A02:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Landroid/os/Handler;

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Z2;->A00:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 74118
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Z2;->A03:Lcom/facebook/ads/redexgen/X/Z4;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z2;->A02:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z2;->A01:Landroid/os/Handler;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Z2;->A00:I

    invoke-virtual {v3, v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Z4;->A02(Landroid/view/View$OnClickListener;Landroid/os/Handler;ILandroid/view/View;)V

    return-void
.end method
