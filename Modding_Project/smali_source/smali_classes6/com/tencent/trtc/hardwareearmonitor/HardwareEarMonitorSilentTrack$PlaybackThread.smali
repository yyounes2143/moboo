.class public Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack$PlaybackThread;
.super Ljava/lang/Thread;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlaybackThread"
.end annotation


# instance fields
.field private isStop:Z

.field final synthetic this$0:Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;


# direct methods
.method public constructor <init>(Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack$PlaybackThread;->this$0:Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack$PlaybackThread;->isStop:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public declared-synchronized closeThread()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack$PlaybackThread;->isStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public run()V
    .locals 11

    .line 1
    const/4 v1, 0x0

    .line 2
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack$PlaybackThread;->this$0:Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;

    .line 3
    .line 4
    invoke-static {v0}, Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;->access$000(Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack$PlaybackThread;->this$0:Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;->access$100(Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const v3, 0xbb80

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 18
    .line 19
    .line 20
    move-result v9

    .line 21
    new-instance v4, Landroid/media/AudioTrack;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack$PlaybackThread;->this$0:Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;->access$000(Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;)I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack$PlaybackThread;->this$0:Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;->access$100(Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack;)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    const/4 v10, 0x1

    .line 36
    const/4 v5, 0x3

    .line 37
    const v6, 0xbb80

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v4 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v2, 0x1

    .line 48
    if-ne v0, v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V

    .line 51
    .line 52
    .line 53
    new-array v3, v9, [B

    .line 54
    .line 55
    move v0, v1

    .line 56
    :goto_0
    if-ge v0, v9, :cond_0

    .line 57
    .line 58
    aput-byte v1, v3, v0

    .line 59
    .line 60
    add-int/2addr v0, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/trtc/hardwareearmonitor/HardwareEarMonitorSilentTrack$PlaybackThread;->isStop:Z

    .line 63
    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    :try_start_0
    invoke-virtual {v4, v3, v1, v9}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-array v5, v2, [Ljava/lang/Object;

    .line 82
    .line 83
    aput-object v0, v5, v1

    .line 84
    .line 85
    const-string v0, "HardwareEarMonitorSilentTrack"

    .line 86
    .line 87
    const-string v6, "audioTrack write,Throwable ex : %s"

    .line 88
    .line 89
    invoke-static {v0, v6, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioTrack;->stop()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/media/AudioTrack;->flush()V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {v4}, Landroid/media/AudioTrack;->release()V

    .line 100
    .line 101
    .line 102
    return-void
.end method
