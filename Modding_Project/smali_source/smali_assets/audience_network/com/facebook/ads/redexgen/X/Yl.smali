.class public final Lcom/facebook/ads/redexgen/X/Yl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/LV;->A0N()V
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

    .line 73930
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yl;->A00:Lcom/facebook/ads/redexgen/X/LV;

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

    .line 73931
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yl;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Yl;->A00:Lcom/facebook/ads/redexgen/X/LV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Yd;->A0B:Lcom/facebook/ads/redexgen/X/Yf;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Yf;->AAh()V

    .line 73932
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Yl;
    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
