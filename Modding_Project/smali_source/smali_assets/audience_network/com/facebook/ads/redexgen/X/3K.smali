.class public final Lcom/facebook/ads/redexgen/X/3K;
.super Lcom/facebook/ads/redexgen/X/DP;
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

    .line 10864
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DP;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DQ;)V
    .locals 4

    .line 10865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A09(Lcom/facebook/ads/redexgen/X/D9;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A08(Lcom/facebook/ads/redexgen/X/D9;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10866
    return-void

    .line 10867
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(Lcom/facebook/ads/redexgen/X/D9;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A0A(Lcom/facebook/ads/redexgen/X/D9;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/D9;->A0D(Lcom/facebook/ads/redexgen/X/D9;Z)Z

    .line 10869
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A03:Lcom/facebook/ads/redexgen/X/e1;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A0C(Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/e1;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    .line 10870
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A0B(Lcom/facebook/ads/redexgen/X/D9;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10871
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/D9;->A0F(Lcom/facebook/ads/redexgen/X/D9;Z)Z

    .line 10872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A01(Lcom/facebook/ads/redexgen/X/D9;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/DB;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/DB;-><init>(Lcom/facebook/ads/redexgen/X/3K;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    .line 10873
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A00(Lcom/facebook/ads/redexgen/X/D9;)I

    move-result v0

    int-to-long v0, v0

    .line 10874
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10875
    :cond_2
    :goto_0
    return-void

    .line 10876
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A02:Lcom/facebook/ads/redexgen/X/e1;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A0C(Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/e1;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A04(Lcom/facebook/ads/redexgen/X/D9;)V

    .line 10878
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:Lcom/facebook/ads/redexgen/X/D9;

    const/4 v0, 0x1

    invoke-static {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/D9;->A05(Lcom/facebook/ads/redexgen/X/D9;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 10879
    check-cast p1, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3K;->A00(Lcom/facebook/ads/redexgen/X/DQ;)V

    return-void
.end method
