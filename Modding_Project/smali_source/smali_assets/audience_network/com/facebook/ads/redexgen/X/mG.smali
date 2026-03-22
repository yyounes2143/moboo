.class public final Lcom/facebook/ads/redexgen/X/mG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/EN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllocationNode"
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/mG;

.field public A03:Lcom/facebook/ads/redexgen/X/EM;


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 98539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98540
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/mG;->A02(JI)V

    .line 98541
    return-void
.end method


# virtual methods
.method public final A00(J)I
    .locals 2

    .line 98542
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A01:J

    sub-long/2addr p1, v0

    long-to-int v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/EM;->A00:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/mG;
    .locals 2

    .line 98543
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    .line 98544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:Lcom/facebook/ads/redexgen/X/mG;

    .line 98545
    .local v1, "temp":Lcom/facebook/ads/redexgen/X/mG;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:Lcom/facebook/ads/redexgen/X/mG;

    .line 98546
    return-object v0
.end method

.method public final A02(JI)V
    .locals 2

    .line 98547
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 98548
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/mG;->A01:J

    .line 98549
    int-to-long v0, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A00:J

    .line 98550
    return-void

    .line 98551
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/EM;Lcom/facebook/ads/redexgen/X/mG;)V
    .locals 0

    .line 98552
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    .line 98553
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:Lcom/facebook/ads/redexgen/X/mG;

    .line 98554
    return-void
.end method

.method public final A6m()Lcom/facebook/ads/redexgen/X/EM;
    .locals 1

    .line 98555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/EM;

    return-object v0
.end method

.method public final AC3()Lcom/facebook/ads/redexgen/X/mG;
    .locals 1

    .line 98556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:Lcom/facebook/ads/redexgen/X/mG;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:Lcom/facebook/ads/redexgen/X/mG;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/mG;->A03:Lcom/facebook/ads/redexgen/X/EM;

    if-nez v0, :cond_1

    .line 98557
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 98558
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mG;->A02:Lcom/facebook/ads/redexgen/X/mG;

    return-object v0
.end method
