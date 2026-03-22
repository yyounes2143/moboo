.class public final Lcom/google/android/gms/internal/ads/zzebg;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbbt;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeal;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbbt;Lcom/google/android/gms/internal/ads/zzeal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebg;->zzb:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebg;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebg;->zza:Lcom/google/android/gms/internal/ads/zzbbt;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzebg;->zzc:Lcom/google/android/gms/internal/ads/zzeal;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzebg;ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v10, 0x1

    .line 4
    const/4 v11, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzebg;->zzb:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "OfflineUpload.db"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v13, "serialized_proto_data"

    .line 22
    .line 23
    filled-new-array {v13}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const-string v3, "offline_signal_contents"

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    move-object/from16 v2, p2

    .line 35
    .line 36
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zza;->zzx([B)Lcom/google/android/gms/internal/ads/zzbca$zzaf$zza;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzh; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 64
    .line 65
    const-string v4, "Unable to deserialize proto from offline signals database:"

    .line 66
    .line 67
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 79
    .line 80
    .line 81
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzebg;->zzb:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca$zzaf;->zzi()Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;

    .line 92
    .line 93
    .line 94
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzeba;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;->zzA(I)Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v10}, Lcom/google/android/gms/internal/ads/zzeba;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;->zzE(I)Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;

    .line 115
    .line 116
    .line 117
    const/4 v4, 0x3

    .line 118
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzeba;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;->zzx(I)Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;->zzF(J)Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;

    .line 134
    .line 135
    .line 136
    const/4 v4, 0x2

    .line 137
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzeba;->zzb(Landroid/database/sqlite/SQLiteDatabase;I)J

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;->zzB(J)Lcom/google/android/gms/internal/ads/zzbca$zzaf$zzc;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgym;->zzbn()Lcom/google/android/gms/internal/ads/zzgys;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Lcom/google/android/gms/internal/ads/zzbca$zzaf;

    .line 149
    .line 150
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    const-wide/16 v6, 0x0

    .line 155
    .line 156
    move v8, v0

    .line 157
    move-wide v13, v6

    .line 158
    :goto_1
    if-ge v8, v5, :cond_3

    .line 159
    .line 160
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    check-cast v9, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zza;

    .line 165
    .line 166
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zza;->zzk()Lcom/google/android/gms/internal/ads/zzbca$zzq;

    .line 167
    .line 168
    .line 169
    move-result-object v15

    .line 170
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbca$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbca$zzq;

    .line 171
    .line 172
    if-ne v15, v0, :cond_2

    .line 173
    .line 174
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zza;->zze()J

    .line 175
    .line 176
    .line 177
    move-result-wide v15

    .line 178
    cmp-long v0, v15, v13

    .line 179
    .line 180
    if-lez v0, :cond_2

    .line 181
    .line 182
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbca$zzaf$zza;->zze()J

    .line 183
    .line 184
    .line 185
    move-result-wide v13

    .line 186
    :cond_2
    add-int/2addr v8, v10

    .line 187
    const/4 v0, 0x0

    .line 188
    goto :goto_1

    .line 189
    :cond_3
    cmp-long v0, v13, v6

    .line 190
    .line 191
    if-eqz v0, :cond_4

    .line 192
    .line 193
    new-instance v0, Landroid/content/ContentValues;

    .line 194
    .line 195
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    const-string v6, "value"

    .line 203
    .line 204
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    .line 206
    .line 207
    const-string v5, "statistic_name = \'last_successful_request_time\'"

    .line 208
    .line 209
    const-string v6, "offline_signal_statistics"

    .line 210
    .line 211
    invoke-virtual {v2, v6, v0, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzebg;->zza:Lcom/google/android/gms/internal/ads/zzbbt;

    .line 215
    .line 216
    new-instance v5, Lcom/google/android/gms/internal/ads/zzebe;

    .line 217
    .line 218
    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzebe;-><init>(Lcom/google/android/gms/internal/ads/zzbca$zzaf;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzbbt;->zzb(Lcom/google/android/gms/internal/ads/zzbbs;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzebg;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 225
    .line 226
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbca$zzar;->zzd()Lcom/google/android/gms/internal/ads/zzbca$zzar$zza;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    .line 231
    .line 232
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzbca$zzar$zza;->zzg(I)Lcom/google/android/gms/internal/ads/zzbca$zzar$zza;

    .line 233
    .line 234
    .line 235
    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 236
    .line 237
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzbca$zzar$zza;->zzi(I)Lcom/google/android/gms/internal/ads/zzbca$zzar$zza;

    .line 238
    .line 239
    .line 240
    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->isClientJar:Z

    .line 241
    .line 242
    if-eq v10, v1, :cond_5

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_5
    const/4 v4, 0x0

    .line 246
    :goto_2
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbca$zzar$zza;->zzh(I)Lcom/google/android/gms/internal/ads/zzbca$zzar$zza;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgym;->zzbn()Lcom/google/android/gms/internal/ads/zzgys;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbca$zzar;

    .line 254
    .line 255
    new-instance v3, Lcom/google/android/gms/internal/ads/zzebf;

    .line 256
    .line 257
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzebf;-><init>(Lcom/google/android/gms/internal/ads/zzbca$zzar;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbbt;->zzb(Lcom/google/android/gms/internal/ads/zzbbs;)V

    .line 261
    .line 262
    .line 263
    const/16 v1, 0x2714

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbt;->zzc(I)V

    .line 266
    .line 267
    .line 268
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeba;->zze(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 269
    .line 270
    .line 271
    :goto_3
    return-object v11
.end method


# virtual methods
.method public final zzb(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebg;->zzc:Lcom/google/android/gms/internal/ads/zzeal;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzebd;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzebd;-><init>(Lcom/google/android/gms/internal/ads/zzebg;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeal;->zza(Lcom/google/android/gms/internal/ads/zzffx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 22
    .line 23
    const-string v0, "Error in offline signals database startup: "

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
