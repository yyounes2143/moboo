.class public final Lcom/google/android/gms/internal/ads/zzri;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqi;


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "releaseExecutorLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static zzc:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "releaseExecutorLock"
    .end annotation
.end field


# instance fields
.field private zzA:Z

.field private zzB:J

.field private zzC:J

.field private zzD:J

.field private zzE:J

.field private zzF:I

.field private zzG:Z

.field private zzH:Z

.field private zzI:J

.field private zzJ:F

.field private zzK:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzL:I

.field private zzM:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzN:Z

.field private zzO:Z

.field private zzP:Z

.field private zzQ:Z

.field private zzR:I

.field private zzS:Lcom/google/android/gms/internal/ads/zzf;

.field private zzT:Lcom/google/android/gms/internal/ads/zzpk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzU:J

.field private zzV:Z

.field private zzW:Z

.field private zzX:Landroid/os/Looper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzY:J

.field private zzZ:J

.field private zzaa:Landroid/os/Handler;

.field private final zzab:Lcom/google/android/gms/internal/ads/zzqy;

.field private final zzac:Lcom/google/android/gms/internal/ads/zzqo;

.field private final zzd:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzqn;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzrs;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfyc;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfyc;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzqm;

.field private final zzj:Ljava/util/ArrayDeque;

.field private zzk:Lcom/google/android/gms/internal/ads/zzrg;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzrc;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzrc;

.field private zzn:Lcom/google/android/gms/internal/ads/zzpc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzo:Lcom/google/android/gms/internal/ads/zzqf;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzp:Lcom/google/android/gms/internal/ads/zzqx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzq:Lcom/google/android/gms/internal/ads/zzqx;

.field private zzr:Lcom/google/android/gms/internal/ads/zzck;

.field private zzs:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzt:Lcom/google/android/gms/internal/ads/zzpe;

.field private zzu:Lcom/google/android/gms/internal/ads/zzpj;

.field private zzv:Lcom/google/android/gms/internal/ads/zzrb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzw:Lcom/google/android/gms/internal/ads/zze;

.field private zzx:Lcom/google/android/gms/internal/ads/zzqz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzy:Lcom/google/android/gms/internal/ads/zzqz;

