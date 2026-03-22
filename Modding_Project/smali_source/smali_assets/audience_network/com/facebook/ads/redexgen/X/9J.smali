.class public final Lcom/facebook/ads/redexgen/X/9J;
.super Lcom/facebook/ads/redexgen/X/my;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor$State;
    }
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Z

.field public A06:Z

.field public A07:[B

.field public A08:[B

.field public final A09:J

.field public final A0A:J

.field public final A0B:S


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 542
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kTOKNBh1Wp6avXYwKxrfNqHQCe6IowZb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fsh7jTNUZTGCSew0VT63IO4tkQUYppyQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CGsUWOpaOXfE7pNtsFBesiWCOQ75lYHg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3QzqyUj5HYGt0uXrFXWs5fdma44AOfyL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "C3DxIlHWWAPwLuHgY8W8WEDh6NP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cCeo7h1kMT8v6dcJbz1RM5PEEOyjnS1I"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8Ip3ivaO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "u5WK46JzMVMnhOVxX0VDjJ353j7WObAc"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9J;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 26118
    const-wide/16 v3, 0x4e20

    const/16 v5, 0x400

    const-wide/32 v1, 0x249f0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9J;-><init>(JJS)V

    .line 26119
    return-void
.end method

.method public constructor <init>(JJS)V
    .locals 1

    .line 26120
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/my;-><init>()V

    .line 26121
    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 26122
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/9J;->A09:J

    .line 26123
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/9J;->A0A:J

    .line 26124
    iput-short p5, p0, Lcom/facebook/ads/redexgen/X/9J;->A0B:S

    .line 26125
    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A07:[B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A07:[B

    .line 26126
    sget-object v0, Lcom/facebook/ads/redexgen/X/4a;->A07:[B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A08:[B

    .line 26127
    return-void

    .line 26128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(J)I
    .locals 4

    .line 26129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A03:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method private A01(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 26130
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v2, v0, -0x2

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 26131
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-short v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A0B:S

    if-le v1, v0, :cond_0

    .line 26132
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:I

    div-int/2addr v2, v0

    mul-int/2addr v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:I

    add-int/2addr v1, v0

    return v1

    .line 26133
    :cond_0
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 26134
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method private A02(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 26135
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 26136
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-short v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A0B:S

    if-le v1, v0, :cond_0

    .line 26137
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:I

    div-int/2addr v2, v0

    mul-int/2addr v1, v2

    return v1

    .line 26138
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 26139
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method private A03(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 26140
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 26141
    .local v0, "length":I
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/my;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26142
    if-lez v1, :cond_0

    .line 26143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A06:Z

    .line 26144
    :cond_0
    return-void
.end method

.method private A04(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 26145
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 26146
    .local v0, "limit":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A02(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 26147
    .local v1, "noisePosition":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v2, v3, v0

    .line 26148
    .local v2, "maybeSilenceInputSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A07:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    sub-int/2addr v1, v0

    .line 26149
    .local v3, "maybeSilenceBufferRemaining":I
    const/4 v4, 0x0

    if-ge v3, v6, :cond_0

    if-ge v2, v1, :cond_0

    .line 26150
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/9J;->A07:[B

    iget v3, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/9J;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9J;->A0C:[Ljava/lang/String;

    const-string v1, "id1mOky4Zsioh8kkFhZ0Iqg9uH7l7sht"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uHcgX8Q5LBy4SketH3HUZ8MVXP73GzFI"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-direct {p0, v5, v3}, Lcom/facebook/ads/redexgen/X/9J;->A08([BI)V

    .line 26151
    iput v4, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    .line 26152
    iput v4, p0, Lcom/facebook/ads/redexgen/X/9J;->A03:I

    .line 26153
    .end local v5
    :goto_0
    return-void

    .line 26154
    :cond_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 26155
    .local v5, "bytesToWrite":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26156
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A07:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 26157
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    .line 26158
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A07:[B

    array-length v0, v0

    if-ne v1, v0, :cond_1

    .line 26159
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A06:Z

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    .line 26160
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A07:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A02:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9J;->A08([BI)V

    .line 26161
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9J;->A04:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A02:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9J;->A04:J

    .line 26162
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A07:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/9J;->A07(Ljava/nio/ByteBuffer;[BI)V

    .line 26163
    iput v4, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    .line 26164
    iput v5, p0, Lcom/facebook/ads/redexgen/X/9J;->A03:I

    .line 26165
    :cond_1
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 26166
    :cond_2
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9J;->A04:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A02:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9J;->A04:J

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 26167
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 26168
    .local v0, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A07:[B

    array-length v0, v0

    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26169
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A01(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 26170
    .local v1, "noiseLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 26171
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A03:I

    .line 26172
    :goto_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26173
    return-void

    .line 26174
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26175
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A03(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private A06(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 26176
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 26177
    .local v0, "limit":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A02(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 26178
    .local v1, "noisyPosition":I
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26179
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9J;->A04:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9J;->A04:J

    .line 26180
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A08:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A02:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/9J;->A07(Ljava/nio/ByteBuffer;[BI)V

    .line 26181
    if-ge v4, v5, :cond_0

    .line 26182
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A08:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A02:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9J;->A08([BI)V

    .line 26183
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A03:I

    .line 26184
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 26185
    :cond_0
    return-void
.end method

.method private A07(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 26186
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A02:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 26187
    .local v0, "fromInputSize":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/9J;->A02:I

    sub-int/2addr v2, v3

    .line 26188
    .local v1, "fromBufferSize":I
    sub-int/2addr p3, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A08:[B

    const/4 v0, 0x0

    invoke-static {p2, p3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A08:[B

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 26191
    return-void
.end method

.method private A08([BI)V
    .locals 2

    .line 26192
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/my;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26193
    if-lez p2, :cond_0

    .line 26194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A06:Z

    .line 26195
    :cond_0
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

    .line 26196
    iget v1, p1, Lcom/facebook/ads/redexgen/X/36;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 26197
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A05:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    sget-object p1, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    goto :goto_0

    .line 26198
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/37;-><init>(Lcom/facebook/ads/redexgen/X/36;)V

    throw v0
.end method

.method public final A0A()V
    .locals 3

    .line 26199
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A05:Z

    if-eqz v0, :cond_1

    .line 26200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:I

    .line 26201
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A09:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9J;->A00(J)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:I

    mul-int/2addr v1, v0

    .line 26202
    .local v0, "maybeSilenceBufferSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A07:[B

    array-length v0, v0

    if-eq v0, v1, :cond_0

    .line 26203
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A07:[B

    .line 26204
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A0A:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9J;->A00(J)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A02:I

    .line 26205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A08:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A02:I

    if-eq v1, v0, :cond_1

    .line 26206
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A02:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A08:[B

    .line 26207
    .end local v0    # "maybeSilenceBufferSize":I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/9J;->A03:I

    .line 26208
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A04:J

    .line 26209
    iput v2, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    .line 26210
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9J;->A06:Z

    .line 26211
    return-void
.end method

.method public final A0B()V
    .locals 4

    .line 26212
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    if-lez v0, :cond_0

    .line 26213
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A07:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9J;->A08([BI)V

    .line 26214
    :cond_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/9J;->A06:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/9J;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9J;->A0C:[Ljava/lang/String;

    const-string v1, "3PybTV2kdzhjV0AdFBUr0i874h0Ge15Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 26215
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9J;->A04:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9J;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9J;->A04:J

    .line 26216
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0C()J
    .locals 2

    .line 26217
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A04:J

    return-wide v0
.end method

.method public final A0D(Z)V
    .locals 0

    .line 26218
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9J;->A05:Z

    .line 26219
    return-void
.end method

.method public final AAC()Z
    .locals 1

    .line 26220
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A05:Z

    return v0
.end method

.method public final AGX(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 26221
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/my;->A01()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26222
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A03:I

    packed-switch v0, :pswitch_data_0

    .line 26223
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 26224
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A06(Ljava/nio/ByteBuffer;)V

    .line 26225
    goto :goto_0

    .line 26226
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A04(Ljava/nio/ByteBuffer;)V

    .line 26227
    goto :goto_0

    .line 26228
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A05(Ljava/nio/ByteBuffer;)V

    .line 26229
    goto :goto_0

    .line 26230
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
