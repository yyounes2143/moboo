.class public Lcom/tencent/rtmp/TXTrackInfo;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final TX_VOD_MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final TX_VOD_MEDIA_TRACK_TYPE_SUBTITLE:I = 0x3

.field public static final TX_VOD_MEDIA_TRACK_TYPE_UNKNOW:I = 0x0

.field public static final TX_VOD_MEDIA_TRACK_TYPE_VIDEO:I = 0x1


# instance fields
.field public isExclusive:Z

.field public isInternal:Z

.field public isSelected:Z

.field public name:Ljava/lang/String;

.field public trackIndex:I

.field public trackType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/rtmp/TXTrackInfo;->trackType:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXTrackInfo;->isSelected:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXTrackInfo;->isExclusive:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXTrackInfo;->isInternal:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    instance-of v1, p1, Lcom/tencent/rtmp/TXTrackInfo;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/tencent/rtmp/TXTrackInfo;->name:Ljava/lang/String;

    .line 10
    .line 11
    check-cast p1, Lcom/tencent/rtmp/TXTrackInfo;

    .line 12
    .line 13
    iget-object v2, p1, Lcom/tencent/rtmp/TXTrackInfo;->name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lcom/tencent/rtmp/TXTrackInfo;->trackType:I

    .line 22
    .line 23
    iget p1, p1, Lcom/tencent/rtmp/TXTrackInfo;->trackType:I

    .line 24
    .line 25
    if-ne v1, p1, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1
    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/TXTrackInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrackIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/rtmp/TXTrackInfo;->trackIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getTrackType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/rtmp/TXTrackInfo;->trackType:I

    .line 2
    .line 3
    return v0
.end method
