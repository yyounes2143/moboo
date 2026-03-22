.class public final Lcom/facebook/ads/redexgen/X/8n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/mw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StreamEventCallbackV29"
.end annotation


# instance fields
.field public final A00:Landroid/media/AudioTrack$StreamEventCallback;

.field public final A01:Landroid/os/Handler;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/mw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/mw;)V
    .locals 2

    .line 23916
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8n;->A02:Lcom/facebook/ads/redexgen/X/mw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23917
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A01:Landroid/os/Handler;

    .line 23918
    new-instance v0, Lcom/facebook/ads/redexgen/X/8m;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/8m;-><init>(Lcom/facebook/ads/redexgen/X/8n;Lcom/facebook/ads/redexgen/X/mw;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A00:Landroid/media/AudioTrack$StreamEventCallback;

    .line 23919
    return-void
.end method


# virtual methods
.method public final A00(Landroid/media/AudioTrack;)V
    .locals 2

    .line 23920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A01:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/facebook/ads/redexgen/X/8l;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/8l;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A00:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v1, v0}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 23921
    return-void
.end method

.method public final A01(Landroid/media/AudioTrack;)V
    .locals 2

    .line 23922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8n;->A00:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 23923
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8n;->A01:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 23924
    return-void
.end method
