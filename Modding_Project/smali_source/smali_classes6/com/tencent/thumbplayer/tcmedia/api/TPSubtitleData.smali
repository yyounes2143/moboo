.class public Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;
.super Ljava/lang/Object;


# instance fields
.field public durationMs:J

.field public startPositionMs:J

.field public subtitleData:Ljava/lang/String;

.field public trackIndex:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;->durationMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStartPositionMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;->startPositionMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSubtitleData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;->subtitleData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrackIndex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;->trackIndex:J

    .line 2
    .line 3
    return-wide v0
.end method
