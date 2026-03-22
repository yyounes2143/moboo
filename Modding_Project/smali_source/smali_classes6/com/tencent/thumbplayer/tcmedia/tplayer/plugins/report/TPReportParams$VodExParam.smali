.class public Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VodExParam"
.end annotation


# instance fields
.field bizIdInt:I

.field clipInt:I

.field currentPlayInt:I

.field freeTypeInt:I

.field hasSubtitleInt:I

.field hevcLcInt:I

.field hitDownloaded:I

.field isSelectedSubtitleInt:I

.field multiTrackInt:I

.field optimizedPlayInt:I

.field statusInt:I

.field final synthetic this$0:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;->this$0:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public paramsToJson(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public paramsToProperties(Lcom/tencent/thumbplayer/tcmedia/common/a/a;)V
    .locals 2

    .line 1
    const-string v0, "freetype"

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;->freeTypeInt:I

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "currentplay"

    .line 9
    .line 10
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;->currentPlayInt:I

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "optimizedplay"

    .line 16
    .line 17
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;->optimizedPlayInt:I

    .line 18
    .line 19
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v0, "subtitles"

    .line 23
    .line 24
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;->hasSubtitleInt:I

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string v0, "selsubtitles"

    .line 30
    .line 31
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;->isSelectedSubtitleInt:I

    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v0, "multitrack"

    .line 37
    .line 38
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;->multiTrackInt:I

    .line 39
    .line 40
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string v0, "bizid"

    .line 44
    .line 45
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;->bizIdInt:I

    .line 46
    .line 47
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string v0, "hevclv"

    .line 51
    .line 52
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;->hevcLcInt:I

    .line 53
    .line 54
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string v0, "clip"

    .line 58
    .line 59
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;->clipInt:I

    .line 60
    .line 61
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v0, "status"

    .line 65
    .line 66
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;->statusInt:I

    .line 67
    .line 68
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const-string v0, "hitdownloaded"

    .line 72
    .line 73
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$VodExParam;->hitDownloaded:I

    .line 74
    .line 75
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method
