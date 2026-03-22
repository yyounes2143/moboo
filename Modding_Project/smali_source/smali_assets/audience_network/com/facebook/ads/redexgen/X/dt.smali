.class public final Lcom/facebook/ads/redexgen/X/dt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/D1;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/D1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/D1;)V
    .locals 0

    .line 79709
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dt;->A00:Lcom/facebook/ads/redexgen/X/D1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 79710
    .local v0, "this":Lcom/facebook/ads/redexgen/X/dt;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dt;->A00:Lcom/facebook/ads/redexgen/X/D1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D1;->A01(Lcom/facebook/ads/redexgen/X/D1;)Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0l:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 79711
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dt;->A00:Lcom/facebook/ads/redexgen/X/D1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D1;->A00(Lcom/facebook/ads/redexgen/X/D1;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3e()V

    .line 79712
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dt;->A00:Lcom/facebook/ads/redexgen/X/D1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D1;->A02(Lcom/facebook/ads/redexgen/X/D1;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-nez v0, :cond_1

    .line 79713
    return-void

    .line 79714
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dt;->A00:Lcom/facebook/ads/redexgen/X/D1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D1;->A08(Lcom/facebook/ads/redexgen/X/D1;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79715
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dt;->A00:Lcom/facebook/ads/redexgen/X/D1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D1;->A02(Lcom/facebook/ads/redexgen/X/D1;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->setVolume(F)V

    .line 79716
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dt;->A00:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D1;->A09()V

    goto :goto_1

    .line 79717
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/dt;
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dt;->A00:Lcom/facebook/ads/redexgen/X/D1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D1;->A02(Lcom/facebook/ads/redexgen/X/D1;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->setVolume(F)V

    goto :goto_0

    .line 79718
    :goto_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
