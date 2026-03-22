.class public final Lcom/facebook/ads/redexgen/X/YZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Yc;->A01(Lcom/facebook/ads/redexgen/X/Yb;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Yc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Yc;)V
    .locals 0

    .line 73637
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YZ;->A00:Lcom/facebook/ads/redexgen/X/Yc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 73638
    .local v0, "this":Lcom/facebook/ads/redexgen/X/YZ;
    .local p1, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YZ;->A00:Lcom/facebook/ads/redexgen/X/Yc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yc;->A03(Lcom/facebook/ads/redexgen/X/Yc;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73639
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YZ;->A00:Lcom/facebook/ads/redexgen/X/Yc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yc;->A02(Lcom/facebook/ads/redexgen/X/Yc;)Lcom/facebook/ads/redexgen/X/Yf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Yf;->A4v()V

    goto :goto_0

    .line 73640
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/YZ;
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YZ;->A00:Lcom/facebook/ads/redexgen/X/Yc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Yc;->A02(Lcom/facebook/ads/redexgen/X/Yc;)Lcom/facebook/ads/redexgen/X/Yf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Yf;->A4w()V

    .line 73641
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
