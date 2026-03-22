.class public final Lcom/facebook/ads/redexgen/X/Ko;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityCheckerPostRunnable"
.end annotation


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/eX;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/eX;)V
    .locals 1

    .line 49739
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    .line 49740
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ko;->A00:Ljava/lang/ref/WeakReference;

    .line 49741
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/eX;",
            ">;)V"
        }
    .end annotation

    .line 49742
    .local p1, "viewabilityChecker":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/viewability/AdViewabilityChecker;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    .line 49743
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ko;->A00:Ljava/lang/ref/WeakReference;

    .line 49744
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 49745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ko;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/eX;

    .line 49746
    .local v0, "viewabilityChecker":Lcom/facebook/ads/redexgen/X/eX;
    if-eqz v0, :cond_0

    .line 49747
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 49748
    :cond_0
    return-void
.end method
