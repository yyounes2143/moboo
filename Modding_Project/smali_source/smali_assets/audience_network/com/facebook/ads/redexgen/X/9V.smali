.class public final Lcom/facebook/ads/redexgen/X/9V;
.super Lcom/facebook/ads/redexgen/X/ox;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/nQ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/nI;,
        Lcom/facebook/ads/redexgen/X/nH;
    }
.end annotation


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:Landroid/view/Surface;

.field public A04:Landroid/view/SurfaceHolder;

.field public A05:Landroid/view/TextureView;

.field public A06:Lcom/facebook/ads/redexgen/X/oy;

.field public A07:Lcom/facebook/ads/redexgen/X/or;

.field public A08:Lcom/facebook/ads/redexgen/X/or;

.field public A09:Lcom/facebook/ads/redexgen/X/5g;

.field public A0A:Lcom/facebook/ads/redexgen/X/5g;

.field public A0B:Lcom/facebook/ads/redexgen/X/CL;

.field public A0C:Z

.field public final A0D:Landroid/os/Handler;

.field public final A0E:Lcom/facebook/ads/redexgen/X/9X;

.field public final A0F:Lcom/facebook/ads/redexgen/X/nI;

.field public final A0G:Lcom/facebook/ads/redexgen/X/nF;

.field public final A0H:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/8D;",
            ">;"
        }
    .end annotation
.end field

.field public final A0I:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/2s;",
            ">;"
        }
    .end annotation
.end field

.field public final A0J:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/B3;",
            ">;"
        }
    .end annotation
.end field

.field public final A0K:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/Fo;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/nH;",
            ">;"
        }
    .end annotation
.end field

