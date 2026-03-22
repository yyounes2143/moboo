.class public final Lcom/facebook/ads/redexgen/X/1H;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/A6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ph;,
        Lcom/facebook/ads/redexgen/X/pi;
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/pr;

.field public final A02:Lcom/facebook/ads/redexgen/X/pq;

.field public final A03:Lcom/facebook/ads/redexgen/X/pi;

.field public final A04:Lcom/facebook/ads/redexgen/X/pi;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/ph;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 54
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5g"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bfnfjiUri9kvxuLEKnZU3kJc1ieY23zz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NIX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "B1MUzprhDDigVQ4p3NlPN3VyWdkPEAJB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UzK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rOCmuOM4l5uJjn2akKGm2JxYL79BUlOr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kAulvLpzcmVynuK8kNGYEaaJbNqcwElD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7ScKsdjGN77oK2tO1d"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1H;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/1H;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1H;->A0B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pq;)V
    .locals 1

    .line 8443
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/1H;-><init>(Lcom/facebook/ads/redexgen/X/pq;ZZ)V

    .line 8444
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pq;ZZ)V
    .locals 2

    .line 8445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    .line 8447
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pi;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/pi;-><init>(Lcom/facebook/ads/redexgen/X/pj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A04:Lcom/facebook/ads/redexgen/X/pi;

    .line 8448
    new-instance v0, Lcom/facebook/ads/redexgen/X/pi;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/pi;-><init>(Lcom/facebook/ads/redexgen/X/pj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A03:Lcom/facebook/ads/redexgen/X/pi;

    .line 8449
    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A05:Ljava/util/List;

    .line 8450
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1H;->A02:Lcom/facebook/ads/redexgen/X/pq;

    .line 8451
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/1H;->A08:Z

    .line 8452
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/1H;->A07:Z

    .line 8453
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;
    .locals 2

    .line 8454
    if-eqz p0, :cond_0

    .line 8455
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 8456
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_0

    .line 8457
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_0

    .line 8458
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_0

    .line 8459
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 8460
    :cond_0
    const/4 p0, 0x0

    const/16 v1, 0x8f

    const/16 v0, 0x9

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/1H;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/pu;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/facebook/ads/redexgen/X/ph;
    .locals 3

    .line 8461
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/ph;

    .line 8462
    .local v0, "viewProperties":Lcom/facebook/ads/redexgen/X/ph;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A04:Lcom/facebook/ads/redexgen/X/pi;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/pi;->A07(Lcom/facebook/ads/redexgen/X/pi;Lcom/facebook/ads/redexgen/X/pu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8463
    if-nez v2, :cond_1

    .line 8464
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/ph;->A04(J)Lcom/facebook/ads/redexgen/X/ph;

    move-result-object v2

    .line 8465
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8466
    :cond_0
    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ph;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8467
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/ph;->A05(Lcom/facebook/ads/redexgen/X/ph;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8468
    return-object v2

    .line 8469
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/pl;->A04:Lcom/facebook/ads/redexgen/X/pl;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/ph;->A02(Lcom/facebook/ads/redexgen/X/ph;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1H;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const-string v1, "GBjOApmdB9meVYu3h8dWYwSrfWPE5QmB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "rSzbUr5mB5cqWCHa6t40U5C3uIAdU8ry"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x49

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xc4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1H;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x28t
        0x29t
        0x33t
        0x60t
        0x36t
        0x29t
        0x25t
        0x37t
        0x30t
        0x2ft
        0x29t
        0x2et
        0x34t
        0x60t
        0x28t
        0x21t
        0x33t
        0x60t
        0x2et
        0x2ft
        0x34t
        0x60t
        0x22t
        0x25t
        0x25t
        0x2et
        0x60t
        0x2dt
        0x25t
        0x21t
        0x33t
        0x35t
        0x32t
        0x25t
        0x24t
        0x60t
        0x2ft
        0x32t
        0x60t
        0x29t
        0x33t
        0x60t
        0x21t
        0x60t
        0x27t
        0x32t
        0x2ft
        0x35t
        0x30t
        0x60t
        0x37t
        0x28t
        0x29t
        0x23t
        0x28t
        0x60t
        0x37t
        0x29t
        0x2ct
        0x2ct
        0x60t
        0x2et
        0x25t
        0x36t
        0x25t
        0x32t
        0x60t
        0x32t
        0x25t
        0x34t
        0x35t
        0x32t
        0x2et
        0x60t
        0x21t
        0x60t
        0x2dt
        0x25t
        0x21t
        0x33t
        0x35t
        0x32t
        0x25t
        0x2dt
        0x25t
        0x2et
        0x34t
        0x60t
        0x33t
        0x29t
        0x2et
        0x23t
        0x25t
        0x60t
        0x29t
        0x34t
        0x67t
        0x33t
        0x60t
        0x2dt
        0x21t
        0x24t
        0x25t
        0x60t
        0x35t
        0x30t
        0x60t
        0x2ft
        0x26t
        0x60t
        0x33t
        0x35t
        0x22t
        0x36t
        0x29t
        0x25t
        0x37t
        0x33t
        0x60t
        0x34t
        0x28t
        0x21t
        0x34t
        0x60t
        0x23t
        0x2ft
        0x35t
        0x2ct
        0x24t
        0x60t
        0x22t
        0x25t
        0x60t
        0x2ft
        0x26t
        0x26t
        0x33t
        0x23t
        0x32t
        0x25t
        0x25t
        0x2et
        0x10t
        0x1bt
        0x9t
        0x2dt
        0x1dt
        0x1ft
        0x10t
        0x3dt
        0x26t
        0x3ft
        0x3ft
        0x73t
        0x25t
        0x3at
        0x36t
        0x24t
        0x73t
        0x23t
        0x21t
        0x3ct
        0x23t
        0x36t
        0x21t
        0x27t
        0x2at
        0x73t
        0x35t
        0x3ct
        0x21t
        0x73t
        0x21t
        0x36t
        0x3et
        0x3ct
        0x25t
        0x36t
        0x37t
        0x73t
        0x3at
        0x27t
        0x36t
        0x3et
        0x73t
        0x1et
        0x2t
        0xbt
        0x19t
        0x3ft
        0x8t
        0x1dt
        0x2t
        0x1ft
        0x19t
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/pi;)V
    .locals 5

    .line 8470
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/pi;->A02(Lcom/facebook/ads/redexgen/X/pi;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/pu;

    .line 8471
    .local v1, "removed":Lcom/facebook/ads/redexgen/X/pu;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ph;

    .line 8472
    .local v2, "viewProperties":Lcom/facebook/ads/redexgen/X/ph;
    if-eqz v1, :cond_2

    .line 8473
    sget-object v0, Lcom/facebook/ads/redexgen/X/pl;->A03:Lcom/facebook/ads/redexgen/X/pl;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ph;->A02(Lcom/facebook/ads/redexgen/X/ph;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    .line 8474
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ph;->A05(Lcom/facebook/ads/redexgen/X/ph;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8475
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/1H;->A07(Lcom/facebook/ads/redexgen/X/pu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8476
    invoke-virtual {v4, p0}, Lcom/facebook/ads/redexgen/X/pu;->A03(Lcom/facebook/ads/redexgen/X/pk;)V

    .line 8477
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A08:Z

    if-eqz v0, :cond_0

    .line 8478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8479
    :cond_2
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 8480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x96

    const/16 v1, 0x24

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1H;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v2, 0xba

    const/16 v1, 0xa

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1H;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8481
    :cond_3
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/pi;)V
    .locals 3

    .line 8482
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/pi;->A03(Lcom/facebook/ads/redexgen/X/pi;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/pu;

    .line 8483
    .local v1, "visible":Lcom/facebook/ads/redexgen/X/pu;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/1H;->A07(Lcom/facebook/ads/redexgen/X/pu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8484
    invoke-virtual {v1, p0}, Lcom/facebook/ads/redexgen/X/pu;->A03(Lcom/facebook/ads/redexgen/X/pk;)V

    goto :goto_0

    .line 8485
    :cond_1
    return-void
.end method

.method private A06(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pu<",
            "**>;>;)V"
        }
    .end annotation

    .line 8486
    .local p0, "toUnregister":Ljava/util/List;, "Ljava/util/List<Lcom/instagram/common/viewpoint/core/ViewpointData<**>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/pu;

    .line 8487
    .local v1, "viewpointData":Lcom/facebook/ads/redexgen/X/pu;, "Lcom/instagram/common/viewpoint/core/ViewpointData<**>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ph;

    .line 8488
    .local v2, "viewProperties":Lcom/facebook/ads/redexgen/X/ph;
    if-eqz v0, :cond_0

    iget-boolean v4, v3, Lcom/facebook/ads/redexgen/X/pu;->A04:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const-string v1, "nPwsVC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/pu;->A01:Lcom/facebook/ads/redexgen/X/pl;

    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const-string v1, "zj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    :goto_1
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/pu;->A01:Lcom/facebook/ads/redexgen/X/pl;

    sget-object v0, Lcom/facebook/ads/redexgen/X/pl;->A03:Lcom/facebook/ads/redexgen/X/pl;

    if-eq v1, v0, :cond_0

    .line 8489
    invoke-virtual {v3, p0}, Lcom/facebook/ads/redexgen/X/pu;->A03(Lcom/facebook/ads/redexgen/X/pk;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const-string v1, "4Gl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "t26"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    goto :goto_1

    .line 8490
    :cond_3
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/pu;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/pu<",
            "**>;)Z"
        }
    .end annotation

    .line 8491
    .local v2, "viewpointData":Lcom/facebook/ads/redexgen/X/pu;, "Lcom/instagram/common/viewpoint/core/ViewpointData<**>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pu;->A04:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/pu;->A00:Lcom/facebook/ads/redexgen/X/pv;

    sget-object v3, Lcom/facebook/ads/redexgen/X/pv;->A04:Lcom/facebook/ads/redexgen/X/pv;

    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const-string v1, "iICfc1p4CYNR1vFaz"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A3y(Lcom/facebook/ads/redexgen/X/pu;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 7

    .line 8492
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1H;->A01(Lcom/facebook/ads/redexgen/X/pu;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/facebook/ads/redexgen/X/ph;

    .line 8493
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/pu;->A05:Lcom/facebook/ads/redexgen/X/pu;

    .line 8494
    .local v0, "parentViewpointData":Lcom/facebook/ads/redexgen/X/pu;
    sget-object v0, Lcom/facebook/ads/redexgen/X/pu;->A0B:Lcom/facebook/ads/redexgen/X/pu;

    if-eq v4, v0, :cond_6

    if-eqz v4, :cond_6

    .line 8495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A03:Lcom/facebook/ads/redexgen/X/pi;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/pi;->A07(Lcom/facebook/ads/redexgen/X/pi;Lcom/facebook/ads/redexgen/X/pu;)Z

    move-result v2

    .line 8496
    .local v1, "isFirstTimeSeenThisPass":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/ph;

    .line 8497
    .local v2, "parentViewProperties":Lcom/facebook/ads/redexgen/X/ph;
    if-eqz v2, :cond_1

    .line 8498
    if-eqz v3, :cond_0

    .line 8499
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ph;->A05(Lcom/facebook/ads/redexgen/X/ph;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8500
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A07:Z

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/pu;->A04()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8501
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/ph;->A04(J)Lcom/facebook/ads/redexgen/X/ph;

    move-result-object v3

    .line 8502
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8503
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8504
    :cond_1
    if-eqz p4, :cond_5

    if-eqz v3, :cond_5

    .line 8505
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v6

    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 8506
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 8507
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v1, p3, Landroid/graphics/Rect;->right:I

    .line 8508
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 8509
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8510
    invoke-virtual {v6, v5, v4, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 8511
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const-string v1, "H54AceamXdthsYm78mtSydojeY2Fx6Sn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "PVfiJKIqQ6L9JP1UYx1CLIU2NiQOo1Yq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 8512
    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/pl;->A04:Lcom/facebook/ads/redexgen/X/pl;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const-string v1, "tsuWg7tiHeCbTZ79GKvfVJLQxaexBCGH"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "f1Y9d3aTAam6AIKjxx39fqUFlMtOCeIE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/ph;->A02(Lcom/facebook/ads/redexgen/X/ph;Lcom/facebook/ads/redexgen/X/pl;)Lcom/facebook/ads/redexgen/X/pl;

    .line 8513
    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 8514
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ph;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v5

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v4, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8515
    :cond_5
    :goto_1
    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8516
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ph;->A05(Lcom/facebook/ads/redexgen/X/ph;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8517
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8518
    .end local v1    # "isFirstTimeSeenThisPass":Z
    .end local v2    # "parentViewProperties":Lcom/facebook/ads/redexgen/X/ph;
    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A4Z(JLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 8519
    .local p2, "viewportRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/1H;->A00:J

    .line 8520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8521
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const-string v1, "xWg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "l5f"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 8522
    .local v1, "viewportRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1H;->A05:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8523
    .end local v1    # "viewportRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 8524
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A04:Lcom/facebook/ads/redexgen/X/pi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pi;->A02(Lcom/facebook/ads/redexgen/X/pi;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    if-eqz v3, :cond_2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/pu;

    .line 8525
    .local v1, "viewpointData":Lcom/facebook/ads/redexgen/X/pu;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8526
    .end local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/pu;
    goto :goto_1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const-string v1, "KXc0LwnJCEJYYpq44EYPYXvj71LHxLBt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "SZ9db6jeJg1WeryC8zmRUBHGUrGxU8hd"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    goto :goto_2

    .line 8527
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A03:Lcom/facebook/ads/redexgen/X/pi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pi;->A02(Lcom/facebook/ads/redexgen/X/pi;)Ljava/util/Collection;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A0A:[Ljava/lang/String;

    const-string v1, "Au"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/pu;

    .line 8528
    .restart local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/pu;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8529
    .end local v1    # "viewpointData":Lcom/facebook/ads/redexgen/X/pu;
    goto :goto_3

    .line 8530
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ph;

    .line 8531
    .local v1, "viewProperties":Lcom/facebook/ads/redexgen/X/ph;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ph;->A05(Lcom/facebook/ads/redexgen/X/ph;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8532
    .end local v1    # "viewProperties":Lcom/facebook/ads/redexgen/X/ph;
    goto :goto_4

    .line 8533
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A04:Lcom/facebook/ads/redexgen/X/pi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pi;->A05(Lcom/facebook/ads/redexgen/X/pi;)V

    .line 8534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A03:Lcom/facebook/ads/redexgen/X/pi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pi;->A05(Lcom/facebook/ads/redexgen/X/pi;)V

    .line 8535
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A6H(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pu<",
            "**>;>;)V"
        }
    .end annotation

    .line 8536
    .local p2, "recentlyUnregistered":Ljava/util/List;, "Ljava/util/List<Lcom/instagram/common/viewpoint/core/ViewpointData<**>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8537
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1H;->A06(Ljava/util/List;)V

    .line 8538
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A04:Lcom/facebook/ads/redexgen/X/pi;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1H;->A05(Lcom/facebook/ads/redexgen/X/pi;)V

    .line 8539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A04:Lcom/facebook/ads/redexgen/X/pi;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1H;->A04(Lcom/facebook/ads/redexgen/X/pi;)V

    .line 8540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A03:Lcom/facebook/ads/redexgen/X/pi;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1H;->A05(Lcom/facebook/ads/redexgen/X/pi;)V

    .line 8541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A03:Lcom/facebook/ads/redexgen/X/pi;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1H;->A04(Lcom/facebook/ads/redexgen/X/pi;)V

    .line 8542
    const/4 v0, 0x0

    if-eqz v0, :cond_1

    .line 8543
    new-instance v1, Lcom/facebook/ads/redexgen/X/pf;

    .line 8544
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1H;->A05:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A04:Lcom/facebook/ads/redexgen/X/pi;

    .line 8545
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pi;->A03(Lcom/facebook/ads/redexgen/X/pi;)Ljava/util/Collection;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A03:Lcom/facebook/ads/redexgen/X/pi;

    .line 8546
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/pi;->A03(Lcom/facebook/ads/redexgen/X/pi;)Ljava/util/Collection;

    move-result-object v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/pf;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/pk;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 8547
    const/16 v2, 0x8f

    const/4 v1, 0x7

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1H;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8548
    :cond_1
    return-void
.end method

.method public final A85(Lcom/facebook/ads/redexgen/X/pu;Landroid/graphics/Rect;)V
    .locals 2

    .line 8549
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 8550
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ph;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ph;

    .line 8551
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ph;->A05(Lcom/facebook/ads/redexgen/X/ph;)Ljava/util/List;

    move-result-object v0

    .line 8552
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 8553
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 8554
    .end local v1    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 8555
    :cond_0
    return-void
.end method

.method public final A9M(Lcom/facebook/ads/redexgen/X/pu;)Lcom/facebook/ads/redexgen/X/pl;
    .locals 3

    .line 8556
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    .line 8557
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ph;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ph;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ph;->A01(Lcom/facebook/ads/redexgen/X/ph;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v2

    .line 8558
    .local v0, "viewState":Lcom/facebook/ads/redexgen/X/pl;
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/pu;->A04:Z

    if-eqz v0, :cond_1

    .line 8559
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/pu;->A00:Lcom/facebook/ads/redexgen/X/pv;

    sget-object v0, Lcom/facebook/ads/redexgen/X/pv;->A04:Lcom/facebook/ads/redexgen/X/pv;

    if-ne v1, v0, :cond_0

    .line 8560
    sget-object v0, Lcom/facebook/ads/redexgen/X/pl;->A03:Lcom/facebook/ads/redexgen/X/pl;

    return-object v0

    .line 8561
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/pl;->A04:Lcom/facebook/ads/redexgen/X/pl;

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/pu;->A04()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8562
    sget-object v0, Lcom/facebook/ads/redexgen/X/pl;->A02:Lcom/facebook/ads/redexgen/X/pl;

    return-object v0

    .line 8563
    :cond_1
    return-object v2
.end method

.method public final A9O(Landroid/graphics/Rect;)V
    .locals 2

    .line 8564
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 8565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1H;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 8566
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 8567
    .end local v1    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 8568
    :cond_0
    return-void
.end method

.method public final A9P(Lcom/facebook/ads/redexgen/X/pu;)F
    .locals 5

    .line 8569
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1H;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ph;

    .line 8570
    .local v0, "viewProperties":Lcom/facebook/ads/redexgen/X/ph;
    if-eqz v1, :cond_1

    .line 8571
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/1H;->A00(Lcom/facebook/ads/redexgen/X/ph;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8572
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v4, v0

    .line 8573
    .local v2, "totalPossibleArea":I
    const/4 v3, 0x0

    .line 8574
    .local v3, "totalVisibleArea":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ph;->A05(Lcom/facebook/ads/redexgen/X/ph;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 8575
    .local p0, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v1, v0

    add-int/2addr v3, v1

    .line 8576
    .end local p0    # "visibleRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 8577
    :cond_0
    int-to-float v1, v3

    int-to-float v0, v4

    div-float/2addr v1, v0

    return v1

    .line 8578
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "totalPossibleArea":I
    .end local v3    # "totalVisibleArea":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final AJA(Lcom/facebook/ads/redexgen/X/pr;)V
    .locals 0

    .line 8579
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1H;->A01:Lcom/facebook/ads/redexgen/X/pr;

    .line 8580
    return-void
.end method
