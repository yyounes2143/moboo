.class public final Lcom/facebook/ads/redexgen/X/Ku;
.super Lcom/facebook/ads/redexgen/X/eW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ki;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/ref/WeakReference;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ki;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ki;)V
    .locals 0

    .line 49766
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ku;->A00:Lcom/facebook/ads/redexgen/X/Ki;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eW;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 49767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ku;->A00:Lcom/facebook/ads/redexgen/X/Ki;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ki;->A06(Lcom/facebook/ads/redexgen/X/Ki;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ku;->A00:Lcom/facebook/ads/redexgen/X/Ki;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ki;->A00(Lcom/facebook/ads/redexgen/X/Ki;)Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49768
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ku;->A00:Lcom/facebook/ads/redexgen/X/Ki;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ki;->A00(Lcom/facebook/ads/redexgen/X/Ki;)Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A05()V

    .line 49769
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ku;->A00:Lcom/facebook/ads/redexgen/X/Ki;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ki;->A03(Lcom/facebook/ads/redexgen/X/Ki;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ku;->A00:Lcom/facebook/ads/redexgen/X/Ki;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ki;->A03(Lcom/facebook/ads/redexgen/X/Ki;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Zh;->ADW()V

    .line 49771
    :cond_2
    return-void
.end method
