.class public final Lcom/facebook/ads/redexgen/X/TD;
.super Lcom/facebook/ads/redexgen/X/R8;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/DefaultMediaViewVideoRendererApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Uk;,
        Lcom/facebook/ads/redexgen/X/Tc;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A01:Lcom/facebook/ads/redexgen/X/dL;

.field public A02:Lcom/facebook/ads/redexgen/X/Uk;

.field public A03:Lcom/facebook/ads/redexgen/X/Uu;

.field public A04:Lcom/facebook/ads/redexgen/X/64;

.field public A05:Lcom/facebook/ads/redexgen/X/2p;

.field public A06:Lcom/facebook/ads/redexgen/X/2Z;

.field public A07:Lcom/facebook/ads/redexgen/X/eW;

.field public A08:Lcom/facebook/ads/redexgen/X/eX;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/dX;

.field public final A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0E:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1815
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gicLODNc4Ss02ASp0SH6jYH1jReGCf7D"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ud1g41PfTpgHVgN2zMRJY9l5AGp7t"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qgXpVhlOa1wHLevNk8n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YvRZAMwcrsdunGxdPmTtNWzK4vSRpQc4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eiRiwAROr6ki2Hau4nBgoUP0cJGv3yGG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AknM7mKZVSENDtzyALrGWQlwPvra0WAt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RqySj6gASebQYnIOdgQzgXbIWVvFlmni"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rcToBCOkHOudlFUS35924ELLk4KD1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TD;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TD;->A0E()V

    const-class v0, Lcom/facebook/ads/redexgen/X/TD;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TD;->A0H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65399
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R8;-><init>()V

    .line 65400
    new-instance v0, Lcom/facebook/ads/redexgen/X/UW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UW;-><init>(Lcom/facebook/ads/redexgen/X/TD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A0C:Lcom/facebook/ads/redexgen/X/dX;

    .line 65401
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65402
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65403
    sget-object v0, Lcom/facebook/ads/redexgen/X/Uu;->A03:Lcom/facebook/ads/redexgen/X/Uu;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A03:Lcom/facebook/ads/redexgen/X/Uu;

    return-void
.end method

.method private A00(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/UD;
    .locals 1

    .line 65404
    new-instance v0, Lcom/facebook/ads/redexgen/X/UD;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/UD;-><init>(Lcom/facebook/ads/redexgen/X/TD;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V

    return-object v0
.end method

.method private A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/U2;
    .locals 1

    .line 65405
    new-instance v0, Lcom/facebook/ads/redexgen/X/U2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/U2;-><init>(Lcom/facebook/ads/redexgen/X/TD;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V

    .line 65406
    .local v0, "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/Um;
    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/Tq;
    .locals 1

    .line 65407
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Tq;-><init>(Lcom/facebook/ads/redexgen/X/TD;)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/TD;)Lcom/facebook/ads/redexgen/X/Uk;
    .locals 0

    .line 65408
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TD;->A02:Lcom/facebook/ads/redexgen/X/Uk;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/TD;)Lcom/facebook/ads/redexgen/X/64;
    .locals 0

    .line 65409
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    return-object p0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/eX;
    .locals 7

    .line 65410
    new-instance v1, Lcom/facebook/ads/redexgen/X/eX;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A07:Lcom/facebook/ads/redexgen/X/eW;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/dL;

    const/16 v3, 0x32

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/eX;-><init>(Landroid/view/View;IZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/dL;)V

    return-object v1
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TD;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/TD;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 65411
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TD;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/TD;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 65412
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TD;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A09()V
    .locals 4

    .line 65413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    if-eqz v0, :cond_1

    .line 65414
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    sget-object v1, Lcom/facebook/ads/redexgen/X/TD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/TD;->A0G:[Ljava/lang/String;

    const-string v1, "Ntv0Vby76dSesAjQjgB6ptCIElpzOEzL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/E1;->getVideoView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/dY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A0C:Lcom/facebook/ads/redexgen/X/dX;

    .line 65415
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dY;->setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/dX;)V

    .line 65416
    :cond_1
    return-void
.end method

.method private A0A()V
    .locals 2

    .line 65417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    if-eqz v0, :cond_0

    .line 65418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    .line 65419
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getVideoView()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Uj;-><init>(Lcom/facebook/ads/redexgen/X/TD;)V

    .line 65420
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65421
    :cond_0
    return-void
.end method

.method private A0B()V
    .locals 2

    .line 65422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    if-eqz v0, :cond_0

    .line 65423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getVideoView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/dY;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dY;->setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/dX;)V

    .line 65424
    :cond_0
    return-void
.end method

.method private A0C()V
    .locals 4

    .line 65425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A09:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A08:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 65427
    :goto_0
    return-void

    .line 65428
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/TD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/TD;->A0G:[Ljava/lang/String;

    const-string v1, "z79LrkWpr7afRwAllWq14kp6jWBswbkV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A05:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v3, v0, :cond_2

    .line 65429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A0B:Z

    .line 65430
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A08:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0V()V

    goto :goto_0
.end method

.method private A0D()V
    .locals 1

    .line 65431
    sget-object v0, Lcom/facebook/ads/redexgen/X/Uu;->A03:Lcom/facebook/ads/redexgen/X/Uu;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A03:Lcom/facebook/ads/redexgen/X/Uu;

    .line 65432
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;->A0B()V

    .line 65433
    return-void
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TD;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x2ct
        0x34t
        0x23t
        0x2et
        0x2bt
        0x26t
        0x62t
        0x30t
        0x27t
        0x2ct
        0x26t
        0x27t
        0x30t
        0x27t
        0x30t
        0x62t
        0x21t
        0x2at
        0x2bt
        0x2et
        0x26t
        0x62t
        0x21t
        0x2dt
        0x2ct
        0x24t
        0x2bt
        0x25t
        0x6ct
        0x7t
        0x2ft
        0x2et
        0x23t
        0x2bt
        0x1ct
        0x23t
        0x2ft
        0x3dt
        0x1ct
        0x23t
        0x2et
        0x2ft
        0x25t
        0x6at
        0x23t
        0x39t
        0x6at
        0x24t
        0x3ft
        0x26t
        0x26t
        0x71t
        0x6at
        0x3ft
        0x24t
        0x2bt
        0x28t
        0x26t
        0x2ft
        0x6at
        0x3et
        0x25t
        0x6at
        0x2ct
        0x23t
        0x24t
        0x2et
        0x6at
        0x23t
        0x3et
        0x64t
        0x7at
        0x41t
        0x4et
        0x4dt
        0x43t
        0x4at
        0xft
        0x5bt
        0x40t
        0xft
        0x49t
        0x46t
        0x41t
        0x4bt
        0xft
        0x62t
        0x4at
        0x4bt
        0x46t
        0x4et
        0x79t
        0x46t
        0x4at
        0x58t
        0x79t
        0x46t
        0x4bt
        0x4at
        0x40t
        0xft
        0x4ct
        0x47t
        0x46t
        0x43t
        0x4bt
        0x1t
    .end array-data
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/TD;)V
    .locals 0

    .line 65434
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;->A0D()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/TD;Lcom/facebook/ads/redexgen/X/Qc;Lcom/facebook/ads/redexgen/X/Uk;)V
    .locals 0

    .line 65435
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TD;->A0I(Lcom/facebook/ads/redexgen/X/Qc;Lcom/facebook/ads/redexgen/X/Uk;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/TD;Lcom/facebook/ads/redexgen/X/db;)V
    .locals 0

    .line 65436
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TD;->A0J(Lcom/facebook/ads/redexgen/X/db;)V

    return-void
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/Qc;Lcom/facebook/ads/redexgen/X/Uk;)V
    .locals 5

    .line 65437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A0A:Z

    .line 65438
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A0B:Z

    .line 65439
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TD;->A02:Lcom/facebook/ads/redexgen/X/Uk;

    .line 65440
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;->A09()V

    .line 65441
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TD;->A05:Lcom/facebook/ads/redexgen/X/2p;

    .line 65442
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qc;->A14()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65443
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qc;->A14()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/TD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65444
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 65445
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/TD;->A0G:[Ljava/lang/String;

    const-string v1, "TnDtOWvYiNMfLmp09Wf7ctnD5adJ0dsa"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 65446
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Tv;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Tv;-><init>(Lcom/facebook/ads/redexgen/X/TD;)V

    .line 65447
    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/2p;->setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Zo;)V

    .line 65448
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qc;->A19()Lcom/facebook/ads/redexgen/X/Uu;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A03:Lcom/facebook/ads/redexgen/X/Uu;

    .line 65449
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A06:Lcom/facebook/ads/redexgen/X/2Z;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qc;->A1F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2Z;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 65450
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A06:Lcom/facebook/ads/redexgen/X/2Z;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qc;->A1E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2Z;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 65451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A08:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 65452
    return-void
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/db;)V
    .locals 4

    .line 65453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    if-eqz v0, :cond_1

    .line 65454
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    const/16 v0, 0x18

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 65455
    :cond_0
    :goto_0
    return-void

    .line 65456
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65457
    sget-object v3, Lcom/facebook/ads/redexgen/X/TD;->A0H:Ljava/lang/String;

    const/16 v2, 0x1e

    const/16 v1, 0x2a

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TD;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private A0K()Z
    .locals 3

    .line 65458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getState()Lcom/facebook/ads/redexgen/X/eU;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eU;->A06:Lcom/facebook/ads/redexgen/X/eU;

    if-ne v1, v0, :cond_1

    .line 65459
    :cond_0
    return v2

    .line 65460
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A03:Lcom/facebook/ads/redexgen/X/Uu;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Uu;->A05:Lcom/facebook/ads/redexgen/X/Uu;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A03:Lcom/facebook/ads/redexgen/X/Uu;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Uu;->A03:Lcom/facebook/ads/redexgen/X/Uu;

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/TD;)Z
    .locals 0

    .line 65461
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/TD;->A0B:Z

    return p0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/TD;)Z
    .locals 0

    .line 65462
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/TD;->A0A:Z

    return p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/TD;)Z
    .locals 0

    .line 65463
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;->A0K()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/TD;Z)Z
    .locals 0

    .line 65464
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/TD;->A0B:Z

    return p1
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/TD;Z)Z
    .locals 0

    .line 65465
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/TD;->A0A:Z

    return p1
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/MediaViewVideoRenderer;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;I)V
    .locals 7

    .line 65466
    invoke-interface {p3}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/R8;

    .line 65467
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/R8;->A00(Lcom/facebook/ads/internal/api/AdComponentViewApi;)V

    .line 65468
    packed-switch p4, :pswitch_data_0

    .line 65469
    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TD;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65470
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/TD;->A00(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/UD;

    move-result-object v4

    .line 65471
    .local v0, "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/Um;
    goto :goto_0

    .line 65472
    .end local v0    # "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/Um;
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/TD;->A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/U2;

    move-result-object v4

    .line 65473
    .restart local v0    # "mediaViewVideoRendererChild":Lcom/facebook/ads/redexgen/X/Um;
    :goto_0
    check-cast p3, Lcom/facebook/ads/redexgen/X/RH;

    .line 65474
    invoke-virtual {p3, v4}, Lcom/facebook/ads/redexgen/X/RH;->A06(Lcom/facebook/ads/redexgen/X/Um;)V

    .line 65475
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RB;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 65476
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 65477
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A05:Lcom/facebook/ads/redexgen/X/2p;

    .line 65478
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;->A02()Lcom/facebook/ads/redexgen/X/Tq;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A07:Lcom/facebook/ads/redexgen/X/eW;

    .line 65479
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;->A05()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A08:Lcom/facebook/ads/redexgen/X/eX;

    .line 65480
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    .line 65481
    .local v1, "density":F
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 65482
    .local v2, "smallPadding":I
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 65483
    .local v3, "bigPadding":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2Z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2Z;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A06:Lcom/facebook/ads/redexgen/X/2Z;

    .line 65484
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65485
    .local v4, "playPauseParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 65486
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 65487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A06:Lcom/facebook/ads/redexgen/X/2Z;

    invoke-virtual {v0, v3, v2, v2, v3}, Lcom/facebook/ads/redexgen/X/2Z;->setPadding(IIII)V

    .line 65488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A06:Lcom/facebook/ads/redexgen/X/2Z;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2Z;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65489
    const/4 v6, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/TD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/TD;->A0G:[Ljava/lang/String;

    const-string v1, "7BCad5LO6te39ERddnjUHTKJR8zzbght"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v3, 0x0

    if-ge v6, v5, :cond_0

    .line 65490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 65491
    .local v6, "child":Landroid/view/View;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/64;

    if-eqz v0, :cond_4

    .line 65492
    check-cast v1, Lcom/facebook/ads/redexgen/X/64;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    .line 65493
    .end local v5    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    if-nez v0, :cond_2

    .line 65494
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65495
    sget-object v5, Lcom/facebook/ads/redexgen/X/TD;->A0H:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x24

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TD;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65496
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A08:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/eX;->A0W(I)V

    .line 65497
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A08:Lcom/facebook/ads/redexgen/X/eX;

    const/16 v0, 0xfa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eX;->A0X(I)V

    .line 65498
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Um;->AIk()V

    .line 65499
    return-void

    .line 65500
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A05:Lcom/facebook/ads/redexgen/X/2p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 65501
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/TD;->A04:Lcom/facebook/ads/redexgen/X/64;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/TD;->A06:Lcom/facebook/ads/redexgen/X/2Z;

    sget-object v2, Lcom/facebook/ads/redexgen/X/TD;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/TD;->A0G:[Ljava/lang/String;

    const-string v1, "Z21owOXIiAfqNY46KReygSjUmuqXSFx4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    goto :goto_2

    .line 65502
    .end local v6    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 65503
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/R8;->onAttachedToWindow()V

    .line 65504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A09:Z

    .line 65505
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;->A0C()V

    .line 65506
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 65507
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/R8;->onDetachedFromWindow()V

    .line 65508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A09:Z

    .line 65509
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;->A0C()V

    .line 65510
    return-void
.end method

.method public final onPrepared()V
    .locals 3

    .line 65511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 65512
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0s(Landroid/content/Context;)Z

    move-result v2

    .line 65513
    .local v0, "disableVideoFullscreenOnNative":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ui;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Ui;-><init>(Lcom/facebook/ads/redexgen/X/TD;Z)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65514
    if-nez v2, :cond_0

    .line 65515
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;->A0A()V

    .line 65516
    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 65517
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R8;->onVisibilityChanged(Landroid/view/View;I)V

    .line 65518
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;->A0C()V

    .line 65519
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 65520
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/R8;->onWindowFocusChanged(Z)V

    .line 65521
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;->A0C()V

    .line 65522
    return-void
.end method
