.class public final Lcom/google/android/gms/internal/ads/zzapg;
.super Ljava/lang/Thread;
.source "Proguard"


# static fields
.field private static final zza:Z


# instance fields
.field private final zzb:Ljava/util/concurrent/BlockingQueue;

.field private final zzc:Ljava/util/concurrent/BlockingQueue;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzape;

.field private volatile zze:Z

.field private final zzf:Lcom/google/android/gms/internal/ads/zzaqh;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzapl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzapg;->zza:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzape;Lcom/google/android/gms/internal/ads/zzapl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapg;->zze:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzb:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzd:Lcom/google/android/gms/internal/ads/zzape;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzg:Lcom/google/android/gms/internal/ads/zzapl;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqh;

    .line 16
    .line 17
    invoke-direct {p1, p0, p2, p4}, Lcom/google/android/gms/internal/ads/zzaqh;-><init>(Lcom/google/android/gms/internal/ads/zzapg;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzapl;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzf:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 21
    .line 22
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzapg;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method private zzc()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzb:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzapu;

    .line 8
    .line 9
    const-string v1, "cache-queue-take"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapu;->zzm(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapu;->zzt(I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapu;->zzw()Z

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzd:Lcom/google/android/gms/internal/ads/zzape;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapu;->zzj()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzape;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzapd;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    const-string v1, "cache-miss"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapu;->zzm(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzf:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqh;->zzc(Lcom/google/android/gms/internal/ads/zzapu;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_5

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 48
    .line 49
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :catchall_0
    move-exception v1

    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzapd;->zza(J)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_1

    .line 66
    .line 67
    const-string v1, "cache-hit-expired"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapu;->zzm(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzapu;->zze(Lcom/google/android/gms/internal/ads/zzapd;)Lcom/google/android/gms/internal/ads/zzapu;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzf:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqh;->zzc(Lcom/google/android/gms/internal/ads/zzapu;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_5

    .line 82
    .line 83
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 84
    .line 85
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const-string v7, "cache-hit"

    .line 90
    .line 91
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzapu;->zzm(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v7, Lcom/google/android/gms/internal/ads/zzapq;

    .line 95
    .line 96
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzapd;->zza:[B

    .line 97
    .line 98
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/zzapd;->zzg:Ljava/util/Map;

    .line 99
    .line 100
    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzapq;-><init>([BLjava/util/Map;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzapu;->zzh(Lcom/google/android/gms/internal/ads/zzapq;)Lcom/google/android/gms/internal/ads/zzaqa;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    const-string v8, "cache-hit-parsed"

    .line 108
    .line 109
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzapu;->zzm(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaqa;->zzc()Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    const/4 v9, 0x0

    .line 117
    if-nez v8, :cond_2

    .line 118
    .line 119
    const-string v4, "cache-parsing-failed"

    .line 120
    .line 121
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzapu;->zzm(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapu;->zzj()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzape;->zzc(Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzapu;->zze(Lcom/google/android/gms/internal/ads/zzapd;)Lcom/google/android/gms/internal/ads/zzapu;

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzf:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqh;->zzc(Lcom/google/android/gms/internal/ads/zzapu;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_5

    .line 141
    .line 142
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 143
    .line 144
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    iget-wide v10, v4, Lcom/google/android/gms/internal/ads/zzapd;->zzf:J

    .line 149
    .line 150
    cmp-long v3, v10, v5

    .line 151
    .line 152
    if-gez v3, :cond_4

    .line 153
    .line 154
    const-string v3, "cache-hit-refresh-needed"

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzapu;->zzm(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzapu;->zze(Lcom/google/android/gms/internal/ads/zzapd;)Lcom/google/android/gms/internal/ads/zzapu;

    .line 160
    .line 161
    .line 162
    iput-boolean v1, v7, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:Z

    .line 163
    .line 164
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzf:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 165
    .line 166
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqh;->zzc(Lcom/google/android/gms/internal/ads/zzapu;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_3

    .line 171
    .line 172
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzg:Lcom/google/android/gms/internal/ads/zzapl;

    .line 173
    .line 174
    new-instance v3, Lcom/google/android/gms/internal/ads/zzapf;

    .line 175
    .line 176
    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzapf;-><init>(Lcom/google/android/gms/internal/ads/zzapg;Lcom/google/android/gms/internal/ads/zzapu;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v0, v7, v3}, Lcom/google/android/gms/internal/ads/zzapl;->zzb(Lcom/google/android/gms/internal/ads/zzapu;Lcom/google/android/gms/internal/ads/zzaqa;Ljava/lang/Runnable;)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzg:Lcom/google/android/gms/internal/ads/zzapl;

    .line 184
    .line 185
    invoke-virtual {v1, v0, v7, v9}, Lcom/google/android/gms/internal/ads/zzapl;->zzb(Lcom/google/android/gms/internal/ads/zzapu;Lcom/google/android/gms/internal/ads/zzaqa;Ljava/lang/Runnable;)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzg:Lcom/google/android/gms/internal/ads/zzapl;

    .line 190
    .line 191
    invoke-virtual {v1, v0, v7, v9}, Lcom/google/android/gms/internal/ads/zzapl;->zzb(Lcom/google/android/gms/internal/ads/zzapu;Lcom/google/android/gms/internal/ads/zzaqa;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .line 193
    .line 194
    :cond_5
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzapu;->zzt(I)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzapu;->zzt(I)V

    .line 199
    .line 200
    .line 201
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzapg;->zza:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-array v0, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v2, "start new dispatcher"

    .line 9
    .line 10
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaqg;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/16 v0, 0xa

    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapg;->zzd:Lcom/google/android/gms/internal/ads/zzape;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzape;->zzb()V

    .line 21
    .line 22
    .line 23
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapg;->zzc()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapg;->zze:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 42
    .line 43
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaqg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0
.end method

.method public final zzb()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapg;->zze:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
