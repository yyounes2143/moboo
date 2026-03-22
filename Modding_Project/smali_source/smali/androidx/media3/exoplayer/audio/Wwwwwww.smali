.class public final synthetic Landroidx/media3/exoplayer/audio/Wwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwww:Landroidx/media3/common/util/ConditionVariable;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/media/AudioTrack;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/media/AudioTrack;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/audio/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/audio/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/media3/exoplayer/audio/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Landroidx/media3/common/util/ConditionVariable;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/media/AudioTrack;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/Wwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Landroidx/media3/common/util/ConditionVariable;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioSink$Listener;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Landroidx/media3/common/util/ConditionVariable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
