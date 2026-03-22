.class public Lcom/tencent/vod/flutter/model/TXPlayerHolder;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private mIsPlayingWhenCreated:Z

.field private mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

.field private final mPlayerType:I

.field private mPlayingStatus:Z

.field private mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;


# direct methods
.method public constructor <init>(Lcom/tencent/live2/V2TXLivePlayer;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    xor-int/lit8 p1, p2, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mPlayingStatus:Z

    .line 10
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mIsPlayingWhenCreated:Z

    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mPlayerType:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/rtmp/TXVodPlayer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mIsPlayingWhenCreated:Z

    .line 3
    iput-object p1, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/rtmp/TXVodPlayer;->isPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mPlayingStatus:Z

    .line 5
    iput-boolean p1, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mIsPlayingWhenCreated:Z

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mPlayerType:I

    return-void
.end method


# virtual methods
.method public getLivePlayer()Lcom/tencent/live2/V2TXLivePlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayerType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mPlayerType:I

    .line 2
    .line 3
    return v0
.end method

.method public getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mPlayingStatus:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPlayingWhenCreate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mIsPlayingWhenCreated:Z

    .line 2
    .line 3
    return v0
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->pause()V

    .line 7
    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mPlayingStatus:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->pauseAudio()I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->pauseVideo()I

    .line 22
    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mPlayingStatus:Z

    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mVodPlayer:Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->resume()V

    .line 7
    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mPlayingStatus:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeAudio()I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mLivePlayer:Lcom/tencent/live2/V2TXLivePlayer;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeVideo()I

    .line 22
    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/tencent/vod/flutter/model/TXPlayerHolder;->mPlayingStatus:Z

    .line 25
    .line 26
    :cond_1
    return-void
.end method
