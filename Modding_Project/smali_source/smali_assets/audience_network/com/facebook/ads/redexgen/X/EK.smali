.class public abstract Lcom/facebook/ads/redexgen/X/EK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/EJ;,
        Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/TrackSelector$Factory;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/EJ;

.field public A01:Lcom/facebook/ads/redexgen/X/EU;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/EU;
    .locals 1

    .line 34716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/EU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/EU;

    return-object v0
.end method

.method public final A01()V
    .locals 1

    .line 34717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/EJ;

    if-eqz v0, :cond_0

    .line 34718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/EJ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/EJ;->AFT()V

    .line 34719
    :cond_0
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/EJ;Lcom/facebook/ads/redexgen/X/EU;)V
    .locals 0

    .line 34720
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/EJ;

    .line 34721
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/EK;->A01:Lcom/facebook/ads/redexgen/X/EU;

    .line 34722
    return-void
.end method

.method public abstract A0Y()Z
.end method

.method public abstract A0b([Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/mA;Lcom/facebook/ads/redexgen/X/mL;Lcom/facebook/ads/androidx/media3/common/Timeline;)Lcom/facebook/ads/redexgen/X/EL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation
.end method

.method public abstract A0c(Ljava/lang/Object;)V
.end method
