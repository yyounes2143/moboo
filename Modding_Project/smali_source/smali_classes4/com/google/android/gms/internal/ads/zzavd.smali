.class public final Lcom/google/android/gms/internal/ads/zzavd;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzavg;


# static fields
.field private static zzb:Lcom/google/android/gms/internal/ads/zzavd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field volatile zza:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfpk;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfpr;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfpt;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzawi;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfnx;

.field private final zzi:Ljava/util/concurrent/Executor;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfpq;

.field private final zzk:Ljava/util/concurrent/CountDownLatch;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzawx;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzawp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzn:Lcom/google/android/gms/internal/ads/zzawg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzo:Ljava/lang/Object;

.field private volatile zzp:Z

.field private volatile zzq:Z

.field private final zzr:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfnx;Lcom/google/android/gms/internal/ads/zzfpk;Lcom/google/android/gms/internal/ads/zzfpr;Lcom/google/android/gms/internal/ads/zzfpt;Lcom/google/android/gms/internal/ads/zzawi;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfns;ILcom/google/android/gms/internal/ads/zzawx;Lcom/google/android/gms/internal/ads/zzawp;Lcom/google/android/gms/internal/ads/zzawg;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzfnx;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzfpk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ads/zzfpr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzfpt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzawi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/internal/ads/zzfns;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/google/android/gms/internal/ads/zzawx;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/google/android/gms/internal/ads/zzawp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/google/android/gms/internal/ads/zzawg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zza:J

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzo:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzq:Z

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzc:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzh:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzd:Lcom/google/android/gms/internal/ads/zzfpk;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzavd;->zze:Lcom/google/android/gms/internal/ads/zzfpr;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzf:Lcom/google/android/gms/internal/ads/zzfpt;

    .line 27
    .line 28
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzg:Lcom/google/android/gms/internal/ads/zzawi;

    .line 29
    .line 30
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzi:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    iput p9, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzr:I

    .line 33
    .line 34
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzl:Lcom/google/android/gms/internal/ads/zzawx;

    .line 35
    .line 36
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzm:Lcom/google/android/gms/internal/ads/zzawp;

    .line 37
    .line 38
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzn:Lcom/google/android/gms/internal/ads/zzawg;

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzq:Z

    .line 41
    .line 42
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 49
    .line 50
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavb;

    .line 51
    .line 52
    invoke-direct {p1, p0, p8}, Lcom/google/android/gms/internal/ads/zzavb;-><init>(Lcom/google/android/gms/internal/ads/zzavd;Lcom/google/android/gms/internal/ads/zzfns;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzj:Lcom/google/android/gms/internal/ads/zzfpq;

    .line 56
    .line 57
    return-void
.end method

.method public static declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaro;Z)Lcom/google/android/gms/internal/ads/zzavd;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/ads/zzaro;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzavd;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnz;->zzc()Lcom/google/android/gms/internal/ads/zzfny;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaro;->zzf()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfny;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfny;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaro;->zzi()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfny;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfny;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfny;->zzh()Lcom/google/android/gms/internal/ads/zzfnz;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzavd;->zzs(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfnz;Z)Lcom/google/android/gms/internal/ads/zzavd;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v0

    .line 35
    return-object p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzavd;)Lcom/google/android/gms/internal/ads/zzfnx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzh:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzavd;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzo:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzavd;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzp:Z

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzavd;)V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzavd;->zzu(I)Lcom/google/android/gms/internal/ads/zzfpj;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfpj;->zza()Lcom/google/android/gms/internal/ads/zzayj;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayj;->zzk()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfpj;->zza()Lcom/google/android/gms/internal/ads/zzayj;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayj;->zzj()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    move-object v9, v3

    .line 29
    move-object v8, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v4, 0x0

    .line 32
    move-object v8, v4

    .line 33
    move-object v9, v8

    .line 34
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzc:Landroid/content/Context;

    .line 35
    .line 36
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzr:I

    .line 37
    .line 38
    const-string v10, "1"

    .line 39
    .line 40
    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzh:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 41
    .line 42
    const/4 v6, 0x1

    .line 43
    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzfoh;->zza(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfnx;)Lcom/google/android/gms/internal/ads/zzfpo;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzfpo;->zzb:[B

    .line 48
    .line 49
    if-eqz v4, :cond_b

    .line 50
    .line 51
    array-length v5, v4
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzh; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-nez v5, :cond_1

    .line 53
    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_1
    const/4 v6, 0x0

    .line 57
    :try_start_1
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzgxk;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgxk;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyc;->zza()Lcom/google/android/gms/internal/ads/zzgyc;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzayg;->zzb(Lcom/google/android/gms/internal/ads/zzgxk;Lcom/google/android/gms/internal/ads/zzgyc;)Lcom/google/android/gms/internal/ads/zzayg;

    .line 66
    .line 67
    .line 68
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzgzh; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayg;->zzc()Lcom/google/android/gms/internal/ads/zzayj;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayj;->zzk()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_a

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayg;->zzc()Lcom/google/android/gms/internal/ads/zzayj;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayj;->zzj()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-nez v5, :cond_a

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayg;->zzd()Lcom/google/android/gms/internal/ads/zzgxk;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgxk;->zzA()[B

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    array-length v5, v5

    .line 106
    if-nez v5, :cond_2

    .line 107
    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzavd;->zzu(I)Lcom/google/android/gms/internal/ads/zzfpj;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    if-nez v5, :cond_3

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfpj;->zza()Lcom/google/android/gms/internal/ads/zzayj;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayg;->zzc()Lcom/google/android/gms/internal/ads/zzayj;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzayj;->zzk()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayj;->zzk()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_4

    .line 138
    .line 139
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayg;->zzc()Lcom/google/android/gms/internal/ads/zzayj;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzayj;->zzj()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayj;->zzj()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-nez v5, :cond_a

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    goto/16 :goto_7

    .line 160
    .line 161
    :catch_0
    move-exception v0

    .line 162
    goto/16 :goto_5

    .line 163
    .line 164
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzj:Lcom/google/android/gms/internal/ads/zzfpq;

    .line 165
    .line 166
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzfpo;->zzc:I

    .line 167
    .line 168
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzcD:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 169
    .line 170
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    check-cast v6, Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_6

    .line 185
    .line 186
    const/4 v6, 0x3

    .line 187
    if-ne v3, v6, :cond_5

    .line 188
    .line 189
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavd;->zze:Lcom/google/android/gms/internal/ads/zzfpr;

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfpr;->zza(Lcom/google/android/gms/internal/ads/zzayg;)Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    goto :goto_2

    .line 196
    :cond_5
    const/4 v6, 0x4

    .line 197
    if-ne v3, v6, :cond_7

    .line 198
    .line 199
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavd;->zze:Lcom/google/android/gms/internal/ads/zzfpr;

    .line 200
    .line 201
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfpr;->zzb(Lcom/google/android/gms/internal/ads/zzayg;Lcom/google/android/gms/internal/ads/zzfpq;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    goto :goto_2

    .line 206
    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzd:Lcom/google/android/gms/internal/ads/zzfpk;

    .line 207
    .line 208
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfpk;->zza(Lcom/google/android/gms/internal/ads/zzayg;Lcom/google/android/gms/internal/ads/zzfpq;)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    :goto_2
    if-nez v3, :cond_8

    .line 213
    .line 214
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzh:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 215
    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 217
    .line 218
    .line 219
    move-result-wide v3

    .line 220
    sub-long/2addr v3, v1

    .line 221
    const/16 v5, 0xfa9

    .line 222
    .line 223
    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfnx;->zzd(IJ)Lcom/google/android/gms/tasks/Task;

    .line 224
    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzavd;->zzu(I)Lcom/google/android/gms/internal/ads/zzfpj;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    if-eqz v3, :cond_c

    .line 232
    .line 233
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzf:Lcom/google/android/gms/internal/ads/zzfpt;

    .line 234
    .line 235
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzfpt;->zzc(Lcom/google/android/gms/internal/ads/zzfpj;)Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_9

    .line 240
    .line 241
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzq:Z

    .line 242
    .line 243
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 244
    .line 245
    .line 246
    move-result-wide v3

    .line 247
    const-wide/16 v5, 0x3e8

    .line 248
    .line 249
    div-long/2addr v3, v5

    .line 250
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzavd;->zza:J

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzh:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 254
    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 256
    .line 257
    .line 258
    move-result-wide v3

    .line 259
    sub-long/2addr v3, v1

    .line 260
    const/16 v5, 0x1392

    .line 261
    .line 262
    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfnx;->zzd(IJ)Lcom/google/android/gms/tasks/Task;

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :catch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzh:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 267
    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 269
    .line 270
    .line 271
    move-result-wide v3

    .line 272
    sub-long/2addr v3, v1

    .line 273
    const/16 v5, 0x7ee

    .line 274
    .line 275
    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfnx;->zzd(IJ)Lcom/google/android/gms/tasks/Task;

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_b
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 280
    .line 281
    .line 282
    move-result-wide v3

    .line 283
    sub-long/2addr v3, v1

    .line 284
    const/16 v0, 0x1391

    .line 285
    .line 286
    invoke-virtual {v11, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfnx;->zzd(IJ)Lcom/google/android/gms/tasks/Task;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgzh; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    .line 288
    .line 289
    goto :goto_6

    .line 290
    :goto_5
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzh:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 291
    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 293
    .line 294
    .line 295
    move-result-wide v4

    .line 296
    sub-long/2addr v4, v1

    .line 297
    const/16 v1, 0xfa2

    .line 298
    .line 299
    invoke-virtual {v3, v1, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzfnx;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    .line 301
    .line 302
    :cond_c
    :goto_6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 303
    .line 304
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :goto_7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 309
    .line 310
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 311
    .line 312
    .line 313
    throw v0
.end method

.method public static bridge synthetic zzq(Lcom/google/android/gms/internal/ads/zzavd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzp:Z

    .line 2
    .line 3
    return p0
.end method

.method private static declared-synchronized zzs(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfnz;Z)Lcom/google/android/gms/internal/ads/zzavd;
    .locals 23
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const-class v13, Lcom/google/android/gms/internal/ads/zzavd;

    .line 6
    .line 7
    monitor-enter v13

    .line 8
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavd;->zzb:Lcom/google/android/gms/internal/ads/zzavd;

    .line 9
    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    move/from16 v0, p3

    .line 13
    .line 14
    invoke-static {v1, v7, v0}, Lcom/google/android/gms/internal/ads/zzfnx;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/zzfnx;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzdG:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzavr;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzavr;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object/from16 v19, v0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_0
    move-object/from16 v19, v3

    .line 48
    .line 49
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzdH:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 50
    .line 51
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-static/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzawx;->zzd(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzawx;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object/from16 v20, v0

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move-object/from16 v20, v3

    .line 75
    .line 76
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzcV:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 77
    .line 78
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawp;

    .line 95
    .line 96
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawp;-><init>()V

    .line 97
    .line 98
    .line 99
    move-object/from16 v21, v0

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    move-object/from16 v21, v3

    .line 103
    .line 104
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzdd:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 105
    .line 106
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    new-instance v3, Lcom/google/android/gms/internal/ads/zzawg;

    .line 123
    .line 124
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzawg;-><init>()V

    .line 125
    .line 126
    .line 127
    :cond_3
    move-object/from16 v15, p2

    .line 128
    .line 129
    move-object v12, v3

    .line 130
    invoke-static {v1, v7, v2, v15}, Lcom/google/android/gms/internal/ads/zzfoo;->zzc(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfnx;Lcom/google/android/gms/internal/ads/zzfnz;)Lcom/google/android/gms/internal/ads/zzfoo;

    .line 131
    .line 132
    .line 133
    move-result-object v16

    .line 134
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawh;

    .line 135
    .line 136
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzawh;-><init>(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    new-instance v3, Lcom/google/android/gms/internal/ads/zzawv;

    .line 140
    .line 141
    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/ads/zzawv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawh;)V

    .line 142
    .line 143
    .line 144
    new-instance v14, Lcom/google/android/gms/internal/ads/zzawi;

    .line 145
    .line 146
    move-object/from16 v18, v0

    .line 147
    .line 148
    move-object/from16 v17, v3

    .line 149
    .line 150
    move-object/from16 v22, v12

    .line 151
    .line 152
    invoke-direct/range {v14 .. v22}, Lcom/google/android/gms/internal/ads/zzawi;-><init>(Lcom/google/android/gms/internal/ads/zzfnz;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/zzawh;Lcom/google/android/gms/internal/ads/zzavr;Lcom/google/android/gms/internal/ads/zzawx;Lcom/google/android/gms/internal/ads/zzawp;Lcom/google/android/gms/internal/ads/zzawg;)V

    .line 153
    .line 154
    .line 155
    move-object/from16 v12, v22

    .line 156
    .line 157
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfox;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfnx;)I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfns;

    .line 162
    .line 163
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzfns;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance v6, Lcom/google/android/gms/internal/ads/zzavd;

    .line 167
    .line 168
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfpk;

    .line 169
    .line 170
    invoke-direct {v8, v1, v9}, Lcom/google/android/gms/internal/ads/zzfpk;-><init>(Landroid/content/Context;I)V

    .line 171
    .line 172
    .line 173
    new-instance v10, Lcom/google/android/gms/internal/ads/zzfpr;

    .line 174
    .line 175
    new-instance v0, Lcom/google/android/gms/internal/ads/zzava;

    .line 176
    .line 177
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzava;-><init>(Lcom/google/android/gms/internal/ads/zzfnx;)V

    .line 178
    .line 179
    .line 180
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcv;->zzcF:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 181
    .line 182
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Ljava/lang/Boolean;

    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-direct {v10, v1, v9, v0, v3}, Lcom/google/android/gms/internal/ads/zzfpr;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfoy;Z)V

    .line 197
    .line 198
    .line 199
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpt;

    .line 200
    .line 201
    const/4 v5, 0x0

    .line 202
    move-object v3, v2

    .line 203
    move-object v2, v14

    .line 204
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfpt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfpu;Lcom/google/android/gms/internal/ads/zzfnx;Lcom/google/android/gms/internal/ads/zzfns;Z)V

    .line 205
    .line 206
    .line 207
    move-object/from16 v1, p0

    .line 208
    .line 209
    move-object v5, v0

    .line 210
    move-object v0, v6

    .line 211
    move-object/from16 v11, v21

    .line 212
    .line 213
    move-object v6, v2

    .line 214
    move-object v2, v3

    .line 215
    move-object v3, v8

    .line 216
    move-object v8, v4

    .line 217
    move-object v4, v10

    .line 218
    move-object/from16 v10, v20

    .line 219
    .line 220
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzavd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfnx;Lcom/google/android/gms/internal/ads/zzfpk;Lcom/google/android/gms/internal/ads/zzfpr;Lcom/google/android/gms/internal/ads/zzfpt;Lcom/google/android/gms/internal/ads/zzawi;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfns;ILcom/google/android/gms/internal/ads/zzawx;Lcom/google/android/gms/internal/ads/zzawp;Lcom/google/android/gms/internal/ads/zzawg;)V

    .line 221
    .line 222
    .line 223
    sput-object v0, Lcom/google/android/gms/internal/ads/zzavd;->zzb:Lcom/google/android/gms/internal/ads/zzavd;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavd;->zzm()V

    .line 226
    .line 227
    .line 228
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavd;->zzb:Lcom/google/android/gms/internal/ads/zzavd;

    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavd;->zzp()V

    .line 231
    .line 232
    .line 233
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavd;->zzb:Lcom/google/android/gms/internal/ads/zzavd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .line 235
    monitor-exit v13

    .line 236
    return-object v0

    .line 237
    :goto_3
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    throw v0
.end method

.method private final zzt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzl:Lcom/google/android/gms/internal/ads/zzawx;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawx;->zzh()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final zzu(I)Lcom/google/android/gms/internal/ads/zzfpj;
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzr:I

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfox;->zza(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcv;->zzcD:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zze:Lcom/google/android/gms/internal/ads/zzfpr;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfpr;->zzc(I)Lcom/google/android/gms/internal/ads/zzfpj;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzd:Lcom/google/android/gms/internal/ads/zzfpk;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfpk;->zzc(I)Lcom/google/android/gms/internal/ads/zzfpj;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method


# virtual methods
.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzavd;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 16
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavd;->zzt()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcv;->zzcV:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzavd;->zzm:Lcom/google/android/gms/internal/ads/zzawp;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawp;->zzi()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavd;->zzp()V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzavd;->zzf:Lcom/google/android/gms/internal/ads/zzfpt;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpt;->zza()Lcom/google/android/gms/internal/ads/zzfoa;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    const/4 v4, 0x0

    .line 45
    move-object/from16 v3, p1

    .line 46
    .line 47
    move-object/from16 v5, p2

    .line 48
    .line 49
    move-object/from16 v6, p3

    .line 50
    .line 51
    move-object/from16 v7, p4

    .line 52
    .line 53
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfoa;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzavd;->zzh:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    sub-long v12, v1, v8

    .line 64
    .line 65
    const/4 v15, 0x0

    .line 66
    const/16 v11, 0x1388

    .line 67
    .line 68
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzfnx;->zzf(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    .line 69
    .line 70
    .line 71
    return-object v14

    .line 72
    :cond_1
    const-string v1, ""

    .line 73
    .line 74
    return-object v1
.end method

.method public final zzf(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavd;->zzt()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzcV:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzm:Lcom/google/android/gms/internal/ads/zzawp;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawp;->zzj()V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavd;->zzp()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzf:Lcom/google/android/gms/internal/ads/zzfpt;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpt;->zza()Lcom/google/android/gms/internal/ads/zzfoa;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-interface {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzfoa;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzh:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    sub-long/2addr v5, v1

    .line 54
    const/4 v9, 0x0

    .line 55
    move-wide v6, v5

    .line 56
    const/16 v5, 0x1389

    .line 57
    .line 58
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfnx;->zzf(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    .line 59
    .line 60
    .line 61
    return-object v8

    .line 62
    :cond_1
    const-string p1, ""

    .line 63
    .line 64
    return-object p1
.end method

.method public final zzg(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, "19"

    .line 2
    .line 3
    return-object p1
.end method

.method public final zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 10
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavd;->zzt()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzcV:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzm:Lcom/google/android/gms/internal/ads/zzawp;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawp;->zzk(Landroid/content/Context;Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavd;->zzp()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzf:Lcom/google/android/gms/internal/ads/zzfpt;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpt;->zza()Lcom/google/android/gms/internal/ads/zzfoa;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-interface {v0, p1, v3, p2, p3}, Lcom/google/android/gms/internal/ads/zzfoa;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzh:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    sub-long v6, p1, v1

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    const/16 v5, 0x138a

    .line 57
    .line 58
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfnx;->zzf(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    .line 59
    .line 60
    .line 61
    return-object v8

    .line 62
    :cond_1
    const-string p1, ""

    .line 63
    .line 64
    return-object p1
.end method

.method public final zzk(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzf:Lcom/google/android/gms/internal/ads/zzfpt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpt;->zza()Lcom/google/android/gms/internal/ads/zzfoa;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfoa;->zzd(Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfps; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzh:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfps;->zza()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfnx;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final zzl(III)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcv;->zzml:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzavd;->zzc:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move/from16 v2, p1

    .line 35
    .line 36
    int-to-float v2, v2

    .line 37
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 38
    .line 39
    mul-float v9, v2, v3

    .line 40
    .line 41
    move/from16 v4, p2

    .line 42
    .line 43
    int-to-float v4, v4

    .line 44
    mul-float v10, v4, v3

    .line 45
    .line 46
    const/16 v16, 0x0

    .line 47
    .line 48
    const/16 v17, 0x0

    .line 49
    .line 50
    move v3, v4

    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    const-wide/16 v6, 0x0

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v11, 0x0

    .line 57
    const/4 v12, 0x0

    .line 58
    const/4 v13, 0x0

    .line 59
    const/4 v14, 0x0

    .line 60
    const/4 v15, 0x0

    .line 61
    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzavd;->zzk(Landroid/view/MotionEvent;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 69
    .line 70
    .line 71
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    .line 72
    .line 73
    mul-float v10, v2, v4

    .line 74
    .line 75
    mul-float v11, v3, v4

    .line 76
    .line 77
    const/16 v18, 0x0

    .line 78
    .line 79
    const-wide/16 v5, 0x0

    .line 80
    .line 81
    const-wide/16 v7, 0x0

    .line 82
    .line 83
    const/4 v9, 0x2

    .line 84
    const/4 v13, 0x0

    .line 85
    const/4 v14, 0x0

    .line 86
    const/16 v16, 0x0

    .line 87
    .line 88
    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzavd;->zzk(Landroid/view/MotionEvent;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 96
    .line 97
    .line 98
    move/from16 v4, p3

    .line 99
    .line 100
    int-to-long v6, v4

    .line 101
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 102
    .line 103
    mul-float v9, v2, v1

    .line 104
    .line 105
    mul-float v10, v3, v1

    .line 106
    .line 107
    const/16 v16, 0x0

    .line 108
    .line 109
    const-wide/16 v4, 0x0

    .line 110
    .line 111
    const/4 v8, 0x1

    .line 112
    const/4 v11, 0x0

    .line 113
    const/4 v13, 0x0

    .line 114
    const/4 v14, 0x0

    .line 115
    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzavd;->zzk(Landroid/view/MotionEvent;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 123
    .line 124
    .line 125
    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized zzm()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzavd;->zzu(I)Lcom/google/android/gms/internal/ads/zzfpj;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzf:Lcom/google/android/gms/internal/ads/zzfpt;

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfpt;->zzc(Lcom/google/android/gms/internal/ads/zzfpj;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzq:Z

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzh:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    sub-long/2addr v3, v0

    .line 41
    const/16 v0, 0xfad

    .line 42
    .line 43
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfnx;->zzd(IJ)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw v0
.end method

.method public final zzn([Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzn:Lcom/google/android/gms/internal/ads/zzawg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawg;->zzb(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final zzo(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzg:Lcom/google/android/gms/internal/ads/zzawi;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawi;->zzd(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzp()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzp:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzo:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzp:Z

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const-wide/16 v3, 0x3e8

    .line 17
    .line 18
    div-long/2addr v1, v3

    .line 19
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzavd;->zza:J

    .line 20
    .line 21
    sub-long/2addr v1, v3

    .line 22
    const-wide/16 v3, 0xe10

    .line 23
    .line 24
    cmp-long v1, v1, v3

    .line 25
    .line 26
    if-gez v1, :cond_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzf:Lcom/google/android/gms/internal/ads/zzfpt;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpt;->zzb()Lcom/google/android/gms/internal/ads/zzfpj;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpj;->zzd(J)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzr:I

    .line 47
    .line 48
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfox;->zza(I)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzi:Ljava/util/concurrent/Executor;

    .line 55
    .line 56
    new-instance v2, Lcom/google/android/gms/internal/ads/zzavc;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzavc;-><init>(Lcom/google/android/gms/internal/ads/zzavd;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v1

    .line 68
    :cond_3
    return-void
.end method

.method public final declared-synchronized zzr()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavd;->zzq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method
