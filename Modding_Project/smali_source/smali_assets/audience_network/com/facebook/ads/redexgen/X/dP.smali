.class public final Lcom/facebook/ads/redexgen/X/dP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/E1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/E1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 0

    .line 79352
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dP;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 79353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dP;->A00:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0A(Lcom/facebook/ads/redexgen/X/E1;)Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/DH;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DH;-><init>(Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->A02(Lcom/facebook/ads/redexgen/X/Td;)V

    .line 79354
    const/4 v0, 0x0

    return v0
.end method
