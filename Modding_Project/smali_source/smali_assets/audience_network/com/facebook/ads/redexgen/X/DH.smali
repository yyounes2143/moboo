.class public final Lcom/facebook/ads/redexgen/X/DH;
.super Lcom/facebook/ads/redexgen/X/Td;
.source ""


# instance fields
.field public final A00:Landroid/view/MotionEvent;

.field public final A01:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 33823
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Td;-><init>()V

    .line 33824
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DH;->A01:Landroid/view/View;

    .line 33825
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/DH;->A00:Landroid/view/MotionEvent;

    .line 33826
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/MotionEvent;
    .locals 1

    .line 33827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DH;->A00:Landroid/view/MotionEvent;

    return-object v0
.end method
