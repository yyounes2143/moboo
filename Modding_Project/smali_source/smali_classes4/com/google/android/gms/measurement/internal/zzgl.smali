.class public final Lcom/google/android/gms/measurement/internal/zzgl;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "Proguard"


# static fields
.field private static final zza:[Ljava/lang/String;


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/internal/zzgj;

.field private zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "app_version_int"

    .line 2
    .line 3
    const-string v1, "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"

    .line 4
    .line 5
    const-string v2, "app_version"

    .line 6
    .line 7
    const-string v3, "ALTER TABLE messages ADD COLUMN app_version TEXT;"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgl;->zza:[Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgj;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 15
    .line 16
    .line 17
    const-string v1, "google_app_measurement_local.db"

    .line 18
    .line 19
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgj;-><init>(Lcom/google/android/gms/measurement/internal/zzgl;Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic zzr()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgl;->zza:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final zzs(I[B)Z
    .locals 18
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfy;->zzbb:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzgi;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v0, v5

    .line 39
    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    .line 40
    .line 41
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const-string v8, "type"

    .line 49
    .line 50
    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    const-string v7, "entry"

    .line 54
    .line 55
    move-object/from16 v8, p2

    .line 56
    .line 57
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v7, v5, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const-string v4, "app_version"

    .line 73
    .line 74
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    .line 80
    .line 81
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v4, "app_version_int"

    .line 86
    .line 87
    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 91
    .line 92
    .line 93
    const/4 v4, 0x5

    .line 94
    move v7, v2

    .line 95
    move v8, v4

    .line 96
    :goto_1
    if-ge v7, v4, :cond_e

    .line 97
    .line 98
    const/4 v9, 0x1

    .line 99
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzp()Landroid/database/sqlite/SQLiteDatabase;

    .line 100
    .line 101
    .line 102
    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 103
    if-nez v10, :cond_3

    .line 104
    .line 105
    :try_start_1
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    .line 106
    .line 107
    :goto_2
    return v2

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto/16 :goto_10

    .line 110
    .line 111
    :catch_0
    move-exception v0

    .line 112
    move/from16 v17, v2

    .line 113
    .line 114
    move/from16 p2, v9

    .line 115
    .line 116
    goto/16 :goto_8

    .line 117
    .line 118
    :catch_1
    move/from16 v17, v2

    .line 119
    .line 120
    goto/16 :goto_9

    .line 121
    .line 122
    :catch_2
    move-exception v0

    .line 123
    move/from16 v17, v2

    .line 124
    .line 125
    move/from16 p2, v9

    .line 126
    .line 127
    goto/16 :goto_a

    .line 128
    .line 129
    :cond_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 130
    .line 131
    .line 132
    const-string v0, "select count(1) from messages"

    .line 133
    .line 134
    invoke-virtual {v10, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 135
    .line 136
    .line 137
    move-result-object v11
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    const-wide/16 v12, 0x0

    .line 139
    .line 140
    if-eqz v11, :cond_4

    .line 141
    .line 142
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 149
    .line 150
    .line 151
    move-result-wide v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    goto :goto_5

    .line 153
    :catchall_1
    move-exception v0

    .line 154
    goto/16 :goto_7

    .line 155
    .line 156
    :catch_3
    move-exception v0

    .line 157
    move/from16 v17, v2

    .line 158
    .line 159
    :goto_3
    move/from16 p2, v9

    .line 160
    .line 161
    goto/16 :goto_b

    .line 162
    .line 163
    :catch_4
    move/from16 v17, v2

    .line 164
    .line 165
    goto/16 :goto_c

    .line 166
    .line 167
    :catch_5
    move-exception v0

    .line 168
    move/from16 v17, v2

    .line 169
    .line 170
    :goto_4
    move/from16 p2, v9

    .line 171
    .line 172
    goto/16 :goto_e

    .line 173
    .line 174
    :cond_4
    :goto_5
    const-wide/32 v14, 0x186a0

    .line 175
    .line 176
    .line 177
    cmp-long v0, v12, v14

    .line 178
    .line 179
    const-string v14, "messages"

    .line 180
    .line 181
    if-ltz v0, :cond_5

    .line 182
    .line 183
    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v15, "Data loss, local db full"

    .line 192
    .line 193
    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    .line 197
    .line 198
    const-wide/32 v15, 0x186a1

    .line 199
    .line 200
    .line 201
    sub-long/2addr v15, v12

    .line 202
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    filled-new-array {v12}, [Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    invoke-virtual {v10, v14, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    int-to-long v12, v0

    .line 215
    cmp-long v0, v12, v15

    .line 216
    .line 217
    if-eqz v0, :cond_5

    .line 218
    .line 219
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 224
    .line 225
    .line 226
    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 227
    move/from16 v17, v2

    .line 228
    .line 229
    :try_start_4
    const-string v2, "Different delete count than expected in local db. expected, received, difference"

    .line 230
    .line 231
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 232
    .line 233
    .line 234
    move-result-object v4
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 235
    move/from16 p2, v9

    .line 236
    .line 237
    :try_start_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    sub-long/2addr v15, v12

    .line 242
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    invoke-virtual {v0, v2, v4, v9, v12}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    goto :goto_6

    .line 250
    :catch_6
    move-exception v0

    .line 251
    goto :goto_b

    .line 252
    :catch_7
    move-exception v0

    .line 253
    goto/16 :goto_e

    .line 254
    .line 255
    :catch_8
    move-exception v0

    .line 256
    goto :goto_3

    .line 257
    :catch_9
    move-exception v0

    .line 258
    goto :goto_4

    .line 259
    :cond_5
    move/from16 v17, v2

    .line 260
    .line 261
    move/from16 p2, v9

    .line 262
    .line 263
    :goto_6
    invoke-virtual {v10, v14, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 264
    .line 265
    .line 266
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 270
    .line 271
    .line 272
    if-eqz v11, :cond_6

    .line 273
    .line 274
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 275
    .line 276
    .line 277
    :cond_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 278
    .line 279
    .line 280
    return p2

    .line 281
    :goto_7
    move-object v5, v11

    .line 282
    goto/16 :goto_10

    .line 283
    .line 284
    :goto_8
    move-object v11, v5

    .line 285
    goto :goto_b

    .line 286
    :goto_9
    move-object v11, v5

    .line 287
    goto :goto_c

    .line 288
    :goto_a
    move-object v11, v5

    .line 289
    goto :goto_e

    .line 290
    :catchall_2
    move-exception v0

    .line 291
    move-object v10, v5

    .line 292
    goto/16 :goto_10

    .line 293
    .line 294
    :catch_a
    move-exception v0

    .line 295
    move/from16 v17, v2

    .line 296
    .line 297
    move/from16 p2, v9

    .line 298
    .line 299
    move-object v10, v5

    .line 300
    move-object v11, v10

    .line 301
    :goto_b
    if-eqz v10, :cond_7

    .line 302
    .line 303
    :try_start_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_7

    .line 308
    .line 309
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 310
    .line 311
    .line 312
    :cond_7
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 313
    .line 314
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    const-string v4, "Error writing entry to local database"

    .line 323
    .line 324
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    move/from16 v2, p2

    .line 328
    .line 329
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 330
    .line 331
    if-eqz v11, :cond_8

    .line 332
    .line 333
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 334
    .line 335
    .line 336
    :cond_8
    if-eqz v10, :cond_b

    .line 337
    .line 338
    goto :goto_d

    .line 339
    :catch_b
    move/from16 v17, v2

    .line 340
    .line 341
    move-object v10, v5

    .line 342
    move-object v11, v10

    .line 343
    :catch_c
    :goto_c
    int-to-long v12, v8

    .line 344
    :try_start_7
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 345
    .line 346
    .line 347
    add-int/lit8 v8, v8, 0x14

    .line 348
    .line 349
    if-eqz v11, :cond_9

    .line 350
    .line 351
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 352
    .line 353
    .line 354
    :cond_9
    if-eqz v10, :cond_b

    .line 355
    .line 356
    :goto_d
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 357
    .line 358
    .line 359
    goto :goto_f

    .line 360
    :catch_d
    move-exception v0

    .line 361
    move/from16 v17, v2

    .line 362
    .line 363
    move-object v10, v5

    .line 364
    move-object v11, v10

    .line 365
    :goto_e
    :try_start_8
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 366
    .line 367
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    const-string v4, "Error writing entry; local database full"

    .line 376
    .line 377
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    const/4 v2, 0x1

    .line 381
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 382
    .line 383
    if-eqz v11, :cond_a

    .line 384
    .line 385
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 386
    .line 387
    .line 388
    :cond_a
    if-eqz v10, :cond_b

    .line 389
    .line 390
    goto :goto_d

    .line 391
    :cond_b
    :goto_f
    add-int/lit8 v7, v7, 0x1

    .line 392
    .line 393
    move/from16 v2, v17

    .line 394
    .line 395
    const/4 v4, 0x5

    .line 396
    goto/16 :goto_1

    .line 397
    .line 398
    :goto_10
    if-eqz v5, :cond_c

    .line 399
    .line 400
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 401
    .line 402
    .line 403
    :cond_c
    if-eqz v10, :cond_d

    .line 404
    .line 405
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 406
    .line 407
    .line 408
    :cond_d
    throw v0

    .line 409
    :cond_e
    move/from16 v17, v2

    .line 410
    .line 411
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 412
    .line 413
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    const-string v2, "Failed to write entry to local database"

    .line 422
    .line 423
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    return v17
.end method


# virtual methods
.method public final zze()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final zzh()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgl;->zzp()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "messages"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "Reset local analytics data. records"

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "Error resetting local analytics data. error"

    .line 53
    .line 54
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/measurement/internal/zzbg;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbh;->zza(Lcom/google/android/gms/measurement/internal/zzbg;Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14
    .line 15
    .line 16
    array-length v0, p1

    .line 17
    const/high16 v2, 0x20000

    .line 18
    .line 19
    if-le v0, v2, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzs(I[B)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public final zzj(Lcom/google/android/gms/measurement/internal/zzpl;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzpm;->zza(Lcom/google/android/gms/measurement/internal/zzpl;Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14
    .line 15
    .line 16
    array-length v0, p1

    .line 17
    const/high16 v2, 0x20000

    .line 18
    .line 19
    if-le v0, v2, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "User property too long for local database. Sending directly to service"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzs(I[B)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public final zzk(Lcom/google/android/gms/measurement/internal/zzah;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzae(Landroid/os/Parcelable;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    array-length v1, p1

    .line 12
    const/high16 v2, 0x20000

    .line 13
    .line 14
    if-le v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzs(I[B)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public final zzl(Lcom/google/android/gms/measurement/internal/zzbe;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzae(Landroid/os/Parcelable;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "Null default event parameters; not writing to database"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    array-length v2, p1

    .line 29
    const/high16 v3, 0x20000

    .line 30
    .line 31
    if-le v2, v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "Default event parameters too long for local database. Sending directly to service"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_1
    const/4 v0, 0x4

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzs(I[B)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1
.end method

.method public final zzm(I)Ljava/util/List;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "Error reading entries from local database"

    .line 4
    .line 5
    const-string v3, "entry"

    .line 6
    .line 7
    const-string v4, "type"

    .line 8
    .line 9
    const-string v5, "rowid"

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-object v6

    .line 20
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzq()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_19

    .line 30
    .line 31
    const/4 v8, 0x5

    .line 32
    const/4 v9, 0x0

    .line 33
    move v11, v8

    .line 34
    move v10, v9

    .line 35
    :goto_0
    if-ge v10, v8, :cond_18

    .line 36
    .line 37
    const/4 v12, 0x1

    .line 38
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzp()Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    .line 40
    .line 41
    move-result-object v13
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1e
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 42
    if-nez v13, :cond_1

    .line 43
    .line 44
    :try_start_1
    iput-boolean v12, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    .line 45
    .line 46
    return-object v6

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto/16 :goto_19

    .line 49
    .line 50
    :catch_0
    move-exception v0

    .line 51
    move-object/from16 v17, v3

    .line 52
    .line 53
    move-object/from16 v19, v4

    .line 54
    .line 55
    move-object/from16 v21, v5

    .line 56
    .line 57
    move v6, v9

    .line 58
    goto/16 :goto_1a

    .line 59
    .line 60
    :catch_1
    move-object/from16 v17, v3

    .line 61
    .line 62
    move-object/from16 v19, v4

    .line 63
    .line 64
    move-object/from16 v21, v5

    .line 65
    .line 66
    move v6, v9

    .line 67
    goto/16 :goto_1b

    .line 68
    .line 69
    :catch_2
    move-exception v0

    .line 70
    move-object/from16 v17, v3

    .line 71
    .line 72
    move-object/from16 v19, v4

    .line 73
    .line 74
    move-object/from16 v21, v5

    .line 75
    .line 76
    move v6, v9

    .line 77
    goto/16 :goto_1c

    .line 78
    .line 79
    :cond_1
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 80
    .line 81
    .line 82
    const-string v0, "3"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    :try_start_2
    const-string v14, "messages"

    .line 85
    .line 86
    filled-new-array {v5}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v15

    .line 90
    const-string v16, "type=?"

    .line 91
    .line 92
    filled-new-array {v0}, [Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v17

    .line 96
    const-string v20, "rowid desc"

    .line 97
    .line 98
    const-string v21, "1"

    .line 99
    .line 100
    const/16 v18, 0x0

    .line 101
    .line 102
    const/16 v19, 0x0

    .line 103
    .line 104
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 105
    .line 106
    .line 107
    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 108
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const-wide/16 v22, -0x1

    .line 113
    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 117
    .line 118
    .line 119
    move-result-wide v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    move-object/from16 v17, v3

    .line 126
    .line 127
    move-object/from16 v19, v4

    .line 128
    .line 129
    move-object/from16 v21, v5

    .line 130
    .line 131
    move v6, v9

    .line 132
    goto/16 :goto_17

    .line 133
    .line 134
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 135
    .line 136
    .line 137
    move-wide/from16 v15, v22

    .line 138
    .line 139
    :goto_1
    cmp-long v0, v15, v22

    .line 140
    .line 141
    if-eqz v0, :cond_3

    .line 142
    .line 143
    const-string v0, "rowid<?"

    .line 144
    .line 145
    new-array v14, v12, [Ljava/lang/String;

    .line 146
    .line 147
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    aput-object v15, v14, v9

    .line 152
    .line 153
    move-object/from16 v16, v0

    .line 154
    .line 155
    move-object/from16 v17, v14

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    move-object/from16 v16, v6

    .line 159
    .line 160
    move-object/from16 v17, v16

    .line 161
    .line 162
    :goto_2
    filled-new-array {v5, v4, v3}, [Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 167
    .line 168
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 169
    .line 170
    .line 171
    move-result-object v15

    .line 172
    move/from16 p1, v12

    .line 173
    .line 174
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzfy;->zzbb:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 175
    .line 176
    invoke-virtual {v15, v6, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    .line 177
    .line 178
    .line 179
    move-result v15

    .line 180
    const/16 v25, 0x4

    .line 181
    .line 182
    const/16 v26, 0x3

    .line 183
    .line 184
    const/4 v6, 0x2

    .line 185
    if-eqz v15, :cond_4

    .line 186
    .line 187
    new-array v0, v8, [Ljava/lang/String;

    .line 188
    .line 189
    aput-object v5, v0, v9

    .line 190
    .line 191
    aput-object v4, v0, p1

    .line 192
    .line 193
    aput-object v3, v0, v6

    .line 194
    .line 195
    const-string v15, "app_version"

    .line 196
    .line 197
    aput-object v15, v0, v26

    .line 198
    .line 199
    const-string v15, "app_version_int"

    .line 200
    .line 201
    aput-object v15, v0, v25

    .line 202
    .line 203
    :cond_4
    move-object v15, v0

    .line 204
    move-object v0, v14

    .line 205
    const-string v14, "messages"

    .line 206
    .line 207
    const-string v20, "rowid asc"

    .line 208
    .line 209
    const/16 v18, 0x64

    .line 210
    .line 211
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v21

    .line 215
    const/16 v18, 0x0

    .line 216
    .line 217
    const/16 v19, 0x0

    .line 218
    .line 219
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 220
    .line 221
    .line 222
    move-result-object v14
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    :goto_3
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 224
    .line 225
    .line 226
    move-result v15

    .line 227
    if-eqz v15, :cond_e

    .line 228
    .line 229
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 230
    .line 231
    .line 232
    move-result-wide v22

    .line 233
    move/from16 v15, p1

    .line 234
    .line 235
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getBlob(I)[B

    .line 240
    .line 241
    .line 242
    move-result-object v15

    .line 243
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 244
    .line 245
    .line 246
    move-result-object v6
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_18
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 247
    const/4 v9, 0x0

    .line 248
    :try_start_6
    invoke-virtual {v6, v9, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-eqz v6, :cond_5

    .line 253
    .line 254
    move/from16 v6, v26

    .line 255
    .line 256
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    move/from16 v6, v25

    .line 261
    .line 262
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 263
    .line 264
    .line 265
    move-result-wide v19
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 266
    :goto_4
    move-object v6, v3

    .line 267
    move-wide/from16 v27, v19

    .line 268
    .line 269
    move-object/from16 v19, v4

    .line 270
    .line 271
    move-wide/from16 v3, v27

    .line 272
    .line 273
    goto :goto_8

    .line 274
    :catchall_2
    move-exception v0

    .line 275
    goto/16 :goto_16

    .line 276
    .line 277
    :catch_3
    move-exception v0

    .line 278
    move-object/from16 v17, v3

    .line 279
    .line 280
    move-object/from16 v19, v4

    .line 281
    .line 282
    move-object/from16 v21, v5

    .line 283
    .line 284
    :goto_5
    const/4 v6, 0x0

    .line 285
    goto/16 :goto_1d

    .line 286
    .line 287
    :catch_4
    move-object/from16 v17, v3

    .line 288
    .line 289
    move-object/from16 v19, v4

    .line 290
    .line 291
    move-object/from16 v21, v5

    .line 292
    .line 293
    :catch_5
    :goto_6
    const/4 v6, 0x0

    .line 294
    goto/16 :goto_1e

    .line 295
    .line 296
    :catch_6
    move-exception v0

    .line 297
    move-object/from16 v17, v3

    .line 298
    .line 299
    move-object/from16 v19, v4

    .line 300
    .line 301
    move-object/from16 v21, v5

    .line 302
    .line 303
    :goto_7
    const/4 v6, 0x0

    .line 304
    goto/16 :goto_20

    .line 305
    .line 306
    :cond_5
    const-wide/16 v19, 0x0

    .line 307
    .line 308
    const/4 v9, 0x0

    .line 309
    goto :goto_4

    .line 310
    :goto_8
    if-nez v8, :cond_8

    .line 311
    .line 312
    :try_start_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 313
    .line 314
    .line 315
    move-result-object v8
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 316
    move-object/from16 v20, v0

    .line 317
    .line 318
    :try_start_8
    array-length v0, v15
    :try_end_8
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 319
    move-object/from16 v21, v5

    .line 320
    .line 321
    const/4 v5, 0x0

    .line 322
    :try_start_9
    invoke-virtual {v8, v15, v5, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v8, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 326
    .line 327
    .line 328
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbg;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 329
    .line 330
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzbg;
    :try_end_9
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 335
    .line 336
    :try_start_a
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 337
    .line 338
    .line 339
    if-eqz v0, :cond_6

    .line 340
    .line 341
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgk;

    .line 342
    .line 343
    invoke-direct {v5, v0, v9, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a .. :try_end_a} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 347
    .line 348
    .line 349
    :cond_6
    :goto_9
    move-object/from16 v17, v6

    .line 350
    .line 351
    const/4 v0, 0x2

    .line 352
    :cond_7
    :goto_a
    const/4 v3, 0x3

    .line 353
    const/4 v6, 0x0

    .line 354
    goto/16 :goto_15

    .line 355
    .line 356
    :catch_7
    move-exception v0

    .line 357
    :goto_b
    move-object/from16 v17, v6

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :catch_8
    :goto_c
    move-object/from16 v17, v6

    .line 361
    .line 362
    goto :goto_6

    .line 363
    :catch_9
    move-exception v0

    .line 364
    :goto_d
    move-object/from16 v17, v6

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :catchall_3
    move-exception v0

    .line 368
    goto :goto_e

    .line 369
    :catchall_4
    move-exception v0

    .line 370
    move-object/from16 v21, v5

    .line 371
    .line 372
    goto :goto_e

    .line 373
    :catch_a
    move-object/from16 v21, v5

    .line 374
    .line 375
    :catch_b
    :try_start_b
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 376
    .line 377
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    const-string v3, "Failed to load event from local database"

    .line 386
    .line 387
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 388
    .line 389
    .line 390
    :try_start_c
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 391
    .line 392
    .line 393
    goto :goto_9

    .line 394
    :goto_e
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 395
    .line 396
    .line 397
    throw v0

    .line 398
    :catch_c
    move-exception v0

    .line 399
    move-object/from16 v21, v5

    .line 400
    .line 401
    goto :goto_b

    .line 402
    :catch_d
    move-object/from16 v21, v5

    .line 403
    .line 404
    goto :goto_c

    .line 405
    :catch_e
    move-exception v0

    .line 406
    move-object/from16 v21, v5

    .line 407
    .line 408
    goto :goto_d

    .line 409
    :cond_8
    move-object/from16 v20, v0

    .line 410
    .line 411
    move-object/from16 v21, v5

    .line 412
    .line 413
    const/4 v5, 0x1

    .line 414
    if-ne v8, v5, :cond_9

    .line 415
    .line 416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 417
    .line 418
    .line 419
    move-result-object v5
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c .. :try_end_c} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c .. :try_end_c} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 420
    :try_start_d
    array-length v0, v15

    .line 421
    const/4 v8, 0x0

    .line 422
    invoke-virtual {v5, v15, v8, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v5, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 426
    .line 427
    .line 428
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 429
    .line 430
    invoke-interface {v0, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzpl;
    :try_end_d
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 435
    .line 436
    :try_start_e
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e .. :try_end_e} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e .. :try_end_e} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 437
    .line 438
    .line 439
    goto :goto_f

    .line 440
    :catchall_5
    move-exception v0

    .line 441
    goto :goto_10

    .line 442
    :catch_f
    :try_start_f
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 443
    .line 444
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    const-string v8, "Failed to load user property from local database"

    .line 453
    .line 454
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 455
    .line 456
    .line 457
    :try_start_10
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 458
    .line 459
    .line 460
    const/4 v0, 0x0

    .line 461
    :goto_f
    if-eqz v0, :cond_6

    .line 462
    .line 463
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgk;

    .line 464
    .line 465
    invoke-direct {v5, v0, v9, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 466
    .line 467
    .line 468
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    goto :goto_9

    .line 472
    :goto_10
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 473
    .line 474
    .line 475
    throw v0

    .line 476
    :cond_9
    const/4 v0, 0x2

    .line 477
    if-ne v8, v0, :cond_a

    .line 478
    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 480
    .line 481
    .line 482
    move-result-object v5
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 483
    :try_start_11
    array-length v8, v15
    :try_end_11
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_11 .. :try_end_11} :catch_12
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 484
    move-object/from16 v17, v6

    .line 485
    .line 486
    const/4 v6, 0x0

    .line 487
    :try_start_12
    invoke-virtual {v5, v15, v6, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 491
    .line 492
    .line 493
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzah;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 494
    .line 495
    invoke-interface {v6, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    check-cast v6, Lcom/google/android/gms/measurement/internal/zzah;
    :try_end_12
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_12 .. :try_end_12} :catch_13
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 500
    .line 501
    :try_start_13
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 502
    .line 503
    .line 504
    goto :goto_11

    .line 505
    :catch_10
    move-exception v0

    .line 506
    goto/16 :goto_5

    .line 507
    .line 508
    :catch_11
    move-exception v0

    .line 509
    goto/16 :goto_7

    .line 510
    .line 511
    :catchall_6
    move-exception v0

    .line 512
    goto :goto_12

    .line 513
    :catchall_7
    move-exception v0

    .line 514
    move-object/from16 v17, v6

    .line 515
    .line 516
    goto :goto_12

    .line 517
    :catch_12
    move-object/from16 v17, v6

    .line 518
    .line 519
    :catch_13
    :try_start_14
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 520
    .line 521
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 522
    .line 523
    .line 524
    move-result-object v6

    .line 525
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 526
    .line 527
    .line 528
    move-result-object v6

    .line 529
    const-string v8, "Failed to load conditional user property from local database"

    .line 530
    .line 531
    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 532
    .line 533
    .line 534
    :try_start_15
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 535
    .line 536
    .line 537
    const/4 v6, 0x0

    .line 538
    :goto_11
    if-eqz v6, :cond_7

    .line 539
    .line 540
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgk;

    .line 541
    .line 542
    invoke-direct {v5, v6, v9, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 543
    .line 544
    .line 545
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    goto/16 :goto_a

    .line 549
    .line 550
    :goto_12
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 551
    .line 552
    .line 553
    throw v0

    .line 554
    :cond_a
    move-object/from16 v17, v6

    .line 555
    .line 556
    const/4 v6, 0x4

    .line 557
    if-ne v8, v6, :cond_c

    .line 558
    .line 559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 560
    .line 561
    .line 562
    move-result-object v5
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_15 .. :try_end_15} :catch_11
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 563
    :try_start_16
    array-length v8, v15
    :try_end_16
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_16 .. :try_end_16} :catch_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 564
    const/4 v6, 0x0

    .line 565
    :try_start_17
    invoke-virtual {v5, v15, v6, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 569
    .line 570
    .line 571
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbe;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 572
    .line 573
    invoke-interface {v8, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzbe;
    :try_end_17
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_17 .. :try_end_17} :catch_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 578
    .line 579
    :try_start_18
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_18 .. :try_end_18} :catch_15
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_18 .. :try_end_18} :catch_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_14
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 580
    .line 581
    .line 582
    goto :goto_13

    .line 583
    :catch_14
    move-exception v0

    .line 584
    goto/16 :goto_1d

    .line 585
    .line 586
    :catch_15
    move-exception v0

    .line 587
    goto/16 :goto_20

    .line 588
    .line 589
    :catchall_8
    move-exception v0

    .line 590
    goto :goto_14

    .line 591
    :catchall_9
    move-exception v0

    .line 592
    const/4 v6, 0x0

    .line 593
    goto :goto_14

    .line 594
    :catch_16
    const/4 v6, 0x0

    .line 595
    :catch_17
    :try_start_19
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 596
    .line 597
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 598
    .line 599
    .line 600
    move-result-object v8

    .line 601
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 602
    .line 603
    .line 604
    move-result-object v8

    .line 605
    const-string v15, "Failed to load default event parameters from local database"

    .line 606
    .line 607
    invoke-virtual {v8, v15}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 608
    .line 609
    .line 610
    :try_start_1a
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 611
    .line 612
    .line 613
    const/4 v8, 0x0

    .line 614
    :goto_13
    if-eqz v8, :cond_b

    .line 615
    .line 616
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgk;

    .line 617
    .line 618
    invoke-direct {v5, v8, v9, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 619
    .line 620
    .line 621
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    :cond_b
    const/4 v3, 0x3

    .line 625
    goto :goto_15

    .line 626
    :goto_14
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 627
    .line 628
    .line 629
    throw v0

    .line 630
    :cond_c
    const/4 v3, 0x3

    .line 631
    const/4 v6, 0x0

    .line 632
    if-ne v8, v3, :cond_d

    .line 633
    .line 634
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 635
    .line 636
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    const-string v5, "Skipping app launch break"

    .line 645
    .line 646
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    goto :goto_15

    .line 650
    :cond_d
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 651
    .line 652
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    const-string v5, "Unknown record type in local database"

    .line 661
    .line 662
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    :goto_15
    move/from16 v26, v3

    .line 666
    .line 667
    move v9, v6

    .line 668
    move-object/from16 v3, v17

    .line 669
    .line 670
    move-object/from16 v4, v19

    .line 671
    .line 672
    move-object/from16 v5, v21

    .line 673
    .line 674
    const/16 p1, 0x1

    .line 675
    .line 676
    const/4 v8, 0x5

    .line 677
    const/16 v25, 0x4

    .line 678
    .line 679
    move v6, v0

    .line 680
    move-object/from16 v0, v20

    .line 681
    .line 682
    goto/16 :goto_3

    .line 683
    .line 684
    :catch_18
    move-exception v0

    .line 685
    move-object/from16 v17, v3

    .line 686
    .line 687
    move-object/from16 v19, v4

    .line 688
    .line 689
    move-object/from16 v21, v5

    .line 690
    .line 691
    move v6, v9

    .line 692
    goto/16 :goto_1d

    .line 693
    .line 694
    :catch_19
    move-object/from16 v17, v3

    .line 695
    .line 696
    move-object/from16 v19, v4

    .line 697
    .line 698
    move-object/from16 v21, v5

    .line 699
    .line 700
    move v6, v9

    .line 701
    goto/16 :goto_1e

    .line 702
    .line 703
    :catch_1a
    move-exception v0

    .line 704
    move-object/from16 v17, v3

    .line 705
    .line 706
    move-object/from16 v19, v4

    .line 707
    .line 708
    move-object/from16 v21, v5

    .line 709
    .line 710
    move v6, v9

    .line 711
    goto/16 :goto_20

    .line 712
    .line 713
    :cond_e
    move-object/from16 v17, v3

    .line 714
    .line 715
    move-object/from16 v19, v4

    .line 716
    .line 717
    move-object/from16 v21, v5

    .line 718
    .line 719
    move v6, v9

    .line 720
    const-string v0, "messages"

    .line 721
    .line 722
    const-string v3, "rowid <= ?"

    .line 723
    .line 724
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    filled-new-array {v4}, [Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    invoke-virtual {v13, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 733
    .line 734
    .line 735
    move-result v0

    .line 736
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 737
    .line 738
    .line 739
    move-result v3

    .line 740
    if-ge v0, v3, :cond_f

    .line 741
    .line 742
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 743
    .line 744
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    const-string v3, "Fewer entries removed from local database than expected"

    .line 753
    .line 754
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    :cond_f
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1a .. :try_end_1a} :catch_15
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1a .. :try_end_1a} :catch_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_14
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 761
    .line 762
    .line 763
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 767
    .line 768
    .line 769
    return-object v7

    .line 770
    :goto_16
    move-object v6, v14

    .line 771
    goto/16 :goto_22

    .line 772
    .line 773
    :catchall_a
    move-exception v0

    .line 774
    move-object/from16 v17, v3

    .line 775
    .line 776
    move-object/from16 v19, v4

    .line 777
    .line 778
    move-object/from16 v21, v5

    .line 779
    .line 780
    move v6, v9

    .line 781
    const/4 v14, 0x0

    .line 782
    :goto_17
    if-eqz v14, :cond_10

    .line 783
    .line 784
    :try_start_1b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 785
    .line 786
    .line 787
    goto :goto_18

    .line 788
    :catch_1b
    move-exception v0

    .line 789
    goto :goto_1a

    .line 790
    :catch_1c
    move-exception v0

    .line 791
    goto :goto_1c

    .line 792
    :cond_10
    :goto_18
    throw v0
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1b .. :try_end_1b} :catch_1c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1b .. :try_end_1b} :catch_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 793
    :goto_19
    const/4 v6, 0x0

    .line 794
    goto/16 :goto_22

    .line 795
    .line 796
    :goto_1a
    const/4 v14, 0x0

    .line 797
    goto :goto_1d

    .line 798
    :catch_1d
    :goto_1b
    const/4 v14, 0x0

    .line 799
    goto :goto_1e

    .line 800
    :goto_1c
    const/4 v14, 0x0

    .line 801
    goto :goto_20

    .line 802
    :catchall_b
    move-exception v0

    .line 803
    const/4 v6, 0x0

    .line 804
    const/4 v13, 0x0

    .line 805
    goto/16 :goto_22

    .line 806
    .line 807
    :catch_1e
    move-exception v0

    .line 808
    move-object/from16 v17, v3

    .line 809
    .line 810
    move-object/from16 v19, v4

    .line 811
    .line 812
    move-object/from16 v21, v5

    .line 813
    .line 814
    move v6, v9

    .line 815
    const/4 v13, 0x0

    .line 816
    goto :goto_1a

    .line 817
    :goto_1d
    if-eqz v13, :cond_11

    .line 818
    .line 819
    :try_start_1c
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 820
    .line 821
    .line 822
    move-result v3

    .line 823
    if-eqz v3, :cond_11

    .line 824
    .line 825
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 826
    .line 827
    .line 828
    :cond_11
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 829
    .line 830
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 835
    .line 836
    .line 837
    move-result-object v3

    .line 838
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 839
    .line 840
    .line 841
    const/4 v15, 0x1

    .line 842
    iput-boolean v15, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 843
    .line 844
    if-eqz v14, :cond_12

    .line 845
    .line 846
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 847
    .line 848
    .line 849
    :cond_12
    if-eqz v13, :cond_15

    .line 850
    .line 851
    goto :goto_1f

    .line 852
    :catch_1f
    move-object/from16 v17, v3

    .line 853
    .line 854
    move-object/from16 v19, v4

    .line 855
    .line 856
    move-object/from16 v21, v5

    .line 857
    .line 858
    move v6, v9

    .line 859
    const/4 v13, 0x0

    .line 860
    goto :goto_1b

    .line 861
    :catch_20
    :goto_1e
    int-to-long v3, v11

    .line 862
    :try_start_1d
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 863
    .line 864
    .line 865
    add-int/lit8 v11, v11, 0x14

    .line 866
    .line 867
    if-eqz v14, :cond_13

    .line 868
    .line 869
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 870
    .line 871
    .line 872
    :cond_13
    if-eqz v13, :cond_15

    .line 873
    .line 874
    :goto_1f
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 875
    .line 876
    .line 877
    goto :goto_21

    .line 878
    :catch_21
    move-exception v0

    .line 879
    move-object/from16 v17, v3

    .line 880
    .line 881
    move-object/from16 v19, v4

    .line 882
    .line 883
    move-object/from16 v21, v5

    .line 884
    .line 885
    move v6, v9

    .line 886
    const/4 v13, 0x0

    .line 887
    goto :goto_1c

    .line 888
    :goto_20
    :try_start_1e
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 889
    .line 890
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 891
    .line 892
    .line 893
    move-result-object v3

    .line 894
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 895
    .line 896
    .line 897
    move-result-object v3

    .line 898
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 899
    .line 900
    .line 901
    const/4 v15, 0x1

    .line 902
    iput-boolean v15, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 903
    .line 904
    if-eqz v14, :cond_14

    .line 905
    .line 906
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 907
    .line 908
    .line 909
    :cond_14
    if-eqz v13, :cond_15

    .line 910
    .line 911
    goto :goto_1f

    .line 912
    :cond_15
    :goto_21
    add-int/lit8 v10, v10, 0x1

    .line 913
    .line 914
    move v9, v6

    .line 915
    move-object/from16 v3, v17

    .line 916
    .line 917
    move-object/from16 v4, v19

    .line 918
    .line 919
    move-object/from16 v5, v21

    .line 920
    .line 921
    const/4 v6, 0x0

    .line 922
    const/4 v8, 0x5

    .line 923
    goto/16 :goto_0

    .line 924
    .line 925
    :goto_22
    if-eqz v6, :cond_16

    .line 926
    .line 927
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 928
    .line 929
    .line 930
    :cond_16
    if-eqz v13, :cond_17

    .line 931
    .line 932
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 933
    .line 934
    .line 935
    :cond_17
    throw v0

    .line 936
    :cond_18
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 937
    .line 938
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    const-string v2, "Failed to read events from database in reasonable time"

    .line 947
    .line 948
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    const/16 v24, 0x0

    .line 952
    .line 953
    return-object v24

    .line 954
    :cond_19
    return-object v7
.end method

.method public final zzn()Z
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgl;->zzs(I[B)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final zzo()Z
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const-string v0, "Error deleting app launch break from local database"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgl;->zzq()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    move v4, v1

    .line 21
    move v3, v2

    .line 22
    :goto_0
    if-ge v3, v1, :cond_5

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x1

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgl;->zzp()Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_5

    .line 38
    :catch_0
    move-exception v7

    .line 39
    goto :goto_1

    .line 40
    :catch_1
    move-exception v7

    .line 41
    goto :goto_3

    .line 42
    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 43
    .line 44
    .line 45
    const-string v7, "messages"

    .line 46
    .line 47
    const-string v8, "type == ?"

    .line 48
    .line 49
    const/4 v9, 0x3

    .line 50
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    filled-new-array {v9}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 68
    .line 69
    .line 70
    return v6

    .line 71
    :goto_1
    if-eqz v5, :cond_2

    .line 72
    .line 73
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_2

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 83
    .line 84
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    .line 96
    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catch_2
    int-to-long v6, v4

    .line 101
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    add-int/lit8 v4, v4, 0x14

    .line 105
    .line 106
    if-eqz v5, :cond_3

    .line 107
    .line 108
    :goto_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :goto_3
    :try_start_2
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 113
    .line 114
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    if-eqz v5, :cond_3

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :goto_5
    if-eqz v5, :cond_4

    .line 134
    .line 135
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 136
    .line 137
    .line 138
    :cond_4
    throw v0

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "Error deleting app launch break from local database in reasonable time"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    :goto_6
    return v2
.end method

.method public final zzp()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzb:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgl;->zzc:Z

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    return-object v0
.end method

.method public final zzq()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaY()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 8
    .line 9
    .line 10
    const-string v0, "google_app_measurement_local.db"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method
