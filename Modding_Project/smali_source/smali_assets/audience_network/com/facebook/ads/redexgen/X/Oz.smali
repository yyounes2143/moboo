.class public final Lcom/facebook/ads/redexgen/X/Oz;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Wd;->A07()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Wd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wd;)V
    .locals 0

    .line 56754
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 56755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A03(Lcom/facebook/ads/redexgen/X/Wd;)V

    .line 56757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A01(Lcom/facebook/ads/redexgen/X/Wd;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A00(Lcom/facebook/ads/redexgen/X/Wd;)J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56758
    :cond_0
    return-void
.end method
