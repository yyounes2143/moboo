.class public final Lcom/facebook/ads/redexgen/X/19;
.super Lcom/facebook/ads/redexgen/X/9l;
.source ""


# static fields
.field public static A04:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/56;

.field public A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/19;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9l;-><init>(Z)V

    .line 8201
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/19;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x78

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/19;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x11t
        0x30t
        0x57t
        0x56t
        0x68t
        0x5at
        0x2bt
        0x29t
        0x3at
        0x67t
        0x67t
        0x64t
        0x67t
        0x15t
        0x6ct
        0x5dt
        0x5et
        0x61t
        0x5at
        0x15t
        0x65t
        0x56t
        0x67t
        0x68t
        0x5et
        0x63t
        0x5ct
        0x15t
        0x37t
        0x56t
        0x68t
        0x5at
        0x2bt
        0x29t
        0x15t
        0x5at
        0x63t
        0x58t
        0x64t
        0x59t
        0x5at
        0x59t
        0x15t
        0x68t
        0x69t
        0x67t
        0x5et
        0x63t
        0x5ct
        0x2ft
        0x15t
        -0x17t
        0x2t
        -0x7t
        0xct
        0x4t
        -0x7t
        -0x9t
        0x8t
        -0x7t
        -0x8t
        -0x4ct
        -0x17t
        -0x1at
        -0x23t
        -0x4ct
        -0x6t
        0x3t
        0x6t
        0x1t
        -0xbt
        0x8t
        -0x32t
        -0x4ct
        0x3ct
        0x55t
        0x5at
        0x5ct
        0x57t
        0x57t
        0x56t
        0x59t
        0x5bt
        0x4ct
        0x4bt
        0x7t
        0x5at
        0x4at
        0x4ft
        0x4ct
        0x54t
        0x4ct
        0x21t
        0x7t
        0x19t
        0x16t
        0x29t
        0x16t
    .end array-data
.end method


# virtual methods
.method public final A9H()Landroid/net/Uri;
    .locals 1

    .line 8202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A02:Lcom/facebook/ads/redexgen/X/56;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A02:Lcom/facebook/ads/redexgen/X/56;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/56;->A06:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AFy(Lcom/facebook/ads/redexgen/X/56;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8203
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A0G(Lcom/facebook/ads/redexgen/X/56;)V

    .line 8204
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/19;->A02:Lcom/facebook/ads/redexgen/X/56;

    .line 8205
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/56;->A06:Landroid/net/Uri;

    .line 8206
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 8207
    .local v1, "scheme":Ljava/lang/String;
    const/16 v2, 0x5e

    const/4 v1, 0x4

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/19;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4a

    const/16 v1, 0x14

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/19;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/3M;->A09(ZLjava/lang/Object;)V

    .line 8208
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/19;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4a;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 8209
    .local v2, "uriParts":[Ljava/lang/String;
    array-length v1, v2

    const/4 v0, 0x2

    const/4 v5, 0x0

    if-ne v1, v0, :cond_4

    .line 8210
    const/4 v0, 0x1

    aget-object v6, v2, v0

    .line 8211
    .local v3, "dataString":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v3, v2, v4

    const/4 v2, 0x1

    const/4 v1, 0x7

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/19;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8212
    :try_start_0
    invoke-static {v6, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A03:[B

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8213
    :catch_0
    move-exception v4

    .line 8214
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    const/16 v1, 0x2b

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/19;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/2i;->A02(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0

    .line 8215
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/ia;->A02:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A1G(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A03:[B

    .line 8216
    :goto_0
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/56;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A03:[B

    array-length v0, v0

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_3

    .line 8217
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/56;->A04:J

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A01:I

    .line 8218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A03:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A01:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    .line 8219
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    const-wide/16 v4, -0x1

    cmp-long v0, v1, v4

    if-eqz v0, :cond_1

    .line 8220
    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    int-to-long v2, v0

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    .line 8221
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A0H(Lcom/facebook/ads/redexgen/X/56;)V

    .line 8222
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    :goto_1
    return-wide v0

    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    int-to-long v0, v0

    goto :goto_1

    .line 8223
    :cond_3
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/19;->A03:[B

    .line 8224
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/4z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4z;-><init>(I)V

    throw v0

    .line 8225
    .end local v3    # "dataString":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x33

    const/16 v1, 0x17

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/19;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/2i;->A02(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public final close()V
    .locals 2

    .line 8226
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/19;->A03:[B

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 8227
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A03:[B

    .line 8228
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0E()V

    .line 8229
    :cond_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A02:Lcom/facebook/ads/redexgen/X/56;

    .line 8230
    return-void
.end method

.method public final read([BII)I
    .locals 3

    .line 8231
    if-nez p3, :cond_0

    .line 8232
    const/4 v0, 0x0

    return v0

    .line 8233
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    if-nez v0, :cond_1

    .line 8234
    const/4 v0, -0x1

    return v0

    .line 8235
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/19;->A03:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A01:I

    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8237
    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A01:I

    .line 8238
    iget v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/19;->A00:I

    .line 8239
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/9l;->A0F(I)V

    .line 8240
    return v2
.end method
