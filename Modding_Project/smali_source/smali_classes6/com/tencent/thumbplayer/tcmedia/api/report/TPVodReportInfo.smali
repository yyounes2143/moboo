.class public Lcom/tencent/thumbplayer/tcmedia/api/report/TPVodReportInfo;
.super Lcom/tencent/thumbplayer/tcmedia/api/report/TPDefaultReportInfo;


# instance fields
.field public bizId:I

.field public clipCount:I

.field public currentPlayState:I

.field public hasSubtitles:Z

.field public optimizedPlay:I

.field public videoStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/api/report/TPDefaultReportInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getPlayType()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
