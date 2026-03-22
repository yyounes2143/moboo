.class Lcom/tencent/thumbplayer/tcmedia/c/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/c/d;


# direct methods
.method private constructor <init>(Lcom/tencent/thumbplayer/tcmedia/c/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/thumbplayer/tcmedia/c/d;Lcom/tencent/thumbplayer/tcmedia/c/d$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/d$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/c/d;)V

    return-void
.end method


# virtual methods
.method public getAdvRemainTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->getPlayInfo(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPlayInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->getPlayInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPlayerBufferLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

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
    .locals 1
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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadCdnUrlExpired(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/tencent/thumbplayer/tcmedia/d/b$d;->a(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Lcom/tencent/thumbplayer/tcmedia/d/b$d;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/c/d;->a(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onDownloadCdnUrlUpdate(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadCdnUrlUpdate(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDownloadError(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadError(IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDownloadFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadFinish()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDownloadProgressUpdate(IIJJLjava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$e;-><init>()V

    .line 4
    .line 5
    .line 6
    mul-int/lit8 v1, p2, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/d/b$e;->b(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/c/d;->a(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move v2, p1

    .line 31
    move v3, p2

    .line 32
    move-wide v4, p3

    .line 33
    move-wide v6, p5

    .line 34
    move-object/from16 v8, p7

    .line 35
    .line 36
    invoke-interface/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadProgressUpdate(IIJJLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$f;->b(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/tencent/thumbplayer/tcmedia/d/b$f;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/c/d;->a(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onDownloadStatusUpdate(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadStatusUpdate(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    invoke-interface/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public onReadData(ILjava/lang/String;JJ)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->b(Lcom/tencent/thumbplayer/tcmedia/c/d;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

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
