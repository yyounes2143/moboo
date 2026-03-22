.class public final Lcom/facebook/ads/redexgen/X/lV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinarySearchSeekMap"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:Lcom/facebook/ads/redexgen/X/GL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GL;JJJJJJ)V
    .locals 0

    .line 96718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96719
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lV;->A06:Lcom/facebook/ads/redexgen/X/GL;

    .line 96720
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/lV;->A03:J

    .line 96721
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/lV;->A05:J

    .line 96722
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/lV;->A02:J

    .line 96723
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/lV;->A04:J

    .line 96724
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/lV;->A01:J

    .line 96725
    iput-wide p12, p0, Lcom/facebook/ads/redexgen/X/lV;->A00:J

    .line 96726
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/lV;)J
    .locals 1

    .line 96727
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lV;->A05:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/lV;)J
    .locals 1

    .line 96728
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lV;->A02:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/lV;)J
    .locals 1

    .line 96729
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lV;->A04:J

    return-wide v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/lV;)J
    .locals 1

    .line 96730
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lV;->A01:J

    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/lV;)J
    .locals 1

    .line 96731
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lV;->A00:J

    return-wide v0
.end method


# virtual methods
.method public final A05(J)J
    .locals 2

    .line 96732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lV;->A06:Lcom/facebook/ads/redexgen/X/GL;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/GL;->AJf(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7l()J
    .locals 2

    .line 96733
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/lV;->A03:J

    return-wide v0
.end method

.method public final A8t(J)Lcom/facebook/ads/redexgen/X/Gv;
    .locals 12

    .line 96734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lV;->A06:Lcom/facebook/ads/redexgen/X/GL;

    .line 96735
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/GL;->AJf(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lV;->A05:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/lV;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/lV;->A04:J

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/lV;->A01:J

    iget-wide v10, p0, Lcom/facebook/ads/redexgen/X/lV;->A00:J

    .line 96736
    invoke-static/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/GK;->A05(JJJJJJ)J

    move-result-wide v2

    .line 96737
    .local v0, "nextSearchPosition":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gv;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/redexgen/X/Gx;)V

    return-object v0
.end method

.method public final AAa()Z
    .locals 1

    .line 96738
    const/4 v0, 0x1

    return v0
.end method
