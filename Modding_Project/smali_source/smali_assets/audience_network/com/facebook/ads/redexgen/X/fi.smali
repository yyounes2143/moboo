.class public final Lcom/facebook/ads/redexgen/X/fi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Y1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/fh;->setListener(Lcom/facebook/ads/MediaViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/MediaViewListener;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/fh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fh;Lcom/facebook/ads/MediaViewListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81545
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fi;->A01:Lcom/facebook/ads/redexgen/X/fh;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/fi;->A00:Lcom/facebook/ads/MediaViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACn()V
    .locals 2

    .line 81546
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fi;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fi;->A01:Lcom/facebook/ads/redexgen/X/fh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fh;->A00(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onComplete(Lcom/facebook/ads/MediaView;)V

    .line 81547
    return-void
.end method

.method public final AD9()V
    .locals 2

    .line 81548
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fi;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fi;->A01:Lcom/facebook/ads/redexgen/X/fh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fh;->A00(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onEnterFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 81549
    return-void
.end method

.method public final ADF()V
    .locals 2

    .line 81550
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fi;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fi;->A01:Lcom/facebook/ads/redexgen/X/fh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fh;->A00(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onExitFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 81551
    return-void
.end method

.method public final ADN()V
    .locals 2

    .line 81552
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fi;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fi;->A01:Lcom/facebook/ads/redexgen/X/fh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fh;->A00(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenBackground(Lcom/facebook/ads/MediaView;)V

    .line 81553
    return-void
.end method

.method public final ADP()V
    .locals 2

    .line 81554
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fi;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fi;->A01:Lcom/facebook/ads/redexgen/X/fh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fh;->A00(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenForeground(Lcom/facebook/ads/MediaView;)V

    .line 81555
    return-void
.end method

.method public final AEX()V
    .locals 2

    .line 81556
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fi;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fi;->A01:Lcom/facebook/ads/redexgen/X/fh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fh;->A00(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPlay(Lcom/facebook/ads/MediaView;)V

    .line 81557
    return-void
.end method

.method public final AFu()V
    .locals 3

    .line 81558
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fi;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fi;->A01:Lcom/facebook/ads/redexgen/X/fh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fh;->A00(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/MediaView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fi;->A01:Lcom/facebook/ads/redexgen/X/fh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fh;->A01(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVolume()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/MediaViewListener;->onVolumeChange(Lcom/facebook/ads/MediaView;F)V

    .line 81559
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 81560
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fi;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fi;->A01:Lcom/facebook/ads/redexgen/X/fh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fh;->A00(Lcom/facebook/ads/redexgen/X/fh;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPause(Lcom/facebook/ads/MediaView;)V

    .line 81561
    return-void
.end method
