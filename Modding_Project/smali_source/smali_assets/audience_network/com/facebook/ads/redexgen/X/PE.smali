.class public final Lcom/facebook/ads/redexgen/X/PE;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/PH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerObserver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PH;)V
    .locals 0

    .line 56858
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/PH;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 56859
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 56860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/PH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PH;->A0e()V

    .line 56861
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 56862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/PH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PH;->A0e()V

    .line 56863
    return-void
.end method
