.class public final Lcom/google/android/gms/internal/ads/zzfhq;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final zza:Ljava/lang/Object;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static zzb:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "enabledLock"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final zzc:Ljava/lang/Object;

.field private static final zzd:Ljava/lang/Object;


# instance fields
.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfhv;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "protoLock"
    .end annotation
.end field

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdpq;

.field private final zzk:Ljava/util/List;

.field private zzl:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "initLock"
    .end annotation
.end field

.field private final zzm:Lcom/google/android/gms/internal/ads/zzbvt;


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
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhq;->zza:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhq;->zzc:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhq;->zzd:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdpq;Lcom/google/android/gms/internal/ads/zzdzz;Lcom/google/android/gms/internal/ads/zzbvt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhz;->zzb()Lcom/google/android/gms/internal/ads/zzfhv;

    .line 5
    .line 6
    .line 7
    move-result-object p4

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzg:Lcom/google/android/gms/internal/ads/zzfhv;

    .line 9
    .line 10
    const-string p4, ""

    .line 11
    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzh:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p4, 0x0

    .line 15
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzl:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zze:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzj:Lcom/google/android/gms/internal/ads/zzdpq;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzm:Lcom/google/android/gms/internal/ads/zzbvt;

    .line 24
    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcv;->zzje:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzd()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzk:Ljava/util/List;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzk:Ljava/util/List;

    .line 55
    .line 56
    return-void
.end method

