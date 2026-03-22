.class public final Lcom/facebook/ads/redexgen/X/iZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7L;->A0C(ILcom/facebook/ads/redexgen/X/TF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7L;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7L;)V
    .locals 0

    .line 86505
    .local p0, "this":Lcom/facebook/ads/redexgen/X/iZ;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iZ;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAe()V
    .locals 4

    .line 86506
    .local p1, "this":Lcom/facebook/ads/redexgen/X/iZ;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/78;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A00()Ljava/lang/String;

    move-result-object v1

    .line 86507
    .local v0, "adChoice":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86508
    new-instance v3, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/WN;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A00:Lcom/facebook/ads/redexgen/X/7L;

    .line 86509
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/6M;

    move-result-object v2

    .line 86510
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iZ;->A00:Lcom/facebook/ads/redexgen/X/7L;

    .line 86511
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7L;->A7G()Ljava/lang/String;

    move-result-object v0

    .line 86512
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0O(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/dL;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 86513
    :cond_0
    return-void
.end method

.method public final AD8(Lcom/facebook/ads/redexgen/X/5G;)V
    .locals 4

    .line 86514
    .local p0, "this":Lcom/facebook/ads/redexgen/X/iZ;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/ib;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/ib;-><init>(Lcom/facebook/ads/redexgen/X/iZ;Lcom/facebook/ads/redexgen/X/5G;)V

    .line 86515
    const-wide/16 v0, 0x1

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86516
    return-void
.end method

.method public final ADO()V
    .locals 0

    .line 86517
    .local p0, "this":Lcom/facebook/ads/redexgen/X/iZ;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    return-void
.end method

.method public final AFS(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 86518
    .local p0, "this":Lcom/facebook/ads/redexgen/X/iZ;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    return-void
.end method
