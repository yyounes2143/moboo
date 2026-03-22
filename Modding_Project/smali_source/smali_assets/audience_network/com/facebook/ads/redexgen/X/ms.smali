.class public final Lcom/facebook/ads/redexgen/X/ms;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9U;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A34(Lcom/facebook/ads/redexgen/X/9P;Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 3

    .line 99244
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/or;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    if-nez v0, :cond_0

    .line 99245
    const/4 v0, 0x0

    return-object v0

    .line 99246
    :cond_0
    const/4 v0, 0x1

    new-instance v2, Lcom/facebook/ads/redexgen/X/9z;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/9z;-><init>(I)V

    const/16 v0, 0x1771

    new-instance v1, Lcom/facebook/ads/redexgen/X/9E;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9E;-><init>(Ljava/lang/Throwable;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/mq;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/mq;-><init>(Lcom/facebook/ads/redexgen/X/9E;)V

    return-object v0
.end method

.method public final A7O(Lcom/facebook/ads/redexgen/X/or;)I
    .locals 1

    .line 99247
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/or;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic AGJ(Lcom/facebook/ads/redexgen/X/9P;Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/9T;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9R;->A00(Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/9P;Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/9T;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic AGK()V
    .locals 0

    return-void
.end method

.method public final AIu(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/7m;)V
    .locals 0

    .line 99248
    return-void
.end method
