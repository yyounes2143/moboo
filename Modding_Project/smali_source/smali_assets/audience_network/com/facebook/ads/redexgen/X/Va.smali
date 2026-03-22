.class public final Lcom/facebook/ads/redexgen/X/Va;
.super Lcom/facebook/ads/redexgen/X/ps;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/cu;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Va;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 6

    .line 69500
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ps;-><init>()V

    .line 69501
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Va;->A00:Landroid/view/View;

    .line 69502
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Va;->A01:Lcom/facebook/ads/redexgen/X/cu;

    .line 69503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Va;->A00:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 69504
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Va;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69505
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ps;->A00()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69506
    :catchall_0
    move-exception v5

    .line 69507
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Va;->A01:Lcom/facebook/ads/redexgen/X/cu;

    .line 69508
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x2d

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Va;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69509
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 69510
    const/16 v2, 0x89

    const/16 v1, 0xe

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Va;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe10

    invoke-interface {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 69511
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Va;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x28

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x97

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Va;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x7ft
        0x40t
        0x4ct
        0x5et
        0x59t
        0x46t
        0x40t
        0x47t
        0x5dt
        0x9t
        0x7ft
        0x40t
        0x4ct
        0x5et
        0x9t
        0x45t
        0x40t
        0x4ft
        0x4ct
        0x4at
        0x50t
        0x4at
        0x45t
        0x4ct
        0x9t
        0x4at
        0x5bt
        0x48t
        0x5at
        0x41t
        0x40t
        0x47t
        0x4et
        0x9t
        0x5at
        0x5dt
        0x48t
        0x5bt
        0x5dt
        0x7at
        0x4at
        0x48t
        0x47t
        0x9t
        0x9t
        0xbt
        0x34t
        0x38t
        0x2at
        0x2dt
        0x32t
        0x34t
        0x33t
        0x29t
        0x7dt
        0xbt
        0x34t
        0x38t
        0x2at
        0x7dt
        0x31t
        0x34t
        0x3bt
        0x38t
        0x3et
        0x24t
        0x3et
        0x31t
        0x38t
        0x7dt
        0x3et
        0x2ft
        0x3ct
        0x2et
        0x35t
        0x34t
        0x33t
        0x3at
        0x7dt
        0x2et
        0x29t
        0x3ct
        0x2ft
        0x29t
        0xet
        0x3et
        0x3ct
        0x33t
        0x13t
        0x32t
        0x2at
        0x7dt
        0x7dt
        0x67t
        0x58t
        0x54t
        0x46t
        0x41t
        0x5et
        0x58t
        0x5ft
        0x45t
        0x11t
        0x67t
        0x58t
        0x54t
        0x46t
        0x11t
        0x5dt
        0x58t
        0x57t
        0x54t
        0x52t
        0x48t
        0x52t
        0x5dt
        0x54t
        0x11t
        0x52t
        0x43t
        0x50t
        0x42t
        0x59t
        0x58t
        0x5ft
        0x56t
        0x11t
        0x42t
        0x45t
        0x5et
        0x41t
        0x62t
        0x52t
        0x50t
        0x5ft
        0x11t
        0x11t
        0x8t
        0x1et
        0x18t
        0x14t
        0x15t
        0x1ft
        0x24t
        0x18t
        0x13t
        0x1at
        0x15t
        0x15t
        0x1et
        0x17t
    .end array-data
.end method


# virtual methods
.method public final A04()V
    .locals 6

    .line 69512
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ps;->A00()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69513
    :catchall_0
    move-exception v5

    .line 69514
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Va;->A01:Lcom/facebook/ads/redexgen/X/cu;

    .line 69515
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d

    const/16 v1, 0x30

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Va;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69516
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 69517
    const/16 v2, 0x89

    const/16 v1, 0xe

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Va;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe10

    invoke-interface {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 69518
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final A05()Z
    .locals 1

    .line 69519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Va;->A00:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/P3;->A0H(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 6

    .line 69520
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ps;->A00()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69521
    :catchall_0
    move-exception v5

    .line 69522
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Va;->A01:Lcom/facebook/ads/redexgen/X/cu;

    .line 69523
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x2d

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Va;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69524
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 69525
    const/16 v2, 0x89

    const/16 v1, 0xe

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Va;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe10

    invoke-interface {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 69526
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 6

    .line 69527
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ps;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69528
    :catchall_0
    move-exception v5

    .line 69529
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Va;->A01:Lcom/facebook/ads/redexgen/X/cu;

    .line 69530
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5d

    const/16 v1, 0x2c

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Va;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69531
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 69532
    const/16 v2, 0x89

    const/16 v1, 0xe

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Va;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe10

    invoke-interface {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 69533
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
