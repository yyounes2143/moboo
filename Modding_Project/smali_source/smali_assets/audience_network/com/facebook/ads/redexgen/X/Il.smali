.class public final Lcom/facebook/ads/redexgen/X/Il;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Zo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceholderDownloadListener"
.end annotation


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/5Q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5Q;)V
    .locals 1

    .line 42228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42229
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A00:Ljava/lang/ref/WeakReference;

    .line 42230
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/5Q;Lcom/facebook/ads/redexgen/X/5Y;)V
    .locals 0

    .line 42231
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Il;-><init>(Lcom/facebook/ads/redexgen/X/5Q;)V

    return-void
.end method


# virtual methods
.method public final ADT(Lcom/facebook/ads/redexgen/X/Zn;)V
    .locals 2

    .line 42232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5Q;

    .line 42233
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/5Q;
    if-eqz v1, :cond_0

    .line 42234
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zn;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A07(Lcom/facebook/ads/redexgen/X/5Q;Z)Z

    .line 42235
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/5Q;->A05(Lcom/facebook/ads/redexgen/X/5Q;)V

    .line 42236
    :cond_0
    return-void

    .line 42237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
