.class public final Lcom/facebook/ads/redexgen/X/mi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Aw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaCodecListCompatV21"
.end annotation


# instance fields
.field public A00:[Landroid/media/MediaCodecInfo;

.field public final A01:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .line 99158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99159
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 99160
    :cond_0
    const/4 v0, 0x1

    .line 99161
    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/mi;->A01:I

    .line 99162
    return-void

    .line 99163
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00()V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "mediaCodecInfos"
        }
    .end annotation

    .line 99164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mi;->A00:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 99165
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mi;->A01:I

    new-instance v0, Landroid/media/MediaCodecList;

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mi;->A00:[Landroid/media/MediaCodecInfo;

    .line 99166
    :cond_0
    return-void
.end method


# virtual methods
.method public final A7H()I
    .locals 1

    .line 99167
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mi;->A00()V

    .line 99168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mi;->A00:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public final A7I(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .line 99169
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mi;->A00()V

    .line 99170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mi;->A00:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final AAI(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 99171
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final AAJ(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 99172
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final AIK()Z
    .locals 1

    .line 99173
    const/4 v0, 0x1

    return v0
.end method
