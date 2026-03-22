.class Lcom/tencent/thumbplayer/tcmedia/f/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/f/b;

.field private b:Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->b:Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;

    .line 2
    .line 3
    return-void
.end method

.method public onDeselectFeatureSuccess(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/16 v1, 0x131

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v2, p2

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(Lcom/tencent/thumbplayer/tcmedia/f/b;IIILjava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->b:Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 17
    .line 18
    invoke-interface {p1, p2, v2}, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;->onDeselectFeatureSuccess(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizer;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onRichMediaError(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/16 v1, 0x134

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v2, p2

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(Lcom/tencent/thumbplayer/tcmedia/f/b;IIILjava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->b:Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 17
    .line 18
    invoke-interface {p1, p2, v2}, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;->onRichMediaError(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizer;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onRichMediaFeatureData(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;ILcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeatureData;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->b:Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 6
    .line 7
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData;

    .line 8
    .line 9
    invoke-direct {v1, p3}, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeRichMediaFeatureData;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0, p2, v1}, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;->onRichMediaFeatureData(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizer;ILcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeatureData;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onRichMediaFeatureFailure(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/16 v1, 0x136

    .line 6
    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(Lcom/tencent/thumbplayer/tcmedia/f/b;IIILjava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->b:Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 17
    .line 18
    invoke-interface {p1, p2, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;->onRichMediaFeatureFailure(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizer;II)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onRichMediaInfo(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;IJJJLjava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->b:Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 6
    .line 7
    move v2, p2

    .line 8
    move-wide v3, p3

    .line 9
    move-wide v5, p5

    .line 10
    move-wide/from16 v7, p7

    .line 11
    .line 12
    move-object/from16 v9, p9

    .line 13
    .line 14
    invoke-interface/range {v0 .. v9}, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;->onRichMediaInfo(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizer;IJJJLjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onRichMediaPrepared(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/f/b;->getFeatures()[Lcom/tencent/thumbplayer/tcmedia/api/richmedia/TPRichMediaFeature;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/16 v1, 0x12d

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(Lcom/tencent/thumbplayer/tcmedia/f/b;IIILjava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->b:Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;->onRichMediaPrepared(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizer;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onSelectFeatureSuccess(Lcom/tencent/thumbplayer/tcmedia/core/richmedia/ITPNativeRichMediaProcessor;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/16 v1, 0x12f

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v2, p2

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/f/b;->a(Lcom/tencent/thumbplayer/tcmedia/f/b;IIILjava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->b:Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/f/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 17
    .line 18
    invoke-interface {p1, p2, v2}, Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizerListener;->onSelectFeatureSuccess(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizer;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
