.class public final Lcom/facebook/ads/redexgen/X/nr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3T;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5H(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/np;
    .locals 2

    .line 101143
    nop

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/np;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/np;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public final A6B()J
    .locals 2

    .line 101144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final AJt()J
    .locals 2

    .line 101145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
