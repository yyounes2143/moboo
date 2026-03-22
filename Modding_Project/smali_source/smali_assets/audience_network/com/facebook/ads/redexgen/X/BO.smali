.class public final Lcom/facebook/ads/redexgen/X/BO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadUpdate"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/B8;

.field public final A01:Ljava/lang/Exception;

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/B8;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/B8;ZLjava/util/List;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/B8;",
            "Z",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/B8;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 30785
    .local p3, "downloads":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30786
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BO;->A00:Lcom/facebook/ads/redexgen/X/B8;

    .line 30787
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/BO;->A03:Z

    .line 30788
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/BO;->A02:Ljava/util/List;

    .line 30789
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/BO;->A01:Ljava/lang/Exception;

    .line 30790
    return-void
.end method
