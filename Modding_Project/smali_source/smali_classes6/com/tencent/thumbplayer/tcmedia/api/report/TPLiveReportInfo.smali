.class public Lcom/tencent/thumbplayer/tcmedia/api/report/TPLiveReportInfo;
.super Lcom/tencent/thumbplayer/tcmedia/api/report/TPDefaultReportInfo;


# instance fields
.field public adPlayLength:I

.field public cdnServer:Ljava/lang/String;

.field public contentId:I

.field public isLookBack:Z

.field public isUserPay:Z

.field public liveDelay:I

.field public liveType:I

.field public playTime:I

.field public programId:I

.field public streamId:I


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
    const/4 v0, 0x1

    .line 2
    return v0
.end method
