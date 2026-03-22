.class public Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/audio/TXAudioEffectManager;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::manager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;,
        Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;,
        Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;
    }
.end annotation


# static fields
.field private static final EFFECT_PLAYER_ID_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TXAudioEffectManagerImpl"


# instance fields
.field private mEffectIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMusicPlayObserver:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;

.field private final mMusicPreloadObserver:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;

.field private mNativeAudioEffectMgr:J


# direct methods
.method public constructor <init>(J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    .line 14
    .line 15
    new-instance v2, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMusicPlayObserver:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;

    .line 21
    .line 22
    new-instance v3, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v3, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMusicPreloadObserver:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;

    .line 28
    .line 29
    iput-wide p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 30
    .line 31
    cmp-long v0, p1, v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-static {p1, p2, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicObserver(JLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;)V

    .line 36
    .line 37
    .line 38
    iget-wide p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 39
    .line 40
    invoke-static {p1, p2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetPreloadObserver(JLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private static convertToEffectId(I)J
    .locals 4

    .line 1
    const-wide v0, 0x200000000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    int-to-long v2, p0

    .line 7
    or-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnableVoiceEarMonitor(JZ)V
.end method

.method private static native nativeGetMusicCurrentPosInMS(JJ)J
.end method

.method private static native nativeGetMusicDurationInMS(JLjava/lang/String;)J
.end method

.method private static native nativeGetMusicTrackCount(JJ)I
.end method

.method private static native nativePausePlayMusic(JJ)V
.end method

.method private static native nativePreloadMusic(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;)V
.end method

.method private static native nativeResumePlayMusic(JJ)V
.end method

.method private static native nativeSeekMusicToPosInMS(JJJ)V
.end method

.method private static native nativeSetAllMusicVolume(JI)V
.end method

.method private static native nativeSetMusicObserver(JLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;)V
.end method

.method private static native nativeSetMusicPitch(JJF)V
.end method

.method private static native nativeSetMusicPlayoutVolume(JJI)V
.end method

.method private static native nativeSetMusicPublishVolume(JJI)V
.end method

.method private static native nativeSetMusicScratchSpeedRate(JJF)V
.end method

.method private static native nativeSetMusicSpeedRate(JJF)V
.end method

.method private static native nativeSetMusicTrack(JJI)V
.end method

.method private static native nativeSetPreloadObserver(JLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;)V
.end method

.method private static native nativeSetVoiceCaptureVolume(JI)V
.end method

.method private static native nativeSetVoiceChangerType(JI)V
.end method

.method private static native nativeSetVoiceEarMonitorVolume(JI)V
.end method

.method private static native nativeSetVoicePitch(JD)V
.end method

.method private static native nativeSetVoiceReverbType(JI)V
.end method

.method private static native nativeStartPlayMusic(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;)V
.end method

.method private static native nativeStopPlayMusic(JJ)V
.end method

.method public static voiceChangerTypeFromInt(I)Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_0:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_1:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_2:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_3:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_4:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x5

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_5:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x6

    .line 37
    if-ne p0, v0, :cond_6

    .line 38
    .line 39
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_6:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    const/4 v0, 0x7

    .line 43
    if-ne p0, v0, :cond_7

    .line 44
    .line 45
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_7:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_7
    const/16 v0, 0x8

    .line 49
    .line 50
    if-ne p0, v0, :cond_8

    .line 51
    .line 52
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_8:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_8
    const/16 v0, 0x9

    .line 56
    .line 57
    if-ne p0, v0, :cond_9

    .line 58
    .line 59
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_9:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_9
    const/16 v0, 0xa

    .line 63
    .line 64
    if-ne p0, v0, :cond_a

    .line 65
    .line 66
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_10:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_a
    const/16 v0, 0xb

    .line 70
    .line 71
    if-ne p0, v0, :cond_b

    .line 72
    .line 73
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_11:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_b
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_0:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    .line 77
    .line 78
    return-object p0
.end method

.method public static voiceReverbTypeFromInt(I)Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_0:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_1:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_2:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_3:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_4:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x5

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_5:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x6

    .line 37
    if-ne p0, v0, :cond_6

    .line 38
    .line 39
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_6:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    const/4 v0, 0x7

    .line 43
    if-ne p0, v0, :cond_7

    .line 44
    .line 45
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_7:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_7
    const/16 v0, 0x8

    .line 49
    .line 50
    if-ne p0, v0, :cond_8

    .line 51
    .line 52
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_8:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_8
    const/16 v0, 0x9

    .line 56
    .line 57
    if-ne p0, v0, :cond_9

    .line 58
    .line 59
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_9:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_9
    const/16 v0, 0xa

    .line 63
    .line 64
    if-ne p0, v0, :cond_a

    .line 65
    .line 66
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_10:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_a
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_0:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    .line 70
    .line 71
    return-object p0
.end method


# virtual methods
.method public enableVoiceEarMonitor(Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeEnableVoiceEarMonitor(JZ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeDestroy(J)V

    .line 13
    .line 14
    .line 15
    iput-wide v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public getMusicCurrentPosInMS(I)J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetMusicCurrentPosInMS(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0

    .line 15
    :cond_0
    return-wide v2
.end method

.method public getMusicDurationInMS(Ljava/lang/String;)J
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "TXAudioEffectManagerImpl"

    .line 10
    .line 11
    const-string v0, "getMusicDurationInMS invalid params"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-wide v1

    .line 17
    :cond_0
    iget-wide v3, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 18
    .line 19
    cmp-long v0, v3, v1

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v3, v4, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetMusicDurationInMS(JLjava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    return-wide v0

    .line 28
    :cond_1
    return-wide v1
.end method

.method public getMusicTrackCount(I)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetMusicTrackCount(JJ)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public pauseAudioEffect(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativePausePlayMusic(JJ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public pausePlayMusic(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativePausePlayMusic(JJ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public playAudioEffect(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->path:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget v2, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->id:I

    .line 21
    .line 22
    invoke-static {v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    new-instance v4, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;

    .line 27
    .line 28
    invoke-direct {v4, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;-><init>(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStartPlayMusic(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;)V

    .line 32
    .line 33
    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    .line 36
    .line 37
    iget p1, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->id:I

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1

    .line 51
    :cond_1
    return-void

    .line 52
    :cond_2
    :goto_0
    const-string p1, "TXAudioEffectManagerImpl"

    .line 53
    .line 54
    const-string v0, "startPlayMusic invalid params"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public preloadMusic(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)Z
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "TXAudioEffectManagerImpl"

    .line 4
    .line 5
    const-string v0, "preloadMusic invalid params"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget v2, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->id:I

    .line 21
    .line 22
    int-to-long v2, v2

    .line 23
    new-instance v4, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;

    .line 24
    .line 25
    invoke-direct {v4, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;-><init>(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativePreloadMusic(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 p1, 0x1

    .line 32
    return p1
.end method

.method public resumeAudioEffect(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeResumePlayMusic(JJ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public resumePlayMusic(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeResumePlayMusic(JJ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public seekMusicToPosInMS(II)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    int-to-long v4, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSeekMusicToPosInMS(JJJ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setAllAudioEffectsVolume(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->setAudioEffectVolume(II)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1

    .line 42
    :cond_1
    return-void
.end method

.method public setAllMusicVolume(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetAllMusicVolume(JI)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setAudioEffectVolume(II)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicPlayoutVolume(JJI)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 17
    .line 18
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicPublishVolume(JJI)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setEffectObserver(ILcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMusicPlayObserver:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;->addObserver(JLcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMusicPlayObserver:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-virtual {p2, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;->removeObserver(J)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public setMusicObserver(ILcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMusicPlayObserver:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;

    .line 12
    .line 13
    int-to-long v1, p1

    .line 14
    invoke-virtual {v0, v1, v2, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;->addObserver(JLcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMusicPlayObserver:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;

    .line 19
    .line 20
    int-to-long v0, p1

    .line 21
    invoke-virtual {p2, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;->removeObserver(J)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public setMusicPitch(IF)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicPitch(JJF)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMusicPlayoutVolume(II)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicPlayoutVolume(JJI)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMusicPublishVolume(II)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicPublishVolume(JJI)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMusicScratchSpeedRate(IF)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicScratchSpeedRate(JJF)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMusicSpeedRate(IF)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicSpeedRate(JJF)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMusicTrack(II)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicTrack(JJI)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setPreloadObserver(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPreloadObserver;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMusicPreloadObserver:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;->setObserver(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPreloadObserver;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setVoiceCaptureVolume(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetVoiceCaptureVolume(JI)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setVoiceChangerType(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->getNativeValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetVoiceChangerType(JI)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setVoiceEarMonitorVolume(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetVoiceEarMonitorVolume(JI)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setVoicePitch(D)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetVoicePitch(JD)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setVoiceReverbType(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->getNativeValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetVoiceReverbType(JI)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public startPlayMusic(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)Z
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "TXAudioEffectManagerImpl"

    .line 4
    .line 5
    const-string v0, "startPlayMusic invalid params"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget v2, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->id:I

    .line 21
    .line 22
    int-to-long v2, v2

    .line 23
    new-instance v4, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;

    .line 24
    .line 25
    invoke-direct {v4, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;-><init>(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStartPlayMusic(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 p1, 0x1

    .line 32
    return p1
.end method

.method public stopAllAudioEffects()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMusicPlayObserver:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;->removeObserver(J)V

    .line 39
    .line 40
    .line 41
    iget-wide v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStopPlayMusic(JJ)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw v0

    .line 66
    :cond_1
    return-void
.end method

.method public stopAudioEffect(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMusicPlayObserver:Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;->removeObserver(J)V

    .line 16
    .line 17
    .line 18
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 19
    .line 20
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStopPlayMusic(JJ)V

    .line 25
    .line 26
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-ltz p1, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1

    .line 52
    :cond_1
    return-void
.end method

.method public stopPlayMusic(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStopPlayMusic(JJ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