.field private zzz:Lcom/google/android/gms/internal/ads/zzbb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzri;->zza:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqw;Lcom/google/android/gms/internal/ads/zzrh;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zza(Lcom/google/android/gms/internal/ads/zzqw;)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zza(Lcom/google/android/gms/internal/ads/zzqw;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzd:Landroid/content/Context;

    .line 22
    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/zze;->zza:Lcom/google/android/gms/internal/ads/zze;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzw:Lcom/google/android/gms/internal/ads/zze;

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    move-object p2, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzb(Lcom/google/android/gms/internal/ads/zzqw;)Lcom/google/android/gms/internal/ads/zzpe;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzt:Lcom/google/android/gms/internal/ads/zzpe;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzd(Lcom/google/android/gms/internal/ads/zzqw;)Lcom/google/android/gms/internal/ads/zzqy;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzab:Lcom/google/android/gms/internal/ads/zzqy;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zze(Lcom/google/android/gms/internal/ads/zzqw;)Lcom/google/android/gms/internal/ads/zzqo;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzac:Lcom/google/android/gms/internal/ads/zzqo;

    .line 51
    .line 52
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqm;

    .line 53
    .line 54
    new-instance p2, Lcom/google/android/gms/internal/ads/zzrd;

    .line 55
    .line 56
    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzrd;-><init>(Lcom/google/android/gms/internal/ads/zzri;Lcom/google/android/gms/internal/ads/zzrh;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzqm;-><init>(Lcom/google/android/gms/internal/ads/zzql;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzi:Lcom/google/android/gms/internal/ads/zzqm;

    .line 63
    .line 64
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqn;

    .line 65
    .line 66
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqn;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zze:Lcom/google/android/gms/internal/ads/zzqn;

    .line 70
    .line 71
    new-instance p2, Lcom/google/android/gms/internal/ads/zzrs;

    .line 72
    .line 73
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzrs;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzf:Lcom/google/android/gms/internal/ads/zzrs;

    .line 77
    .line 78
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcr;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcr;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfyc;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzg:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 88
    .line 89
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrr;

    .line 90
    .line 91
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzrr;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfyc;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzh:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 99
    .line 100
    const/high16 p1, 0x3f800000    # 1.0f

    .line 101
    .line 102
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzJ:F

    .line 103
    .line 104
    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzR:I

    .line 106
    .line 107
    new-instance p2, Lcom/google/android/gms/internal/ads/zzf;

    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzf;-><init>(IF)V

    .line 111
    .line 112
    .line 113
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzS:Lcom/google/android/gms/internal/ads/zzf;

    .line 114
    .line 115
    new-instance v1, Lcom/google/android/gms/internal/ads/zzqz;

    .line 116
    .line 117
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbb;->zza:Lcom/google/android/gms/internal/ads/zzbb;

    .line 118
    .line 119
    const-wide/16 v5, 0x0

    .line 120
    .line 121
    const/4 v7, 0x0

    .line 122
    const-wide/16 v3, 0x0

    .line 123
    .line 124
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Lcom/google/android/gms/internal/ads/zzbb;JJLcom/google/android/gms/internal/ads/zzrh;)V

    .line 125
    .line 126
    .line 127
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzy:Lcom/google/android/gms/internal/ads/zzqz;

    .line 128
    .line 129
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    .line 130
    .line 131
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzA:Z

    .line 132
    .line 133
    new-instance p1, Ljava/util/ArrayDeque;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzj:Ljava/util/ArrayDeque;

    .line 139
    .line 140
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrc;

    .line 141
    .line 142
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrc;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzl:Lcom/google/android/gms/internal/ads/zzrc;

    .line 146
    .line 147
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrc;

    .line 148
    .line 149
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrc;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzm:Lcom/google/android/gms/internal/ads/zzrc;

    .line 153
    .line 154
    return-void
.end method

.method public static bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzri;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzU:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic zzC(Lcom/google/android/gms/internal/ads/zzri;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzL()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzri;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzM()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzri;)Landroid/media/AudioTrack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzF(Lcom/google/android/gms/internal/ads/zzri;)Lcom/google/android/gms/internal/ads/zzqf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzo:Lcom/google/android/gms/internal/ads/zzqf;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zzG(Lcom/google/android/gms/internal/ads/zzri;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzZ:J

    .line 2
    .line 3
    const-wide/32 v2, 0x493e0

    .line 4
    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzo:Lcom/google/android/gms/internal/ads/zzqf;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/zzrm;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrm;->zza:Lcom/google/android/gms/internal/ads/zzro;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzro;->zzah(Lcom/google/android/gms/internal/ads/zzro;Z)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzZ:J

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static bridge synthetic zzH(Lcom/google/android/gms/internal/ads/zzri;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzP:Z

    .line 3
    .line 4
    return-void
.end method

.method public static synthetic zzI(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqf;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzqc;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    new-instance p0, Lcom/google/android/gms/internal/ads/zzqr;

    .line 25
    .line 26
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzqr;-><init>(Lcom/google/android/gms/internal/ads/zzqf;Lcom/google/android/gms/internal/ads/zzqc;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzri;->zza:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter p0

    .line 35
    :try_start_1
    sget p1, Lcom/google/android/gms/internal/ads/zzri;->zzc:I

    .line 36
    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    sput p1, Lcom/google/android/gms/internal/ads/zzri;->zzc:I

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    sget-object p1, Lcom/google/android/gms/internal/ads/zzri;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/google/android/gms/internal/ads/zzri;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p1

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    new-instance v1, Lcom/google/android/gms/internal/ads/zzqr;

    .line 75
    .line 76
    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/internal/ads/zzqr;-><init>(Lcom/google/android/gms/internal/ads/zzqf;Lcom/google/android/gms/internal/ads/zzqc;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzri;->zza:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter p1

    .line 85
    :try_start_2
    sget p2, Lcom/google/android/gms/internal/ads/zzri;->zzc:I

    .line 86
    .line 87
    add-int/lit8 p2, p2, -0x1

    .line 88
    .line 89
    sput p2, Lcom/google/android/gms/internal/ads/zzri;->zzc:I

    .line 90
    .line 91
    if-nez p2, :cond_3

    .line 92
    .line 93
    sget-object p2, Lcom/google/android/gms/internal/ads/zzri;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 94
    .line 95
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lcom/google/android/gms/internal/ads/zzri;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_2
    move-exception p0

    .line 102
    goto :goto_3

    .line 103
    :cond_3
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 104
    throw p0

    .line 105
    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 106
    throw p0
.end method

.method public static bridge synthetic zzK()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzri;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lcom/google/android/gms/internal/ads/zzri;->zzc:I

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method private final zzL()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzc:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzB:J

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzb:I

    .line 10
    .line 11
    int-to-long v3, v0

    .line 12
    div-long/2addr v1, v3

    .line 13
    return-wide v1

    .line 14
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzC:J

    .line 15
    .line 16
    return-wide v0
.end method

.method private final zzM()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzc:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzD:J

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    .line 10
    .line 11
    int-to-long v3, v0

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 13
    .line 14
    add-long/2addr v1, v3

    .line 15
    const-wide/16 v5, -0x1

    .line 16
    .line 17
    add-long/2addr v1, v5

    .line 18
    div-long/2addr v1, v3

    .line 19
    return-wide v1

    .line 20
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzE:J

    .line 21
    .line 22
    return-wide v0
.end method

.method private final zzN(Lcom/google/android/gms/internal/ads/zzqx;)Landroid/media/AudioTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqe;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqx;->zza()Lcom/google/android/gms/internal/ads/zzqc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzw:Lcom/google/android/gms/internal/ads/zze;

    .line 6
    .line 7
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzR:I

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzri;->zzac(Lcom/google/android/gms/internal/ads/zzqc;Lcom/google/android/gms/internal/ads/zze;ILcom/google/android/gms/internal/ads/zzz;)Landroid/media/AudioTrack;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqe; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzo:Lcom/google/android/gms/internal/ads/zzqf;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqf;->zza(Ljava/lang/Exception;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    throw p1
.end method

.method private final zzO(J)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzab()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzab:Lcom/google/android/gms/internal/ads/zzqy;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqy;->zzc(Lcom/google/android/gms/internal/ads/zzbb;)Lcom/google/android/gms/internal/ads/zzbb;

    .line 12
    .line 13
    .line 14
    :goto_0
    move-object v3, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbb;->zza:Lcom/google/android/gms/internal/ads/zzbb;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :goto_1
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzri;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzab()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzab:Lcom/google/android/gms/internal/ads/zzqy;

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzA:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqy;->zzd(Z)Z

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzA:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzj:Ljava/util/ArrayDeque;

    .line 39
    .line 40
    new-instance v2, Lcom/google/android/gms/internal/ads/zzqz;

    .line 41
    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzM()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->zze:I

    .line 55
    .line 56
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Lcom/google/android/gms/internal/ads/zzbb;JJLcom/google/android/gms/internal/ads/zzrh;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzX()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzo:Lcom/google/android/gms/internal/ads/zzqf;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzA:Z

    .line 75
    .line 76
    check-cast p1, Lcom/google/android/gms/internal/ads/zzrm;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzrm;->zza:Lcom/google/android/gms/internal/ads/zzro;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzro;->zzae(Lcom/google/android/gms/internal/ads/zzro;)Lcom/google/android/gms/internal/ads/zzqa;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzqa;->zzw(Z)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method

.method private final zzP(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqh;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzM:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzm:Lcom/google/android/gms/internal/ads/zzrc;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrc;->zzc()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_e

    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzM:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzM:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzri;->zzU:J

    .line 35
    .line 36
    const-wide/16 v3, 0x0

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-gez v0, :cond_8

    .line 40
    .line 41
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v5, 0x18

    .line 44
    .line 45
    if-lt p2, v5, :cond_1

    .line 46
    .line 47
    const/4 p2, -0x6

    .line 48
    if-eq v0, p2, :cond_2

    .line 49
    .line 50
    :cond_1
    const/16 p2, -0x20

    .line 51
    .line 52
    if-ne v0, p2, :cond_4

    .line 53
    .line 54
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzM()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    cmp-long p2, v5, v3

    .line 59
    .line 60
    if-lez p2, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 64
    .line 65
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzri;->zzaa(Landroid/media/AudioTrack;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzQ()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    move v2, v1

    .line 76
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqh;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzqx;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 81
    .line 82
    invoke-direct {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqh;-><init>(ILcom/google/android/gms/internal/ads/zzz;Z)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzo:Lcom/google/android/gms/internal/ads/zzqf;

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzqf;->zza(Ljava/lang/Exception;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Z

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzd:Landroid/content/Context;

    .line 97
    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpe;->zza:Lcom/google/android/gms/internal/ads/zzpe;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzt:Lcom/google/android/gms/internal/ads/zzpe;

    .line 104
    .line 105
    throw p2

    .line 106
    :cond_7
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzrc;->zzb(Ljava/lang/Exception;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrc;->zza()V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzri;->zzaa(Landroid/media/AudioTrack;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_a

    .line 120
    .line 121
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzri;->zzE:J

    .line 122
    .line 123
    cmp-long p1, v5, v3

    .line 124
    .line 125
    if-lez p1, :cond_9

    .line 126
    .line 127
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzW:Z

    .line 128
    .line 129
    :cond_9
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzQ:Z

    .line 130
    .line 131
    if-eqz p1, :cond_a

    .line 132
    .line 133
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzo:Lcom/google/android/gms/internal/ads/zzqf;

    .line 134
    .line 135
    if-eqz p1, :cond_a

    .line 136
    .line 137
    if-ge v0, p2, :cond_a

    .line 138
    .line 139
    check-cast p1, Lcom/google/android/gms/internal/ads/zzrm;

    .line 140
    .line 141
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 142
    .line 143
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->zzc:I

    .line 144
    .line 145
    if-nez p1, :cond_b

    .line 146
    .line 147
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzri;->zzD:J

    .line 148
    .line 149
    int-to-long v5, v0

    .line 150
    add-long/2addr v3, v5

    .line 151
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzri;->zzD:J

    .line 152
    .line 153
    :cond_b
    if-ne v0, p2, :cond_e

    .line 154
    .line 155
    if-eqz p1, :cond_d

    .line 156
    .line 157
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzM:Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzK:Ljava/nio/ByteBuffer;

    .line 160
    .line 161
    if-ne p1, p2, :cond_c

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_c
    move v2, v1

    .line 165
    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 166
    .line 167
    .line 168
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzE:J

    .line 169
    .line 170
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzF:I

    .line 171
    .line 172
    int-to-long v0, v0

    .line 173
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzL:I

    .line 174
    .line 175
    int-to-long v2, v2

    .line 176
    mul-long/2addr v0, v2

    .line 177
    add-long/2addr p1, v0

    .line 178
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzE:J

    .line 179
    .line 180
    :cond_d
    const/4 p1, 0x0

    .line 181
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzM:Ljava/nio/ByteBuffer;

    .line 182
    .line 183
    :cond_e
    :goto_3
    return-void
.end method

.method private final zzQ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzc:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzV:Z

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final zzR()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzu:Lcom/google/android/gms/internal/ads/zzpj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzd:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzX:Landroid/os/Looper;

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzpj;

    .line 16
    .line 17
    new-instance v2, Lcom/google/android/gms/internal/ads/zzqs;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Lcom/google/android/gms/internal/ads/zzri;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzri;->zzw:Lcom/google/android/gms/internal/ads/zze;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzri;->zzT:Lcom/google/android/gms/internal/ads/zzpk;

    .line 25
    .line 26
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzpj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzqs;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzpk;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzu:Lcom/google/android/gms/internal/ads/zzpj;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpj;->zzc()Lcom/google/android/gms/internal/ads/zzpe;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzt:Lcom/google/android/gms/internal/ads/zzpe;

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzt:Lcom/google/android/gms/internal/ads/zzpe;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final zzS()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzO:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzO:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzi:Lcom/google/android/gms/internal/ads/zzqm;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzM()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqm;->zzb(J)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzri;->zzaa(Landroid/media/AudioTrack;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzP:Z

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private final zzT(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqh;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzri;->zzP(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzM:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzh()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzg()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_4

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzb()Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzri;->zzV(Ljava/nio/ByteBuffer;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzri;->zzP(J)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzM:Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzK:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzK:Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->zze(Ljava/nio/ByteBuffer;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzK:Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzri;->zzV(Ljava/nio/ByteBuffer;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzri;->zzP(J)V

    .line 74
    .line 75
    .line 76
    :cond_4
    :goto_1
    return-void
.end method

.method private final zzU(Lcom/google/android/gms/internal/ads/zzbb;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqz;

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    move-wide v4, v2

    .line 10
    move-object v1, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Lcom/google/android/gms/internal/ads/zzbb;JJLcom/google/android/gms/internal/ads/zzrh;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzZ()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzx:Lcom/google/android/gms/internal/ads/zzqz;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzy:Lcom/google/android/gms/internal/ads/zzqz;

    .line 24
    .line 25
    return-void
.end method

.method private final zzV(Ljava/nio/ByteBuffer;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzri;->zzM:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_16

    .line 18
    .line 19
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 20
    .line 21
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzqx;->zzc:I

    .line 22
    .line 23
    if-nez v1, :cond_15

    .line 24
    .line 25
    const-wide/16 v1, 0x14

    .line 26
    .line 27
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 32
    .line 33
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzqx;->zze:I

    .line 34
    .line 35
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzp(JI)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    long-to-int v1, v1

    .line 40
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzri;->zzM()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    int-to-long v4, v1

    .line 45
    cmp-long v6, v2, v4

    .line 46
    .line 47
    if-gez v6, :cond_15

    .line 48
    .line 49
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 50
    .line 51
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzqx;->zzg:I

    .line 52
    .line 53
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    .line 54
    .line 55
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    long-to-int v2, v2

    .line 76
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_14

    .line 81
    .line 82
    if-ge v2, v1, :cond_14

    .line 83
    .line 84
    const/high16 v12, 0x50000000

    .line 85
    .line 86
    const/high16 v13, 0x10000000

    .line 87
    .line 88
    const/16 v14, 0x16

    .line 89
    .line 90
    const/16 v15, 0x15

    .line 91
    .line 92
    const/high16 v16, 0x4f000000

    .line 93
    .line 94
    const/4 v3, 0x4

    .line 95
    const/high16 v17, -0x31000000

    .line 96
    .line 97
    const/4 v10, 0x3

    .line 98
    const/4 v11, 0x2

    .line 99
    if-eq v7, v11, :cond_a

    .line 100
    .line 101
    if-eq v7, v10, :cond_9

    .line 102
    .line 103
    if-eq v7, v3, :cond_7

    .line 104
    .line 105
    if-eq v7, v15, :cond_6

    .line 106
    .line 107
    if-eq v7, v14, :cond_5

    .line 108
    .line 109
    if-eq v7, v13, :cond_4

    .line 110
    .line 111
    if-eq v7, v12, :cond_3

    .line 112
    .line 113
    const/high16 v12, 0x60000000

    .line 114
    .line 115
    if-ne v7, v12, :cond_2

    .line 116
    .line 117
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    and-int/lit16 v12, v12, 0xff

    .line 122
    .line 123
    shl-int/lit8 v12, v12, 0x18

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    and-int/lit16 v13, v13, 0xff

    .line 130
    .line 131
    shl-int/lit8 v13, v13, 0x10

    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    and-int/lit16 v14, v14, 0xff

    .line 138
    .line 139
    shl-int/lit8 v14, v14, 0x8

    .line 140
    .line 141
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    and-int/lit16 v15, v15, 0xff

    .line 146
    .line 147
    :goto_2
    or-int/2addr v12, v13

    .line 148
    or-int/2addr v12, v14

    .line 149
    or-int/2addr v12, v15

    .line 150
    goto/16 :goto_6

    .line 151
    .line 152
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 155
    .line 156
    .line 157
    throw v1

    .line 158
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    and-int/lit16 v12, v12, 0xff

    .line 163
    .line 164
    shl-int/lit8 v12, v12, 0x18

    .line 165
    .line 166
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    and-int/lit16 v13, v13, 0xff

    .line 171
    .line 172
    shl-int/lit8 v13, v13, 0x10

    .line 173
    .line 174
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    and-int/lit16 v14, v14, 0xff

    .line 179
    .line 180
    shl-int/lit8 v14, v14, 0x8

    .line 181
    .line 182
    :goto_3
    or-int/2addr v12, v13

    .line 183
    or-int/2addr v12, v14

    .line 184
    goto/16 :goto_6

    .line 185
    .line 186
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    and-int/lit16 v12, v12, 0xff

    .line 191
    .line 192
    shl-int/lit8 v12, v12, 0x18

    .line 193
    .line 194
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    and-int/lit16 v13, v13, 0xff

    .line 199
    .line 200
    shl-int/lit8 v13, v13, 0x10

    .line 201
    .line 202
    :goto_4
    or-int/2addr v12, v13

    .line 203
    goto :goto_6

    .line 204
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    and-int/lit16 v12, v12, 0xff

    .line 209
    .line 210
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    and-int/lit16 v13, v13, 0xff

    .line 215
    .line 216
    shl-int/lit8 v13, v13, 0x8

    .line 217
    .line 218
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 219
    .line 220
    .line 221
    move-result v14

    .line 222
    and-int/lit16 v14, v14, 0xff

    .line 223
    .line 224
    shl-int/lit8 v14, v14, 0x10

    .line 225
    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    and-int/lit16 v15, v15, 0xff

    .line 231
    .line 232
    shl-int/lit8 v15, v15, 0x18

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    and-int/lit16 v12, v12, 0xff

    .line 240
    .line 241
    shl-int/lit8 v12, v12, 0x8

    .line 242
    .line 243
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    and-int/lit16 v13, v13, 0xff

    .line 248
    .line 249
    shl-int/lit8 v13, v13, 0x10

    .line 250
    .line 251
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 252
    .line 253
    .line 254
    move-result v14

    .line 255
    and-int/lit16 v14, v14, 0xff

    .line 256
    .line 257
    shl-int/lit8 v14, v14, 0x18

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    const/high16 v13, 0x3f800000    # 1.0f

    .line 265
    .line 266
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    const/high16 v13, -0x40800000    # -1.0f

    .line 271
    .line 272
    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    const/4 v13, 0x0

    .line 277
    cmpg-float v13, v12, v13

    .line 278
    .line 279
    if-gez v13, :cond_8

    .line 280
    .line 281
    neg-float v12, v12

    .line 282
    mul-float v12, v12, v17

    .line 283
    .line 284
    :goto_5
    float-to-int v12, v12

    .line 285
    goto :goto_6

    .line 286
    :cond_8
    mul-float v12, v12, v16

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    and-int/lit16 v12, v12, 0xff

    .line 294
    .line 295
    shl-int/lit8 v12, v12, 0x18

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    and-int/lit16 v12, v12, 0xff

    .line 303
    .line 304
    shl-int/lit8 v12, v12, 0x10

    .line 305
    .line 306
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    and-int/lit16 v13, v13, 0xff

    .line 311
    .line 312
    shl-int/lit8 v13, v13, 0x18

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :goto_6
    int-to-long v12, v12

    .line 316
    int-to-long v14, v2

    .line 317
    mul-long/2addr v12, v14

    .line 318
    div-long/2addr v12, v4

    .line 319
    long-to-int v12, v12

    .line 320
    if-eq v7, v11, :cond_13

    .line 321
    .line 322
    if-eq v7, v10, :cond_12

    .line 323
    .line 324
    if-eq v7, v3, :cond_10

    .line 325
    .line 326
    const/16 v3, 0x15

    .line 327
    .line 328
    if-eq v7, v3, :cond_f

    .line 329
    .line 330
    const/16 v3, 0x16

    .line 331
    .line 332
    if-eq v7, v3, :cond_e

    .line 333
    .line 334
    const/high16 v3, 0x10000000

    .line 335
    .line 336
    if-eq v7, v3, :cond_d

    .line 337
    .line 338
    const/high16 v3, 0x50000000

    .line 339
    .line 340
    if-eq v7, v3, :cond_c

    .line 341
    .line 342
    const/high16 v3, 0x60000000

    .line 343
    .line 344
    if-ne v7, v3, :cond_b

    .line 345
    .line 346
    shr-int/lit8 v3, v12, 0x8

    .line 347
    .line 348
    shr-int/lit8 v10, v12, 0x10

    .line 349
    .line 350
    shr-int/lit8 v11, v12, 0x18

    .line 351
    .line 352
    int-to-byte v12, v12

    .line 353
    int-to-byte v11, v11

    .line 354
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 355
    .line 356
    .line 357
    int-to-byte v10, v10

    .line 358
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 359
    .line 360
    .line 361
    int-to-byte v3, v3

    .line 362
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 366
    .line 367
    .line 368
    goto/16 :goto_7

    .line 369
    .line 370
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 371
    .line 372
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 373
    .line 374
    .line 375
    throw v1

    .line 376
    :cond_c
    shr-int/lit8 v3, v12, 0x8

    .line 377
    .line 378
    shr-int/lit8 v10, v12, 0x10

    .line 379
    .line 380
    shr-int/lit8 v11, v12, 0x18

    .line 381
    .line 382
    int-to-byte v11, v11

    .line 383
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 384
    .line 385
    .line 386
    int-to-byte v10, v10

    .line 387
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 388
    .line 389
    .line 390
    int-to-byte v3, v3

    .line 391
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 392
    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_d
    shr-int/lit8 v3, v12, 0x10

    .line 396
    .line 397
    shr-int/lit8 v10, v12, 0x18

    .line 398
    .line 399
    int-to-byte v10, v10

    .line 400
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 401
    .line 402
    .line 403
    int-to-byte v3, v3

    .line 404
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 405
    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_e
    shr-int/lit8 v3, v12, 0x8

    .line 409
    .line 410
    shr-int/lit8 v10, v12, 0x10

    .line 411
    .line 412
    shr-int/lit8 v11, v12, 0x18

    .line 413
    .line 414
    int-to-byte v12, v12

    .line 415
    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 416
    .line 417
    .line 418
    int-to-byte v3, v3

    .line 419
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 420
    .line 421
    .line 422
    int-to-byte v3, v10

    .line 423
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 424
    .line 425
    .line 426
    int-to-byte v3, v11

    .line 427
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 428
    .line 429
    .line 430
    goto :goto_7

    .line 431
    :cond_f
    shr-int/lit8 v3, v12, 0x8

    .line 432
    .line 433
    shr-int/lit8 v10, v12, 0x10

    .line 434
    .line 435
    shr-int/lit8 v11, v12, 0x18

    .line 436
    .line 437
    int-to-byte v3, v3

    .line 438
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 439
    .line 440
    .line 441
    int-to-byte v3, v10

    .line 442
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 443
    .line 444
    .line 445
    int-to-byte v3, v11

    .line 446
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 447
    .line 448
    .line 449
    goto :goto_7

    .line 450
    :cond_10
    if-gez v12, :cond_11

    .line 451
    .line 452
    int-to-float v3, v12

    .line 453
    neg-float v3, v3

    .line 454
    div-float v3, v3, v17

    .line 455
    .line 456
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 457
    .line 458
    .line 459
    goto :goto_7

    .line 460
    :cond_11
    int-to-float v3, v12

    .line 461
    div-float v3, v3, v16

    .line 462
    .line 463
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 464
    .line 465
    .line 466
    goto :goto_7

    .line 467
    :cond_12
    shr-int/lit8 v3, v12, 0x18

    .line 468
    .line 469
    int-to-byte v3, v3

    .line 470
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 471
    .line 472
    .line 473
    goto :goto_7

    .line 474
    :cond_13
    shr-int/lit8 v3, v12, 0x10

    .line 475
    .line 476
    shr-int/lit8 v10, v12, 0x18

    .line 477
    .line 478
    int-to-byte v3, v3

    .line 479
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 480
    .line 481
    .line 482
    int-to-byte v3, v10

    .line 483
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 484
    .line 485
    .line 486
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    add-int v10, v9, v6

    .line 491
    .line 492
    if-ne v3, v10, :cond_1

    .line 493
    .line 494
    add-int/lit8 v2, v2, 0x1

    .line 495
    .line 496
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 497
    .line 498
    .line 499
    move-result v9

    .line 500
    goto/16 :goto_1

    .line 501
    .line 502
    :cond_14
    move-object/from16 v1, p1

    .line 503
    .line 504
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 508
    .line 509
    .line 510
    move-object v1, v8

    .line 511
    goto :goto_8

    .line 512
    :cond_15
    move-object/from16 v1, p1

    .line 513
    .line 514
    :goto_8
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzri;->zzM:Ljava/nio/ByteBuffer;

    .line 515
    .line 516
    :cond_16
    return-void
.end method

.method private final zzW()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzZ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzJ:F

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private final zzX()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzi:Lcom/google/android/gms/internal/ads/zzck;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzc()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final zzY()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqh;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzh()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/high16 v1, -0x8000000000000000L

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzri;->zzP(J)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzM:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return v4

    .line 21
    :cond_0
    return v3

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzd()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzri;->zzT(J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzg()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzM:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    return v3

    .line 49
    :cond_2
    return v4

    .line 50
    :cond_3
    return v3
.end method

.method private final zzZ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method private static zzaa(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/Wwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioTrack;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method private final zzab()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzc:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method private static final zzac(Lcom/google/android/gms/internal/ads/zzqc;Lcom/google/android/gms/internal/ads/zze;ILcom/google/android/gms/internal/ads/zzz;)Landroid/media/AudioTrack;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqe;
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzb:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzc:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqc;->zza:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzx(III)Landroid/media/AudioFormat;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zze;->zza()Lcom/google/android/gms/internal/ads/zzc;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzc;->zza:Landroid/media/AudioAttributes;

    .line 16
    .line 17
    new-instance v1, Landroid/media/AudioTrack$Builder;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqc;->zze:I

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 46
    .line 47
    const/16 v1, 0x1d

    .line 48
    .line 49
    if-lt p2, v1, :cond_0

    .line 50
    .line 51
    :try_start_1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzd:Z

    .line 52
    .line 53
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/audio/Kkkkkkkkkkkkkkkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioTrack$Builder;Z)Landroid/media/AudioTrack$Builder;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    :goto_0
    move-object p1, v0

    .line 59
    move-object v10, p1

    .line 60
    move-object v7, p3

    .line 61
    goto :goto_3

    .line 62
    :catch_1
    move-exception v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 68
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-ne v2, v0, :cond_1

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 76
    .line 77
    .line 78
    :catch_2
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzb:I

    .line 79
    .line 80
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzc:I

    .line 81
    .line 82
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzqc;->zza:I

    .line 83
    .line 84
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzqc;->zze:I

    .line 85
    .line 86
    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzd:Z

    .line 87
    .line 88
    new-instance v1, Lcom/google/android/gms/internal/ads/zzqe;

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    move-object v7, p3

    .line 92
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzqe;-><init>(IIIIILcom/google/android/gms/internal/ads/zzz;ZLjava/lang/Exception;)V

    .line 93
    .line 94
    .line 95
    throw v1

    .line 96
    :catch_3
    move-exception v0

    .line 97
    :goto_2
    move-object v7, p3

    .line 98
    move-object p1, v0

    .line 99
    move-object v10, p1

    .line 100
    goto :goto_3

    .line 101
    :catch_4
    move-exception v0

    .line 102
    goto :goto_2

    .line 103
    :goto_3
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzb:I

    .line 104
    .line 105
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzc:I

    .line 106
    .line 107
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzqc;->zza:I

    .line 108
    .line 109
    move-object v8, v7

    .line 110
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzqc;->zze:I

    .line 111
    .line 112
    iget-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzqc;->zzd:Z

    .line 113
    .line 114
    new-instance v2, Lcom/google/android/gms/internal/ads/zzqe;

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzqe;-><init>(IIIIILcom/google/android/gms/internal/ads/zzz;ZLjava/lang/Exception;)V

    .line 118
    .line 119
    .line 120
    throw v2
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzri;->zza(Lcom/google/android/gms/internal/ads/zzz;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public final zzJ(Lcom/google/android/gms/internal/ads/zzpe;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzX:Landroid/os/Looper;

    .line 6
    .line 7
    if-eq v1, v0, :cond_2

    .line 8
    .line 9
    const-string p1, "null"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move-object v1, p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "Current looper ("

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, ") is not the playback looper ("

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, ")"

    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzt:Lcom/google/android/gms/internal/ads/zzpe;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzpe;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzt:Lcom/google/android/gms/internal/ads/zzpe;

    .line 81
    .line 82
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzo:Lcom/google/android/gms/internal/ads/zzqf;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    check-cast p1, Lcom/google/android/gms/internal/ads/zzrm;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzrm;->zza:Lcom/google/android/gms/internal/ads/zzro;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzro;->zzai(Lcom/google/android/gms/internal/ads/zzro;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzR()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "audio/raw"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x2

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzK(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "Invalid PCM encoding: "

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "DefaultAudioSink"

    .line 42
    .line 43
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_0
    if-eq p1, v2, :cond_1

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_1
    return v2

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzt:Lcom/google/android/gms/internal/ads/zzpe;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzri;->zzw:Lcom/google/android/gms/internal/ads/zze;

    .line 55
    .line 56
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzpe;->zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zze;)Landroid/util/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    return v2

    .line 63
    :cond_3
    return v1
.end method

.method public final zzb(Z)J
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzZ()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzH:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzi:Lcom/google/android/gms/internal/ads/zzqm;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqm;->zza()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzM()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->zze:I

    .line 26
    .line 27
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzj:Ljava/util/ArrayDeque;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/google/android/gms/internal/ads/zzqz;

    .line 48
    .line 49
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzqz;->zzc:J

    .line 50
    .line 51
    cmp-long v2, v0, v2

    .line 52
    .line 53
    if-ltz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/google/android/gms/internal/ads/zzqz;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzy:Lcom/google/android/gms/internal/ads/zzqz;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzy:Lcom/google/android/gms/internal/ads/zzqz;

    .line 65
    .line 66
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzqz;->zzc:J

    .line 67
    .line 68
    sub-long/2addr v0, v3

    .line 69
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqz;->zza:Lcom/google/android/gms/internal/ads/zzbb;

    .line 70
    .line 71
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbb;->zzb:F

    .line 72
    .line 73
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzq(JF)J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzab:Lcom/google/android/gms/internal/ads/zzqy;

    .line 84
    .line 85
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzqy;->zza(J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzy:Lcom/google/android/gms/internal/ads/zzqz;

    .line 90
    .line 91
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzqz;->zzb:J

    .line 92
    .line 93
    add-long/2addr v4, v0

    .line 94
    sub-long/2addr v0, v2

    .line 95
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/zzqz;->zzd:J

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzy:Lcom/google/android/gms/internal/ads/zzqz;

    .line 99
    .line 100
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzqz;->zzb:J

    .line 101
    .line 102
    add-long/2addr v0, v2

    .line 103
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqz;->zzd:J

    .line 104
    .line 105
    add-long v4, v0, v2

    .line 106
    .line 107
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzab:Lcom/google/android/gms/internal/ads/zzqy;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqy;->zzb()J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 114
    .line 115
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->zze:I

    .line 116
    .line 117
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    add-long/2addr v4, v2

    .line 122
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzY:J

    .line 123
    .line 124
    cmp-long p1, v0, v2

    .line 125
    .line 126
    if-lez p1, :cond_4

    .line 127
    .line 128
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 129
    .line 130
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->zze:I

    .line 131
    .line 132
    sub-long v2, v0, v2

    .line 133
    .line 134
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    .line 135
    .line 136
    .line 137
    move-result-wide v2

    .line 138
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzY:J

    .line 139
    .line 140
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzZ:J

    .line 141
    .line 142
    add-long/2addr v0, v2

    .line 143
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzZ:J

    .line 144
    .line 145
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzaa:Landroid/os/Handler;

    .line 146
    .line 147
    if-nez p1, :cond_3

    .line 148
    .line 149
    new-instance p1, Landroid/os/Handler;

    .line 150
    .line 151
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 156
    .line 157
    .line 158
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzaa:Landroid/os/Handler;

    .line 159
    .line 160
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzaa:Landroid/os/Handler;

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzaa:Landroid/os/Handler;

    .line 167
    .line 168
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqq;

    .line 169
    .line 170
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzqq;-><init>(Lcom/google/android/gms/internal/ads/zzri;)V

    .line 171
    .line 172
    .line 173
    const-wide/16 v1, 0x64

    .line 174
    .line 175
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    .line 177
    .line 178
    :cond_4
    return-wide v4

    .line 179
    :cond_5
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    .line 180
    .line 181
    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzpn;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzV:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpn;->zza:Lcom/google/android/gms/internal/ads/zzpn;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzac:Lcom/google/android/gms/internal/ads/zzqo;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzw:Lcom/google/android/gms/internal/ads/zze;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzqo;->zza(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zze;)Lcom/google/android/gms/internal/ads/zzpn;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzz;I[I)V
    .locals 16
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqd;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzR()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "audio/raw"

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v4, -0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v0, v3, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzK(I)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    .line 27
    .line 28
    .line 29
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzk(I)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    mul-int/2addr v6, v5

    .line 36
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfxz;

    .line 37
    .line 38
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzfxz;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzg:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 42
    .line 43
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzfxz;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxz;

    .line 44
    .line 45
    .line 46
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzab:Lcom/google/android/gms/internal/ads/zzqy;

    .line 47
    .line 48
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzqy;->zze()[Lcom/google/android/gms/internal/ads/zzcn;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzfxz;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxz;

    .line 53
    .line 54
    .line 55
    new-instance v8, Lcom/google/android/gms/internal/ads/zzck;

    .line 56
    .line 57
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfxz;->zzi()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzck;-><init>(Lcom/google/android/gms/internal/ads/zzfyc;)V

    .line 62
    .line 63
    .line 64
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzri;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 65
    .line 66
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzck;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_0

    .line 71
    .line 72
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 73
    .line 74
    :cond_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzri;->zzf:Lcom/google/android/gms/internal/ads/zzrs;

    .line 75
    .line 76
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 77
    .line 78
    iget v10, v3, Lcom/google/android/gms/internal/ads/zzz;->zzI:I

    .line 79
    .line 80
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzrs;->zzq(II)V

    .line 81
    .line 82
    .line 83
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzri;->zze:Lcom/google/android/gms/internal/ads/zzqn;

    .line 84
    .line 85
    move-object/from16 v9, p3

    .line 86
    .line 87
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzqn;->zzo([I)V

    .line 88
    .line 89
    .line 90
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcl;

    .line 91
    .line 92
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    .line 93
    .line 94
    invoke-direct {v7, v9, v5, v0}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(III)V

    .line 95
    .line 96
    .line 97
    :try_start_0
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzck;->zza(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;

    .line 98
    .line 99
    .line 100
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcm; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    .line 102
    .line 103
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzcl;->zzb:I

    .line 104
    .line 105
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcl;->zzc:I

    .line 106
    .line 107
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzi(I)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeu;->zzk(I)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    mul-int/2addr v10, v0

    .line 116
    move v12, v2

    .line 117
    move v0, v9

    .line 118
    move v9, v5

    .line 119
    move v5, v10

    .line 120
    :goto_0
    move v14, v7

    .line 121
    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    new-instance v2, Lcom/google/android/gms/internal/ads/zzqd;

    .line 124
    .line 125
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;)V

    .line 126
    .line 127
    .line 128
    throw v2

    .line 129
    :cond_1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzck;

    .line 130
    .line 131
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/ads/zzck;-><init>(Lcom/google/android/gms/internal/ads/zzfyc;)V

    .line 136
    .line 137
    .line 138
    iget v7, v3, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    .line 139
    .line 140
    sget-object v0, Lcom/google/android/gms/internal/ads/zzpn;->zza:Lcom/google/android/gms/internal/ads/zzpn;

    .line 141
    .line 142
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzt:Lcom/google/android/gms/internal/ads/zzpe;

    .line 143
    .line 144
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzri;->zzw:Lcom/google/android/gms/internal/ads/zze;

    .line 145
    .line 146
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzpe;->zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zze;)Landroid/util/Pair;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v5, Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v0, Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    const/4 v0, 0x2

    .line 169
    move v12, v0

    .line 170
    move v6, v4

    .line 171
    move v0, v9

    .line 172
    move v9, v5

    .line 173
    move v5, v6

    .line 174
    goto :goto_0

    .line 175
    :goto_1
    const-string v7, ") for: "

    .line 176
    .line 177
    if-eqz v9, :cond_7

    .line 178
    .line 179
    if-eqz v0, :cond_6

    .line 180
    .line 181
    iget v7, v3, Lcom/google/android/gms/internal/ads/zzz;->zzj:I

    .line 182
    .line 183
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 184
    .line 185
    const-string v11, "audio/vnd.dts.hd;profile=lbr"

    .line 186
    .line 187
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-eqz v10, :cond_2

    .line 192
    .line 193
    if-ne v7, v4, :cond_2

    .line 194
    .line 195
    const v7, 0xbb800

    .line 196
    .line 197
    .line 198
    :cond_2
    move v15, v7

    .line 199
    invoke-static {v14, v0, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    const/4 v7, -0x2

    .line 204
    const/4 v11, 0x1

    .line 205
    if-eq v10, v7, :cond_3

    .line 206
    .line 207
    move v7, v11

    .line 208
    goto :goto_2

    .line 209
    :cond_3
    move v7, v2

    .line 210
    :goto_2
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 211
    .line 212
    .line 213
    if-eq v5, v4, :cond_4

    .line 214
    .line 215
    move v13, v5

    .line 216
    :goto_3
    move v11, v9

    .line 217
    goto :goto_4

    .line 218
    :cond_4
    move v13, v11

    .line 219
    goto :goto_3

    .line 220
    :goto_4
    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzrk;->zzb(IIIIII)I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    move/from16 p2, v4

    .line 225
    .line 226
    move v9, v11

    .line 227
    move v11, v13

    .line 228
    move v13, v5

    .line 229
    int-to-double v4, v7

    .line 230
    double-to-int v4, v4

    .line 231
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    add-int/2addr v4, v11

    .line 236
    add-int/lit8 v4, v4, -0x1

    .line 237
    .line 238
    div-int/2addr v4, v11

    .line 239
    mul-int v10, v4, v11

    .line 240
    .line 241
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzri;->zzV:Z

    .line 242
    .line 243
    new-instance v2, Lcom/google/android/gms/internal/ads/zzqx;

    .line 244
    .line 245
    move v4, v6

    .line 246
    move v6, v13

    .line 247
    const/4 v13, 0x0

    .line 248
    move v7, v14

    .line 249
    const/4 v14, 0x0

    .line 250
    move v5, v12

    .line 251
    const/4 v12, 0x0

    .line 252
    move-object v11, v8

    .line 253
    move v8, v0

    .line 254
    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzqx;-><init>(Lcom/google/android/gms/internal/ads/zzz;IIIIIIILcom/google/android/gms/internal/ads/zzck;ZZZ)V

    .line 255
    .line 256
    .line 257
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzZ()Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_5

    .line 262
    .line 263
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzri;->zzp:Lcom/google/android/gms/internal/ads/zzqx;

    .line 264
    .line 265
    return-void

    .line 266
    :cond_5
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 267
    .line 268
    return-void

    .line 269
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqd;

    .line 270
    .line 271
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v5, "Invalid output channel config (mode="

    .line 281
    .line 282
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqd;

    .line 303
    .line 304
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string v5, "Invalid output encoding (mode="

    .line 314
    .line 315
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;)V

    .line 332
    .line 333
    .line 334
    throw v0

    .line 335
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqd;

    .line 336
    .line 337
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    const-string v4, "Unable to configure passthrough for: "

    .line 342
    .line 343
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;)V

    .line 348
    .line 349
    .line 350
    throw v0
.end method

.method public final zzf()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzZ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzB:J

    .line 11
    .line 12
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzC:J

    .line 13
    .line 14
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzD:J

    .line 15
    .line 16
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzE:J

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzW:Z

    .line 20
    .line 21
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzF:I

    .line 22
    .line 23
    new-instance v4, Lcom/google/android/gms/internal/ads/zzqz;

    .line 24
    .line 25
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzri;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    .line 26
    .line 27
    const-wide/16 v8, 0x0

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const-wide/16 v6, 0x0

    .line 31
    .line 32
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Lcom/google/android/gms/internal/ads/zzbb;JJLcom/google/android/gms/internal/ads/zzrh;)V

    .line 33
    .line 34
    .line 35
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzri;->zzy:Lcom/google/android/gms/internal/ads/zzqz;

    .line 36
    .line 37
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzI:J

    .line 38
    .line 39
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzx:Lcom/google/android/gms/internal/ads/zzqz;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzri;->zzj:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzK:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzL:I

    .line 49
    .line 50
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzM:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzO:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzN:Z

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzP:Z

    .line 57
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzf:Lcom/google/android/gms/internal/ads/zzrs;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrs;->zzp()V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzX()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzi:Lcom/google/android/gms/internal/ads/zzqm;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzh()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_0

    .line 73
    .line 74
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/media/AudioTrack;->pause()V

    .line 77
    .line 78
    .line 79
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 80
    .line 81
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzri;->zzaa(Landroid/media/AudioTrack;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzri;->zzk:Lcom/google/android/gms/internal/ads/zzrg;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzrg;->zzb(Landroid/media/AudioTrack;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzqx;->zza()Lcom/google/android/gms/internal/ads/zzqc;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzri;->zzp:Lcom/google/android/gms/internal/ads/zzqx;

    .line 104
    .line 105
    if-eqz v5, :cond_2

    .line 106
    .line 107
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 108
    .line 109
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzp:Lcom/google/android/gms/internal/ads/zzqx;

    .line 110
    .line 111
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzc()V

    .line 112
    .line 113
    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    .line 116
    const/16 v5, 0x18

    .line 117
    .line 118
    if-lt v0, v5, :cond_3

    .line 119
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzv:Lcom/google/android/gms/internal/ads/zzrb;

    .line 121
    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrb;->zzb()V

    .line 125
    .line 126
    .line 127
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzv:Lcom/google/android/gms/internal/ads/zzrb;

    .line 128
    .line 129
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 130
    .line 131
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzri;->zzo:Lcom/google/android/gms/internal/ads/zzqf;

    .line 132
    .line 133
    new-instance v6, Landroid/os/Handler;

    .line 134
    .line 135
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    .line 141
    .line 142
    sget-object v7, Lcom/google/android/gms/internal/ads/zzri;->zza:Ljava/lang/Object;

    .line 143
    .line 144
    monitor-enter v7

    .line 145
    :try_start_0
    sget-object v8, Lcom/google/android/gms/internal/ads/zzri;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 146
    .line 147
    if-nez v8, :cond_4

    .line 148
    .line 149
    sget-object v8, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 150
    .line 151
    const-string v8, "ExoPlayer:AudioTrackReleaseThread"

    .line 152
    .line 153
    new-instance v9, Lcom/google/android/gms/internal/ads/zzet;

    .line 154
    .line 155
    invoke-direct {v9, v8}, Lcom/google/android/gms/internal/ads/zzet;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v9}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    sput-object v8, Lcom/google/android/gms/internal/ads/zzri;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    goto :goto_1

    .line 167
    :cond_4
    :goto_0
    sget v8, Lcom/google/android/gms/internal/ads/zzri;->zzc:I

    .line 168
    .line 169
    add-int/lit8 v8, v8, 0x1

    .line 170
    .line 171
    sput v8, Lcom/google/android/gms/internal/ads/zzri;->zzc:I

    .line 172
    .line 173
    sget-object v8, Lcom/google/android/gms/internal/ads/zzri;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 174
    .line 175
    new-instance v9, Lcom/google/android/gms/internal/ads/zzqp;

    .line 176
    .line 177
    invoke-direct {v9, v0, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzqp;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqf;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzqc;)V

    .line 178
    .line 179
    .line 180
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 181
    .line 182
    const-wide/16 v4, 0x14

    .line 183
    .line 184
    invoke-interface {v8, v9, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 185
    .line 186
    .line 187
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :goto_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    throw v0

    .line 193
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzm:Lcom/google/android/gms/internal/ads/zzrc;

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zza()V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzl:Lcom/google/android/gms/internal/ads/zzrc;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zza()V

    .line 201
    .line 202
    .line 203
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzY:J

    .line 204
    .line 205
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzZ:J

    .line 206
    .line 207
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzaa:Landroid/os/Handler;

    .line 208
    .line 209
    if-eqz v0, :cond_6

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_6
    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzG:Z

    .line 3
    .line 4
    return-void
.end method

.method public final zzh()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzQ:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzZ()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzi:Lcom/google/android/gms/internal/ads/zzqm;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzk()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzri;->zzaa(Landroid/media/AudioTrack;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final zzi()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzQ:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzZ()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzi:Lcom/google/android/gms/internal/ads/zzqm;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzf()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqh;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzN:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzZ()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzY()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzS()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzN:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final zzk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzu:Lcom/google/android/gms/internal/ads/zzpj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpj;->zzi()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzl()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzf()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzg:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/google/android/gms/internal/ads/zzcn;

    .line 19
    .line 20
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcn;->zzf()V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzh:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    move v3, v2

    .line 33
    :goto_1
    if-ge v3, v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/google/android/gms/internal/ads/zzcn;

    .line 40
    .line 41
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcn;->zzf()V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzf()V

    .line 52
    .line 53
    .line 54
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzQ:Z

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzV:Z

    .line 57
    .line 58
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zze;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzw:Lcom/google/android/gms/internal/ads/zze;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zze;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzw:Lcom/google/android/gms/internal/ads/zze;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzu:Lcom/google/android/gms/internal/ads/zzpj;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpj;->zzg(Lcom/google/android/gms/internal/ads/zze;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzf()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final zzn(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzR:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzR:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzf()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzS:Lcom/google/android/gms/internal/ads/zzf;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzf;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzS:Lcom/google/android/gms/internal/ads/zzf;

    .line 15
    .line 16
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzf;->zza:I

    .line 17
    .line 18
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzS:Lcom/google/android/gms/internal/ads/zzf;

    .line 19
    .line 20
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzi:Lcom/google/android/gms/internal/ads/zzqm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zze(Lcom/google/android/gms/internal/ads/zzdg;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzqf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzo:Lcom/google/android/gms/internal/ads/zzqf;

    .line 2
    .line 3
    return-void
.end method

.method public final zzr(II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzri;->zzaa(Landroid/media/AudioTrack;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzbb;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbb;

    .line 2
    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbb;->zzb:F

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 6
    .line 7
    const/high16 v2, 0x41000000    # 8.0f

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v3, 0x3dcccccd    # 0.1f

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzbb;->zzc:F

    .line 21
    .line 22
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbb;-><init>(FF)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzri;->zzU(Lcom/google/android/gms/internal/ads/zzbb;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzpc;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzpc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzn:Lcom/google/android/gms/internal/ads/zzpc;

    .line 2
    .line 3
    return-void
.end method

.method public final zzu(Landroid/media/AudioDeviceInfo;)V
    .locals 1
    .param p1    # Landroid/media/AudioDeviceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpk;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzT:Lcom/google/android/gms/internal/ads/zzpk;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzu:Lcom/google/android/gms/internal/ads/zzpj;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpj;->zzh(Landroid/media/AudioDeviceInfo;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzT:Lcom/google/android/gms/internal/ads/zzpk;

    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzqt;->zza(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpk;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public final zzv(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzA:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzri;->zzU(Lcom/google/android/gms/internal/ads/zzbb;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzw(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzJ:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzJ:F

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzW()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final zzx(Ljava/nio/ByteBuffer;JI)Z
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqe;,
            Lcom/google/android/gms/internal/ads/zzqh;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-wide/from16 v3, p2

    .line 6
    .line 7
    move/from16 v5, p4

    .line 8
    .line 9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzK:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-ne v2, v0, :cond_1

    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v7

    .line 19
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzp:Lcom/google/android/gms/internal/ads/zzqx;

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzY()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    return v7

    .line 34
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzp:Lcom/google/android/gms/internal/ads/zzqx;

    .line 35
    .line 36
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 37
    .line 38
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqx;->zzc:I

    .line 39
    .line 40
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzc:I

    .line 41
    .line 42
    if-ne v10, v11, :cond_3

    .line 43
    .line 44
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqx;->zzg:I

    .line 45
    .line 46
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzg:I

    .line 47
    .line 48
    if-ne v10, v11, :cond_3

    .line 49
    .line 50
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqx;->zze:I

    .line 51
    .line 52
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqx;->zze:I

    .line 53
    .line 54
    if-ne v10, v11, :cond_3

    .line 55
    .line 56
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqx;->zzf:I

    .line 57
    .line 58
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzf:I

    .line 59
    .line 60
    if-ne v10, v11, :cond_3

    .line 61
    .line 62
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    .line 63
    .line 64
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    .line 65
    .line 66
    if-ne v9, v10, :cond_3

    .line 67
    .line 68
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 69
    .line 70
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzp:Lcom/google/android/gms/internal/ads/zzqx;

    .line 71
    .line 72
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzri;->zzaa(Landroid/media/AudioTrack;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 83
    .line 84
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzk:Z

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzS()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzy()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    return v7

    .line 97
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzf()V

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_1
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzri;->zzO(J)V

    .line 101
    .line 102
    .line 103
    :cond_6
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzZ()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/16 v9, 0x1f

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :cond_7
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzl:Lcom/google/android/gms/internal/ads/zzrc;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzc()Z

    .line 116
    .line 117
    .line 118
    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqe; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    if-eqz v0, :cond_8

    .line 120
    .line 121
    return v7

    .line 122
    :cond_8
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 123
    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzri;->zzN(Lcom/google/android/gms/internal/ads/zzqx;)Landroid/media/AudioTrack;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_3

    .line 131
    :catch_0
    move-exception v0

    .line 132
    move-object v11, v0

    .line 133
    goto :goto_2

    .line 134
    :cond_9
    throw v8
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzqe; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    :goto_2
    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 136
    .line 137
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzh:I

    .line 138
    .line 139
    const v13, 0xf4240

    .line 140
    .line 141
    .line 142
    if-le v12, v13, :cond_2d

    .line 143
    .line 144
    new-instance v14, Lcom/google/android/gms/internal/ads/zzqx;

    .line 145
    .line 146
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzqx;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 147
    .line 148
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzb:I

    .line 149
    .line 150
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzc:I

    .line 151
    .line 152
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    .line 153
    .line 154
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzqx;->zze:I

    .line 155
    .line 156
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzf:I

    .line 157
    .line 158
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzg:I

    .line 159
    .line 160
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzi:Lcom/google/android/gms/internal/ads/zzck;

    .line 161
    .line 162
    const/16 v25, 0x0

    .line 163
    .line 164
    const/16 v26, 0x0

    .line 165
    .line 166
    const v22, 0xf4240

    .line 167
    .line 168
    .line 169
    const/16 v24, 0x0

    .line 170
    .line 171
    move-object/from16 v23, v0

    .line 172
    .line 173
    move/from16 v20, v6

    .line 174
    .line 175
    move/from16 v19, v7

    .line 176
    .line 177
    move/from16 v18, v8

    .line 178
    .line 179
    move/from16 v21, v10

    .line 180
    .line 181
    move/from16 v16, v12

    .line 182
    .line 183
    move/from16 v17, v13

    .line 184
    .line 185
    invoke-direct/range {v14 .. v26}, Lcom/google/android/gms/internal/ads/zzqx;-><init>(Lcom/google/android/gms/internal/ads/zzz;IIIIIIILcom/google/android/gms/internal/ads/zzck;ZZZ)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzqe; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    .line 187
    .line 188
    :try_start_3
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzri;->zzN(Lcom/google/android/gms/internal/ads/zzqx;)Landroid/media/AudioTrack;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iput-object v14, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzqe; {:try_start_3 .. :try_end_3} :catch_2

    .line 193
    .line 194
    :goto_3
    :try_start_4
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 195
    .line 196
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzri;->zzaa(Landroid/media/AudioTrack;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_b

    .line 201
    .line 202
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 203
    .line 204
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzk:Lcom/google/android/gms/internal/ads/zzrg;

    .line 205
    .line 206
    if-nez v6, :cond_a

    .line 207
    .line 208
    new-instance v6, Lcom/google/android/gms/internal/ads/zzrg;

    .line 209
    .line 210
    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzrg;-><init>(Lcom/google/android/gms/internal/ads/zzri;)V

    .line 211
    .line 212
    .line 213
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzk:Lcom/google/android/gms/internal/ads/zzrg;

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :catch_1
    move-exception v0

    .line 217
    goto/16 :goto_13

    .line 218
    .line 219
    :cond_a
    :goto_4
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzk:Lcom/google/android/gms/internal/ads/zzrg;

    .line 220
    .line 221
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzrg;->zza(Landroid/media/AudioTrack;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 225
    .line 226
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->zzk:Z

    .line 227
    .line 228
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 229
    .line 230
    if-lt v0, v9, :cond_c

    .line 231
    .line 232
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzn:Lcom/google/android/gms/internal/ads/zzpc;

    .line 233
    .line 234
    if-eqz v6, :cond_c

    .line 235
    .line 236
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 237
    .line 238
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpc;->zza()Landroid/media/metrics/LogSessionId;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-static {}, Landroidx/media3/exoplayer/Illlllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/media/metrics/LogSessionId;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    invoke-static {v6, v8}, Landroidx/media3/exoplayer/audio/Www;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-nez v8, :cond_c

    .line 251
    .line 252
    invoke-static {v7, v6}, Landroidx/media3/exoplayer/audio/Kkkkkkkkkkkkkkkkkkkkkkkkkk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioTrack;Landroid/media/metrics/LogSessionId;)V

    .line 253
    .line 254
    .line 255
    :cond_c
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 256
    .line 257
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    iput v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzR:I

    .line 262
    .line 263
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzri;->zzi:Lcom/google/android/gms/internal/ads/zzqm;

    .line 264
    .line 265
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 266
    .line 267
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 268
    .line 269
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzqx;->zzc:I

    .line 270
    .line 271
    const/4 v8, 0x2

    .line 272
    if-ne v7, v8, :cond_d

    .line 273
    .line 274
    const/4 v12, 0x1

    .line 275
    goto :goto_5

    .line 276
    :cond_d
    const/4 v12, 0x0

    .line 277
    :goto_5
    iget v13, v6, Lcom/google/android/gms/internal/ads/zzqx;->zzg:I

    .line 278
    .line 279
    iget v14, v6, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    .line 280
    .line 281
    iget v15, v6, Lcom/google/android/gms/internal/ads/zzqx;->zzh:I

    .line 282
    .line 283
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzqm;->zzd(Landroid/media/AudioTrack;ZIII)V

    .line 284
    .line 285
    .line 286
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzW()V

    .line 287
    .line 288
    .line 289
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzS:Lcom/google/android/gms/internal/ads/zzf;

    .line 290
    .line 291
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzf;->zza:I

    .line 292
    .line 293
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzT:Lcom/google/android/gms/internal/ads/zzpk;

    .line 294
    .line 295
    if-eqz v6, :cond_e

    .line 296
    .line 297
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 298
    .line 299
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzqt;->zza(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpk;)V

    .line 300
    .line 301
    .line 302
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzu:Lcom/google/android/gms/internal/ads/zzpj;

    .line 303
    .line 304
    if-eqz v6, :cond_e

    .line 305
    .line 306
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzri;->zzT:Lcom/google/android/gms/internal/ads/zzpk;

    .line 307
    .line 308
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzpk;->zza:Landroid/media/AudioDeviceInfo;

    .line 309
    .line 310
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzpj;->zzh(Landroid/media/AudioDeviceInfo;)V

    .line 311
    .line 312
    .line 313
    :cond_e
    const/16 v6, 0x18

    .line 314
    .line 315
    if-lt v0, v6, :cond_f

    .line 316
    .line 317
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzu:Lcom/google/android/gms/internal/ads/zzpj;

    .line 318
    .line 319
    if-eqz v0, :cond_f

    .line 320
    .line 321
    new-instance v6, Lcom/google/android/gms/internal/ads/zzrb;

    .line 322
    .line 323
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 324
    .line 325
    invoke-direct {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzrb;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpj;)V

    .line 326
    .line 327
    .line 328
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzv:Lcom/google/android/gms/internal/ads/zzrb;

    .line 329
    .line 330
    :cond_f
    const/4 v6, 0x1

    .line 331
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzH:Z

    .line 332
    .line 333
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzo:Lcom/google/android/gms/internal/ads/zzqf;

    .line 334
    .line 335
    if-eqz v0, :cond_10

    .line 336
    .line 337
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 338
    .line 339
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzqx;->zza()Lcom/google/android/gms/internal/ads/zzqc;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    check-cast v0, Lcom/google/android/gms/internal/ads/zzrm;

    .line 344
    .line 345
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrm;->zza:Lcom/google/android/gms/internal/ads/zzro;

    .line 346
    .line 347
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzro;->zzae(Lcom/google/android/gms/internal/ads/zzro;)Lcom/google/android/gms/internal/ads/zzqa;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzqa;->zzo(Lcom/google/android/gms/internal/ads/zzqc;)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzqe; {:try_start_4 .. :try_end_4} :catch_1

    .line 352
    .line 353
    .line 354
    :cond_10
    :goto_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzl:Lcom/google/android/gms/internal/ads/zzrc;

    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zza()V

    .line 357
    .line 358
    .line 359
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzH:Z

    .line 360
    .line 361
    const-wide/16 v6, 0x0

    .line 362
    .line 363
    if-eqz v0, :cond_11

    .line 364
    .line 365
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 366
    .line 367
    .line 368
    move-result-wide v10

    .line 369
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzri;->zzI:J

    .line 370
    .line 371
    const/4 v8, 0x0

    .line 372
    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzG:Z

    .line 373
    .line 374
    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzH:Z

    .line 375
    .line 376
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzri;->zzO(J)V

    .line 377
    .line 378
    .line 379
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzQ:Z

    .line 380
    .line 381
    if-eqz v0, :cond_11

    .line 382
    .line 383
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzi()V

    .line 384
    .line 385
    .line 386
    :cond_11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzri;->zzi:Lcom/google/android/gms/internal/ads/zzqm;

    .line 387
    .line 388
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzM()J

    .line 389
    .line 390
    .line 391
    move-result-wide v10

    .line 392
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzqm;->zzj(J)Z

    .line 393
    .line 394
    .line 395
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzK:Ljava/nio/ByteBuffer;

    .line 396
    .line 397
    if-nez v8, :cond_2a

    .line 398
    .line 399
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 400
    .line 401
    .line 402
    move-result-object v8

    .line 403
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 404
    .line 405
    if-ne v8, v10, :cond_12

    .line 406
    .line 407
    const/4 v8, 0x1

    .line 408
    goto :goto_7

    .line 409
    :cond_12
    const/4 v8, 0x0

    .line 410
    :goto_7
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 414
    .line 415
    .line 416
    move-result v8

    .line 417
    if-nez v8, :cond_13

    .line 418
    .line 419
    const/16 v28, 0x1

    .line 420
    .line 421
    return v28

    .line 422
    :cond_13
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 423
    .line 424
    iget v10, v8, Lcom/google/android/gms/internal/ads/zzqx;->zzc:I

    .line 425
    .line 426
    if-eqz v10, :cond_22

    .line 427
    .line 428
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzri;->zzF:I

    .line 429
    .line 430
    if-nez v10, :cond_22

    .line 431
    .line 432
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzqx;->zzg:I

    .line 433
    .line 434
    const/16 v10, 0x14

    .line 435
    .line 436
    if-eq v8, v10, :cond_20

    .line 437
    .line 438
    const/16 v10, 0x1e

    .line 439
    .line 440
    const/4 v11, -0x2

    .line 441
    const/4 v12, -0x1

    .line 442
    const/16 v13, 0x400

    .line 443
    .line 444
    if-eq v8, v10, :cond_19

    .line 445
    .line 446
    packed-switch v8, :pswitch_data_0

    .line 447
    .line 448
    .line 449
    const/16 v9, 0x10

    .line 450
    .line 451
    packed-switch v8, :pswitch_data_1

    .line 452
    .line 453
    .line 454
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 455
    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    const-string v3, "Unexpected audio encoding: "

    .line 462
    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw v0

    .line 477
    :pswitch_0
    sget v8, Lcom/google/android/gms/internal/ads/zzacr;->zza:I

    .line 478
    .line 479
    new-array v8, v9, [B

    .line 480
    .line 481
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 482
    .line 483
    .line 484
    move-result v10

    .line 485
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 489
    .line 490
    .line 491
    new-instance v10, Lcom/google/android/gms/internal/ads/zzej;

    .line 492
    .line 493
    invoke-direct {v10, v8, v9}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    .line 494
    .line 495
    .line 496
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(Lcom/google/android/gms/internal/ads/zzej;)Lcom/google/android/gms/internal/ads/zzacp;

    .line 497
    .line 498
    .line 499
    move-result-object v8

    .line 500
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzacp;->zzc:I

    .line 501
    .line 502
    :goto_8
    const/16 v28, 0x1

    .line 503
    .line 504
    goto/16 :goto_10

    .line 505
    .line 506
    :goto_9
    :pswitch_1
    move v8, v13

    .line 507
    goto :goto_8

    .line 508
    :pswitch_2
    const/16 v8, 0x200

    .line 509
    .line 510
    goto :goto_8

    .line 511
    :pswitch_3
    sget v8, Lcom/google/android/gms/internal/ads/zzacn;->zza:I

    .line 512
    .line 513
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 514
    .line 515
    .line 516
    move-result v8

    .line 517
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 518
    .line 519
    .line 520
    move-result v10

    .line 521
    add-int/lit8 v10, v10, -0xa

    .line 522
    .line 523
    move v13, v8

    .line 524
    :goto_a
    if-gt v13, v10, :cond_15

    .line 525
    .line 526
    add-int/lit8 v14, v13, 0x4

    .line 527
    .line 528
    invoke-static {v2, v14}, Lcom/google/android/gms/internal/ads/zzeu;->zzj(Ljava/nio/ByteBuffer;I)I

    .line 529
    .line 530
    .line 531
    move-result v14

    .line 532
    and-int/2addr v14, v11

    .line 533
    const v15, -0x78d9046

    .line 534
    .line 535
    .line 536
    if-ne v14, v15, :cond_14

    .line 537
    .line 538
    sub-int/2addr v13, v8

    .line 539
    goto :goto_b

    .line 540
    :cond_14
    const/16 v28, 0x1

    .line 541
    .line 542
    add-int/lit8 v13, v13, 0x1

    .line 543
    .line 544
    goto :goto_a

    .line 545
    :cond_15
    move v13, v12

    .line 546
    :goto_b
    if-ne v13, v12, :cond_16

    .line 547
    .line 548
    const/4 v8, 0x0

    .line 549
    goto :goto_8

    .line 550
    :cond_16
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 551
    .line 552
    .line 553
    move-result v8

    .line 554
    add-int/2addr v8, v13

    .line 555
    add-int/lit8 v8, v8, 0x7

    .line 556
    .line 557
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 558
    .line 559
    .line 560
    move-result v8

    .line 561
    and-int/lit16 v8, v8, 0xff

    .line 562
    .line 563
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 564
    .line 565
    .line 566
    move-result v10

    .line 567
    add-int/2addr v10, v13

    .line 568
    const/16 v11, 0xbb

    .line 569
    .line 570
    if-ne v8, v11, :cond_17

    .line 571
    .line 572
    const/16 v8, 0x9

    .line 573
    .line 574
    goto :goto_c

    .line 575
    :cond_17
    const/16 v8, 0x8

    .line 576
    .line 577
    :goto_c
    add-int/2addr v10, v8

    .line 578
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 579
    .line 580
    .line 581
    move-result v8

    .line 582
    shr-int/lit8 v8, v8, 0x4

    .line 583
    .line 584
    and-int/lit8 v8, v8, 0x7

    .line 585
    .line 586
    const/16 v10, 0x28

    .line 587
    .line 588
    shl-int v8, v10, v8

    .line 589
    .line 590
    mul-int/2addr v8, v9

    .line 591
    goto :goto_8

    .line 592
    :pswitch_4
    const/16 v8, 0x800

    .line 593
    .line 594
    goto :goto_8

    .line 595
    :pswitch_5
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 596
    .line 597
    .line 598
    move-result v8

    .line 599
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/zzeu;->zzj(Ljava/nio/ByteBuffer;I)I

    .line 600
    .line 601
    .line 602
    move-result v8

    .line 603
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(I)I

    .line 604
    .line 605
    .line 606
    move-result v8

    .line 607
    if-eq v8, v12, :cond_18

    .line 608
    .line 609
    goto :goto_8

    .line 610
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 611
    .line 612
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 613
    .line 614
    .line 615
    throw v0

    .line 616
    :pswitch_6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzacn;->zza(Ljava/nio/ByteBuffer;)I

    .line 617
    .line 618
    .line 619
    move-result v8

    .line 620
    goto :goto_8

    .line 621
    :cond_19
    :pswitch_7
    sget v8, Lcom/google/android/gms/internal/ads/zzadm;->zza:I

    .line 622
    .line 623
    const/4 v8, 0x0

    .line 624
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 625
    .line 626
    .line 627
    move-result v10

    .line 628
    const v14, -0xde4bec0

    .line 629
    .line 630
    .line 631
    if-eq v10, v14, :cond_1f

    .line 632
    .line 633
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 634
    .line 635
    .line 636
    move-result v10

    .line 637
    const v14, -0x17bd3b8f

    .line 638
    .line 639
    .line 640
    if-ne v10, v14, :cond_1a

    .line 641
    .line 642
    goto/16 :goto_9

    .line 643
    .line 644
    :cond_1a
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 645
    .line 646
    .line 647
    move-result v10

    .line 648
    const v8, 0x25205864

    .line 649
    .line 650
    .line 651
    if-ne v10, v8, :cond_1b

    .line 652
    .line 653
    const/16 v8, 0x1000

    .line 654
    .line 655
    goto/16 :goto_8

    .line 656
    .line 657
    :cond_1b
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 658
    .line 659
    .line 660
    move-result v8

    .line 661
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 662
    .line 663
    .line 664
    move-result v10

    .line 665
    if-eq v10, v11, :cond_1e

    .line 666
    .line 667
    if-eq v10, v12, :cond_1d

    .line 668
    .line 669
    if-eq v10, v9, :cond_1c

    .line 670
    .line 671
    add-int/lit8 v9, v8, 0x4

    .line 672
    .line 673
    add-int/lit8 v8, v8, 0x5

    .line 674
    .line 675
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 676
    .line 677
    .line 678
    move-result v9

    .line 679
    const/16 v28, 0x1

    .line 680
    .line 681
    and-int/lit8 v9, v9, 0x1

    .line 682
    .line 683
    shl-int/lit8 v9, v9, 0x6

    .line 684
    .line 685
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 686
    .line 687
    .line 688
    move-result v8

    .line 689
    and-int/lit16 v8, v8, 0xfc

    .line 690
    .line 691
    const/16 v29, 0x2

    .line 692
    .line 693
    :goto_d
    shr-int/lit8 v8, v8, 0x2

    .line 694
    .line 695
    or-int/2addr v8, v9

    .line 696
    const/16 v28, 0x1

    .line 697
    .line 698
    goto :goto_f

    .line 699
    :cond_1c
    const/16 v29, 0x2

    .line 700
    .line 701
    add-int/lit8 v9, v8, 0x5

    .line 702
    .line 703
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 704
    .line 705
    .line 706
    move-result v9

    .line 707
    and-int/lit8 v9, v9, 0x7

    .line 708
    .line 709
    shl-int/lit8 v9, v9, 0x4

    .line 710
    .line 711
    add-int/lit8 v8, v8, 0x6

    .line 712
    .line 713
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 714
    .line 715
    .line 716
    move-result v8

    .line 717
    :goto_e
    and-int/lit8 v8, v8, 0x3c

    .line 718
    .line 719
    goto :goto_d

    .line 720
    :cond_1d
    const/16 v29, 0x2

    .line 721
    .line 722
    add-int/lit8 v9, v8, 0x4

    .line 723
    .line 724
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 725
    .line 726
    .line 727
    move-result v9

    .line 728
    and-int/lit8 v9, v9, 0x7

    .line 729
    .line 730
    shl-int/lit8 v9, v9, 0x4

    .line 731
    .line 732
    add-int/lit8 v8, v8, 0x7

    .line 733
    .line 734
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 735
    .line 736
    .line 737
    move-result v8

    .line 738
    goto :goto_e

    .line 739
    :cond_1e
    const/16 v29, 0x2

    .line 740
    .line 741
    add-int/lit8 v9, v8, 0x4

    .line 742
    .line 743
    add-int/lit8 v8, v8, 0x5

    .line 744
    .line 745
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 746
    .line 747
    .line 748
    move-result v8

    .line 749
    const/16 v28, 0x1

    .line 750
    .line 751
    and-int/lit8 v8, v8, 0x1

    .line 752
    .line 753
    shl-int/lit8 v8, v8, 0x6

    .line 754
    .line 755
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 756
    .line 757
    .line 758
    move-result v9

    .line 759
    and-int/lit16 v9, v9, 0xfc

    .line 760
    .line 761
    shr-int/lit8 v9, v9, 0x2

    .line 762
    .line 763
    or-int/2addr v8, v9

    .line 764
    :goto_f
    add-int/lit8 v8, v8, 0x1

    .line 765
    .line 766
    mul-int/lit8 v8, v8, 0x20

    .line 767
    .line 768
    goto :goto_10

    .line 769
    :cond_1f
    const/16 v28, 0x1

    .line 770
    .line 771
    move v8, v13

    .line 772
    goto :goto_10

    .line 773
    :cond_20
    const/16 v28, 0x1

    .line 774
    .line 775
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaei;->zzb(Ljava/nio/ByteBuffer;)I

    .line 776
    .line 777
    .line 778
    move-result v8

    .line 779
    :goto_10
    iput v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzF:I

    .line 780
    .line 781
    if-eqz v8, :cond_21

    .line 782
    .line 783
    goto :goto_11

    .line 784
    :cond_21
    return v28

    .line 785
    :cond_22
    :goto_11
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzx:Lcom/google/android/gms/internal/ads/zzqz;

    .line 786
    .line 787
    if-eqz v8, :cond_24

    .line 788
    .line 789
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzY()Z

    .line 790
    .line 791
    .line 792
    move-result v8

    .line 793
    if-nez v8, :cond_23

    .line 794
    .line 795
    const/16 v27, 0x0

    .line 796
    .line 797
    return v27

    .line 798
    :cond_23
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzri;->zzO(J)V

    .line 799
    .line 800
    .line 801
    const/4 v8, 0x0

    .line 802
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzx:Lcom/google/android/gms/internal/ads/zzqz;

    .line 803
    .line 804
    :cond_24
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzI:J

    .line 805
    .line 806
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 807
    .line 808
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzL()J

    .line 809
    .line 810
    .line 811
    move-result-wide v11

    .line 812
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzri;->zzf:Lcom/google/android/gms/internal/ads/zzrs;

    .line 813
    .line 814
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzrs;->zzo()J

    .line 815
    .line 816
    .line 817
    move-result-wide v13

    .line 818
    sub-long/2addr v11, v13

    .line 819
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzqx;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 820
    .line 821
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    .line 822
    .line 823
    invoke-static {v11, v12, v10}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    .line 824
    .line 825
    .line 826
    move-result-wide v10

    .line 827
    add-long/2addr v8, v10

    .line 828
    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzri;->zzG:Z

    .line 829
    .line 830
    if-nez v10, :cond_26

    .line 831
    .line 832
    sub-long v10, v8, v3

    .line 833
    .line 834
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    .line 835
    .line 836
    .line 837
    move-result-wide v10

    .line 838
    const-wide/32 v12, 0x30d40

    .line 839
    .line 840
    .line 841
    cmp-long v10, v10, v12

    .line 842
    .line 843
    if-lez v10, :cond_26

    .line 844
    .line 845
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzri;->zzo:Lcom/google/android/gms/internal/ads/zzqf;

    .line 846
    .line 847
    if-eqz v10, :cond_25

    .line 848
    .line 849
    new-instance v11, Lcom/google/android/gms/internal/ads/zzqg;

    .line 850
    .line 851
    invoke-direct {v11, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzqg;-><init>(JJ)V

    .line 852
    .line 853
    .line 854
    invoke-interface {v10, v11}, Lcom/google/android/gms/internal/ads/zzqf;->zza(Ljava/lang/Exception;)V

    .line 855
    .line 856
    .line 857
    :cond_25
    const/4 v10, 0x1

    .line 858
    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzri;->zzG:Z

    .line 859
    .line 860
    :cond_26
    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzri;->zzG:Z

    .line 861
    .line 862
    if-eqz v10, :cond_28

    .line 863
    .line 864
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzY()Z

    .line 865
    .line 866
    .line 867
    move-result v10

    .line 868
    if-nez v10, :cond_27

    .line 869
    .line 870
    const/4 v10, 0x0

    .line 871
    return v10

    .line 872
    :cond_27
    const/4 v10, 0x0

    .line 873
    sub-long v8, v3, v8

    .line 874
    .line 875
    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzri;->zzI:J

    .line 876
    .line 877
    add-long/2addr v11, v8

    .line 878
    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/zzri;->zzI:J

    .line 879
    .line 880
    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzri;->zzG:Z

    .line 881
    .line 882
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzri;->zzO(J)V

    .line 883
    .line 884
    .line 885
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzri;->zzo:Lcom/google/android/gms/internal/ads/zzqf;

    .line 886
    .line 887
    if-eqz v10, :cond_28

    .line 888
    .line 889
    cmp-long v6, v8, v6

    .line 890
    .line 891
    if-eqz v6, :cond_28

    .line 892
    .line 893
    check-cast v10, Lcom/google/android/gms/internal/ads/zzrm;

    .line 894
    .line 895
    iget-object v6, v10, Lcom/google/android/gms/internal/ads/zzrm;->zza:Lcom/google/android/gms/internal/ads/zzro;

    .line 896
    .line 897
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzro;->zzao()V

    .line 898
    .line 899
    .line 900
    :cond_28
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzq:Lcom/google/android/gms/internal/ads/zzqx;

    .line 901
    .line 902
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzqx;->zzc:I

    .line 903
    .line 904
    if-nez v6, :cond_29

    .line 905
    .line 906
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzB:J

    .line 907
    .line 908
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 909
    .line 910
    .line 911
    move-result v8

    .line 912
    int-to-long v8, v8

    .line 913
    add-long/2addr v6, v8

    .line 914
    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzB:J

    .line 915
    .line 916
    goto :goto_12

    .line 917
    :cond_29
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzC:J

    .line 918
    .line 919
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzF:I

    .line 920
    .line 921
    int-to-long v8, v8

    .line 922
    int-to-long v10, v5

    .line 923
    mul-long/2addr v8, v10

    .line 924
    add-long/2addr v6, v8

    .line 925
    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzri;->zzC:J

    .line 926
    .line 927
    :goto_12
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzri;->zzK:Ljava/nio/ByteBuffer;

    .line 928
    .line 929
    iput v5, v1, Lcom/google/android/gms/internal/ads/zzri;->zzL:I

    .line 930
    .line 931
    :cond_2a
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzri;->zzT(J)V

    .line 932
    .line 933
    .line 934
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzri;->zzK:Ljava/nio/ByteBuffer;

    .line 935
    .line 936
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 937
    .line 938
    .line 939
    move-result v2

    .line 940
    if-nez v2, :cond_2b

    .line 941
    .line 942
    const/4 v8, 0x0

    .line 943
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzK:Ljava/nio/ByteBuffer;

    .line 944
    .line 945
    const/4 v8, 0x0

    .line 946
    iput v8, v1, Lcom/google/android/gms/internal/ads/zzri;->zzL:I

    .line 947
    .line 948
    const/16 v28, 0x1

    .line 949
    .line 950
    return v28

    .line 951
    :cond_2b
    const/4 v8, 0x0

    .line 952
    const/16 v28, 0x1

    .line 953
    .line 954
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzM()J

    .line 955
    .line 956
    .line 957
    move-result-wide v2

    .line 958
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzqm;->zzi(J)Z

    .line 959
    .line 960
    .line 961
    move-result v0

    .line 962
    if-eqz v0, :cond_2c

    .line 963
    .line 964
    const-string v0, "DefaultAudioSink"

    .line 965
    .line 966
    const-string v2, "Resetting stalled audio track"

    .line 967
    .line 968
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzf()V

    .line 972
    .line 973
    .line 974
    return v28

    .line 975
    :cond_2c
    return v8

    .line 976
    :catch_2
    move-exception v0

    .line 977
    :try_start_5
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 978
    .line 979
    .line 980
    :cond_2d
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzri;->zzQ()V

    .line 981
    .line 982
    .line 983
    throw v11
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzqe; {:try_start_5 .. :try_end_5} :catch_1

    .line 984
    :goto_13
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzqe;->zzb:Z

    .line 985
    .line 986
    if-nez v2, :cond_2e

    .line 987
    .line 988
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzri;->zzl:Lcom/google/android/gms/internal/ads/zzrc;

    .line 989
    .line 990
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzb(Ljava/lang/Exception;)V

    .line 991
    .line 992
    .line 993
    const/16 v27, 0x0

    .line 994
    .line 995
    return v27

    .line 996
    :cond_2e
    throw v0

    .line 997
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final zzy()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzZ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzs:Landroid/media/AudioTrack;

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/Wwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioTrack;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzP:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzi:Lcom/google/android/gms/internal/ads/zzqm;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzM()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqm;->zzg(J)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    return v0
.end method

.method public final zzz()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzZ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zzN:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzri;->zzy()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    return v2

    .line 21
    :cond_1
    return v1
.end method
