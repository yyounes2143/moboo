.class Lcom/tencent/thumbplayer/tcmedia/c/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/c/e;


# direct methods
.method private constructor <init>(Lcom/tencent/thumbplayer/tcmedia/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/thumbplayer/tcmedia/c/e;Lcom/tencent/thumbplayer/tcmedia/c/e$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/e$b;-><init>(Lcom/tencent/thumbplayer/tcmedia/c/e;)V

    return-void
.end method


# virtual methods
.method public getAdvRemainTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->getAdvRemainTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public getContentType(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->getContentType(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getCurrentPlayClipNo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->getCurrentPlayClipNo()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getCurrentPlayOffset()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->getCurrentPlayOffset()[J

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->getCurrentPosition()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public getDataFilePath(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->getDataFilePath(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getDataTotalSize(ILjava/lang/String;)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->getDataTotalSize(ILjava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    return-wide p1
.end method

.method public getPlayInfo(J)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/e;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/e;-><init>()V

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/c/e$e;-><init>(Lcom/tencent/thumbplayer/tcmedia/c/e$1;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;->a:Ljava/lang/Object;

    iput-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;->b:Lcom/tencent/thumbplayer/tcmedia/utils/e;

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    const/16 p2, 0x1009

    invoke-static {p1, p2, v1}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;Lcom/tencent/thumbplayer/tcmedia/utils/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPlayInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 2
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/e;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/e;-><init>()V

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/c/e$e;-><init>(Lcom/tencent/thumbplayer/tcmedia/c/e$1;)V

    iput-object p1, v1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;->a:Ljava/lang/Object;

    iput-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;->b:Lcom/tencent/thumbplayer/tcmedia/utils/e;

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    const/16 v2, 0x100b

    invoke-static {p1, v2, v1}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;Lcom/tencent/thumbplayer/tcmedia/utils/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPlayerBufferLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->getPlayerBufferLength()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public onDownloadCdnUrlExpired(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    const/16 v1, 0x1007

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPCDNURLInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPCDNURLInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPCDNURLInfo;->url:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPCDNURLInfo;->cdnIp:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPCDNURLInfo;->uIp:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPCDNURLInfo;->errorStr:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 15
    .line 16
    const/16 p2, 0x1004

    .line 17
    .line 18
    invoke-static {p1, p2, v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onDownloadCdnUrlUpdate(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    const/16 v1, 0x1003

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDownloadError(IILjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const-wide/16 v7, 0x0

    .line 5
    .line 6
    const/16 v1, 0x1002

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    move v2, p1

    .line 10
    move v3, p2

    .line 11
    move-object v4, p3

    .line 12
    invoke-static/range {v0 .. v8}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;IIILjava/lang/Object;ZZJ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onDownloadFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    const/16 v1, 0x1001

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onDownloadProgressUpdate(IIJJLjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    int-to-long v1, p1

    .line 7
    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;->playableDurationMS:J

    .line 8
    .line 9
    iput p2, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;->downloadSpeedKBps:I

    .line 10
    .line 11
    iput-wide p3, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;->currentDownloadSize:J

    .line 12
    .line 13
    iput-wide p5, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;->totalFileSize:J

    .line 14
    .line 15
    iput-object p7, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;->extraInfo:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 18
    .line 19
    const/16 p2, 0x100a

    .line 20
    .line 21
    invoke-static {p1, p2, v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPProtocolInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPProtocolInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPProtocolInfo;->protocolVersion:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPProtocolInfo;->protocolName:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 11
    .line 12
    const/16 p2, 0x1006

    .line 13
    .line 14
    invoke-static {p1, p2, v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDownloadStatusUpdate(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const-wide/16 v7, 0x0

    .line 5
    .line 6
    const/16 v1, 0x1005

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move v2, p1

    .line 12
    invoke-static/range {v0 .. v8}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;IIILjava/lang/Object;ZZJ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/c/e$f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/c/e$f;-><init>(Lcom/tencent/thumbplayer/tcmedia/c/e$1;)V

    .line 5
    .line 6
    .line 7
    iput p1, v0, Lcom/tencent/thumbplayer/tcmedia/c/e$f;->a:I

    .line 8
    .line 9
    iput-object p2, v0, Lcom/tencent/thumbplayer/tcmedia/c/e$f;->b:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, v0, Lcom/tencent/thumbplayer/tcmedia/c/e$f;->c:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, v0, Lcom/tencent/thumbplayer/tcmedia/c/e$f;->d:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, v0, Lcom/tencent/thumbplayer/tcmedia/c/e$f;->e:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/e;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/e;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lcom/tencent/thumbplayer/tcmedia/c/e$e;

    .line 23
    .line 24
    invoke-direct {p2, v1}, Lcom/tencent/thumbplayer/tcmedia/c/e$e;-><init>(Lcom/tencent/thumbplayer/tcmedia/c/e$1;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/c/e$e;->a:Ljava/lang/Object;

    .line 28
    .line 29
    iput-object p1, p2, Lcom/tencent/thumbplayer/tcmedia/c/e$e;->b:Lcom/tencent/thumbplayer/tcmedia/utils/e;

    .line 30
    .line 31
    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 32
    .line 33
    const/16 p4, 0x1008

    .line 34
    .line 35
    invoke-static {p3, p4, p2}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 39
    .line 40
    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;Lcom/tencent/thumbplayer/tcmedia/utils/e;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public onReadData(ILjava/lang/String;JJ)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-wide v4, p3

    .line 10
    move-wide v6, p5

    .line 11
    invoke-interface/range {v1 .. v7}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onReadData(ILjava/lang/String;JJ)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public onStartReadData(ILjava/lang/String;JJ)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-wide v4, p3

    .line 10
    move-wide v6, p5

    .line 11
    invoke-interface/range {v1 .. v7}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onStartReadData(ILjava/lang/String;JJ)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public onStopReadData(ILjava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$b;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onStopReadData(ILjava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
