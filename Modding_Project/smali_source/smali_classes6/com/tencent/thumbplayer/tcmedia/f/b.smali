.class public Lcom/tencent/thumbplayer/tcmedia/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/f/b$a;,
        Lcom/tencent/thumbplayer/tcmedia/f/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

.field private b:Lcom/tencent/thumbplayer/tcmedia/f/b$a;

.field private c:Lcom/tencent/thumbplayer/tcmedia/f/b$b;

.field private d:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaProcessor;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaProcessor;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 10
    .line 11
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/f/b$a;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/f/b$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/f/b;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->b:Lcom/tencent/thumbplayer/tcmedia/f/b$a;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->setInnerProcessorCallback(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaInnerProcessorCallback;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/f/b$b;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/f/b$b;-><init>(Lcom/tencent/thumbplayer/tcmedia/f/b;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->c:Lcom/tencent/thumbplayer/tcmedia/f/b$b;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->setProcessorCallback(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessorCallback;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/c;

    .line 36
    .line 37
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/c;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->d:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/c;

    .line 41
    .line 42
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/f/b/a;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/f/b/a;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/c;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/a;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private a(IIILjava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->d:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/c;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/f/b;IIILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->setPlaybackRate(F)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->seek(J)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/f/a$a;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->b:Lcom/tencent/thumbplayer/tcmedia/f/b$a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/f/b$a;->a(Lcom/tencent/thumbplayer/tcmedia/f/a$a;)V

    return-void
.end method

.method public deselectFeatureAsync(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->deselectFeatureAsync(I)V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    const/16 v2, 0x130

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move v3, p1

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public finalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->setInnerProcessorCallback(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaInnerProcessorCallback;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->setProcessorCallback(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessorCallback;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->release()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->c:Lcom/tencent/thumbplayer/tcmedia/f/b$b;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->b:Lcom/tencent/thumbplayer/tcmedia/f/b$a;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/f/b$a;->a(Lcom/tencent/thumbplayer/tcmedia/f/a$a;)V

    .line 25
    .line 26
    .line 27
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public getFeatures()[Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->getFeatures()[Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-array v0, v1, [Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    array-length v2, v0

    .line 14
    new-array v2, v2, [Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;

    .line 15
    .line 16
    :goto_0
    array-length v3, v0

    .line 17
    if-ge v1, v3, :cond_1

    .line 18
    .line 19
    aget-object v3, v0, v1

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    new-instance v4, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;

    .line 24
    .line 25
    invoke-direct {v4, v3}, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeature;)V

    .line 26
    .line 27
    .line 28
    aput-object v4, v2, v1

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v2
.end method

.method public prepareAsync()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->prepareAsync()V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    const/16 v2, 0x12c

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v1, p0

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public release()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->setInnerProcessorCallback(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaInnerProcessorCallback;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->setProcessorCallback(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessorCallback;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->release()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->c:Lcom/tencent/thumbplayer/tcmedia/f/b$b;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->b:Lcom/tencent/thumbplayer/tcmedia/f/b$a;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/f/b$a;->a(Lcom/tencent/thumbplayer/tcmedia/f/a$a;)V

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    const/16 v3, 0x133

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    move-object v2, p0

    .line 34
    invoke-direct/range {v2 .. v7}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v2, Lcom/tencent/thumbplayer/tcmedia/f/b;->d:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/c;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/c;->c()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public reset()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    const/16 v2, 0x132

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v1, p0

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public selectFeatureAsync(ILcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaRequestExtraInfo;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaRequestExtraInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaRequestExtraInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaRequestExtraInfo;->getActOnOption()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {v0, p2}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaRequestExtraInfo;->setActOnOptional(I)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 14
    .line 15
    invoke-interface {p2, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->selectFeatureAsync(ILcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaRequestExtraInfo;)V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/16 v2, 0x12e

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    move-object v1, p0

    .line 24
    move v3, p1

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setListener(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->c:Lcom/tencent/thumbplayer/tcmedia/f/b$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRichMediaSource(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b;->a:Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;->setRichMediaSource(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    const/16 v2, 0x135

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-object v5, p1

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
