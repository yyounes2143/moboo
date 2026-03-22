.class public final Lcom/facebook/ads/redexgen/X/1N;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioAttributesV21"
.end annotation


# instance fields
.field public final A00:Landroid/media/AudioAttributes;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oy;)V
    .locals 3

    .line 8600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8601
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v0, p1, Lcom/facebook/ads/redexgen/X/oy;->A02:I

    .line 8602
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/oy;->A03:I

    .line 8603
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/oy;->A05:I

    .line 8604
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 8605
    .local v0, "builder":Landroid/media/AudioAttributes$Builder;
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    .line 8606
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oy;->A01:I

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/1L;->A00(Landroid/media/AudioAttributes$Builder;I)V

    .line 8607
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x20

    if-lt v1, v0, :cond_1

    .line 8608
    iget v0, p1, Lcom/facebook/ads/redexgen/X/oy;->A04:I

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/1M;->A00(Landroid/media/AudioAttributes$Builder;I)V

    .line 8609
    :cond_1
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1N;->A00:Landroid/media/AudioAttributes;

    .line 8610
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/oy;Lcom/facebook/ads/redexgen/X/1K;)V
    .locals 0

    .line 8611
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1N;-><init>(Lcom/facebook/ads/redexgen/X/oy;)V

    return-void
.end method
