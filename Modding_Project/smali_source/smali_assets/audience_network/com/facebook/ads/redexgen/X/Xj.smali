.class public final Lcom/facebook/ads/redexgen/X/Xj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xk;->setAdDetails(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/N9;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ua;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Xk;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Xn;

.field public final synthetic A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xk;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72747
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xj;->A02:Lcom/facebook/ads/redexgen/X/Xk;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xj;->A01:Lcom/facebook/ads/redexgen/X/Ua;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Xj;->A03:Lcom/facebook/ads/redexgen/X/Xn;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Xj;->A04:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Xj;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 72748
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Xj;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Xj;->A01:Lcom/facebook/ads/redexgen/X/Ua;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0A:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 72749
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Xj;->A02:Lcom/facebook/ads/redexgen/X/Xk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xk;->A00(Lcom/facebook/ads/redexgen/X/Xk;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Xj;->A02:Lcom/facebook/ads/redexgen/X/Xk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xk;->A01(Lcom/facebook/ads/redexgen/X/Xk;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O2;->A0O(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72750
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Xj;->A03:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Xj;->A04:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Xj;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xn;->AAf(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V

    goto :goto_0

    .line 72751
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Xj;
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Xj;->A00:Lcom/facebook/ads/redexgen/X/N9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72752
    new-instance v3, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/WN;-><init>()V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Xj;->A02:Lcom/facebook/ads/redexgen/X/Xk;

    .line 72753
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xk;->A01(Lcom/facebook/ads/redexgen/X/Xk;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Xj;->A00:Lcom/facebook/ads/redexgen/X/N9;

    .line 72754
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Xj;->A04:Ljava/lang/String;

    .line 72755
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0O(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/dL;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 72756
    :cond_2
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
