.class public final Lcom/facebook/ads/redexgen/X/kA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/J7;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;)V"
        }
    .end annotation

    .line 91845
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91846
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kA;->A00:Ljava/util/List;

    .line 91847
    return-void
.end method


# virtual methods
.method public final A7P(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;"
        }
    .end annotation

    .line 91848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kA;->A00:Ljava/util/List;

    return-object v0
.end method

.method public final A7v(I)J
    .locals 2

    .line 91849
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final A7w()I
    .locals 1

    .line 91850
    const/4 v0, 0x1

    return v0
.end method

.method public final A8S(J)I
    .locals 1

    .line 91851
    const/4 v0, -0x1

    return v0
.end method
