.class public final Lcom/facebook/ads/redexgen/X/8k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/mw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingExceptionHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A00:J

.field public A01:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final A02:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 23887
    .local p0, "this":Lcom/facebook/ads/redexgen/X/8k;, "Lcom/facebook/ads/androidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23888
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/8k;->A02:J

    .line 23889
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 23890
    .local p0, "this":Lcom/facebook/ads/redexgen/X/8k;, "Lcom/facebook/ads/androidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8k;->A01:Ljava/lang/Exception;

    .line 23891
    return-void
.end method

.method public final A01(Ljava/lang/Exception;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23892
    .local p0, "this":Lcom/facebook/ads/redexgen/X/8k;, "Lcom/facebook/ads/androidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder<TT;>;"
    .local p1, "exception":Ljava/lang/Exception;, "TT;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 23893
    .local v0, "nowMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8k;->A01:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 23894
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8k;->A01:Ljava/lang/Exception;

    .line 23895
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8k;->A02:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8k;->A00:J

    .line 23896
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/8k;->A00:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    .line 23897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8k;->A01:Ljava/lang/Exception;

    if-eq v0, p1, :cond_1

    .line 23898
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8k;->A01:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 23899
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8k;->A01:Ljava/lang/Exception;

    .line 23900
    .local v2, "pendingException":Ljava/lang/Exception;, "TT;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8k;->A00()V

    .line 23901
    throw v0

    .line 23902
    .end local v2    # "pendingException":Ljava/lang/Exception;, "TT;"
    :cond_2
    return-void
.end method
