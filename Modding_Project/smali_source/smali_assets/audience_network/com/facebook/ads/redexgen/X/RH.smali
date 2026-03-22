.class public final Lcom/facebook/ads/redexgen/X/RH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A01:Lcom/facebook/ads/VideoAutoplayBehavior;

.field public A02:Lcom/facebook/ads/redexgen/X/R8;

.field public A03:Lcom/facebook/ads/redexgen/X/dL;

.field public A04:Lcom/facebook/ads/redexgen/X/Um;

.field public A05:Lcom/facebook/ads/redexgen/X/64;

.field public A06:Z

.field public A07:Z

.field public A08:Lcom/facebook/ads/NativeAd;

.field public final A09:Lcom/facebook/ads/redexgen/X/DX;

.field public final A0A:Lcom/facebook/ads/redexgen/X/DV;

.field public final A0B:Lcom/facebook/ads/redexgen/X/DR;

.field public final A0C:Lcom/facebook/ads/redexgen/X/DP;

.field public final A0D:Lcom/facebook/ads/redexgen/X/DN;

.field public final A0E:Lcom/facebook/ads/redexgen/X/DK;

.field public final A0F:Lcom/facebook/ads/redexgen/X/DE;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1549
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4Iqv8cTE9pbJV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CYHnjvYzZ1Zp8VPlfffkEyqwlctrpQBL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X8G7CA2UCcBTYjTzfkqICRpH9C9x48uG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IuynGJFHahmt0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YKtJTe5IUh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gPGIa6LKGgSGxdMiTt4aCF2OLs57juUg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "T83"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DMaEshMk8cfihQw150z6d7U8VPkriS4i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RH;->A02()V

    const-class v0, Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RH;->A0I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62395
    new-instance v0, Lcom/facebook/ads/redexgen/X/6e;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6e;-><init>(Lcom/facebook/ads/redexgen/X/RH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0D:Lcom/facebook/ads/redexgen/X/DN;

    .line 62396
    new-instance v0, Lcom/facebook/ads/redexgen/X/6d;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6d;-><init>(Lcom/facebook/ads/redexgen/X/RH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/DP;

    .line 62397
    new-instance v0, Lcom/facebook/ads/redexgen/X/6b;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6b;-><init>(Lcom/facebook/ads/redexgen/X/RH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0B:Lcom/facebook/ads/redexgen/X/DR;

    .line 62398
    new-instance v0, Lcom/facebook/ads/redexgen/X/6a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6a;-><init>(Lcom/facebook/ads/redexgen/X/RH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0E:Lcom/facebook/ads/redexgen/X/DK;

    .line 62399
    new-instance v0, Lcom/facebook/ads/redexgen/X/6V;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6V;-><init>(Lcom/facebook/ads/redexgen/X/RH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Lcom/facebook/ads/redexgen/X/DX;

    .line 62400
    new-instance v0, Lcom/facebook/ads/redexgen/X/6U;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6U;-><init>(Lcom/facebook/ads/redexgen/X/RH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0F:Lcom/facebook/ads/redexgen/X/DE;

    .line 62401
    new-instance v0, Lcom/facebook/ads/redexgen/X/6T;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6T;-><init>(Lcom/facebook/ads/redexgen/X/RH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0A:Lcom/facebook/ads/redexgen/X/DV;

    .line 62402
    new-instance v0, Lcom/facebook/ads/redexgen/X/R8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/R8;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A02:Lcom/facebook/ads/redexgen/X/R8;

    .line 62403
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/RH;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 62404
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/RH;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3

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

    const/16 v0, 0xcf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RH;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x38t
        0x20t
        0x37t
        0x3at
        0x3ft
        0x32t
        0x76t
        0x0t
        0x3ft
        0x33t
        0x21t
        0x76t
        0x35t
        0x39t
        0x38t
        0x25t
        0x22t
        0x24t
        0x23t
        0x35t
        0x22t
        0x39t
        0x24t
        0x76t
        0x26t
        0x37t
        0x24t
        0x37t
        0x3bt
        0x25t
        0x76t
        0x22t
        0x2ft
        0x26t
        0x33t
        0x78t
        0x7et
        0x48t
        0x48t
        0x46t
        0x44t
        0x43t
        0x4at
        0xdt
        0x40t
        0x58t
        0x5et
        0x59t
        0xdt
        0x4ft
        0x48t
        0xdt
        0x5dt
        0x5ft
        0x48t
        0x4et
        0x48t
        0x49t
        0x48t
        0x49t
        0xdt
        0x4ft
        0x54t
        0xdt
        0x4ct
        0xdt
        0x4et
        0x4ct
        0x41t
        0x41t
        0xdt
        0x59t
        0x42t
        0xdt
        0x48t
        0x43t
        0x4at
        0x4ct
        0x4at
        0x48t
        0x7et
        0x48t
        0x48t
        0x46t
        0x1t
        0xdt
        0x4ct
        0x43t
        0x49t
        0xdt
        0x4bt
        0x42t
        0x41t
        0x41t
        0x42t
        0x5at
        0x48t
        0x49t
        0xdt
        0x4ft
        0x54t
        0xdt
        0x4ct
        0xdt
        0x4et
        0x4ct
        0x41t
        0x41t
        0xdt
        0x59t
        0x42t
        0xdt
        0x49t
        0x44t
        0x5et
        0x48t
        0x43t
        0x4at
        0x4ct
        0x4at
        0x48t
        0x7et
        0x48t
        0x48t
        0x46t
        0x3t
        0x26t
        0x2bt
        0x31t
        0x27t
        0x2ct
        0x25t
        0x23t
        0x25t
        0x27t
        0x11t
        0x27t
        0x27t
        0x29t
        0x62t
        0x21t
        0x23t
        0x2et
        0x2et
        0x27t
        0x26t
        0x62t
        0x35t
        0x2bt
        0x36t
        0x2at
        0x2dt
        0x37t
        0x36t
        0x62t
        0x27t
        0x2ct
        0x25t
        0x23t
        0x25t
        0x27t
        0x11t
        0x27t
        0x27t
        0x29t
        0x6ct
        0x6ct
        0x67t
        0x6et
        0x68t
        0x6et
        0x6ct
        0x5at
        0x6ct
        0x6ct
        0x62t
        0x29t
        0x6at
        0x68t
        0x65t
        0x65t
        0x6ct
        0x6dt
        0x29t
        0x7et
        0x60t
        0x7dt
        0x61t
        0x66t
        0x7ct
        0x7dt
        0x29t
        0x6dt
        0x60t
        0x7at
        0x6ct
        0x67t
        0x6et
        0x68t
        0x6et
        0x6ct
        0x5at
        0x6ct
        0x6ct
        0x62t
        0x27t
    .end array-data
.end method


# virtual methods
.method public final A03()V
    .locals 4

    .line 62405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 62406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/64;->setClientToken(Ljava/lang/String;)V

    .line 62407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/64;->setVideoMPD(Ljava/lang/String;)V

    .line 62408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/64;->setVideoURI(Landroid/net/Uri;)V

    .line 62409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/64;->setVideoCTA(Ljava/lang/String;)V

    .line 62410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/64;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 62411
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    .line 62412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 62413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A08:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    .line 62414
    invoke-virtual {v0, v2, v2}, Lcom/facebook/ads/redexgen/X/Qc;->A1f(ZZ)V

    .line 62415
    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A08:Lcom/facebook/ads/NativeAd;

    .line 62416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:Lcom/facebook/ads/redexgen/X/Um;

    if-eqz v0, :cond_2

    .line 62417
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:Lcom/facebook/ads/redexgen/X/Um;

    sget-object v1, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    const-string v1, "qaG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Um;->AJn()V

    .line 62418
    :cond_2
    return-void
.end method

.method public final A04(Lcom/facebook/ads/NativeAd;)V
    .locals 3

    .line 62419
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RH;->A08:Lcom/facebook/ads/NativeAd;

    .line 62420
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    .line 62421
    .local v0, "adObjectContext":Lcom/facebook/ads/redexgen/X/dL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/dL;->A0L(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 62422
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/RK;

    .line 62423
    .local v1, "nativeAdApi":Lcom/facebook/ads/redexgen/X/RK;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    .line 62424
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1C()Ljava/lang/String;

    move-result-object v0

    .line 62425
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/64;->setClientToken(Ljava/lang/String;)V

    .line 62426
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RK;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/64;->setVideoMPD(Ljava/lang/String;)V

    .line 62427
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RK;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->setVideoURI(Ljava/lang/String;)V

    .line 62428
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0z()Lcom/facebook/ads/redexgen/X/iN;

    move-result-object v0

    .line 62429
    .local v2, "adapter":Lcom/facebook/ads/redexgen/X/iN;
    if-eqz v0, :cond_0

    .line 62430
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iN;->A0B()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->setVideoProgressReportIntervalMs(I)V

    .line 62431
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/64;->setVideoCTA(Ljava/lang/String;)V

    .line 62432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/64;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 62433
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/RK;->getVideoAutoplayBehavior()Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    .line 62434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:Lcom/facebook/ads/redexgen/X/Um;

    if-eqz v0, :cond_1

    .line 62435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Um;->AIp(Lcom/facebook/ads/NativeAd;)V

    .line 62436
    :cond_1
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/US;)V
    .locals 1

    .line 62437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/64;->setAdEventManager(Lcom/facebook/ads/redexgen/X/US;)V

    .line 62438
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Um;)V
    .locals 0

    .line 62439
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:Lcom/facebook/ads/redexgen/X/Um;

    .line 62440
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Y1;)V
    .locals 1

    .line 62441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/64;->setListener(Lcom/facebook/ads/redexgen/X/Y1;)V

    .line 62442
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 62443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0Z()V

    .line 62444
    return-void
.end method

.method public final disengageSeek(Lcom/facebook/ads/VideoStartReason;)V
    .locals 5

    .line 62445
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A06:Z

    if-nez v0, :cond_2

    .line 62446
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62447
    sget-object v4, Lcom/facebook/ads/redexgen/X/RH;->A0I:Ljava/lang/String;

    const/16 v2, 0x7f

    const/16 v1, 0x28

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    const-string v1, "GDpgiWeynUT3r"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Fcrjr5dO1W"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62448
    :cond_1
    return-void

    .line 62449
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A06:Z

    .line 62450
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A07:Z

    if-eqz v0, :cond_3

    .line 62451
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    .line 62452
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XL;->A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/db;

    move-result-object v1

    .line 62453
    const/4 v0, 0x3

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 62454
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekDisengaged()V

    .line 62455
    return-void
.end method

.method public final engageSeek()V
    .locals 4

    .line 62456
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A06:Z

    if-eqz v0, :cond_1

    .line 62457
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62458
    sget-object v3, Lcom/facebook/ads/redexgen/X/RH;->A0I:Ljava/lang/String;

    const/16 v2, 0xa7

    const/16 v1, 0x28

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62459
    :cond_0
    return-void

    .line 62460
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/RH;->A06:Z

    .line 62461
    sget-object v1, Lcom/facebook/ads/redexgen/X/eU;->A0A:Lcom/facebook/ads/redexgen/X/eU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eU;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A07:Z

    .line 62462
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/E1;->A0l(ZI)V

    .line 62463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekEngaged()V

    .line 62464
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 1

    .line 62465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A02:Lcom/facebook/ads/redexgen/X/R8;

    return-object v0
.end method

.method public final getCurrentTimeMs()I
    .locals 1

    .line 62466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getCurrentPositionInMillis()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 62467
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getDuration()I

    move-result v0

    return v0
.end method

.method public final getVideoView()Landroid/view/View;
    .locals 1

    .line 62468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getVideoView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getVolume()F
    .locals 1

    .line 62469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getVolume()F

    move-result v0

    return v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 4

    .line 62470
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 62471
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 62472
    .local v0, "context":Landroid/content/Context;
    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/dL;

    if-eqz v0, :cond_0

    .line 62473
    check-cast v3, Lcom/facebook/ads/redexgen/X/dL;

    .line 62474
    .local v1, "adContextWrapper":Lcom/facebook/ads/redexgen/X/dL;
    .restart local v1    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/dL;
    :goto_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/RH;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 62475
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62476
    const/4 v2, 0x0

    const/16 v1, 0x25

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62477
    .end local v1    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/dL;
    :cond_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/RB;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v3

    goto :goto_0

    .line 62478
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 62479
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/64;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/64;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    .line 62480
    goto :goto_1

    .line 62481
    :pswitch_1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 62482
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/64;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/64;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    .line 62483
    goto :goto_1

    .line 62484
    :pswitch_2
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/64;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/64;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    .line 62485
    goto :goto_1

    .line 62486
    :pswitch_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/64;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/64;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    .line 62487
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {p2}, Lcom/facebook/ads/MediaViewVideoRenderer;->shouldAllowBackgroundPlayback()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/64;->setEnableBackgroundVideo(Z)V

    .line 62488
    const/4 v3, -0x1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 62489
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/E1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62490
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A02:Lcom/facebook/ads/redexgen/X/R8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/R8;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 62491
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wq;->A0B:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Wq;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 62492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    .line 62493
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x7

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0D:Lcom/facebook/ads/redexgen/X/DN;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0B:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0E:Lcom/facebook/ads/redexgen/X/DK;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0F:Lcom/facebook/ads/redexgen/X/DE;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0A:Lcom/facebook/ads/redexgen/X/DV;

    aput-object v0, v2, v1

    .line 62494
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 62495
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final pause(Z)V
    .locals 2

    .line 62496
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    const/4 v0, 0x2

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0l(ZI)V

    .line 62497
    return-void
.end method

.method public final play(Lcom/facebook/ads/VideoStartReason;)V
    .locals 3

    .line 62498
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    .line 62499
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XL;->A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/db;

    move-result-object v1

    .line 62500
    const/4 v0, 0x2

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 62501
    return-void
.end method

.method public final seekTo(I)V
    .locals 4

    .line 62502
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A06:Z

    if-nez v0, :cond_2

    .line 62503
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0H:[Ljava/lang/String;

    const-string v1, "0wh1LQIbECU2tB2xLmMlqLa216eizCy3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 62504
    sget-object v3, Lcom/facebook/ads/redexgen/X/RH;->A0I:Ljava/lang/String;

    const/16 v2, 0x25

    const/16 v1, 0x5a

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62505
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62506
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E1;->A0d(I)V

    .line 62507
    return-void
.end method

.method public final setVolume(F)V
    .locals 1

    .line 62508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E1;->setVolume(F)V

    .line 62509
    return-void
.end method

.method public final shouldAutoplay()Z
    .locals 3

    .line 62510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A06:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_1

    .line 62511
    :cond_0
    return v2

    .line 62512
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->ON:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method
