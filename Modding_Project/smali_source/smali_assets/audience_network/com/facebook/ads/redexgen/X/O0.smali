.class public final Lcom/facebook/ads/redexgen/X/O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/O1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metric"
.end annotation


# instance fields
.field public A00:D

.field public A01:D

.field public A02:D

.field public A03:D

.field public A04:D

.field public A05:D

.field public A06:D

.field public A07:D

.field public A08:D

.field public A09:D

.field public A0A:D

.field public A0B:I


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 54900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54901
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/O0;->A05:D

    .line 54902
    return-void
.end method


# virtual methods
.method public final A00()D
    .locals 2

    .line 54903
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A00:D

    return-wide v0
.end method

.method public final A01()D
    .locals 2

    .line 54904
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A03:D

    return-wide v0
.end method

.method public final A02()D
    .locals 2

    .line 54905
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A04:D

    return-wide v0
.end method

.method public final A03()D
    .locals 2

    .line 54906
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A06:D

    return-wide v0
.end method

.method public final A04()D
    .locals 2

    .line 54907
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A07:D

    return-wide v0
.end method

.method public final A05()D
    .locals 2

    .line 54908
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A08:D

    return-wide v0
.end method

.method public final A06()D
    .locals 2

    .line 54909
    iget v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A0B:I

    if-nez v0, :cond_0

    .line 54910
    const-wide/16 v0, 0x0

    return-wide v0

    .line 54911
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A09:D

    return-wide v0
.end method

.method public final A07()V
    .locals 4

    .line 54912
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/O0;->A00:D

    .line 54913
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/O0;->A02:D

    .line 54914
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/O0;->A04:D

    .line 54915
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/O0;->A03:D

    .line 54916
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/O0;->A06:D

    .line 54917
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A0B:I

    .line 54918
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/O0;->A08:D

    .line 54919
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A09:D

    .line 54920
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/O0;->A0A:D

    .line 54921
    return-void
.end method

.method public final A08()V
    .locals 2

    .line 54922
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A01:D

    .line 54923
    return-void
.end method

.method public final A09(DD)V
    .locals 4

    .line 54924
    iget v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A0B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A0B:I

    .line 54925
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A08:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A08:D

    .line 54926
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/O0;->A02:D

    .line 54927
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/O0;->A0A:D

    mul-double v0, p3, p1

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/O0;->A0A:D

    .line 54928
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/O0;->A0A:D

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A08:D

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/O0;->A00:D

    .line 54929
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A09:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A09:D

    .line 54930
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A06:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A06:D

    .line 54931
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/O0;->A05:D

    cmpl-double v0, p3, v1

    if-ltz v0, :cond_0

    .line 54932
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A04:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A04:D

    .line 54933
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A01:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A01:D

    .line 54934
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/O0;->A07:D

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A01:D

    .line 54935
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A07:D

    .line 54936
    :goto_0
    return-void

    .line 54937
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A03:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A03:D

    .line 54938
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A01:D

    goto :goto_0
.end method
