.class public abstract Lcom/facebook/ads/redexgen/X/7i;
.super Lcom/facebook/ads/redexgen/X/nX;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/J7;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/J7;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22215
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nX;-><init>()V

    return-void
.end method


# virtual methods
.method public final A0A()V
    .locals 1

    .line 22216
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/5I;->A0A()V

    .line 22217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A01:Lcom/facebook/ads/redexgen/X/J7;

    .line 22218
    return-void
.end method

.method public abstract A0B()V
.end method

.method public final A0C(JLcom/facebook/ads/redexgen/X/J7;J)V
    .locals 3

    .line 22219
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/nX;->A01:J

    .line 22220
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7i;->A01:Lcom/facebook/ads/redexgen/X/J7;

    .line 22221
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, p4, v1

    if-nez v0, :cond_0

    iget-wide p4, p0, Lcom/facebook/ads/redexgen/X/nX;->A01:J

    :cond_0
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/7i;->A00:J

    .line 22222
    return-void
.end method

.method public final A7P(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;"
        }
    .end annotation

    .line 22223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A01:Lcom/facebook/ads/redexgen/X/J7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/J7;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A00:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/J7;->A7P(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A7v(I)J
    .locals 4

    .line 22224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A01:Lcom/facebook/ads/redexgen/X/J7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J7;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/J7;->A7v(I)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A00:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A7w()I
    .locals 1

    .line 22225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A01:Lcom/facebook/ads/redexgen/X/J7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/J7;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/J7;->A7w()I

    move-result v0

    return v0
.end method

.method public final A8S(J)I
    .locals 3

    .line 22226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A01:Lcom/facebook/ads/redexgen/X/J7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/J7;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/7i;->A00:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/J7;->A8S(J)I

    move-result v0

    return v0
.end method
