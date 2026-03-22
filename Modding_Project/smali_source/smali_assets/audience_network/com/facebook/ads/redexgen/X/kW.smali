.class public final Lcom/facebook/ads/redexgen/X/kW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/kV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OggSeekMap"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/kV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/kV;)V
    .locals 0

    .line 92371
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kW;->A00:Lcom/facebook/ads/redexgen/X/kV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/kV;Lcom/facebook/ads/redexgen/X/It;)V
    .locals 0

    .line 92372
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kW;-><init>(Lcom/facebook/ads/redexgen/X/kV;)V

    return-void
.end method


# virtual methods
.method public final A7l()J
    .locals 3

    .line 92373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kW;->A00:Lcom/facebook/ads/redexgen/X/kV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kV;->A06(Lcom/facebook/ads/redexgen/X/kV;)Lcom/facebook/ads/redexgen/X/Iz;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kW;->A00:Lcom/facebook/ads/redexgen/X/kV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kV;->A04(Lcom/facebook/ads/redexgen/X/kV;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Iz;->A05(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A8t(J)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 12

    .line 92374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kW;->A00:Lcom/facebook/ads/redexgen/X/kV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kV;->A06(Lcom/facebook/ads/redexgen/X/kV;)Lcom/facebook/ads/redexgen/X/Iz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Iz;->A06(J)J

    move-result-wide v4

    .line 92375
    .local v0, "targetGranule":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kW;->A00:Lcom/facebook/ads/redexgen/X/kV;

    .line 92376
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kV;->A02(Lcom/facebook/ads/redexgen/X/kV;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kW;->A00:Lcom/facebook/ads/redexgen/X/kV;

    .line 92377
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kV;->A03(Lcom/facebook/ads/redexgen/X/kV;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kW;->A00:Lcom/facebook/ads/redexgen/X/kV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kV;->A02(Lcom/facebook/ads/redexgen/X/kV;)J

    move-result-wide v0

    sub-long/2addr v2, v0

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kW;->A00:Lcom/facebook/ads/redexgen/X/kV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kV;->A04(Lcom/facebook/ads/redexgen/X/kV;)J

    move-result-wide v0

    div-long/2addr v2, v0

    add-long/2addr v6, v2

    const-wide/16 v0, 0x7530

    sub-long/2addr v6, v0

    .line 92378
    .local v2, "estimatedPosition":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kW;->A00:Lcom/facebook/ads/redexgen/X/kV;

    .line 92379
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kV;->A02(Lcom/facebook/ads/redexgen/X/kV;)J

    move-result-wide v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kW;->A00:Lcom/facebook/ads/redexgen/X/kV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/kV;->A03(Lcom/facebook/ads/redexgen/X/kV;)J

    move-result-wide v10

    const-wide/16 v0, 0x1

    sub-long/2addr v10, v0

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/4a;->A0T(JJJ)J

    move-result-wide v2

    .line 92380
    new-instance v1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0
.end method

.method public final AAa()Z
    .locals 1

    .line 92381
    const/4 v0, 0x1

    return v0
.end method
