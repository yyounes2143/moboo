.class public Lcom/tencent/vod/flutter/FTXAudioManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FTXAudioManager"


# instance fields
.field afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFocusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mFocusRequest:Landroid/media/AudioFocusRequest;

.field private volumeUIFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->volumeUIFlag:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioFocusListeners:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Lcom/tencent/vod/flutter/FTXAudioManager$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/tencent/vod/flutter/FTXAudioManager$1;-><init>(Lcom/tencent/vod/flutter/FTXAudioManager;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 20
    .line 21
    const-string v0, "audio"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/media/AudioManager;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mFocusRequest:Landroid/media/AudioFocusRequest;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroidx/media3/exoplayer/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public addAudioFocusChangedListener(Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioFocusListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioFocusListeners:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public getSystemCurrentVolume()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v0, v0

    .line 15
    int-to-float v1, v1

    .line 16
    div-float/2addr v0, v1

    .line 17
    return v0
.end method

.method public onAudioFocusPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioFocusListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;->onAudioFocusPause()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public onAudioFocusPlay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioFocusListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;->onAudioFocusPlay()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public removeAudioFocusChangedListener(Lcom/tencent/vod/flutter/FTXAudioManager$AudioFocusChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioFocusListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public requestAudioFocus()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mFocusRequest:Landroid/media/AudioFocusRequest;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 35
    .line 36
    :cond_0
    invoke-static {v2}, Landroidx/media3/exoplayer/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Landroid/media/AudioFocusRequest$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, v2}, Lcom/tencent/vod/flutter/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Landroidx/media3/exoplayer/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mFocusRequest:Landroid/media/AudioFocusRequest;

    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mFocusRequest:Landroid/media/AudioFocusRequest;

    .line 65
    .line 66
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 74
    .line 75
    const/4 v3, 0x3

    .line 76
    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v2, "requestAudioFocus result:"

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "FTXAudioManager"

    .line 98
    .line 99
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public setSystemVolume(Ljava/lang/Double;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmpg-double v0, v0, v2

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 22
    .line 23
    cmpl-double v0, v0, v2

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    int-to-double v4, v0

    .line 43
    mul-double/2addr v2, v4

    .line 44
    double-to-int p1, v2

    .line 45
    iget-object v0, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 46
    .line 47
    iget v2, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->volumeUIFlag:I

    .line 48
    .line 49
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public setVolumeUIVisible(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->volumeUIFlag:I

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/tencent/vod/flutter/FTXAudioManager;->volumeUIFlag:I

    .line 9
    .line 10
    return-void
.end method
