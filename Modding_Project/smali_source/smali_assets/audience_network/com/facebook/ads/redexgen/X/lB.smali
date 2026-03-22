.class public final Lcom/facebook/ads/redexgen/X/lB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/flac/FlacExtractor$State;,
        Lcom/facebook/ads/androidx/media3/extractor/flac/FlacExtractor$Flags;
    }
.end annotation


# static fields
.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Lcom/facebook/ads/redexgen/X/Gb;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Lcom/facebook/ads/androidx/media3/common/Metadata;

.field public A06:Lcom/facebook/ads/redexgen/X/GY;

.field public A07:Lcom/facebook/ads/redexgen/X/Gh;

.field public A08:Lcom/facebook/ads/redexgen/X/H1;

.field public A09:Lcom/facebook/ads/redexgen/X/lD;

.field public final A0A:Lcom/facebook/ads/redexgen/X/4J;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Gc;

.field public final A0C:Z

.field public final A0D:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3101
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CA5tgyD1ft6jPQScHcEKxijdDn8CpaAj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rrvFpoycxrr9C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qEVAWkTuIpwlYdd7u09"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zGu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "r98"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bvJEUCblPMa4rVVBIUxYNVrIzXUNKtA9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0YPJWJVAuNzanCV2KA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ww61LKXhC9Y0aL9N3LYwjUph3RiaOuui"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lB;->A0E:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/lC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lC;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lB;->A0F:Lcom/facebook/ads/redexgen/X/Gb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lB;-><init>(I)V

    .line 96181
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 96182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96183
    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0D:[B

    .line 96184
    const v0, 0x8000

    new-array v2, v0, [B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>([BI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    .line 96185
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0C:Z

    .line 96186
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0B:Lcom/facebook/ads/redexgen/X/Gc;

    .line 96187
    iput v1, p0, Lcom/facebook/ads/redexgen/X/lB;->A03:I

    .line 96188
    return-void

    .line 96189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A08:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A09:Lcom/facebook/ads/redexgen/X/lD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A09:Lcom/facebook/ads/redexgen/X/lD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GQ;->A09()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A09:Lcom/facebook/ads/redexgen/X/lD;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/GQ;->A06(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v0

    return v0

    .line 96194
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/lB;->A04:J

    const-wide/16 v7, -0x1

    const/4 v5, 0x0

    sget-object v3, Lcom/facebook/ads/redexgen/X/lB;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x13

    if-eq v3, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/lB;->A0E:[Ljava/lang/String;

    const-string v3, "5vsaEOzV8f26KwvJg69"

    const/4 v0, 0x2

    aput-object v3, v4, v0

    cmp-long v0, v1, v7

    if-nez v0, :cond_3

    .line 96195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    .line 96196
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A01(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gh;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A04:J

    .line 96197
    return v5

    .line 96198
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/lB;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 96199
    .local v0, "currentLimit":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/lB;->A0E:[Ljava/lang/String;

    const-string v1, "dF6ALNUNBXQAeyaZgj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "WrJkmBjBZcK3S"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v3, 0x0

    .line 96200
    .local v1, "foundEndOfInput":Z
    const v0, 0x8000

    if-ge v4, v0, :cond_4

    .line 96201
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    .line 96202
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    sub-int/2addr v0, v4

    .line 96203
    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/lN;->read([BII)I

    move-result v2

    .line 96204
    .local v5, "bytesRead":I
    const/4 v1, -0x1

    if-ne v2, v1, :cond_9

    const/4 v3, 0x1

    .line 96205
    :goto_0
    if-nez v3, :cond_8

    .line 96206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 96207
    .end local v5    # "bytesRead":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v6

    .line 96208
    .local v5, "positionBeforeFindingAFrame":I
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lB;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A02:I

    if-ge v1, v0, :cond_5

    .line 96209
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lB;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A00:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 96210
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/lB;->A01(Lcom/facebook/ads/redexgen/X/4J;Z)J

    move-result-wide v2

    .line 96211
    .local v6, "nextFrameFirstSampleNumber":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v4

    sub-int/2addr v4, v6

    .line 96212
    .local v8, "numberOfFrameBytes":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96213
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lB;->A08:Lcom/facebook/ads/redexgen/X/H1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 96214
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A00:I

    .line 96215
    cmp-long v0, v2, v7

    if-eqz v0, :cond_6

    .line 96216
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lB;->A03()V

    sget-object v4, Lcom/facebook/ads/redexgen/X/lB;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 96217
    sget-object v4, Lcom/facebook/ads/redexgen/X/lB;->A0E:[Ljava/lang/String;

    const-string v1, "m1G"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "pgV"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/lB;->A00:I

    .line 96218
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lB;->A04:J

    .line 96219
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v1

    const/16 v0, 0x10

    if-ge v1, v0, :cond_7

    .line 96220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v3

    .line 96221
    .local v2, "bytesLeft":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    .line 96222
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    .line 96223
    invoke-static {v2, v1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0e(I)V

    .line 96226
    .end local v2    # "bytesLeft":I
    :cond_7
    return v5

    .line 96227
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-nez v0, :cond_4

    .line 96228
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lB;->A03()V

    .line 96229
    return v1

    .line 96230
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/4J;Z)J
    .locals 5

    .line 96231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96232
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v3

    .line 96233
    .local v0, "frameOffset":I
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    if-gt v3, v0, :cond_1

    .line 96234
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96235
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lB;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0B:Lcom/facebook/ads/redexgen/X/Gc;

    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/Gh;ILcom/facebook/ads/redexgen/X/Gc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96236
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0B:Lcom/facebook/ads/redexgen/X/Gc;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Gc;->A00:J

    return-wide v0

    .line 96238
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96239
    :cond_1
    if-eqz p2, :cond_5

    .line 96240
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A02:I

    sub-int/2addr v1, v0

    if-gt v3, v1, :cond_4

    .line 96241
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96242
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lB;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0B:Lcom/facebook/ads/redexgen/X/Gc;

    .line 96243
    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(Lcom/facebook/ads/redexgen/X/4J;Lcom/facebook/ads/redexgen/X/Gh;ILcom/facebook/ads/redexgen/X/Gc;)Z

    move-result v2

    goto :goto_2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96244
    .end local v1
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_0
    const/4 v2, 0x0

    .line 96245
    .local v1, "frameFound":Z
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    if-le v1, v0, :cond_2

    .line 96246
    const/4 v2, 0x0

    .line 96247
    :cond_2
    if-eqz v2, :cond_3

    .line 96248
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0B:Lcom/facebook/ads/redexgen/X/Gc;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Gc;->A00:J

    return-wide v0

    .line 96250
    .end local v1    # "frameFound":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 96251
    goto :goto_1

    .line 96252
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    goto :goto_3

    .line 96253
    :cond_5
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 96254
    :goto_3
    const-wide/16 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/lB;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/lB;->A0E:[Ljava/lang/String;

    const-string v1, "ocsB3wUrjHvCq2LiV7qRqPCVLxbY4c1N"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "pwt2z55mSaXVkRisABTZleFgLF4gxvRK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-wide v3
.end method

.method private A02(JJ)Lcom/facebook/ads/redexgen/X/Gw;
    .locals 13

    .line 96255
    move-object v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96256
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gh;->A0A:Lcom/facebook/ads/redexgen/X/Gg;

    move-wide v9, p1

    if-eqz v0, :cond_0

    .line 96257
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/lK;

    invoke-direct {v0, v1, v9, v10}, Lcom/facebook/ads/redexgen/X/lK;-><init>(Lcom/facebook/ads/redexgen/X/Gh;J)V

    return-object v0

    .line 96258
    :cond_0
    const-wide/16 v1, -0x1

    move-wide/from16 v11, p3

    cmp-long v0, v11, v1

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Gh;->A09:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 96259
    new-instance v6, Lcom/facebook/ads/redexgen/X/lD;

    iget-object v7, v5, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    iget v8, v5, Lcom/facebook/ads/redexgen/X/lB;->A01:I

    invoke-direct/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/lD;-><init>(Lcom/facebook/ads/redexgen/X/Gh;IJJ)V

    iput-object v6, v5, Lcom/facebook/ads/redexgen/X/lB;->A09:Lcom/facebook/ads/redexgen/X/lD;

    .line 96260
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/lB;->A09:Lcom/facebook/ads/redexgen/X/lD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GQ;->A07()Lcom/facebook/ads/redexgen/X/lV;

    move-result-object v0

    return-object v0

    .line 96261
    :cond_1
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gh;->A06()J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/lI;-><init>(J)V

    return-object v0
.end method

.method private A03()V
    .locals 8

    .line 96262
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lB;->A04:J

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    .line 96263
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Gh;->A07:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    .line 96264
    .local v0, "timeUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A08:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/H1;

    iget v5, p0, Lcom/facebook/ads/redexgen/X/lB;->A00:I

    .line 96265
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 96266
    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/lN;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96267
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Gf;->A00(Lcom/facebook/ads/redexgen/X/lN;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A01:I

    .line 96268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A06:Lcom/facebook/ads/redexgen/X/GY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/GY;

    .line 96269
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v2

    .line 96270
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->A8G()J

    move-result-wide v0

    .line 96271
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/lB;->A02(JJ)Lcom/facebook/ads/redexgen/X/Gw;

    move-result-object v0

    .line 96272
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/GY;->AIN(Lcom/facebook/ads/redexgen/X/Gw;)V

    .line 96273
    const/4 v0, 0x5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A03:I

    .line 96274
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/lN;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96275
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lB;->A0D:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0D:[B

    array-length v1, v0

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 96276
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 96277
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A03:I

    .line 96278
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/lN;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96279
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0C:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A02(Lcom/facebook/ads/redexgen/X/lN;Z)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A05:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 96280
    iput v1, p0, Lcom/facebook/ads/redexgen/X/lB;->A03:I

    .line 96281
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/lN;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96282
    const/4 v2, 0x0

    .line 96283
    .local v0, "isLastMetadataBlock":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ge;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ge;-><init>(Lcom/facebook/ads/redexgen/X/Gh;)V

    .line 96284
    .local v1, "metadataHolder":Lcom/facebook/ads/redexgen/X/Ge;
    :goto_0
    if-nez v2, :cond_0

    .line 96285
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/Gf;->A0B(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Ge;)Z

    move-result v2

    .line 96286
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Ge;->A00:Lcom/facebook/ads/redexgen/X/Gh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gh;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    goto :goto_0

    .line 96287
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Gh;->A06:I

    const/4 v0, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A02:I

    .line 96289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A08:Lcom/facebook/ads/redexgen/X/H1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/H1;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lB;->A07:Lcom/facebook/ads/redexgen/X/Gh;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lB;->A0D:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A05:Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 96290
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A08([BLcom/facebook/ads/androidx/media3/common/Metadata;)Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/H1;->A6W(Lcom/facebook/ads/redexgen/X/or;)V

    .line 96291
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A03:I

    .line 96292
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/lN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96293
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Gf;->A09(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 96294
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A03:I

    .line 96295
    return-void
.end method

.method public static synthetic A09()[Lcom/facebook/ads/redexgen/X/GX;
    .locals 3

    .line 96296
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/GX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lB;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/lB;-><init>()V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v2
.end method


# virtual methods
.method public final AA4(Lcom/facebook/ads/redexgen/X/GY;)V
    .locals 2

    .line 96297
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lB;->A06:Lcom/facebook/ads/redexgen/X/GY;

    .line 96298
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/GY;->AJh(II)Lcom/facebook/ads/redexgen/X/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A08:Lcom/facebook/ads/redexgen/X/H1;

    .line 96299
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/GY;->A6G()V

    .line 96300
    return-void
.end method

.method public final AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96301
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lB;->A03:I

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    .line 96302
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 96303
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/lB;->A00(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v0

    return v0

    .line 96304
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lB;->A04(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 96305
    return v0

    .line 96306
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lB;->A07(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 96307
    return v0

    .line 96308
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lB;->A08(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 96309
    return v0

    .line 96310
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lB;->A05(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 96311
    return v0

    .line 96312
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lB;->A06(Lcom/facebook/ads/redexgen/X/lN;)V

    .line 96313
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final AGr()V
    .locals 0

    .line 96314
    return-void
.end method

.method public final AIM(JJ)V
    .locals 7

    .line 96315
    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 96316
    iput v5, p0, Lcom/facebook/ads/redexgen/X/lB;->A03:I

    .line 96317
    :cond_0
    :goto_0
    cmp-long v0, p3, v2

    if-nez v0, :cond_1

    :goto_1
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lB;->A04:J

    .line 96318
    iput v5, p0, Lcom/facebook/ads/redexgen/X/lB;->A00:I

    .line 96319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A0A:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0d(I)V

    .line 96320
    return-void

    .line 96321
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1

    .line 96322
    :cond_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/lB;->A09:Lcom/facebook/ads/redexgen/X/lD;

    sget-object v1, Lcom/facebook/ads/redexgen/X/lB;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/lB;->A0E:[Ljava/lang/String;

    const-string v1, "FHi"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "3pT"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    if-eqz v6, :cond_0

    .line 96323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lB;->A09:Lcom/facebook/ads/redexgen/X/lD;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/GQ;->A08(J)V

    goto :goto_0
.end method

.method public final AJL(Lcom/facebook/ads/redexgen/X/lN;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96324
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Gf;->A01(Lcom/facebook/ads/redexgen/X/lN;Z)Lcom/facebook/ads/androidx/media3/common/Metadata;

    .line 96325
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Gf;->A0A(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    return v0
.end method
