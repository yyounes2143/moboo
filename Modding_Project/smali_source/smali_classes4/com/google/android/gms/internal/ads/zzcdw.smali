.class public final Lcom/google/android/gms/internal/ads/zzcdw;
.super Lcom/google/android/gms/internal/ads/zzfz;
.source "Proguard"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgg;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:Z

.field private zzf:Ljava/io/InputStream;

.field private zzg:Z

.field private zzh:Landroid/net/Uri;

.field private volatile zzi:Lcom/google/android/gms/internal/ads/zzbbf;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z

.field private zzn:J

.field private zzo:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzp:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzceg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgg;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhg;Lcom/google/android/gms/internal/ads/zzceg;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zza:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzb:Lcom/google/android/gms/internal/ads/zzgg;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzq:Lcom/google/android/gms/internal/ads/zzceg;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzc:Ljava/lang/String;

    .line 12
    .line 13
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzd:I

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzj:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzk:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzl:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzm:Z

    .line 22
    .line 23
    const-wide/16 p1, 0x0

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzn:J

    .line 26
    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    .line 29
    const-wide/16 p2, -0x1

    .line 30
    .line 31
    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzo:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 38
    .line 39
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcv;->zzcc:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Z

    .line 56
    .line 57
    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/zzfz;->zzf(Lcom/google/android/gms/internal/ads/zzhg;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static synthetic zzm(Lcom/google/android/gms/internal/ads/zzcdw;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzc()Lcom/google/android/gms/internal/ads/zzbbb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbb;->zza(Lcom/google/android/gms/internal/ads/zzbbf;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private final zzr()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzeD:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzl:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v2

    .line 32
    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzeE:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzm:Z

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    return v2

    .line 55
    :cond_3
    return v1
.end method


# virtual methods
.method public final zza([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/io/InputStream;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzb:Lcom/google/android/gms/internal/ads/zzgg;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzl;->zza([BII)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Z

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/io/InputStream;

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    return p1

    .line 30
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfz;->zzg(I)V

    .line 31
    .line 32
    .line 33
    return p1

    .line 34
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 35
    .line 36
    const-string p2, "Attempt to read closed GcacheDataSource."

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgl;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "ms"

    .line 2
    .line 3
    const-string v1, "Cache connection took "

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzg:Z

    .line 6
    .line 7
    if-nez v2, :cond_9

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzg:Z

    .line 11
    .line 12
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzgl;->zza:Landroid/net/Uri;

    .line 13
    .line 14
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzh:Landroid/net/Uri;

    .line 15
    .line 16
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Z

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfz;->zzj(Lcom/google/android/gms/internal/ads/zzgl;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbbf;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzbbf;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 28
    .line 29
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcv;->zzeA:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const-wide/16 v5, -0x1

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 51
    .line 52
    if-eqz v3, :cond_7

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 55
    .line 56
    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzgl;->zze:J

    .line 57
    .line 58
    iput-wide v8, v3, Lcom/google/android/gms/internal/ads/zzbbf;->zzh:J

    .line 59
    .line 60
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 61
    .line 62
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzc:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    iput-object v8, v3, Lcom/google/android/gms/internal/ads/zzbbf;->zzi:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 71
    .line 72
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzd:I

    .line 73
    .line 74
    iput v8, v3, Lcom/google/android/gms/internal/ads/zzbbf;->zzj:I

    .line 75
    .line 76
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 77
    .line 78
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzbbf;->zzg:Z

    .line 79
    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcv;->zzeC:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 83
    .line 84
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/Long;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcv;->zzeB:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 96
    .line 97
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Ljava/lang/Long;

    .line 106
    .line 107
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v8

    .line 111
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 116
    .line 117
    .line 118
    move-result-wide v10

    .line 119
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzd()Lcom/google/android/gms/internal/ads/zzbbq;

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zza:Landroid/content/Context;

    .line 123
    .line 124
    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 125
    .line 126
    invoke-static {v3, v12}, Lcom/google/android/gms/internal/ads/zzbbq;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbf;)Ljava/util/concurrent/Future;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 131
    .line 132
    invoke-interface {v3, v8, v9, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    check-cast v8, Lcom/google/android/gms/internal/ads/zzbbr;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    .line 138
    :try_start_1
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbbr;->zzd()Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzj:Z

    .line 143
    .line 144
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbbr;->zzf()Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzl:Z

    .line 149
    .line 150
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbbr;->zze()Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzm:Z

    .line 155
    .line 156
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbbr;->zza()J

    .line 157
    .line 158
    .line 159
    move-result-wide v12

    .line 160
    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzn:J

    .line 161
    .line 162
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdw;->zzr()Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-nez v9, :cond_3

    .line 167
    .line 168
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbbr;->zzc()Ljava/io/InputStream;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/io/InputStream;

    .line 173
    .line 174
    if-eqz v4, :cond_2

    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfz;->zzj(Lcom/google/android/gms/internal/ads/zzgl;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :catchall_0
    move-exception p1

    .line 181
    goto/16 :goto_6

    .line 182
    .line 183
    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 188
    .line 189
    .line 190
    move-result-wide v3

    .line 191
    sub-long/2addr v3, v10

    .line 192
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzq:Lcom/google/android/gms/internal/ads/zzceg;

    .line 193
    .line 194
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzceg;->zza:Lcom/google/android/gms/internal/ads/zzcej;

    .line 195
    .line 196
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcej;->zzab(Lcom/google/android/gms/internal/ads/zzcej;ZJ)V

    .line 197
    .line 198
    .line 199
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzk:Z

    .line 200
    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-wide v5

    .line 223
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 228
    .line 229
    .line 230
    move-result-wide v3

    .line 231
    sub-long/2addr v3, v10

    .line 232
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzq:Lcom/google/android/gms/internal/ads/zzceg;

    .line 233
    .line 234
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzceg;->zza:Lcom/google/android/gms/internal/ads/zzcej;

    .line 235
    .line 236
    invoke-static {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcej;->zzab(Lcom/google/android/gms/internal/ads/zzcej;ZJ)V

    .line 237
    .line 238
    .line 239
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzk:Z

    .line 240
    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_8

    .line 263
    .line 264
    :catch_0
    move v4, v2

    .line 265
    goto :goto_3

    .line 266
    :catch_1
    move v4, v2

    .line 267
    goto :goto_5

    .line 268
    :catchall_1
    move-exception p1

    .line 269
    move v2, v7

    .line 270
    goto :goto_6

    .line 271
    :catch_2
    move v4, v7

    .line 272
    :goto_3
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 273
    .line 274
    .line 275
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 280
    .line 281
    .line 282
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 287
    .line 288
    .line 289
    move-result-wide v2

    .line 290
    sub-long/2addr v2, v10

    .line 291
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzq:Lcom/google/android/gms/internal/ads/zzceg;

    .line 292
    .line 293
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzceg;->zza:Lcom/google/android/gms/internal/ads/zzcej;

    .line 294
    .line 295
    invoke-static {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcej;->zzab(Lcom/google/android/gms/internal/ads/zzcej;ZJ)V

    .line 296
    .line 297
    .line 298
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzk:Z

    .line 299
    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    goto :goto_2

    .line 319
    :catchall_2
    move-exception p1

    .line 320
    move v2, v4

    .line 321
    goto :goto_6

    .line 322
    :catch_3
    move v4, v7

    .line 323
    :goto_5
    :try_start_3
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 324
    .line 325
    .line 326
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 331
    .line 332
    .line 333
    move-result-wide v2

    .line 334
    sub-long/2addr v2, v10

    .line 335
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzq:Lcom/google/android/gms/internal/ads/zzceg;

    .line 336
    .line 337
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzceg;->zza:Lcom/google/android/gms/internal/ads/zzcej;

    .line 338
    .line 339
    invoke-static {v5, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcej;->zzab(Lcom/google/android/gms/internal/ads/zzcej;ZJ)V

    .line 340
    .line 341
    .line 342
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzk:Z

    .line 343
    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    goto :goto_4

    .line 350
    :goto_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 355
    .line 356
    .line 357
    move-result-wide v3

    .line 358
    sub-long/2addr v3, v10

    .line 359
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzq:Lcom/google/android/gms/internal/ads/zzceg;

    .line 360
    .line 361
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzceg;->zza:Lcom/google/android/gms/internal/ads/zzcej;

    .line 362
    .line 363
    invoke-static {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcej;->zzab(Lcom/google/android/gms/internal/ads/zzcej;ZJ)V

    .line 364
    .line 365
    .line 366
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzk:Z

    .line 367
    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw p1

    .line 390
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 391
    .line 392
    if-eqz v0, :cond_5

    .line 393
    .line 394
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 395
    .line 396
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzgl;->zze:J

    .line 397
    .line 398
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzh:J

    .line 399
    .line 400
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 401
    .line 402
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzc:Ljava/lang/String;

    .line 403
    .line 404
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzi:Ljava/lang/String;

    .line 409
    .line 410
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 411
    .line 412
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzd:I

    .line 413
    .line 414
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzj:I

    .line 415
    .line 416
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzc()Lcom/google/android/gms/internal/ads/zzbbb;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbb;->zzb(Lcom/google/android/gms/internal/ads/zzbbf;)Lcom/google/android/gms/internal/ads/zzbbc;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    goto :goto_7

    .line 427
    :cond_5
    const/4 v0, 0x0

    .line 428
    :goto_7
    if-eqz v0, :cond_7

    .line 429
    .line 430
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbc;->zze()Z

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    if-eqz v1, :cond_7

    .line 435
    .line 436
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbc;->zzd()Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzj:Z

    .line 441
    .line 442
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbc;->zzg()Z

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzl:Z

    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbc;->zzf()Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzm:Z

    .line 453
    .line 454
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbc;->zza()J

    .line 455
    .line 456
    .line 457
    move-result-wide v3

    .line 458
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzn:J

    .line 459
    .line 460
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzk:Z

    .line 461
    .line 462
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdw;->zzr()Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-nez v1, :cond_7

    .line 467
    .line 468
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbc;->zzc()Ljava/io/InputStream;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/io/InputStream;

    .line 473
    .line 474
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Z

    .line 475
    .line 476
    if-eqz v0, :cond_6

    .line 477
    .line 478
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfz;->zzj(Lcom/google/android/gms/internal/ads/zzgl;)V

    .line 479
    .line 480
    .line 481
    :cond_6
    return-wide v5

    .line 482
    :cond_7
    :goto_8
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzk:Z

    .line 483
    .line 484
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 485
    .line 486
    if-eqz v0, :cond_8

    .line 487
    .line 488
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgl;->zza()Lcom/google/android/gms/internal/ads/zzgj;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 493
    .line 494
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zza:Ljava/lang/String;

    .line 495
    .line 496
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgj;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzgj;

    .line 501
    .line 502
    .line 503
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgj;->zze()Lcom/google/android/gms/internal/ads/zzgl;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzb:Lcom/google/android/gms/internal/ads/zzgg;

    .line 508
    .line 509
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgg;->zzb(Lcom/google/android/gms/internal/ads/zzgl;)J

    .line 510
    .line 511
    .line 512
    move-result-wide v0

    .line 513
    return-wide v0

    .line 514
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 515
    .line 516
    const-string v0, "Attempt to open an already open GcacheDataSource."

    .line 517
    .line 518
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    throw p1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzh:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzg:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzh:Landroid/net/Uri;

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Z

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/io/InputStream;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :cond_0
    move v0, v3

    .line 21
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/io/InputStream;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/io/InputStream;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzb:Lcom/google/android/gms/internal/ads/zzgg;

    .line 32
    .line 33
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgg;->zzd()V

    .line 34
    .line 35
    .line 36
    :goto_0
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfz;->zzh()V

    .line 39
    .line 40
    .line 41
    :cond_3
    return-void

    .line 42
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 43
    .line 44
    const-string v1, "Attempt to close an already closed GcacheDataSource."

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public final zzk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzn:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzl()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    cmp-long v3, v3, v1

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    :cond_1
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzo:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaa;->zza:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 29
    .line 30
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdv;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcdv;-><init>(Lcom/google/android/gms/internal/ads/zzcdw;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzgdj;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzo:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzo:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzo:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Long;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    return-wide v0

    .line 77
    :catch_0
    :cond_3
    :goto_1
    return-wide v1

    .line 78
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw v0
.end method

.method public final zzn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzj:Z

    .line 2
    .line 3
    return v0
.end method

.method public final zzo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzm:Z

    .line 2
    .line 3
    return v0
.end method

.method public final zzp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzl:Z

    .line 2
    .line 3
    return v0
.end method

.method public final zzq()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzk:Z

    .line 2
    .line 3
    return v0
.end method
