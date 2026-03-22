.class public final Lcom/facebook/ads/redexgen/X/Kd;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Zm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zm;)V
    .locals 0

    .line 49472
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Kd;->A00:Lcom/facebook/ads/redexgen/X/Zm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 49473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A00:Lcom/facebook/ads/redexgen/X/Zm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zm;->A05(Lcom/facebook/ads/redexgen/X/Zm;)V

    .line 49474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A00:Lcom/facebook/ads/redexgen/X/Zm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zm;->A06(Lcom/facebook/ads/redexgen/X/Zm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A00:Lcom/facebook/ads/redexgen/X/Zm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zm;->A00(Lcom/facebook/ads/redexgen/X/Zm;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A00:Lcom/facebook/ads/redexgen/X/Zm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zm;->A01(Lcom/facebook/ads/redexgen/X/Zm;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49476
    :cond_0
    return-void
.end method
