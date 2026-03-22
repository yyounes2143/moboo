.class public final Lcom/facebook/ads/redexgen/X/np;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/nq;
    }
.end annotation


# static fields
.field public static final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/nq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 3188
    const/16 v1, 0x32

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/np;->A01:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 101095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101096
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/np;->A00:Landroid/os/Handler;

    .line 101097
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/nq;
    .locals 3

    .line 101098
    sget-object v2, Lcom/facebook/ads/redexgen/X/np;->A01:Ljava/util/List;

    monitor-enter v2

    .line 101099
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/np;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101100
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/nq;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/nq;-><init>(Lcom/facebook/ads/redexgen/X/4P;)V

    .line 101101
    :goto_0
    monitor-exit v2

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/np;->A01:Ljava/util/List;

    sget-object v0, Lcom/facebook/ads/redexgen/X/np;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nq;

    goto :goto_0

    .line 101102
    :goto_1
    return-object v0

    .line 101103
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/nq;)V
    .locals 3

    .line 101104
    sget-object v2, Lcom/facebook/ads/redexgen/X/np;->A01:Ljava/util/List;

    monitor-enter v2

    .line 101105
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/np;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v0, 0x32

    if-ge v1, v0, :cond_0

    .line 101106
    sget-object v0, Lcom/facebook/ads/redexgen/X/np;->A01:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101107
    :cond_0
    monitor-exit v2

    .line 101108
    return-void

    .line 101109
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/nq;)V
    .locals 0

    .line 101110
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/np;->A01(Lcom/facebook/ads/redexgen/X/nq;)V

    return-void
.end method


# virtual methods
.method public final A03(Ljava/lang/Runnable;)Z
    .locals 1

    .line 101111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/np;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final A8J()Landroid/os/Looper;
    .locals 1

    .line 101112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/np;->A00:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final A9f(I)Z
    .locals 1

    .line 101113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/np;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public final AC7(I)Lcom/facebook/ads/redexgen/X/nq;
    .locals 2

    .line 101114
    invoke-static {}, Lcom/facebook/ads/redexgen/X/np;->A00()Lcom/facebook/ads/redexgen/X/nq;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/np;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/nq;->A01(Landroid/os/Message;Lcom/facebook/ads/redexgen/X/np;)Lcom/facebook/ads/redexgen/X/nq;

    move-result-object v0

    return-object v0
.end method

.method public final AC8(III)Lcom/facebook/ads/redexgen/X/nq;
    .locals 2

    .line 101115
    invoke-static {}, Lcom/facebook/ads/redexgen/X/np;->A00()Lcom/facebook/ads/redexgen/X/nq;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/np;->A00:Landroid/os/Handler;

    .line 101116
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/nq;->A01(Landroid/os/Message;Lcom/facebook/ads/redexgen/X/np;)Lcom/facebook/ads/redexgen/X/nq;

    move-result-object v0

    .line 101117
    return-object v0
.end method

.method public final AC9(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/nq;
    .locals 2

    .line 101118
    invoke-static {}, Lcom/facebook/ads/redexgen/X/np;->A00()Lcom/facebook/ads/redexgen/X/nq;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/np;->A00:Landroid/os/Handler;

    .line 101119
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/nq;->A01(Landroid/os/Message;Lcom/facebook/ads/redexgen/X/np;)Lcom/facebook/ads/redexgen/X/nq;

    move-result-object v0

    .line 101120
    return-object v0
.end method

.method public final ACA(ILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/nq;
    .locals 2

    .line 101121
    invoke-static {}, Lcom/facebook/ads/redexgen/X/np;->A00()Lcom/facebook/ads/redexgen/X/nq;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/np;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/nq;->A01(Landroid/os/Message;Lcom/facebook/ads/redexgen/X/np;)Lcom/facebook/ads/redexgen/X/nq;

    move-result-object v0

    return-object v0
.end method

.method public final AHj(I)V
    .locals 1

    .line 101122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/np;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 101123
    return-void
.end method

.method public final AIQ(I)Z
    .locals 1

    .line 101124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/np;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public final AIR(IJ)Z
    .locals 1

    .line 101125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/np;->A00:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result v0

    return v0
.end method

.method public final AIT(Lcom/facebook/ads/redexgen/X/3u;)Z
    .locals 1

    .line 101126
    check-cast p1, Lcom/facebook/ads/redexgen/X/nq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/np;->A00:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/nq;->A03(Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method
