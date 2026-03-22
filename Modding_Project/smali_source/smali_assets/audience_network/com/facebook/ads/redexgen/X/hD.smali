.class public abstract Lcom/facebook/ads/redexgen/X/hD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ns;


# static fields
.field public static A06:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Na;

.field public final A01:Lcom/facebook/ads/redexgen/X/Nh;

.field public final A02:Lcom/facebook/ads/redexgen/X/dL;

.field public final A03:Landroid/os/Handler;

.field public final A04:Ljava/lang/String;

.field public final A05:Lcom/facebook/ads/redexgen/X/Nm;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/hD;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nn;)V
    .locals 2

    .line 84411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84412
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 84413
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hD;->A04:Ljava/lang/String;

    .line 84414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 84415
    new-instance v0, Lcom/facebook/ads/redexgen/X/hG;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/hG;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A00:Lcom/facebook/ads/redexgen/X/Na;

    .line 84416
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nh;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/Nh;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    .line 84417
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A03:Landroid/os/Handler;

    .line 84418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hD;->A00:Lcom/facebook/ads/redexgen/X/Na;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-interface {p3, v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Nn;->A5K(Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/hD;Lcom/facebook/ads/redexgen/X/Nh;)Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A05:Lcom/facebook/ads/redexgen/X/Nm;

    .line 84419
    return-void
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/hD;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x46

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

    const/16 v0, 0x45

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hD;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x68t
        -0x55t
        -0x5ct
        -0x66t
        -0x5et
        -0x65t
        -0x4bt
        -0x65t
        -0x52t
        -0x56t
        -0x58t
        -0x69t
        -0x57t
        -0x4bt
        -0x5ft
        -0x65t
        -0x51t
        -0x19t
        -0x14t
        -0xet
        -0x3t
        -0x1dt
        -0x10t
        -0x10t
        -0x13t
        -0x10t
        -0x3t
        -0x1ft
        -0x13t
        -0x1et
        -0x1dt
        -0x3t
        -0x17t
        -0x1dt
        -0x9t
        -0x6t
        -0x5t
        -0x7t
        0x6t
        -0x18t
        -0x15t
        0x6t
        -0x10t
        -0x15t
        0x6t
        -0xet
        -0x14t
        0x0t
        0x15t
        0x16t
        0x14t
        0x21t
        0x7t
        0x14t
        0x14t
        0x11t
        0x14t
        0x21t
        0xft
        0x7t
        0x15t
        0x15t
        0x3t
        0x9t
        0x7t
        0x21t
        0xdt
        0x7t
        0x1bt
    .end array-data
.end method


# virtual methods
.method public final A03()Lcom/facebook/ads/redexgen/X/Na;
    .locals 1

    .line 84420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A00:Lcom/facebook/ads/redexgen/X/Na;

    return-object v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 84421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A04:Ljava/lang/String;

    return-object v0
.end method

.method public final A05()V
    .locals 2

    .line 84422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Nh;->A01:Z

    if-eqz v0, :cond_0

    .line 84423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHG()V

    .line 84424
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hD;->A06()V

    .line 84425
    :goto_0
    return-void

    .line 84426
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AH8()V

    .line 84427
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Nh;->A02:Z

    .line 84428
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    sget-object v0, Lcom/facebook/ads/redexgen/X/UA;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->A0E(Z)V

    goto :goto_0
.end method

.method public final A06()V
    .locals 4

    .line 84429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHM()V

    .line 84430
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A05:Lcom/facebook/ads/redexgen/X/Nm;

    .line 84431
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A8H()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hD;->A05:Lcom/facebook/ads/redexgen/X/Nm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Nm;->A5J(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 84432
    invoke-virtual {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Nh;->A0F(ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84433
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hD;->A09()V

    .line 84434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHE()V

    .line 84435
    :cond_0
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 84436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84437
    return-void

    .line 84438
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/hE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/hE;-><init>(Lcom/facebook/ads/redexgen/X/hD;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A00(Ljava/lang/Runnable;)V

    .line 84439
    return-void
.end method

.method public abstract A08()V
.end method

.method public abstract A09()V
.end method

.method public final A0A(I)V
    .locals 2

    .line 84440
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/Nh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A02:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Nh;->A0D(Lcom/facebook/ads/redexgen/X/dL;I)V

    .line 84441
    return-void
.end method

.method public final A0B(ILcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V
    .locals 4

    .line 84442
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 84443
    .local v0, "extraData":Landroid/os/Bundle;
    const/16 v2, 0x30

    const/16 v1, 0x15

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hD;->A01(III)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 84444
    invoke-virtual {v3, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84445
    :goto_0
    const/16 v2, 0x11

    const/16 v1, 0x12

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hD;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84446
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A04:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/hD;->AED(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 84447
    return-void

    .line 84448
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final A0C(Landroid/os/Message;)V
    .locals 1

    .line 84449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A05:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Nm;->A9b(Landroid/os/Message;)V

    .line 84450
    return-void
.end method

.method public abstract A0D(Z)V
.end method

.method public final AED(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 84451
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 84452
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const/16 v2, 0x23

    const/16 v1, 0xd

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hD;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84453
    if-eqz p3, :cond_0

    .line 84454
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hD;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 84455
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/hF;

    invoke-direct {v1, p0, v4}, Lcom/facebook/ads/redexgen/X/hF;-><init>(Lcom/facebook/ads/redexgen/X/hD;Landroid/os/Message;)V

    .line 84456
    .local v1, "callbackApiRunnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A03:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84457
    return-void
.end method
