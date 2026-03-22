.class public final Lcom/facebook/ads/redexgen/X/K0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Zo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5h;
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
            "Lcom/facebook/ads/redexgen/X/5h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5h;)V
    .locals 1

    .line 47662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47663
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K0;->A00:Ljava/lang/ref/WeakReference;

    .line 47664
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/5h;Lcom/facebook/ads/redexgen/X/5o;)V
    .locals 0

    .line 47665
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/K0;-><init>(Lcom/facebook/ads/redexgen/X/5h;)V

    return-void
.end method


# virtual methods
.method public final ADT(Lcom/facebook/ads/redexgen/X/Zn;)V
    .locals 2

    .line 47666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K0;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5h;

    .line 47667
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/5h;
    if-eqz v1, :cond_0

    .line 47668
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zn;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A09(Lcom/facebook/ads/redexgen/X/5h;Z)Z

    .line 47669
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/5h;->A07(Lcom/facebook/ads/redexgen/X/5h;)V

    .line 47670
    :cond_0
    return-void

    .line 47671
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
