.class public final Lcom/facebook/ads/redexgen/X/E3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/92;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpatializerWrapperV32"
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

.field public A01:Landroid/os/Handler;

.field public final A02:Landroid/media/Spatializer;

.field public final A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 664
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XChyMIA3IiBLGVc4JUcuiIFhw0olIHd5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "L1RbhyPLCDSvJWoCYJVALOKwr45Jj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4i4NfCjlBic1LnGuByjRmO6XDD8s"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fp6arCeubKdlGGxkl3wydgWAbBMIIbeF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pgUH6rfDE1GExBA3fVJRXk8gj61UjiI1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "O5JAn4ITNRkPEp9cAHFgOejRoj0rukGX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JccK1QqImqh6kMtQx4F4QpK5m5M4"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "faWXzGQd6eAsmBqhrITpsBscnTY0oqi8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/E3;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/E3;->A02()V

    return-void
.end method

.method public constructor <init>(Landroid/media/Spatializer;)V
    .locals 1

    .line 34488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34489
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/E3;->A02:Landroid/media/Spatializer;

    .line 34490
    invoke-virtual {p1}, Landroid/media/Spatializer;->getImmersiveAudioLevel()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E3;->A03:Z

    .line 34491
    return-void

    .line 34492
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/E3;
    .locals 3

    .line 34493
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 34494
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/E3;-><init>(Landroid/media/Spatializer;)V

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/E3;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x25

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/E3;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x65t
        0x71t
        0x60t
        0x6dt
        0x6bt
        0x58t
        0x4ct
        0x5dt
        0x50t
        0x56t
        0x16t
        0x5ct
        0x58t
        0x5at
        0xat
        0x14t
        0x53t
        0x56t
        0x5at
    .end array-data
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/92;Landroid/os/Looper;)V
    .locals 3

    .line 34495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E3;->A00:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E3;->A01:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 34496
    :cond_0
    return-void

    .line 34497
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/E2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/E2;-><init>(Lcom/facebook/ads/redexgen/X/E3;Lcom/facebook/ads/redexgen/X/92;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E3;->A00:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 34498
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/E3;->A01:Landroid/os/Handler;

    .line 34499
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/E3;->A02:Landroid/media/Spatializer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E3;->A01:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/facebook/ads/redexgen/X/8l;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/8l;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E3;->A00:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-virtual {v2, v1, v0}, Landroid/media/Spatializer;->addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    .line 34500
    return-void
.end method

.method public final A04()Z
    .locals 1

    .line 34501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E3;->A02:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public final A05()Z
    .locals 1

    .line 34502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/E3;->A02:Landroid/media/Spatializer;

    invoke-virtual {v0}, Landroid/media/Spatializer;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final A06()Z
    .locals 1

    .line 34503
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/E3;->A03:Z

    return v0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/oy;Lcom/facebook/ads/redexgen/X/or;)Z
    .locals 6

    .line 34504
    const/4 v2, 0x5

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E3;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/or;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p2, Lcom/facebook/ads/redexgen/X/or;->A06:I

    const/16 v0, 0x10

    if-ne v1, v0, :cond_1

    .line 34505
    const/16 v2, 0xc

    .line 34506
    .local v0, "linearChannelCount":I
    :goto_0
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 34507
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 34508
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/4a;->A01(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 34509
    .local v1, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p2, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 34510
    iget v0, p2, Lcom/facebook/ads/redexgen/X/or;->A0G:I

    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 34511
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/E3;->A02:Landroid/media/Spatializer;

    .line 34512
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/oy;->A01()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/1N;->A00:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/E3;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34513
    :cond_1
    iget v2, p2, Lcom/facebook/ads/redexgen/X/or;->A06:I

    goto :goto_0

    .line 34514
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/E3;->A05:[Ljava/lang/String;

    const-string v1, "fxex8oBXLxgy8X4V5eG1x3lhnMHn34Gl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v5, v4, v3}, Landroid/media/Spatializer;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v0

    return v0
.end method
