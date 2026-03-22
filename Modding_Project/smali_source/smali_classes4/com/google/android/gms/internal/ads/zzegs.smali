.class final Lcom/google/android/gms/internal/ads/zzegs;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfbx;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfbu;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfjn;

.field final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfcg;

.field final synthetic zzg:Lcom/google/android/gms/internal/ads/zzegu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzegu;JLcom/google/android/gms/internal/ads/zzfbx;Lcom/google/android/gms/internal/ads/zzfbu;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/internal/ads/zzfcg;)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzegs;->zza:J

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzb:Lcom/google/android/gms/internal/ads/zzfbx;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzc:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzd:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzegs;->zze:Lcom/google/android/gms/internal/ads/zzfjn;

    .line 10
    .line 11
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzf:Lcom/google/android/gms/internal/ads/zzfcg;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzg:Lcom/google/android/gms/internal/ads/zzegu;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 13

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzg:Lcom/google/android/gms/internal/ads/zzegu;

    .line 2
    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzegu;->zze(Lcom/google/android/gms/internal/ads/zzegu;)Lcom/google/android/gms/common/util/Clock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzegs;->zza:J

    .line 12
    .line 13
    sub-long v10, v2, v4

    .line 14
    .line 15
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    :cond_0
    :goto_0
    move v9, v0

    .line 23
    :goto_1
    move-object v4, v3

    .line 24
    goto :goto_3

    .line 25
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzegc;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    move v9, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    const/4 v0, 0x5

    .line 42
    goto :goto_0

    .line 43
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzdwf;

    .line 44
    .line 45
    const/4 v4, 0x6

    .line 46
    if-eqz v0, :cond_6

    .line 47
    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfdq;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 53
    .line 54
    if-ne v0, v2, :cond_5

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    move v0, v4

    .line 59
    :goto_2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzbO:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 60
    .line 61
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    instance-of v4, p1, Lcom/google/android/gms/internal/ads/zzedj;

    .line 78
    .line 79
    if-eqz v4, :cond_0

    .line 80
    .line 81
    move-object v4, p1

    .line 82
    check-cast v4, Lcom/google/android/gms/internal/ads/zzedj;

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzedj;->zzb()Lcom/google/android/gms/ads/internal/client/zze;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_0

    .line 89
    .line 90
    iget v4, v4, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 91
    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    move v9, v0

    .line 97
    goto :goto_3

    .line 98
    :cond_6
    move v9, v4

    .line 99
    goto :goto_1

    .line 100
    :goto_3
    monitor-enter v1

    .line 101
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzegu;->zzn(Lcom/google/android/gms/internal/ads/zzegu;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_8

    .line 106
    .line 107
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzegu;->zzc(Lcom/google/android/gms/internal/ads/zzegu;)Lcom/google/android/gms/internal/ads/zzegw;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzb:Lcom/google/android/gms/internal/ads/zzfbx;

    .line 112
    .line 113
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzc:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 114
    .line 115
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzedj;

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    move-object v3, p1

    .line 120
    check-cast v3, Lcom/google/android/gms/internal/ads/zzedj;

    .line 121
    .line 122
    :cond_7
    move-wide v11, v10

    .line 123
    move-object v10, v3

    .line 124
    goto :goto_4

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    move-object p1, v0

    .line 127
    goto/16 :goto_5

    .line 128
    .line 129
    :goto_4
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzegw;->zza(Lcom/google/android/gms/internal/ads/zzfbx;Lcom/google/android/gms/internal/ads/zzfbu;ILcom/google/android/gms/internal/ads/zzedj;J)V

    .line 130
    .line 131
    .line 132
    move-wide v10, v11

    .line 133
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zziE:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 134
    .line 135
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Ljava/lang/Boolean;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_9

    .line 150
    .line 151
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzegu;->zzd(Lcom/google/android/gms/internal/ads/zzegu;)Lcom/google/android/gms/internal/ads/zzfjr;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegs;->zze:Lcom/google/android/gms/internal/ads/zzfjn;

    .line 156
    .line 157
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzf:Lcom/google/android/gms/internal/ads/zzfcg;

    .line 158
    .line 159
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzc:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 160
    .line 161
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzfbu;->zzn:Ljava/util/List;

    .line 162
    .line 163
    invoke-virtual {v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzfjn;->zzd(Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;Ljava/util/List;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzfbu;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 168
    .line 169
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzfjr;->zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    .line 170
    .line 171
    .line 172
    :cond_9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzegu;->zzo(Lcom/google/android/gms/internal/ads/zzegu;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_a

    .line 177
    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 180
    :cond_a
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzegu;->zzh(Lcom/google/android/gms/internal/ads/zzegu;)Ljava/util/LinkedHashMap;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzc:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 185
    .line 186
    new-instance v6, Lcom/google/android/gms/internal/ads/zzegt;

    .line 187
    .line 188
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzd:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzfbu;->zzaf:Ljava/lang/String;

    .line 191
    .line 192
    move-object v12, v4

    .line 193
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzegt;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v3, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfdq;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 204
    .line 205
    if-eq v0, v2, :cond_b

    .line 206
    .line 207
    if-nez v0, :cond_c

    .line 208
    .line 209
    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    .line 210
    .line 211
    if-eqz v0, :cond_c

    .line 212
    .line 213
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    .line 214
    .line 215
    const-string v2, "com.google.android.gms.ads"

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_c

    .line 222
    .line 223
    new-instance v0, Lcom/google/android/gms/internal/ads/zzedj;

    .line 224
    .line 225
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    .line 226
    .line 227
    const/16 v2, 0xd

    .line 228
    .line 229
    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzedj;-><init>(ILcom/google/android/gms/ads/internal/client/zze;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfdq;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    :cond_c
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzegu;->zzb(Lcom/google/android/gms/internal/ads/zzegu;)Lcom/google/android/gms/internal/ads/zzedk;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0, v3, v10, v11, p1}, Lcom/google/android/gms/internal/ads/zzedk;->zzf(Lcom/google/android/gms/internal/ads/zzfbu;JLcom/google/android/gms/ads/internal/client/zze;)V

    .line 241
    .line 242
    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 245
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzg:Lcom/google/android/gms/internal/ads/zzegu;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegu;->zze(Lcom/google/android/gms/internal/ads/zzegu;)Lcom/google/android/gms/common/util/Clock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzegs;->zza:J

    .line 12
    .line 13
    sub-long v8, v0, v2

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegu;->zzn(Lcom/google/android/gms/internal/ads/zzegu;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegu;->zzc(Lcom/google/android/gms/internal/ads/zzegu;)Lcom/google/android/gms/internal/ads/zzegw;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzb:Lcom/google/android/gms/internal/ads/zzfbx;

    .line 27
    .line 28
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzc:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    move-wide v9, v8

    .line 32
    const/4 v8, 0x0

    .line 33
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzegw;->zza(Lcom/google/android/gms/internal/ads/zzfbx;Lcom/google/android/gms/internal/ads/zzfbu;ILcom/google/android/gms/internal/ads/zzedj;J)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    move-wide v9, v8

    .line 40
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegu;->zzo(Lcom/google/android/gms/internal/ads/zzegu;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    monitor-exit p1

    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzc:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzegu;->zzp(Lcom/google/android/gms/internal/ads/zzegu;Lcom/google/android/gms/internal/ads/zzfbu;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegu;->zzh(Lcom/google/android/gms/internal/ads/zzegu;)Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/google/android/gms/internal/ads/zzegt;

    .line 65
    .line 66
    iput-wide v9, v1, Lcom/google/android/gms/internal/ads/zzegt;->zzd:J

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegu;->zzh(Lcom/google/android/gms/internal/ads/zzegu;)Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v4, Lcom/google/android/gms/internal/ads/zzegt;

    .line 74
    .line 75
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzegs;->zzd:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfbu;->zzaf:Ljava/lang/String;

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    move-wide v8, v9

    .line 81
    const/4 v10, 0x0

    .line 82
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzegt;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    .line 83
    .line 84
    .line 85
    move-wide v9, v8

    .line 86
    invoke-virtual {v1, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegu;->zzb(Lcom/google/android/gms/internal/ads/zzegu;)Lcom/google/android/gms/internal/ads/zzedk;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-virtual {v1, v0, v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzedk;->zzg(Lcom/google/android/gms/internal/ads/zzfbu;JLcom/google/android/gms/ads/internal/client/zze;)V

    .line 95
    .line 96
    .line 97
    monitor-exit p1

    .line 98
    return-void

    .line 99
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw v0
.end method
