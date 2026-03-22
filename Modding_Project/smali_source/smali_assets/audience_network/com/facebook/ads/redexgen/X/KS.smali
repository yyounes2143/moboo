.class public final Lcom/facebook/ads/redexgen/X/KS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    value = "Making NalUnitTargetBuffer public to be accessible by the Oculus Readers"
.end annotation


# instance fields
.field public A00:I

.field public A01:[B

.field public A02:Z

.field public A03:Z

.field public final A04:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 49097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49098
    iput p1, p0, Lcom/facebook/ads/redexgen/X/KS;->A04:I

    .line 49099
    add-int/lit8 v0, p2, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    .line 49100
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    const/4 v1, 0x2

    const/4 v0, 0x1

    aput-byte v0, v2, v1

    .line 49101
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 49102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A03:Z

    .line 49103
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A02:Z

    .line 49104
    return-void
.end method

.method public final A01(I)V
    .locals 3

    .line 49105
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A03:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 49106
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A04:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/KS;->A03:Z

    .line 49107
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A03:Z

    if-eqz v0, :cond_0

    .line 49108
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    .line 49109
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KS;->A02:Z

    .line 49110
    :cond_0
    return-void

    .line 49111
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final A02([BII)V
    .locals 2

    .line 49112
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A03:Z

    if-nez v0, :cond_0

    .line 49113
    return-void

    .line 49114
    :cond_0
    sub-int/2addr p3, p2

    .line 49115
    .local v0, "readLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    add-int/2addr v0, p3

    if-ge v1, v0, :cond_1

    .line 49116
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    add-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    .line 49117
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KS;->A01:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49118
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    .line 49119
    return-void
.end method

.method public final A03()Z
    .locals 1

    .line 49120
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A02:Z

    return v0
.end method

.method public final A04(I)Z
    .locals 2

    .line 49121
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A03:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49122
    return v1

    .line 49123
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A00:I

    .line 49124
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KS;->A03:Z

    .line 49125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KS;->A02:Z

    .line 49126
    return v0
.end method
