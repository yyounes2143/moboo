.class public abstract Lcom/facebook/ads/redexgen/X/Nl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/Nk;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final A01:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1415
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nl;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Nk;
    .locals 1

    .line 54508
    sget-object v0, Lcom/facebook/ads/redexgen/X/Nl;->A00:Lcom/facebook/ads/redexgen/X/Nk;

    if-nez v0, :cond_0

    .line 54509
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nk;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nk;-><init>(Lcom/facebook/ads/redexgen/X/cu;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nl;->A00:Lcom/facebook/ads/redexgen/X/Nk;

    .line 54510
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Nl;->A00:Lcom/facebook/ads/redexgen/X/Nk;

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 1

    .line 54511
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/UA;->A0F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54512
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nl;->A03(Lcom/facebook/ads/redexgen/X/cu;)V

    .line 54513
    :cond_0
    return-void
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 1

    .line 54514
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/UA;->A0E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54515
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nl;->A03(Lcom/facebook/ads/redexgen/X/cu;)V

    .line 54516
    :cond_0
    return-void
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 3

    .line 54517
    sget-object v2, Lcom/facebook/ads/redexgen/X/Nl;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54518
    sget-object v1, Lcom/facebook/ads/redexgen/X/XJ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/go;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/go;-><init>(Lcom/facebook/ads/redexgen/X/cu;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XJ;->execute(Ljava/lang/Runnable;)V

    .line 54519
    :cond_0
    return-void
.end method
