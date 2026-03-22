.class final Lcom/google/android/gms/internal/ads/zzfed;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfec;


# instance fields
.field private final zza:Lj$/util/concurrent/ConcurrentHashMap;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfej;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfej;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfej;->zzd:I

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfed;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzb:Lcom/google/android/gms/internal/ads/zzfej;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfef;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfef;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzc:Lcom/google/android/gms/internal/ads/zzfef;

    .line 21
    .line 22
    return-void
.end method

.method private final zzf()V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfej;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzgy:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzb:Lcom/google/android/gms/internal/ads/zzfej;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfej;->zzb:Lcom/google/android/gms/internal/ads/zzfeg;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " PoolCollection"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzc:Lcom/google/android/gms/internal/ads/zzfef;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfef;->zzb()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfed;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x0

    .line 58
    move v4, v3

    .line 59
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Ljava/util/Map$Entry;

    .line 70
    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v6, ". "

    .line 77
    .line 78
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v6, "#"

    .line 89
    .line 90
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Lcom/google/android/gms/internal/ads/zzfem;

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v6, "    "

    .line 107
    .line 108
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move v6, v3

    .line 112
    :goto_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    check-cast v7, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 117
    .line 118
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfeb;->zzb()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-ge v6, v7, :cond_0

    .line 123
    .line 124
    const-string v7, "[O]"

    .line 125
    .line 126
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    add-int/lit8 v6, v6, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    check-cast v6, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 137
    .line 138
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfeb;->zzb()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    :goto_2
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzfej;->zzd:I

    .line 143
    .line 144
    if-ge v6, v7, :cond_1

    .line 145
    .line 146
    const-string v7, "[ ]"

    .line 147
    .line 148
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    add-int/lit8 v6, v6, 0x1

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_1
    const-string v6, "\n"

    .line 155
    .line 156
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 164
    .line 165
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfeb;->zzg()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_2
    :goto_3
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzfej;->zzc:I

    .line 177
    .line 178
    if-ge v4, v2, :cond_3

    .line 179
    .line 180
    add-int/lit8 v4, v4, 0x1

    .line 181
    .line 182
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v2, ".\n"

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 196
    .line 197
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_4
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfej;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzb:Lcom/google/android/gms/internal/ads/zzfej;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzfem;)Lcom/google/android/gms/internal/ads/zzfel;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfed;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfeb;->zze()Lcom/google/android/gms/internal/ads/zzfel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzc:Lcom/google/android/gms/internal/ads/zzfef;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfef;->zze()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfeb;->zzf()Lcom/google/android/gms/internal/ads/zzfez;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca$zzb;->zzd()Lcom/google/android/gms/internal/ads/zzbca$zzb$zzc;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zza;->zza()Lcom/google/android/gms/internal/ads/zzbca$zzb$zza$zza;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbca$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbca$zzb$zzd;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zza$zza;->zzf(Lcom/google/android/gms/internal/ads/zzbca$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzbca$zzb$zza$zza;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zze;->zzb()Lcom/google/android/gms/internal/ads/zzbca$zzb$zze$zza;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzfez;->zza:Z

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zze$zza;->zzd(Z)Lcom/google/android/gms/internal/ads/zzbca$zzb$zze$zza;

    .line 52
    .line 53
    .line 54
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfez;->zzb:I

    .line 55
    .line 56
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zze$zza;->zze(I)Lcom/google/android/gms/internal/ads/zzbca$zzb$zze$zza;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zza$zza;->zzg(Lcom/google/android/gms/internal/ads/zzbca$zzb$zze$zza;)Lcom/google/android/gms/internal/ads/zzbca$zzb$zza$zza;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zzc;->zzd(Lcom/google/android/gms/internal/ads/zzbca$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbca$zzb$zzc;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgym;->zzbn()Lcom/google/android/gms/internal/ads/zzgys;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbca$zzb;

    .line 70
    .line 71
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfel;->zza:Lcom/google/android/gms/internal/ads/zzcuz;

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcuz;->zzb()Lcom/google/android/gms/internal/ads/zzcsb;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcsb;->zzc()Lcom/google/android/gms/internal/ads/zzdbf;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzi(Lcom/google/android/gms/internal/ads/zzbca$zzb;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfed;->zzf()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzc:Lcom/google/android/gms/internal/ads/zzfef;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfef;->zzf()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfed;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    :goto_1
    monitor-exit p0

    .line 98
    return-object v0

    .line 99
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzfem;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzb:Lcom/google/android/gms/internal/ads/zzfej;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfej;->zza:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzbvo;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvo;->zza()Lcom/google/android/gms/internal/ads/zzbvp;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzbvp;->zzj:I

    .line 15
    .line 16
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfen;

    .line 17
    .line 18
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfej;->zzf:Ljava/lang/String;

    .line 19
    .line 20
    move-object v3, p1

    .line 21
    move-object v4, p2

    .line 22
    move-object v7, p3

    .line 23
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfen;-><init>(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzx;)V

    .line 24
    .line 25
    .line 26
    return-object v2
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzfem;Lcom/google/android/gms/internal/ads/zzfel;)Z
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfed;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/zzfel;->zzd:J

    .line 19
    .line 20
    if-nez v1, :cond_c

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzb:Lcom/google/android/gms/internal/ads/zzfej;

    .line 23
    .line 24
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 25
    .line 26
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfej;->zzd:I

    .line 27
    .line 28
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzfej;->zze:I

    .line 29
    .line 30
    mul-int/lit16 v4, v4, 0x3e8

    .line 31
    .line 32
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfeb;-><init>(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzfej;->zzc:I

    .line 40
    .line 41
    if-ne v3, v4, :cond_b

    .line 42
    .line 43
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfej;->zzg:I

    .line 44
    .line 45
    add-int/lit8 v3, v1, -0x1

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v1, :cond_a

    .line 49
    .line 50
    const-wide v5, 0x7fffffffffffffffL

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    if-eqz v3, :cond_6

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    if-eq v3, v1, :cond_3

    .line 59
    .line 60
    const/4 v1, 0x2

    .line 61
    if-eq v3, v1, :cond_0

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_0
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const v3, 0x7fffffff

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Ljava/util/Map$Entry;

    .line 87
    .line 88
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfeb;->zza()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-ge v6, v3, :cond_1

    .line 99
    .line 100
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfeb;->zza()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lcom/google/android/gms/internal/ads/zzfem;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_2
    if-eqz v4, :cond_9

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto/16 :goto_3

    .line 126
    .line 127
    :cond_3
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_5

    .line 140
    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/util/Map$Entry;

    .line 146
    .line 147
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    check-cast v7, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 152
    .line 153
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfeb;->zzd()J

    .line 154
    .line 155
    .line 156
    move-result-wide v7

    .line 157
    cmp-long v7, v7, v5

    .line 158
    .line 159
    if-gez v7, :cond_4

    .line 160
    .line 161
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 166
    .line 167
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfeb;->zzd()J

    .line 168
    .line 169
    .line 170
    move-result-wide v4

    .line 171
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Lcom/google/android/gms/internal/ads/zzfem;

    .line 176
    .line 177
    move-wide v5, v4

    .line 178
    move-object v4, v3

    .line 179
    goto :goto_1

    .line 180
    :cond_5
    if-eqz v4, :cond_9

    .line 181
    .line 182
    invoke-virtual {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_6
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_8

    .line 199
    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Ljava/util/Map$Entry;

    .line 205
    .line 206
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    check-cast v7, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 211
    .line 212
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfeb;->zzc()J

    .line 213
    .line 214
    .line 215
    move-result-wide v7

    .line 216
    cmp-long v7, v7, v5

    .line 217
    .line 218
    if-gez v7, :cond_7

    .line 219
    .line 220
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    check-cast v4, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 225
    .line 226
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfeb;->zzc()J

    .line 227
    .line 228
    .line 229
    move-result-wide v4

    .line 230
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Lcom/google/android/gms/internal/ads/zzfem;

    .line 235
    .line 236
    move-wide v5, v4

    .line 237
    move-object v4, v3

    .line 238
    goto :goto_2

    .line 239
    :cond_8
    if-eqz v4, :cond_9

    .line 240
    .line 241
    invoke-virtual {v0, v4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzc:Lcom/google/android/gms/internal/ads/zzfef;

    .line 245
    .line 246
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfef;->zzg()V

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_a
    throw v4

    .line 251
    :cond_b
    :goto_4
    invoke-virtual {v0, p1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzc:Lcom/google/android/gms/internal/ads/zzfef;

    .line 255
    .line 256
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfef;->zzd()V

    .line 257
    .line 258
    .line 259
    move-object v1, v2

    .line 260
    :cond_c
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfeb;->zzh(Lcom/google/android/gms/internal/ads/zzfel;)Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzc:Lcom/google/android/gms/internal/ads/zzfef;

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfef;->zzc()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfef;->zza()Lcom/google/android/gms/internal/ads/zzfee;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfeb;->zzf()Lcom/google/android/gms/internal/ads/zzfez;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca$zzb;->zzd()Lcom/google/android/gms/internal/ads/zzbca$zzb$zzc;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zza;->zza()Lcom/google/android/gms/internal/ads/zzbca$zzb$zza$zza;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbca$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbca$zzb$zzd;

    .line 286
    .line 287
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zza$zza;->zzf(Lcom/google/android/gms/internal/ads/zzbca$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzbca$zzb$zza$zza;

    .line 288
    .line 289
    .line 290
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zzg;->zzb()Lcom/google/android/gms/internal/ads/zzbca$zzb$zzg$zza;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzfee;->zza:Z

    .line 295
    .line 296
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zzg$zza;->zze(Z)Lcom/google/android/gms/internal/ads/zzbca$zzb$zzg$zza;

    .line 297
    .line 298
    .line 299
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfee;->zzb:Z

    .line 300
    .line 301
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zzg$zza;->zzf(Z)Lcom/google/android/gms/internal/ads/zzbca$zzb$zzg$zza;

    .line 302
    .line 303
    .line 304
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzfez;->zzb:I

    .line 305
    .line 306
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zzg$zza;->zzg(I)Lcom/google/android/gms/internal/ads/zzbca$zzb$zzg$zza;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zza$zza;->zzi(Lcom/google/android/gms/internal/ads/zzbca$zzb$zzg$zza;)Lcom/google/android/gms/internal/ads/zzbca$zzb$zza$zza;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbca$zzb$zzc;->zzd(Lcom/google/android/gms/internal/ads/zzbca$zzb$zza$zza;)Lcom/google/android/gms/internal/ads/zzbca$zzb$zzc;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgym;->zzbn()Lcom/google/android/gms/internal/ads/zzgys;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbca$zzb;

    .line 320
    .line 321
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfel;->zza:Lcom/google/android/gms/internal/ads/zzcuz;

    .line 322
    .line 323
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcuz;->zzb()Lcom/google/android/gms/internal/ads/zzcsb;

    .line 324
    .line 325
    .line 326
    move-result-object p2

    .line 327
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcsb;->zzc()Lcom/google/android/gms/internal/ads/zzdbf;

    .line 328
    .line 329
    .line 330
    move-result-object p2

    .line 331
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdbf;->zzj(Lcom/google/android/gms/internal/ads/zzbca$zzb;)V

    .line 332
    .line 333
    .line 334
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfed;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .line 336
    .line 337
    monitor-exit p0

    .line 338
    return p1

    .line 339
    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/internal/ads/zzfem;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfed;->zza:Lj$/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfeb;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfed;->zzb:Lcom/google/android/gms/internal/ads/zzfej;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfeb;->zzb()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfej;->zzd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    if-ge p1, v1, :cond_0

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    monitor-exit p0

    .line 30
    return v0

    .line 31
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method
