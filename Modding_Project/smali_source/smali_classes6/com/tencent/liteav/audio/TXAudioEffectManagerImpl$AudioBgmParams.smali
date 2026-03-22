.class Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioBgmParams"
.end annotation


# instance fields
.field private mParams:Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;->mParams:Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getEndTimeMS()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;->mParams:Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->endTimeMS:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;->mParams:Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;

    .line 2
    .line 3
    iget v0, v0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->loopCount:I

    .line 4
    .line 5
    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;->mParams:Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->path:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getStartTimeMS()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;->mParams:Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->startTimeMS:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public isPublish()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;->mParams:Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->publish:Z

    .line 4
    .line 5
    return v0
.end method
