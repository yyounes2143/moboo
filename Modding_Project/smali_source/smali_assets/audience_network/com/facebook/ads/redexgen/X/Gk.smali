.class public final Lcom/facebook/ads/redexgen/X/Gk;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4J;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38194
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/4J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4J;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gk;->A00:Lcom/facebook/ads/redexgen/X/4J;

    .line 38195
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38196
    const/4 v5, 0x0

    .line 38197
    .local v0, "peekedId3Bytes":I
    const/4 v7, 0x0

    .line 38198
    .local v1, "metadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gk;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    const/16 v6, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v6}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gk;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 38200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gk;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0K()I

    move-result v1

    const v0, 0x494433

    if-eq v1, v0, :cond_0

    .line 38201
    .end local v2
    :catch_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/lN;->AI1()V

    .line 38202
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    .line 38203
    return-object v7

    .line 38204
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gk;->A00:Lcom/facebook/ads/redexgen/X/4J;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 38205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gk;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0H()I

    move-result v3

    .line 38206
    .local v2, "framesLength":I
    add-int/lit8 v2, v3, 0xa

    .line 38207
    .local v5, "tagLength":I
    if-nez v7, :cond_1

    .line 38208
    new-array v1, v2, [B

    .line 38209
    .local v6, "id3Data":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gk;->A00:Lcom/facebook/ads/redexgen/X/4J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v0

    invoke-static {v0, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38210
    invoke-interface {p1, v1, v6, v3}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 38211
    new-instance v0, Lcom/facebook/ads/redexgen/X/8i;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/8i;-><init>(Lcom/facebook/ads/redexgen/X/Hc;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/8i;->A0S([BI)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v7

    .line 38212
    .end local v6    # "id3Data":[B
    :goto_1
    add-int/2addr v5, v2

    .line 38213
    .end local v2    # "framesLength":I
    .end local v5    # "tagLength":I
    goto :goto_0

    .line 38214
    :cond_1
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/lN;->A3z(I)V

    goto :goto_1
.end method