.method public static zza()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhq;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhq;->zzb:Ljava/lang/Boolean;

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeo;->zzb:Lcom/google/android/gms/internal/ads/zzbef;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbef;->zze()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    sput-object v1, Lcom/google/android/gms/internal/ads/zzfhq;->zzb:Ljava/lang/Boolean;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeo;->zza:Lcom/google/android/gms/internal/ads/zzbef;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbef;->zze()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Double;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    cmpg-double v1, v3, v1

    .line 46
    .line 47
    if-gez v1, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    sput-object v1, Lcom/google/android/gms/internal/ads/zzfhq;->zzb:Ljava/lang/Boolean;

    .line 57
    .line 58
    :cond_2
    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhq;->zzb:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    monitor-exit v0

    .line 65
    return v1

    .line 66
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v1
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzfhq;Lcom/google/android/gms/internal/ads/zzfhg;)V
    .locals 8

    .line 1
    sget-object v7, Lcom/google/android/gms/internal/ads/zzfhq;->zzd:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v7

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzl:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit v7

    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzl:Z

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhq;->zza()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_3

    .line 25
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zze:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzq(Landroid/content/Context;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzh:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :catch_1
    move-exception v0

    .line 40
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "CuiMonitor.gettingAppIdFromManifest"

    .line 45
    .line 46
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbzn;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zze:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzi:I

    .line 60
    .line 61
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zziZ:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 62
    .line 63
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcv;->zzmg:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 78
    .line 79
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaa;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 96
    .line 97
    move-object v4, v2

    .line 98
    int-to-long v2, v0

    .line 99
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 100
    .line 101
    move-object v0, v4

    .line 102
    move-wide v4, v2

    .line 103
    move-object v1, p0

    .line 104
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaa;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 109
    .line 110
    int-to-long v2, v0

    .line 111
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 112
    .line 113
    move-wide v4, v2

    .line 114
    move-object v0, v1

    .line 115
    move-object v1, p0

    .line 116
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 117
    .line 118
    .line 119
    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhq;->zza()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_3

    .line 125
    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_3
    if-eqz p1, :cond_6

    .line 129
    .line 130
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfhq;->zzc:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter v2

    .line 133
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzg:Lcom/google/android/gms/internal/ads/zzfhv;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zza()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzja:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 140
    .line 141
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Ljava/lang/Integer;

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-lt v3, v4, :cond_4

    .line 156
    .line 157
    monitor-exit v2

    .line 158
    goto/16 :goto_5

    .line 159
    .line 160
    :catchall_1
    move-exception v0

    .line 161
    goto/16 :goto_4

    .line 162
    .line 163
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhu;->zza()Lcom/google/android/gms/internal/ads/zzfhr;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzm()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzu(I)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzl()Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzq(Z)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzb()J

    .line 182
    .line 183
    .line 184
    move-result-wide v4

    .line 185
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfhr;->zzg(J)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 186
    .line 187
    .line 188
    const/4 v4, 0x3

    .line 189
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzw(I)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 190
    .line 191
    .line 192
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 193
    .line 194
    iget-object v4, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 197
    .line 198
    .line 199
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzh:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 202
    .line 203
    .line 204
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 207
    .line 208
    .line 209
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzr(I)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzo()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzv(I)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zza()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzj(I)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 226
    .line 227
    .line 228
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzi:I

    .line 229
    .line 230
    int-to-long v4, v4

    .line 231
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfhr;->zze(J)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzn()I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzt(I)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zze()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzg()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzh()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 260
    .line 261
    .line 262
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzj:Lcom/google/android/gms/internal/ads/zzdpq;

    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzh()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzdpq;->zzb(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzi()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzd()Lcom/google/android/gms/internal/ads/zzfhs;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzm(Lcom/google/android/gms/internal/ads/zzfhs;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzf()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzk()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzj()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhr;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhg;->zzc()J

    .line 311
    .line 312
    .line 313
    move-result-wide v4

    .line 314
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfhr;->zzp(J)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 315
    .line 316
    .line 317
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzje:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 318
    .line 319
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    check-cast v4, Ljava/lang/Boolean;

    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    if-eqz v4, :cond_5

    .line 334
    .line 335
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzk:Ljava/util/List;

    .line 336
    .line 337
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfhr;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfhr;

    .line 338
    .line 339
    .line 340
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhx;->zza()Lcom/google/android/gms/internal/ads/zzfhw;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfhw;->zza(Lcom/google/android/gms/internal/ads/zzfhr;)Lcom/google/android/gms/internal/ads/zzfhw;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfhv;->zzb(Lcom/google/android/gms/internal/ads/zzfhw;)Lcom/google/android/gms/internal/ads/zzfhv;

    .line 348
    .line 349
    .line 350
    monitor-exit v2

    .line 351
    goto :goto_5

    .line 352
    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 353
    throw v0

    .line 354
    :cond_6
    :goto_5
    return-void

    .line 355
    :goto_6
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 356
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhq;->zza()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhq;->zzc:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzg:Lcom/google/android/gms/internal/ads/zzfhv;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zza()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    monitor-exit v1

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_3

    .line 23
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzg:Lcom/google/android/gms/internal/ads/zzfhv;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgym;->zzbn()Lcom/google/android/gms/internal/ads/zzgys;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/google/android/gms/internal/ads/zzfhz;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwt;->zzaV()[B

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zzc()Lcom/google/android/gms/internal/ads/zzfhv;

    .line 38
    .line 39
    .line 40
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :try_start_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdzw;

    .line 42
    .line 43
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zziY:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v4, v0

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    new-instance v6, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v8, "application/x-protobuf"

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    const v5, 0xea60

    .line 65
    .line 66
    .line 67
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzdzw;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zze:Landroid/content/Context;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfhq;->zzm:Lcom/google/android/gms/internal/ads/zzbvt;

    .line 77
    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdzy;

    .line 83
    .line 84
    invoke-direct {v5, v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzdzy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvt;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzdzy;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzx;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto :goto_0

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 95
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 96
    :goto_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdwf;

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    move-object v1, v0

    .line 101
    check-cast v1, Lcom/google/android/gms/internal/ads/zzdwf;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdwf;->zza()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    const/4 v2, 0x3

    .line 108
    if-eq v1, v2, :cond_2

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    :goto_1
    return-void

    .line 112
    :cond_3
    :goto_2
    const-string v1, "CuiMonitor.sendCuiPing"

    .line 113
    .line 114
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbzn;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :goto_3
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 123
    throw v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfhg;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzfhg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaa;->zza:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhp;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfhp;-><init>(Lcom/google/android/gms/internal/ads/zzfhq;Lcom/google/android/gms/internal/ads/zzfhg;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdj;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    .line 11
    return-void
.end method
