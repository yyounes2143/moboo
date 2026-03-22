.class public final Lcom/facebook/ads/redexgen/X/Xx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Nr;->A03()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nr;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nr;)V
    .locals 0

    .line 73005
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xx;->A00:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 73006
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Xx;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Xx;->A00:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nr;->A00(Lcom/facebook/ads/redexgen/X/Nr;)Lcom/facebook/ads/redexgen/X/Xl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Xx;->A00:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nr;->A01(Lcom/facebook/ads/redexgen/X/Nr;)Lcom/facebook/ads/redexgen/X/YQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YQ;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73007
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Xx;->A00:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nr;->A00(Lcom/facebook/ads/redexgen/X/Nr;)Lcom/facebook/ads/redexgen/X/Xl;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Xx;->A00:Lcom/facebook/ads/redexgen/X/Nr;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Xl;->ACC(Lcom/facebook/ads/redexgen/X/Xm;)V

    .line 73008
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Xx;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
