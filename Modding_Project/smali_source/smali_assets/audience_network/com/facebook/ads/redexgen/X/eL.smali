.class public final Lcom/facebook/ads/redexgen/X/eL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/CM;->A04()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/CM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CM;)V
    .locals 0

    .line 80111
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canPause()Z
    .locals 1

    .line 80112
    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekBackward()Z
    .locals 1

    .line 80113
    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekForward()Z
    .locals 1

    .line 80114
    const/4 v0, 0x1

    return v0
.end method

.method public final getAudioSessionId()I
    .locals 1

    .line 80115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A01(Lcom/facebook/ads/redexgen/X/CM;)Lcom/facebook/ads/redexgen/X/eF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A01(Lcom/facebook/ads/redexgen/X/CM;)Lcom/facebook/ads/redexgen/X/eF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A04()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBufferPercentage()I
    .locals 1

    .line 80116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A01(Lcom/facebook/ads/redexgen/X/CM;)Lcom/facebook/ads/redexgen/X/eF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A01(Lcom/facebook/ads/redexgen/X/CM;)Lcom/facebook/ads/redexgen/X/eF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A05()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCurrentPosition()I
    .locals 1

    .line 80117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CM;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 80118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CM;->getDuration()I

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 80119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A01(Lcom/facebook/ads/redexgen/X/CM;)Lcom/facebook/ads/redexgen/X/eF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A01(Lcom/facebook/ads/redexgen/X/CM;)Lcom/facebook/ads/redexgen/X/eF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eF;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pause()V
    .locals 1

    .line 80120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A02(Lcom/facebook/ads/redexgen/X/CM;)Lcom/facebook/ads/redexgen/X/eV;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A02(Lcom/facebook/ads/redexgen/X/CM;)Lcom/facebook/ads/redexgen/X/eV;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eV;->AE9()V

    .line 80122
    :cond_0
    return-void
.end method

.method public final seekTo(I)V
    .locals 1

    .line 80123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/CM;->seekTo(I)V

    .line 80124
    return-void
.end method

.method public final start()V
    .locals 1

    .line 80125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A02(Lcom/facebook/ads/redexgen/X/CM;)Lcom/facebook/ads/redexgen/X/eV;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eL;->A00:Lcom/facebook/ads/redexgen/X/CM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CM;->A02(Lcom/facebook/ads/redexgen/X/CM;)Lcom/facebook/ads/redexgen/X/eV;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eV;->AEA()V

    .line 80127
    :cond_0
    return-void
.end method