.field public final A0M:[Lcom/facebook/ads/redexgen/X/nM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 550
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ryR4HSm2zR8tip5OkgYwdb0JWy9e3v2W"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Fm5MoQAoRuRRmRXPK4I4CJ8bYaju2JW1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "syIAGKVT8Ewa7Rni6nktnCNdH4Ja85Gc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ScHbfbbxkU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HZJXjhizoNO31MnMnm7FxQnRU8I8lePN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YCsl9os6nHqs6yB8LR1hlQvfR5oCt3rk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ml6mHBX1GsWDWNWH2EtCrt2HpilhtHKz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "59SI8zfcXXU2xe69nRlPKARsr0343GFe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9V;->A0O:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9V;->A0E()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7H;Lcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/6S;Lcom/facebook/ads/redexgen/X/EU;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/ip;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/7H;",
            "Lcom/facebook/ads/redexgen/X/EK;",
            "Lcom/facebook/ads/redexgen/X/6S;",
            "Lcom/facebook/ads/redexgen/X/EU;",
            "Lcom/facebook/ads/redexgen/X/9U;",
            "Lcom/facebook/ads/redexgen/X/ip<",
            "Lcom/facebook/ads/redexgen/X/3T;",
            "Lcom/facebook/ads/redexgen/X/nF;",
            ">;)V"
        }
    .end annotation

    .line 26500
    .local p7, "analyticsCollectorFunction":Lcom/facebook/ads/redexgen/X/ip;, "Lcom/google/common/base/Function<Lcom/facebook/ads/androidx/media3/common/util/Clock;Lcom/facebook/ads/androidx/media3/exoplayer/analytics/AnalyticsCollector;>;"
    sget-object v8, Lcom/facebook/ads/redexgen/X/3T;->A00:Lcom/facebook/ads/redexgen/X/3T;

    move-object v0, p0

    move-object/from16 v7, p7

    move-object v6, p6

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/9V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7H;Lcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/6S;Lcom/facebook/ads/redexgen/X/EU;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/ip;Lcom/facebook/ads/redexgen/X/3T;)V

    .line 26501
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7H;Lcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/6S;Lcom/facebook/ads/redexgen/X/EU;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/ip;Lcom/facebook/ads/redexgen/X/3T;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/7H;",
            "Lcom/facebook/ads/redexgen/X/EK;",
            "Lcom/facebook/ads/redexgen/X/6S;",
            "Lcom/facebook/ads/redexgen/X/EU;",
            "Lcom/facebook/ads/redexgen/X/9U;",
            "Lcom/facebook/ads/redexgen/X/ip<",
            "Lcom/facebook/ads/redexgen/X/3T;",
            "Lcom/facebook/ads/redexgen/X/nF;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/3T;",
            ")V"
        }
    .end annotation

    .line 26502
    .local p11, "analyticsCollectorFunction":Lcom/facebook/ads/redexgen/X/ip;, "Lcom/google/common/base/Function<Lcom/facebook/ads/androidx/media3/common/util/Clock;Lcom/facebook/ads/androidx/media3/exoplayer/analytics/AnalyticsCollector;>;"
    move-object v2, p0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ox;-><init>()V

    .line 26503
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/nI;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/nI;-><init>(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/7J;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A0F:Lcom/facebook/ads/redexgen/X/nI;

    .line 26504
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26505
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26506
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26507
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A0H:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26508
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 26509
    .local v7, "eventLooper":Landroid/os/Looper;
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A0D:Landroid/os/Handler;

    .line 26510
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/9V;->A0D:Landroid/os/Handler;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/9V;->A0F:Lcom/facebook/ads/redexgen/X/nI;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/9V;->A0F:Lcom/facebook/ads/redexgen/X/nI;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/9V;->A0F:Lcom/facebook/ads/redexgen/X/nI;

    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/9V;->A0F:Lcom/facebook/ads/redexgen/X/nI;

    .line 26511
    move-object/from16 v10, p6

    move-object v4, p2

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/7H;->A5Q(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fo;Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/Dq;Lcom/facebook/ads/redexgen/X/B3;Lcom/facebook/ads/redexgen/X/9U;)[Lcom/facebook/ads/redexgen/X/nM;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A0M:[Lcom/facebook/ads/redexgen/X/nM;

    .line 26512
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A00:F

    .line 26513
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A01:I

    .line 26514
    sget-object v0, Lcom/facebook/ads/redexgen/X/oy;->A07:Lcom/facebook/ads/redexgen/X/oy;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A06:Lcom/facebook/ads/redexgen/X/oy;

    .line 26515
    const/4 v0, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A02:I

    .line 26516
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/9V;->A0M:[Lcom/facebook/ads/redexgen/X/nM;

    move-object v4, p0

    move-object/from16 v9, p8

    move-object/from16 v8, p5

    move-object v7, p4

    move-object v6, p3

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/9V;->A06([Lcom/facebook/ads/redexgen/X/nM;Lcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/6S;Lcom/facebook/ads/redexgen/X/EU;Lcom/facebook/ads/redexgen/X/3T;)Lcom/facebook/ads/redexgen/X/9X;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    .line 26517
    move-object/from16 v0, p7

    invoke-interface {v0, v9}, Lcom/facebook/ads/redexgen/X/ip;->A43(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nF;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A0G:Lcom/facebook/ads/redexgen/X/nF;

    .line 26518
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/9V;->A0G:Lcom/facebook/ads/redexgen/X/nF;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/nF;->AIv(Lcom/facebook/ads/redexgen/X/2z;Landroid/os/Looper;)V

    .line 26519
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26520
    return-void

    .line 26521
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7H;Lcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/6S;Lcom/facebook/ads/redexgen/X/EU;Lcom/facebook/ads/redexgen/X/9U;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26522
    new-instance v7, Lcom/facebook/ads/redexgen/X/nP;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/nP;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v6, p5

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/9V;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7H;Lcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/6S;Lcom/facebook/ads/redexgen/X/EU;Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/ip;)V

    .line 26523
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9V;I)I
    .locals 0

    .line 26524
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9V;->A01:I

    return p1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/9V;)Landroid/view/Surface;
    .locals 0

    .line 26525
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9V;->A03:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/or;
    .locals 0

    .line 26526
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9V;->A08:Lcom/facebook/ads/redexgen/X/or;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/or;
    .locals 0

    .line 26527
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9V;->A07:Lcom/facebook/ads/redexgen/X/or;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/5g;)Lcom/facebook/ads/redexgen/X/5g;
    .locals 0

    .line 26528
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9V;->A0A:Lcom/facebook/ads/redexgen/X/5g;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/5g;)Lcom/facebook/ads/redexgen/X/5g;
    .locals 0

    .line 26529
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9V;->A09:Lcom/facebook/ads/redexgen/X/5g;

    return-object p1
.end method

.method private final A06([Lcom/facebook/ads/redexgen/X/nM;Lcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/6S;Lcom/facebook/ads/redexgen/X/EU;Lcom/facebook/ads/redexgen/X/3T;)Lcom/facebook/ads/redexgen/X/9X;
    .locals 6

    .line 26530
    new-instance v0, Lcom/facebook/ads/redexgen/X/9X;

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9X;-><init>([Lcom/facebook/ads/redexgen/X/nM;Lcom/facebook/ads/redexgen/X/EK;Lcom/facebook/ads/redexgen/X/6S;Lcom/facebook/ads/redexgen/X/EU;Lcom/facebook/ads/redexgen/X/3T;)V

    return-object v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9V;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26531
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0J:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26532
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26533
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26534
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 26535
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0H:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private A0D()V
    .locals 5

    .line 26536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A05:Landroid/view/TextureView;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 26537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A05:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0F:Lcom/facebook/ads/redexgen/X/nI;

    if-eq v1, v0, :cond_2

    .line 26538
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->A07(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xf

    const/16 v1, 0x31

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26539
    :goto_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/9V;->A05:Landroid/view/TextureView;

    .line 26540
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A04:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 26541
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9V;->A04:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0F:Lcom/facebook/ads/redexgen/X/nI;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/9V;->A0O:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 26542
    sget-object v2, Lcom/facebook/ads/redexgen/X/9V;->A0O:[Ljava/lang/String;

    const-string v1, "1mt3T64XRkFMJTK0AHNCLCnfNjMbTppi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "rnp4JtgfYQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/9V;->A04:Landroid/view/SurfaceHolder;

    .line 26543
    :cond_1
    return-void

    .line 26544
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A05:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9V;->A0N:[B

    return-void

    :array_0
    .array-data 1
        -0x29t
        -0x13t
        -0xft
        -0xct
        -0x10t
        -0x17t
        -0x37t
        -0x4t
        -0xdt
        -0x2ct
        -0x10t
        -0x1bt
        -0x3t
        -0x17t
        -0xat
        0xct
        0x2et
        0x2bt
        0x1ft
        0x1at
        0x1ct
        0x1et
        0xdt
        0x1et
        0x31t
        0x2dt
        0x2et
        0x2bt
        0x1et
        0x5t
        0x22t
        0x2ct
        0x2dt
        0x1et
        0x27t
        0x1et
        0x2bt
        -0x27t
        0x1at
        0x25t
        0x2bt
        0x1et
        0x1at
        0x1dt
        0x32t
        -0x27t
        0x2et
        0x27t
        0x2ct
        0x1et
        0x2dt
        -0x27t
        0x28t
        0x2bt
        -0x27t
        0x2bt
        0x1et
        0x29t
        0x25t
        0x1at
        0x1ct
        0x1et
        0x1dt
        -0x19t
    .end array-data
.end method

.method private A0F(Landroid/view/Surface;Z)V
    .locals 7

    .line 26545
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26546
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/PlayerMessage;>;"
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/9V;->A0M:[Lcom/facebook/ads/redexgen/X/nM;

    array-length v5, v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v6, v3

    .line 26547
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/nM;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/nM;->A9F()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 26548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    .line 26549
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/9X;->A0L(Lcom/facebook/ads/redexgen/X/70;)Lcom/facebook/ads/redexgen/X/71;

    move-result-object v1

    .line 26550
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A07(I)Lcom/facebook/ads/redexgen/X/71;

    move-result-object v0

    .line 26551
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/71;->A08(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/71;

    move-result-object v0

    .line 26552
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/71;->A06()Lcom/facebook/ads/redexgen/X/71;

    move-result-object v0

    .line 26553
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26554
    .end local v4    # "renderer":Lcom/facebook/ads/redexgen/X/nM;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26555
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A03:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A03:Landroid/view/Surface;

    if-eq v0, p1, :cond_3

    .line 26556
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/71;

    .line 26557
    .local v2, "message":Lcom/facebook/ads/redexgen/X/71;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/71;->A0C()Z

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26558
    .local v1, "e":Ljava/lang/InterruptedException;
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 26559
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0C:Z

    if-eqz v0, :cond_3

    .line 26560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A03:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 26561
    :cond_3
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9V;->A03:Landroid/view/Surface;

    .line 26562
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/9V;->A0C:Z

    .line 26563
    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/9V;Landroid/view/Surface;Z)V
    .locals 0

    .line 26564
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9V;->A0F(Landroid/view/Surface;Z)V

    return-void
.end method


# virtual methods
.method public final A0H(IJ)V
    .locals 1

    .line 26565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0G:Lcom/facebook/ads/redexgen/X/nF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/nF;->AC5()V

    .line 26566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9X;->A0H(IJ)V

    .line 26567
    return-void
.end method

.method public final A0I()I
    .locals 1

    .line 26568
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A01:I

    return v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/or;
    .locals 1

    .line 26569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A07:Lcom/facebook/ads/redexgen/X/or;

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/or;
    .locals 1

    .line 26570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A08:Lcom/facebook/ads/redexgen/X/or;

    return-object v0
.end method

.method public final A0L()V
    .locals 3

    .line 26571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0M()V

    .line 26572
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9V;->A0D()V

    .line 26573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A03:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 26574
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0C:Z

    if-eqz v0, :cond_0

    .line 26575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A03:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 26576
    :cond_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9V;->A03:Landroid/view/Surface;

    .line 26577
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    if-eqz v0, :cond_2

    .line 26578
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9V;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0G:Lcom/facebook/ads/redexgen/X/nF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CL;->AHi(Lcom/facebook/ads/redexgen/X/CX;)V

    .line 26579
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9V;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    .line 26580
    :cond_2
    return-void
.end method

.method public final A0M(F)V
    .locals 7

    .line 26581
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A00(FFF)F

    move-result v6

    .line 26582
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A00:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_0

    .line 26583
    return-void

    .line 26584
    :cond_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/9V;->A00:F

    .line 26585
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/9V;->A0M:[Lcom/facebook/ads/redexgen/X/nM;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v5, v3

    .line 26586
    .local v3, "renderer":Lcom/facebook/ads/redexgen/X/nM;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/nM;->A9F()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 26587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    .line 26588
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/9X;->A0L(Lcom/facebook/ads/redexgen/X/70;)Lcom/facebook/ads/redexgen/X/71;

    move-result-object v1

    .line 26589
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A07(I)Lcom/facebook/ads/redexgen/X/71;

    move-result-object v1

    .line 26590
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/71;->A08(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/71;

    move-result-object v0

    .line 26591
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/71;->A06()Lcom/facebook/ads/redexgen/X/71;

    .line 26592
    .end local v3    # "renderer":Lcom/facebook/ads/redexgen/X/nM;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26593
    :cond_2
    return-void
.end method

.method public final A0N(Landroid/view/Surface;)V
    .locals 1

    .line 26594
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9V;->A0D()V

    .line 26595
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/9V;->A0F(Landroid/view/Surface;Z)V

    .line 26596
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/2s;)V
    .locals 1

    .line 26597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9X;->A0O(Lcom/facebook/ads/redexgen/X/2s;)V

    .line 26598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0I:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26599
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/nH;)V
    .locals 1

    .line 26600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0L:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 26601
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/CL;)V
    .locals 1

    .line 26602
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/9V;->A0R(Lcom/facebook/ads/redexgen/X/CL;ZZ)V

    .line 26603
    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/CL;ZZ)V
    .locals 2

    .line 26604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    if-eqz v0, :cond_0

    .line 26605
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9V;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0G:Lcom/facebook/ads/redexgen/X/nF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CL;->AHi(Lcom/facebook/ads/redexgen/X/CX;)V

    .line 26606
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9V;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    .line 26607
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9V;->A0D:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0G:Lcom/facebook/ads/redexgen/X/nF;

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CL;->A3r(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/CX;)V

    .line 26608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9X;->A0P(Lcom/facebook/ads/redexgen/X/CL;ZZ)V

    .line 26609
    return-void
.end method

.method public final A0S(Z)V
    .locals 1

    .line 26610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9X;->A0Q(Z)V

    .line 26611
    return-void
.end method

.method public final A0T()Z
    .locals 1

    .line 26612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0R()Z

    move-result v0

    return v0
.end method

.method public final A6z()J
    .locals 2

    .line 26613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A6z()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7L()J
    .locals 2

    .line 26614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A7L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7Q()I
    .locals 1

    .line 26615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A7Q()I

    move-result v0

    return v0
.end method

.method public final A7R()I
    .locals 1

    .line 26616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A7R()I

    move-result v0

    return v0
.end method

.method public final A7T()I
    .locals 1

    .line 26617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A7T()I

    move-result v0

    return v0
.end method

.method public final A7U()I
    .locals 1

    .line 26618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A7U()I

    move-result v0

    return v0
.end method

.method public final A7W()J
    .locals 2

    .line 26619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A7W()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7Y()Lcom/facebook/ads/androidx/media3/common/Timeline;
    .locals 1

    .line 26620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A7Y()Lcom/facebook/ads/androidx/media3/common/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public final A7Z()I
    .locals 1

    .line 26621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A7Z()I

    move-result v0

    return v0
.end method

.method public final A7k()J
    .locals 2

    .line 26622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A7k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A9B()J
    .locals 2

    .line 26623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A9B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final AAU()Z
    .locals 1

    .line 26624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->AAU()Z

    move-result v0

    return v0
.end method

.method public final AJV(Z)V
    .locals 2

    .line 26625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0E:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9X;->AJV(Z)V

    .line 26626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    if-eqz v0, :cond_0

    .line 26627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9V;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0G:Lcom/facebook/ads/redexgen/X/nF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CL;->AHi(Lcom/facebook/ads/redexgen/X/CX;)V

    .line 26628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    .line 26629
    if-eqz p1, :cond_0

    .line 26630
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9V;->A0B:Lcom/facebook/ads/redexgen/X/CL;

    .line 26631
    :cond_0
    return-void
.end method
