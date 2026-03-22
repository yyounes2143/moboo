.class public final Lcom/facebook/ads/redexgen/X/m7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/J7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/95;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleEventSubtitle"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/Am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/facebook/ads/redexgen/X/Am;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/facebook/ads/redexgen/X/Am<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;)V"
        }
    .end annotation

    .line 98124
    .local p3, "cues":Lcom/facebook/ads/redexgen/X/Am;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98125
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/m7;->A00:J

    .line 98126
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/m7;->A01:Lcom/facebook/ads/redexgen/X/Am;

    .line 98127
    return-void
.end method


# virtual methods
.method public final A7P(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;"
        }
    .end annotation

    .line 98128
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/m7;->A00:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m7;->A01:Lcom/facebook/ads/redexgen/X/Am;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final A7v(I)J
    .locals 2

    .line 98129
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 98130
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/m7;->A00:J

    return-wide v0

    .line 98131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A7w()I
    .locals 1

    .line 98132
    const/4 v0, 0x1

    return v0
.end method

.method public final A8S(J)I
    .locals 3

    .line 98133
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/m7;->A00:J

    cmp-long v0, v1, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
