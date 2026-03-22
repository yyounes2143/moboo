.class public final Lcom/facebook/ads/redexgen/X/ii;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/MW;->A0A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MW;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MW;)V
    .locals 0

    .line 86590
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ii;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 86591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ii;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0B(Lcom/facebook/ads/redexgen/X/MW;)V

    .line 86592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ii;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A00(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/MV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MV;->A06()V

    .line 86593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ii;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A05(Lcom/facebook/ads/redexgen/X/MW;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 86594
    return-void
.end method
