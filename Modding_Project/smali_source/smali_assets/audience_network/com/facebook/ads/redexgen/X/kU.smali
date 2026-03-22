.class public final Lcom/facebook/ads/redexgen/X/kU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/kT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlacOggSeeker"
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Gg;

.field public A03:Lcom/facebook/ads/redexgen/X/Gh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gh;Lcom/facebook/ads/redexgen/X/Gg;)V
    .locals 2

    .line 92258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92259
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kU;->A03:Lcom/facebook/ads/redexgen/X/Gh;

    .line 92260
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/kU;->A02:Lcom/facebook/ads/redexgen/X/Gg;

    .line 92261
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A00:J

    .line 92262
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A01:J

    .line 92263
    return-void
.end method


# virtual methods
.method public final A00(J)V
    .locals 0

    .line 92264
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/kU;->A00:J

    .line 92265
    return-void
.end method

.method public final A5R()Lcom/facebook/ads/redexgen/X/Gw;
    .locals 5

    .line 92266
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/kU;->A00:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 92267
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/kU;->A03:Lcom/facebook/ads/redexgen/X/Gh;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/kU;->A00:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/lK;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/lK;-><init>(Lcom/facebook/ads/redexgen/X/Gh;J)V

    return-object v0

    .line 92268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AGd(Lcom/facebook/ads/redexgen/X/lN;)J
    .locals 8

    .line 92269
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/kU;->A01:J

    const-wide/16 v1, 0x0

    const-wide/16 v4, -0x1

    cmp-long v0, v6, v1

    if-ltz v0, :cond_0

    .line 92270
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kU;->A01:J

    const-wide/16 v0, 0x2

    add-long/2addr v2, v0

    neg-long v0, v2

    .line 92271
    .local v0, "result":J
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/kU;->A01:J

    .line 92272
    return-wide v0

    .line 92273
    .end local v0    # "result":J
    :cond_0
    return-wide v4
.end method

.method public final AJR(J)V
    .locals 2

    .line 92274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A02:Lcom/facebook/ads/redexgen/X/Gg;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Gg;->A01:[J

    .line 92275
    .local v0, "seekPointGranules":[J
    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0L([JJZZ)I

    move-result v0

    .line 92276
    .local v1, "index":I
    aget-wide v0, v1, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kU;->A01:J

    .line 92277
    return-void
.end method
