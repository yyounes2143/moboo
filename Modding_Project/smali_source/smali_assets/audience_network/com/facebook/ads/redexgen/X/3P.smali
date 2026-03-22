.class public final Lcom/facebook/ads/redexgen/X/3P;
.super Lcom/facebook/ads/redexgen/X/DR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/D9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/D9;)V
    .locals 0

    .line 10968
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3P;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DR;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Y;)V
    .locals 3

    .line 10969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3P;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A01(Lcom/facebook/ads/redexgen/X/D9;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10970
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3P;->A00:Lcom/facebook/ads/redexgen/X/D9;

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A0C(Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/e1;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 10971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3P;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A04(Lcom/facebook/ads/redexgen/X/D9;)V

    .line 10972
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3P;->A00:Lcom/facebook/ads/redexgen/X/D9;

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/D9;->A05(Lcom/facebook/ads/redexgen/X/D9;ZZ)V

    .line 10973
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3P;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/D9;->A0D(Lcom/facebook/ads/redexgen/X/D9;Z)Z

    .line 10974
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 10975
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3P;->A00(Lcom/facebook/ads/redexgen/X/3Y;)V

    return-void
.end method
