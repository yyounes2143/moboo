.class Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/core/subtitle/ITPSubtitleParserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->a(Ljava/lang/String;Ljava/util/Map;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->a:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGetCurrentPlayPositionMs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$d;->a()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_0
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    return-wide v0
.end method

.method public onLoadResult(I)V
    .locals 2

    .line 1
    const-string v0, "onLoadResult, index:"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "TPSysPlayerExternalSubtitle"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 17
    .line 18
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->a:J

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onSelectResult(IJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onSelectResult, errCode:"

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
    const-string v1, ", selectOpaque:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, ", opaque ="

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-wide p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->a:J

    .line 25
    .line 26
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string p3, "TPSysPlayerExternalSubtitle"

    .line 34
    .line 35
    invoke-static {p3, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 41
    .line 42
    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$c;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$c;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-wide p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->a:J

    .line 55
    .line 56
    invoke-interface {p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$c;->a(J)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 63
    .line 64
    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$c;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    if-eqz p2, :cond_1

    .line 69
    .line 70
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 71
    .line 72
    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$c;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->a:J

    .line 77
    .line 78
    invoke-interface {p2, p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$c;->a(IJ)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method public onSubtitleError(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onSubtitleError, index:"

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
    const-string v1, ", errorCode:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "TPSysPlayerExternalSubtitle"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$b;->a(II)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onSubtitleFrame(Lcom/tencent/thumbplayer/tcmedia/core/common/TPSubtitleFrame;)V
    .locals 2

    .line 1
    const-string v0, "TPSysPlayerExternalSubtitle"

    .line 2
    .line 3
    const-string v1, "onSubtitleFrame"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->d(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->d(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$a;->a(Lcom/tencent/thumbplayer/tcmedia/core/common/TPSubtitleFrame;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onSubtitleNote(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "TPSysPlayerExternalSubtitle"

    .line 2
    .line 3
    const-string v1, "onSubtitleNote"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->d(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c$1;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;->d(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/a$a;->a(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
