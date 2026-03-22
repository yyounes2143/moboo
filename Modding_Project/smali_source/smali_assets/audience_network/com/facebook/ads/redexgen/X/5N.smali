.class public final Lcom/facebook/ads/redexgen/X/5N;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5M;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:[B

.field public A05:[B

.field public A06:[I

.field public A07:[I

.field public final A08:Landroid/media/MediaCodec$CryptoInfo;

.field public final A09:Lcom/facebook/ads/redexgen/X/5M;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15301
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A08:Landroid/media/MediaCodec$CryptoInfo;

    .line 15302
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x18

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A08:Landroid/media/MediaCodec$CryptoInfo;

    new-instance v0, Lcom/facebook/ads/redexgen/X/5M;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/5M;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/facebook/ads/redexgen/X/5L;)V

    move-object v2, v0

    :cond_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/5N;->A09:Lcom/facebook/ads/redexgen/X/5M;

    .line 15303
    return-void
.end method


# virtual methods
.method public final A00()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    .line 15304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A08:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public final A01(I)V
    .locals 3

    .line 15305
    if-nez p1, :cond_0

    .line 15306
    return-void

    .line 15307
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A06:[I

    if-nez v0, :cond_1

    .line 15308
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A06:[I

    .line 15309
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5N;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A06:[I

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 15310
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5N;->A06:[I

    const/4 v1, 0x0

    aget v0, v2, v1

    add-int/2addr v0, p1

    aput v0, v2, v1

    .line 15311
    return-void
.end method

.method public final A02(I[I[I[B[BIII)V
    .locals 2

    .line 15312
    iput p1, p0, Lcom/facebook/ads/redexgen/X/5N;->A03:I

    .line 15313
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5N;->A06:[I

    .line 15314
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5N;->A07:[I

    .line 15315
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/5N;->A05:[B

    .line 15316
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/5N;->A04:[B

    .line 15317
    iput p6, p0, Lcom/facebook/ads/redexgen/X/5N;->A02:I

    .line 15318
    iput p7, p0, Lcom/facebook/ads/redexgen/X/5N;->A01:I

    .line 15319
    iput p8, p0, Lcom/facebook/ads/redexgen/X/5N;->A00:I

    .line 15320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 15321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 15322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 15323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p4, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 15324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p5, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 15325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A08:Landroid/media/MediaCodec$CryptoInfo;

    iput p6, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 15326
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    .line 15327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5N;->A09:Lcom/facebook/ads/redexgen/X/5M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5M;

    invoke-static {v0, p7, p8}, Lcom/facebook/ads/redexgen/X/5M;->A01(Lcom/facebook/ads/redexgen/X/5M;II)V

    .line 15328
    :cond_0
    return-void
.end method
