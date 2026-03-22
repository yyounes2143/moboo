.class public abstract Lcom/facebook/ads/redexgen/X/7o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api29"
.end annotation


# static fields
.field public static final A00:Landroid/media/AudioAttributes;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 447
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 448
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 449
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 450
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7o;->A00:Landroid/media/AudioAttributes;

    .line 452
    return-void
.end method

.method public static A00(II)I
    .locals 3

    .line 22342
    const/16 v2, 0x8

    .local v0, "channelCount":I
    :goto_0
    if-lez v2, :cond_1

    .line 22343
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 22344
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 22345
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 22346
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/4a;->A01(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 22347
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 22348
    .local v1, "audioFormat":Landroid/media/AudioFormat;
    sget-object v0, Lcom/facebook/ads/redexgen/X/7o;->A00:Landroid/media/AudioAttributes;

    invoke-static {v1, v0}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22349
    return v2

    .line 22350
    .end local v1    # "audioFormat":Landroid/media/AudioFormat;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 22351
    .end local v0    # "channelCount":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static A01()[I
    .locals 5

    .line 22352
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Am;->A01()Lcom/facebook/ads/redexgen/X/1h;

    move-result-object v3

    .line 22353
    .local v0, "supportedEncodingsListBuilder":Lcom/facebook/ads/redexgen/X/1h;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7p;->A04()Lcom/facebook/ads/redexgen/X/mj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/mj;->A0C()Lcom/facebook/ads/redexgen/X/Al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Al;->A0N()Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 22354
    .local v2, "encoding":I
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 22355
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 22356
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 22357
    const v0, 0xbb80

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 22358
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/7o;->A00:Landroid/media/AudioAttributes;

    .line 22359
    invoke-static {v1, v0}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22360
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1h;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/1h;

    goto :goto_0

    .line 22361
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1h;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/1h;

    .line 22362
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1h;->A05()Lcom/facebook/ads/redexgen/X/Am;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AD;->A0C(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method
