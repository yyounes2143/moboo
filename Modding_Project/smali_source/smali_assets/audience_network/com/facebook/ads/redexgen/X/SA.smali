.class public final Lcom/facebook/ads/redexgen/X/SA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/SF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExoPlayerCacheCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/SF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/SB;)V
    .locals 2

    .line 63541
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SA;->A01:Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63542
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:Ljava/util/concurrent/BlockingQueue;

    .line 63543
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/dk;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/dk;-><init>(Lcom/facebook/ads/redexgen/X/SA;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/SB;)V

    .line 63544
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63545
    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/SA;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 63547
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/SA;Lcom/facebook/ads/redexgen/X/SB;)V
    .locals 0

    .line 63548
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SA;->A03(Lcom/facebook/ads/redexgen/X/SB;)V

    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/SB;)V
    .locals 12

    .line 63549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 63550
    .local v7, "startTime":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A01:Lcom/facebook/ads/redexgen/X/SF;

    .line 63551
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SF;->A07(Lcom/facebook/ads/redexgen/X/SF;)Lcom/facebook/ads/redexgen/X/SQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eJ;->A06(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/eJ;

    move-result-object v4

    .line 63552
    .local v9, "exoPlayerCacheManager":Lcom/facebook/ads/redexgen/X/eJ;
    move-object v7, p1

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/SB;->A08:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 63553
    .local v10, "uri":Landroid/net/Uri;
    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/SB;->A00:J

    .line 63554
    .local v0, "preloadSizeBytes":J
    const-wide/16 v1, -0x1

    cmp-long v0, v8, v1

    if-nez v0, :cond_0

    .line 63555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A01:Lcom/facebook/ads/redexgen/X/SF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SF;->A07(Lcom/facebook/ads/redexgen/X/SF;)Lcom/facebook/ads/redexgen/X/SQ;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0S(Landroid/content/Context;)J

    move-result-wide v8

    .line 63556
    .end local v0    # "preloadSizeBytes":J
    .local v11, "preloadSizeBytes":J
    .local v3, "finalPreloadSizeBytes":J
    :cond_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/dj;

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/dj;-><init>(Lcom/facebook/ads/redexgen/X/SA;Lcom/facebook/ads/redexgen/X/SB;JJ)V

    invoke-virtual {v4, v3, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/eJ;->A0I(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/eI;J)V

    .line 63557
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63558
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SA;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
