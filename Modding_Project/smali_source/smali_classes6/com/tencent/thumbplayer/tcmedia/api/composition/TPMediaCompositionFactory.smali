.class public Lcom/tencent/thumbplayer/tcmedia/api/composition/TPMediaCompositionFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createEmptyTrackClip(IJJ)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrackClip;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/b/a;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/b/a;->setCutTimeRange(JJ)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static createMediaAssetExtraParam()Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAssetExtraParam;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/b/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static createMediaAssetOrderedMap()Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAssetOrderedMap;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/b/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static createMediaComposition()Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaComposition;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/b/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static createMediaDRMAsset(ILjava/lang/String;)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaDRMAsset;
    .locals 1
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_DRM_TYPE;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/b/j;-><init>(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static createMediaRTCAsset(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/k;

    invoke-direct {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/b/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createMediaRTCAsset(Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;
    .locals 1

    .line 2
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/b/k;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createMediaTrack(I)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrack;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/g;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/b/g;-><init>(I)V

    return-object v0
.end method

.method public static createMediaTrack(ILjava/util/List;)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrackClip;",
            ">;)",
            "Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrack;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/g;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/b/g;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrackClip;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/b/g;->addTrackClip(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrackClip;)I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static varargs createMediaTrack(I[Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrackClip;)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrack;
    .locals 3

    .line 3
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/g;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/b/g;-><init>(I)V

    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/b/g;->addTrackClip(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrackClip;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createMediaTrackClip(Ljava/lang/String;I)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrackClip;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/h;

    invoke-direct {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/b/h;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createMediaTrackClip(Ljava/lang/String;IJJ)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrackClip;
    .locals 7

    .line 2
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/h;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/thumbplayer/tcmedia/b/h;-><init>(Ljava/lang/String;IJJ)V

    return-object v0
.end method

.method public static createMediaUrlAsset(Ljava/lang/String;)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaUrlAsset;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/b/l;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
