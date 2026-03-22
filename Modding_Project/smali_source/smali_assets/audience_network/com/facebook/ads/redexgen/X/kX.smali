.class public final Lcom/facebook/ads/redexgen/X/kX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Iq;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/factory/DefaultFragmentedMp4ExtractorFactory$HeroWrappingExtractor;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/factory/DefaultFragmentedMp4ExtractorFactory$HeroTrackOutput;,
        Lcom/facebook/ads/androidx/media3/extractor/mp4/factory/DefaultFragmentedMp4ExtractorFactory$HeroWrappingExtractorOutput;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Iq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92383
    sget-object v0, Lcom/facebook/ads/redexgen/X/Iq;->A03:Lcom/facebook/ads/redexgen/X/Iq;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/kX;->A00:Lcom/facebook/ads/redexgen/X/Iq;

    .line 92384
    return-void
.end method

.method private A00()Z
    .locals 2

    .line 92385
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/kX;->A00:Lcom/facebook/ads/redexgen/X/Iq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Iq;->A04:Lcom/facebook/ads/redexgen/X/Iq;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A01(I)Lcom/facebook/ads/redexgen/X/GX;
    .locals 1

    .line 92386
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/kX;->A00()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92387
    new-instance v0, Lcom/facebook/ads/redexgen/X/kc;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/kc;-><init>(I)V

    return-object v0

    .line 92388
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/kb;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/kb;-><init>(I)V

    return-object v0
.end method
