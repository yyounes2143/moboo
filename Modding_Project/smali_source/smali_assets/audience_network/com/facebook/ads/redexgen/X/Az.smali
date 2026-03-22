.class public final synthetic Lcom/facebook/ads/redexgen/X/Az;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/AN;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/mf;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/mf;Lcom/facebook/ads/redexgen/X/AN;)V
    .locals 0

    .line 30525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Az;->A01:Lcom/facebook/ads/redexgen/X/mf;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Az;->A00:Lcom/facebook/ads/redexgen/X/AN;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    .line 30526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Az;->A01:Lcom/facebook/ads/redexgen/X/mf;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Az;->A00:Lcom/facebook/ads/redexgen/X/AN;

    move-wide v5, p4

    move-wide v3, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/mf;->A00(Lcom/facebook/ads/redexgen/X/AN;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
