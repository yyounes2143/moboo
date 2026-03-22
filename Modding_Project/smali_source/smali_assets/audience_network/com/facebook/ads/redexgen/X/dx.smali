.class public final Lcom/facebook/ads/redexgen/X/dx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/2R;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2R;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2R;)V
    .locals 0

    .line 79742
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dx;->A00:Lcom/facebook/ads/redexgen/X/2R;

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
    move-object v3, p0

    .line 79743
    .local v0, "this":Lcom/facebook/ads/redexgen/X/dx;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/dx;->A00:Lcom/facebook/ads/redexgen/X/2R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2R;->A02(Lcom/facebook/ads/redexgen/X/2R;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-nez v0, :cond_1

    .line 79744
    return-void

    .line 79745
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/dx;->A00:Lcom/facebook/ads/redexgen/X/2R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2R;->A01(Lcom/facebook/ads/redexgen/X/2R;)Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79746
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/dx;->A00:Lcom/facebook/ads/redexgen/X/2R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2R;->A01(Lcom/facebook/ads/redexgen/X/2R;)Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0x:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 79747
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/dx;
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/dx;->A00:Lcom/facebook/ads/redexgen/X/2R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2R;->A00(Lcom/facebook/ads/redexgen/X/2R;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3Y()V

    .line 79748
    sget-object v1, Lcom/facebook/ads/redexgen/X/dy;->A00:[I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/dx;->A00:Lcom/facebook/ads/redexgen/X/2R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2R;->A03(Lcom/facebook/ads/redexgen/X/2R;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eU;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 79749
    :pswitch_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/dx;->A00:Lcom/facebook/ads/redexgen/X/2R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2R;->A05(Lcom/facebook/ads/redexgen/X/2R;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v2

    const/4 v1, 0x1

    const/16 v0, 0x8

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0l(ZI)V

    goto :goto_0

    .line 79750
    :pswitch_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/dx;->A00:Lcom/facebook/ads/redexgen/X/2R;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2R;->A04(Lcom/facebook/ads/redexgen/X/2R;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A04:Lcom/facebook/ads/redexgen/X/db;

    .line 79751
    const/16 v0, 0xc

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 79752
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
