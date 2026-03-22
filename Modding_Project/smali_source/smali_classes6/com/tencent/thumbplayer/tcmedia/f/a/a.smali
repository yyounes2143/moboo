.class public Lcom/tencent/thumbplayer/tcmedia/f/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaAsyncRequester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/f/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/TPNativeRichMediaAsyncRequester;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/TPNativeRichMediaAsyncRequester;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;

    .line 10
    .line 11
    return-void
.end method

.method private a([Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;)[Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;
    .locals 4

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    new-array v1, v1, [Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    new-array p1, v0, [Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;

    return-object p1
.end method

.method private a([Lcom/tencent/thumbplayer/tcmedia/api/TPTimeRange;)[Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;
    .locals 9

    .line 2
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    new-array v1, v1, [Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;

    move v2, v0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    if-nez v3, :cond_1

    new-array p1, v0, [Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;

    return-object p1

    :cond_1
    new-instance v4, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;

    invoke-virtual {v3}, Lcom/tencent/thumbplayer/tcmedia/api/TPTimeRange;->getStartTimeMs()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/tencent/thumbplayer/tcmedia/api/TPTimeRange;->getEndTimeMs()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;-><init>(JJ)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    new-array p1, v0, [Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;

    return-object p1
.end method


# virtual methods
.method public cancelRequest(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;->cancelRequest(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getFeatures()[Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;->getFeatures()[Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a([Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;)[Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public prepareAsync()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;->prepareAsync()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public requestFeatureDataAsyncAtTimeMs(IJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;->requestFeatureDataAsyncAtTimeMs(IJ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public requestFeatureDataAsyncAtTimeMsArray(I[J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;->requestFeatureDataAsyncAtTimeMsArray(I[J)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public requestFeatureDataAsyncAtTimeRange(ILcom/tencent/thumbplayer/tcmedia/api/TPTimeRange;)I
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p1, "TPRichMediaAsyncRequester"

    .line 4
    .line 5
    const-string p2, "requestFeatureDataAsyncAtTimeRange, timeRange == null"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;

    .line 13
    .line 14
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPTimeRange;->getStartTimeMs()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPTimeRange;->getEndTimeMs()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;-><init>(JJ)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1, v1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;->requestFeatureDataAsyncAtTimeRange(ILcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public requestFeatureDataAsyncAtTimeRanges(I[Lcom/tencent/thumbplayer/tcmedia/api/TPTimeRange;)I
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a([Lcom/tencent/thumbplayer/tcmedia/api/TPTimeRange;)[Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    array-length v0, p2

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p1, "TPRichMediaAsyncRequester"

    .line 9
    .line 10
    const-string p2, "requestFeatureDataAsyncAtTimeRanges, toNativeTimeRanges return empty array"

    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    return p1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;->requestFeatureDataAsyncAtTimeRanges(I[Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public setRequesterListener(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaAsyncRequesterListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/f/a/a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/f/a/a$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/f/a/a;Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaAsyncRequesterListener;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;->setRequesterListener(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequesterListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setRichMediaSource(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/a/a;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/async/ITPNativeRichMediaAsyncRequester;->setRichMediaSource(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
