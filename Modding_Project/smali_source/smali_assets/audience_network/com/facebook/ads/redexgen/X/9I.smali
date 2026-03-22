.class public final Lcom/facebook/ads/redexgen/X/9I;
.super Lcom/facebook/ads/redexgen/X/my;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Z

.field public A06:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26061
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/my;-><init>()V

    .line 26062
    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A07:[B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:[B

    .line 26063
    return-void
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/36;)Lcom/facebook/ads/redexgen/X/36;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/37;
        }
    .end annotation

    .line 26064
    iget v1, p1, Lcom/facebook/ads/redexgen/X/36;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 26065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A05:Z

    .line 26066
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A03:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A02:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    goto :goto_0

    .line 26067
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/37;-><init>(Lcom/facebook/ads/redexgen/X/36;)V

    throw v0
.end method

.method public final A0A()V
    .locals 3

    .line 26068
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A05:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 26069
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9I;->A05:Z

    .line 26070
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A00:I

    mul-int/2addr v1, v0

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:[B

    .line 26071
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A00:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:I

    .line 26072
    :cond_0
    iput v2, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    .line 26073
    return-void
.end method

.method public final A0B()V
    .locals 4

    .line 26074
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A05:Z

    if-eqz v0, :cond_1

    .line 26075
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    if-lez v0, :cond_0

    .line 26076
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9I;->A04:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9I;->A04:J

    .line 26077
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    .line 26078
    :cond_1
    return-void
.end method

.method public final A0C()J
    .locals 2

    .line 26079
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A04:J

    return-wide v0
.end method

.method public final A0D()V
    .locals 2

    .line 26080
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A04:J

    .line 26081
    return-void
.end method

.method public final A0E(II)V
    .locals 0

    .line 26082
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9I;->A03:I

    .line 26083
    iput p2, p0, Lcom/facebook/ads/redexgen/X/9I;->A02:I

    .line 26084
    return-void
.end method

.method public final A8V()Ljava/nio/ByteBuffer;
    .locals 4

    .line 26085
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/my;->AAG()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    if-lez v0, :cond_0

    .line 26086
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/my;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26087
    iput v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    .line 26088
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/my;->A8V()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final AAG()Z
    .locals 1

    .line 26089
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/my;->AAG()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AGX(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 26090
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 26091
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 26092
    .local v1, "limit":I
    sub-int v6, v2, v7

    .line 26093
    .local v2, "remaining":I
    if-nez v6, :cond_0

    .line 26094
    return-void

    .line 26095
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:I

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 26096
    .local v3, "trimBytes":I
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9I;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A00:I

    div-int v0, v5, v0

    int-to-long v0, v0

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/9I;->A04:J

    .line 26097
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:I

    .line 26098
    add-int/2addr v7, v5

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26099
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A01:I

    if-lez v0, :cond_1

    .line 26100
    return-void

    .line 26101
    :cond_1
    sub-int/2addr v6, v5

    .line 26102
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    add-int/2addr v1, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:[B

    array-length v0, v0

    sub-int/2addr v1, v0

    .line 26103
    .local v4, "remainingBytesToOutput":I
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/my;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 26104
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/4a;->A07(III)I

    move-result v3

    .line 26105
    .local v6, "endBufferBytesToOutput":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:[B

    invoke-virtual {v5, v0, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 26106
    sub-int/2addr v1, v3

    .line 26107
    invoke-static {v1, v4, v6}, Lcom/facebook/ads/redexgen/X/4a;->A07(III)I

    move-result v1

    .line 26108
    .local p0, "inputBufferBytesToOutput":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26109
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 26110
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26111
    sub-int/2addr v6, v1

    .line 26112
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    .line 26113
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:[B

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26114
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A06:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    invoke-virtual {p1, v1, v0, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 26115
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:I

    .line 26116
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26117
    return-void
.end method
