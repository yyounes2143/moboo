.class public final Lcom/facebook/ads/redexgen/X/30;
.super Lcom/facebook/ads/redexgen/X/DX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/D4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/D4;)V
    .locals 0

    .line 10455
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/30;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DX;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 2

    .line 10456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/30;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A03(Lcom/facebook/ads/redexgen/X/D4;)Lcom/facebook/ads/redexgen/X/dr;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/dr;->A03:Lcom/facebook/ads/redexgen/X/dr;

    if-eq v1, v0, :cond_0

    .line 10457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/30;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A01(Lcom/facebook/ads/redexgen/X/D4;)Landroid/view/View;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 10458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/30;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A01(Lcom/facebook/ads/redexgen/X/D4;)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10459
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 10460
    check-cast p1, Lcom/facebook/ads/redexgen/X/3d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/30;->A00(Lcom/facebook/ads/redexgen/X/3d;)V

    return-void
.end method
