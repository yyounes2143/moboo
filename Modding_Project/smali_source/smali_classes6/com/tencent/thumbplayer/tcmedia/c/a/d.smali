.class public Lcom/tencent/thumbplayer/tcmedia/c/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/ITPAssetResourceLoadingRequest;


# instance fields
.field private a:I

.field private b:Lcom/tencent/thumbplayer/tcmedia/c/a/c;

.field private c:Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/TPAssetResourceLoadingContentInformationRequest;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(JJIZ)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->d:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->e:Z

    .line 8
    .line 9
    iput p5, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->a:I

    .line 10
    .line 11
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    .line 12
    .line 13
    move-wide v2, p1

    .line 14
    move-wide v4, p3

    .line 15
    move v6, p6

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;-><init>(JJZ)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->b:Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    .line 20
    .line 21
    invoke-virtual {v1, p5}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->b:Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a(J)I

    move-result p1

    return p1
.end method

.method public a()Lcom/tencent/thumbplayer/tcmedia/c/a/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->b:Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    return-object v0
.end method

.method public a(Landroid/os/Looper;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->b:Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a(Landroid/os/Looper;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/TPAssetResourceLoadingContentInformationRequest;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->c:Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/TPAssetResourceLoadingContentInformationRequest;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->b:Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->d:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->b:Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public declared-synchronized finishLoading()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public getContentInformation()Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/TPAssetResourceLoadingContentInformationRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->c:Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/TPAssetResourceLoadingContentInformationRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public synthetic getLoadingDataRequest()Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/ITPAssetResourceLoadingDataRequest;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->a()Lcom/tencent/thumbplayer/tcmedia/c/a/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public declared-synchronized isFinished()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/a/d;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method
