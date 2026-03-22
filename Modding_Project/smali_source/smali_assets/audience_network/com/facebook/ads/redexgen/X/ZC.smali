.class public final Lcom/facebook/ads/redexgen/X/ZC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZH;->A08()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZH;)V
    .locals 0

    .line 74194
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:Lcom/facebook/ads/redexgen/X/ZH;

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

    .line 74195
    .local v0, "this":Lcom/facebook/ads/redexgen/X/ZC;
    .local p1, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ZC;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZH;->A04(Lcom/facebook/ads/redexgen/X/ZH;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A9o()V

    .line 74196
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ZC;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZH;->A05(Lcom/facebook/ads/redexgen/X/ZH;)Lcom/facebook/ads/redexgen/X/ZG;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74197
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ZC;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZH;->A05(Lcom/facebook/ads/redexgen/X/ZH;)Lcom/facebook/ads/redexgen/X/ZG;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZG;->ACl()V

    .line 74198
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/ZC;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
