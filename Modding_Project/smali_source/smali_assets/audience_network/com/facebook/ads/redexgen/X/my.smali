.class public abstract Lcom/facebook/ads/redexgen/X/my;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/38;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/36;

.field public A01:Lcom/facebook/ads/redexgen/X/36;

.field public A02:Ljava/nio/ByteBuffer;

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Z

.field public A05:Lcom/facebook/ads/redexgen/X/36;

.field public A06:Lcom/facebook/ads/redexgen/X/36;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100171
    sget-object v0, Lcom/facebook/ads/redexgen/X/38;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A02:Ljava/nio/ByteBuffer;

    .line 100172
    sget-object v0, Lcom/facebook/ads/redexgen/X/38;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A03:Ljava/nio/ByteBuffer;

    .line 100173
    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A00:Lcom/facebook/ads/redexgen/X/36;

    .line 100174
    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A01:Lcom/facebook/ads/redexgen/X/36;

    .line 100175
    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:Lcom/facebook/ads/redexgen/X/36;

    .line 100176
    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A06:Lcom/facebook/ads/redexgen/X/36;

    .line 100177
    return-void
.end method


# virtual methods
.method public final A00(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 100178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 100179
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A02:Ljava/nio/ByteBuffer;

    .line 100180
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A02:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A03:Ljava/nio/ByteBuffer;

    .line 100181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A02:Ljava/nio/ByteBuffer;

    return-object v0

    .line 100182
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public final A01()Z
    .locals 1

    .line 100183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public abstract A09(Lcom/facebook/ads/redexgen/X/36;)Lcom/facebook/ads/redexgen/X/36;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/37;
        }
    .end annotation
.end method

.method public A0A()V
    .locals 0

    .line 100184
    return-void
.end method

.method public A0B()V
    .locals 0

    .line 100185
    return-void
.end method

.method public final A4z(Lcom/facebook/ads/redexgen/X/36;)Lcom/facebook/ads/redexgen/X/36;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/37;
        }
    .end annotation

    .line 100186
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/my;->A00:Lcom/facebook/ads/redexgen/X/36;

    .line 100187
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/my;->A09(Lcom/facebook/ads/redexgen/X/36;)Lcom/facebook/ads/redexgen/X/36;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A01:Lcom/facebook/ads/redexgen/X/36;

    .line 100188
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/my;->AAC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A01:Lcom/facebook/ads/redexgen/X/36;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    goto :goto_0
.end method

.method public A8V()Ljava/nio/ByteBuffer;
    .locals 2

    .line 100189
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/my;->A03:Ljava/nio/ByteBuffer;

    .line 100190
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/38;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A03:Ljava/nio/ByteBuffer;

    .line 100191
    return-object v1
.end method

.method public AAC()Z
    .locals 2

    .line 100192
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/my;->A01:Lcom/facebook/ads/redexgen/X/36;

    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AAG()Z
    .locals 2

    .line 100193
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/my;->A04:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/my;->A03:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/38;->A00:Ljava/nio/ByteBuffer;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AGW()V
    .locals 1

    .line 100194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/my;->A04:Z

    .line 100195
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/my;->A0B()V

    .line 100196
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 100197
    sget-object v0, Lcom/facebook/ads/redexgen/X/38;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A03:Ljava/nio/ByteBuffer;

    .line 100198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/my;->A04:Z

    .line 100199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A00:Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:Lcom/facebook/ads/redexgen/X/36;

    .line 100200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A01:Lcom/facebook/ads/redexgen/X/36;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A06:Lcom/facebook/ads/redexgen/X/36;

    .line 100201
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/my;->A0A()V

    .line 100202
    return-void
.end method
