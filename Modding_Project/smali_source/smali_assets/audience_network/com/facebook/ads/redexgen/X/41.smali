.class public final Lcom/facebook/ads/redexgen/X/41;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3z;,
        Lcom/facebook/ads/redexgen/X/40;,
        Lcom/facebook/ads/redexgen/X/3y;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/3T;

.field public final A03:Lcom/facebook/ads/redexgen/X/3v;

.field public final A04:Lcom/facebook/ads/redexgen/X/3z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/3z<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final A05:Ljava/lang/Object;

.field public final A06:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/40<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 267
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qNhODmuhOGTzTOdNu4k"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7K2GPWa5EHuyy4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "E4NOCJ5RL4hYeLNooPFdkLqGKDRv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JwlW7s8WNTa19hdGL1amV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YNjlntyRTdoFHiJHxz0qVC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VcHvMaXHchlXNA9aE7EYkOxPZlMykCpc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sHIyzZJD7qVKB1sd9lWDot"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2KMjU5K0FjJgBGqm2h4w3g2sgyG9pwrH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/41;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/41;->A03()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/3T;Lcom/facebook/ads/redexgen/X/3z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/redexgen/X/3T;",
            "Lcom/facebook/ads/redexgen/X/3z<",
            "TT;>;)V"
        }
    .end annotation

    .line 11923
    .local p0, "this":Lcom/facebook/ads/redexgen/X/41;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    .local p3, "iterationFinishedEvent":Lcom/facebook/ads/redexgen/X/3z;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/41;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/3T;Lcom/facebook/ads/redexgen/X/3z;)V

    .line 11924
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/3T;Lcom/facebook/ads/redexgen/X/3z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/40<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/redexgen/X/3T;",
            "Lcom/facebook/ads/redexgen/X/3z<",
            "TT;>;)V"
        }
    .end annotation

    .line 11925
    .local p1, "this":Lcom/facebook/ads/redexgen/X/41;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    .local p2, "listeners":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;>;"
    .local p5, "iterationFinishedEvent":Lcom/facebook/ads/redexgen/X/3z;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11926
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/41;->A02:Lcom/facebook/ads/redexgen/X/3T;

    .line 11927
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11928
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/41;->A04:Lcom/facebook/ads/redexgen/X/3z;

    .line 11929
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A05:Ljava/lang/Object;

    .line 11930
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A06:Ljava/util/ArrayDeque;

    .line 11931
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A07:Ljava/util/ArrayDeque;

    .line 11932
    new-instance v0, Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3x;-><init>(Lcom/facebook/ads/redexgen/X/41;)V

    invoke-interface {p3, p2, v0}, Lcom/facebook/ads/redexgen/X/3T;->A5H(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/np;

    move-result-object v0

    .line 11933
    .local v0, "handler":Lcom/facebook/ads/redexgen/X/3v;
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A03:Lcom/facebook/ads/redexgen/X/3v;

    .line 11934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/41;->A01:Z

    .line 11935
    sget-object v0, Lcom/facebook/ads/redexgen/X/i2;->A0E:Lcom/facebook/ads/redexgen/X/i2;

    .line 11936
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i5;->A03(Lcom/facebook/ads/redexgen/X/i2;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Z

    .line 11937
    return-void
.end method

.method private final A00(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/3T;Lcom/facebook/ads/redexgen/X/3z;)Lcom/facebook/ads/redexgen/X/41;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/redexgen/X/3T;",
            "Lcom/facebook/ads/redexgen/X/3z<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/41<",
            "TT;>;"
        }
    .end annotation

    .line 11938
    .local p0, "this":Lcom/facebook/ads/redexgen/X/41;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    .local p3, "iterationFinishedEvent":Lcom/facebook/ads/redexgen/X/3z;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/facebook/ads/redexgen/X/41;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/41;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/3T;Lcom/facebook/ads/redexgen/X/3z;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/41;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x26

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 11939
    .local p0, "this":Lcom/facebook/ads/redexgen/X/41;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/41;->A01:Z

    if-nez v0, :cond_0

    .line 11940
    return-void

    .line 11941
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A03:Lcom/facebook/ads/redexgen/X/3v;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3v;->A8J()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 11942
    return-void

    .line 11943
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/41;->A09:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/41;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/41;->A0A:[Ljava/lang/String;

    const-string v1, "KpT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x29t
        0x2et
        0x36t
        0x2ft
        0x2bt
        0x25t
        0x21t
        0x3ct
        0x2dt
        0x3at
        0x29t
        0x3ct
        0x21t
        0x27t
        0x26t
        0xet
        0x21t
        0x26t
        0x21t
        0x3bt
        0x20t
        0x2dt
        0x2ct
    .end array-data
.end method

.method public static synthetic A04(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/facebook/ads/redexgen/X/3y;)V
    .locals 0

    .line 11944
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 11945
    .local p1, "holder":Lcom/facebook/ads/redexgen/X/40;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    const/4 p2, 0x0

    const/4 p1, 0x6

    const/16 p0, 0x66

    invoke-static {p2, p1, p0}, Lcom/facebook/ads/redexgen/X/41;->A01(III)Ljava/lang/String;

    move-result-object p1

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11946
    :cond_0
    return-void
.end method

.method private A05(Landroid/os/Message;)Z
    .locals 3

    .line 11947
    .local p1, "this":Lcom/facebook/ads/redexgen/X/41;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 11948
    .local v1, "holder":Lcom/facebook/ads/redexgen/X/40;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    const/4 v2, 0x6

    const/16 v1, 0x11

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11949
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/41;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/41;->A05(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A07(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/3z;)Lcom/facebook/ads/redexgen/X/41;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/redexgen/X/3z<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/41<",
            "TT;>;"
        }
    .end annotation

    .line 11950
    .local p0, "this":Lcom/facebook/ads/redexgen/X/41;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    .local p2, "iterationFinishedEvent":Lcom/facebook/ads/redexgen/X/3z;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A02:Lcom/facebook/ads/redexgen/X/3T;

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/41;->A00(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/3T;Lcom/facebook/ads/redexgen/X/3z;)Lcom/facebook/ads/redexgen/X/41;

    move-result-object v0

    return-object v0
.end method

.method public final A08()V
    .locals 4

    .line 11951
    .local v3, "this":Lcom/facebook/ads/redexgen/X/41;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/41;->A02()V

    .line 11952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A07:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11953
    return-void

    .line 11954
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A03:Lcom/facebook/ads/redexgen/X/3v;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3v;->A9f(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11955
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/41;->A03:Lcom/facebook/ads/redexgen/X/3v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A03:Lcom/facebook/ads/redexgen/X/3v;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3v;->AC7(I)Lcom/facebook/ads/redexgen/X/nq;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3v;->AIT(Lcom/facebook/ads/redexgen/X/3u;)Z

    .line 11956
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A06:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    .line 11957
    .local v0, "recursiveFlushInProgress":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/41;->A06:Ljava/util/ArrayDeque;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A07:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 11958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A07:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 11959
    if-eqz v2, :cond_2

    .line 11960
    return-void

    .line 11961
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A06:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A06:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    sget-object v2, Lcom/facebook/ads/redexgen/X/41;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/41;->A0A:[Ljava/lang/String;

    const-string v1, "yEp1Grh3pDykJXHd8ndBtu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "iM1KUlOTpdsgtS4YknLkQB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 11963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A06:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 11964
    :cond_4
    return-void
.end method

.method public final A09(ILcom/facebook/ads/redexgen/X/3y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/3y<",
            "TT;>;)V"
        }
    .end annotation

    .line 11965
    .local p0, "this":Lcom/facebook/ads/redexgen/X/41;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    .local p2, "event":Lcom/facebook/ads/redexgen/X/3y;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$Event<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/41;->A02()V

    .line 11966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A08:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 11967
    .local v0, "listenerSnapshot":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Z

    if-eqz v0, :cond_1

    .line 11968
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 11969
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/40;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/41;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11970
    :cond_0
    return-void

    .line 11971
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/41;->A07:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3w;

    invoke-direct {v0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/3w;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/facebook/ads/redexgen/X/3y;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 11972
    return-void
.end method

.method public final A0A(ILcom/facebook/ads/redexgen/X/3y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/3y<",
            "TT;>;)V"
        }
    .end annotation

    .line 11973
    .local p0, "this":Lcom/facebook/ads/redexgen/X/41;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    .local p2, "event":Lcom/facebook/ads/redexgen/X/3y;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$Event<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/41;->A09(ILcom/facebook/ads/redexgen/X/3y;)V

    .line 11974
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/41;->A08()V

    .line 11975
    return-void
.end method
