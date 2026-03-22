.class public final Lcom/facebook/ads/redexgen/X/Yi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/LV;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;Lcom/facebook/ads/redexgen/X/Xo;Lcom/facebook/ads/redexgen/X/Xn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/LV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LV;)V
    .locals 0

    .line 73921
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yi;->A00:Lcom/facebook/ads/redexgen/X/LV;

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

    .line 73922
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yi;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Yi;->A00:Lcom/facebook/ads/redexgen/X/LV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Yd;->A0B:Lcom/facebook/ads/redexgen/X/Yf;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Yf;->A4w()V

    .line 73923
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Yi;
    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
