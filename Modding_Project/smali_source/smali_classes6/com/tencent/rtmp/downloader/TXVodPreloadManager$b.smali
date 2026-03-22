.class final Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPreLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/downloader/TXVodPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:I

.field private final b:Lcom/tencent/rtmp/downloader/ITXVodPreloadListener;

.field private final c:Ljava/lang/String;

.field private d:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;Ljava/lang/String;Lcom/tencent/rtmp/downloader/ITXVodPreloadListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->a:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->b:Lcom/tencent/rtmp/downloader/ITXVodPreloadListener;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->d:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    .line 12
    .line 13
    return-void
.end method

.method private a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->d:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPDownloadProxy;->stopPreload(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public final onPrepareDownloadProgressUpdate(IIJJLjava/lang/String;)V
    .locals 1

    .line 1
    new-instance p7, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "preload: prepare process:"

    .line 4
    .line 5
    invoke-direct {p7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ","

    .line 12
    .line 13
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p7, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "TXVodPreloadManager"

    .line 36
    .line 37
    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onPrepareError(IILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "preload error: moduleId: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ", errorCode: "

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ", extInfo: "

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "TXVodPreloadManager"

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->b:Lcom/tencent/rtmp/downloader/ITXVodPreloadListener;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget v0, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->a:I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p1, v0, v1, p2, p3}, Lcom/tencent/rtmp/downloader/ITXVodPreloadListener;->onError(ILjava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget p1, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->a:I

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->a(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final onPrepareOK()V
    .locals 3

    .line 1
    const-string v0, "TXVodPreloadManager"

    .line 2
    .line 3
    const-string v1, "preload: onPrepareOK"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->b:Lcom/tencent/rtmp/downloader/ITXVodPreloadListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->a:I

    .line 13
    .line 14
    iget-object v2, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lcom/tencent/rtmp/downloader/ITXVodPreloadListener;->onComplete(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->a:I

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/tencent/rtmp/downloader/TXVodPreloadManager$b;->a(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
