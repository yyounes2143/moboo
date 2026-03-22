.class public final Lcom/google/android/gms/internal/ads/zzcaa;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgdj;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzgdj;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzgdj;

.field public static final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzgdk;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzgdj;

.field public static final zzg:Lcom/google/android/gms/internal/ads/zzgdj;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Default"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrk;->zza()Lcom/google/android/gms/internal/ads/zzfrh;

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzw;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzw;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzlB:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 28
    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzc(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzc(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzlC:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 56
    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzc(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcv;->zzlD:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 68
    .line 69
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzc(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 80
    .line 81
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzc(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzc(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 110
    .line 111
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 112
    .line 113
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v11, Lcom/google/android/gms/internal/ads/zzbzw;

    .line 117
    .line 118
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzbzw;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-wide/16 v7, 0xa

    .line 122
    .line 123
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzc(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 141
    .line 142
    .line 143
    move-object v0, v4

    .line 144
    goto :goto_0

    .line 145
    :cond_1
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 146
    .line 147
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 148
    .line 149
    new-instance v11, Ljava/util/concurrent/SynchronousQueue;

    .line 150
    .line 151
    invoke-direct {v11}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 152
    .line 153
    .line 154
    new-instance v12, Lcom/google/android/gms/internal/ads/zzbzw;

    .line 155
    .line 156
    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/zzbzw;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const/4 v6, 0x2

    .line 160
    const v7, 0x7fffffff

    .line 161
    .line 162
    .line 163
    const-wide/16 v8, 0xa

    .line 164
    .line 165
    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 166
    .line 167
    .line 168
    move-object v0, v5

    .line 169
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzy;

    .line 170
    .line 171
    const/4 v2, 0x0

    .line 172
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzy;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzz;)V

    .line 173
    .line 174
    .line 175
    sput-object v1, Lcom/google/android/gms/internal/ads/zzcaa;->zza:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 176
    .line 177
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    const-string v1, "Loader"

    .line 182
    .line 183
    const/4 v3, 0x1

    .line 184
    if-eqz v0, :cond_2

    .line 185
    .line 186
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrk;->zza()Lcom/google/android/gms/internal/ads/zzfrh;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbzw;

    .line 191
    .line 192
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzbzw;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/4 v1, 0x5

    .line 196
    invoke-interface {v0, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzfrh;->zzc(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    goto :goto_1

    .line 201
    :cond_2
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 202
    .line 203
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 204
    .line 205
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 206
    .line 207
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 208
    .line 209
    .line 210
    new-instance v11, Lcom/google/android/gms/internal/ads/zzbzw;

    .line 211
    .line 212
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzbzw;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const/4 v5, 0x5

    .line 216
    const/4 v6, 0x5

    .line 217
    const-wide/16 v7, 0xa

    .line 218
    .line 219
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 223
    .line 224
    .line 225
    move-object v0, v4

    .line 226
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzy;

    .line 227
    .line 228
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzy;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzz;)V

    .line 229
    .line 230
    .line 231
    sput-object v1, Lcom/google/android/gms/internal/ads/zzcaa;->zzb:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 232
    .line 233
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    const-string v1, "Activeview"

    .line 238
    .line 239
    if-eqz v0, :cond_3

    .line 240
    .line 241
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrk;->zza()Lcom/google/android/gms/internal/ads/zzfrh;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbzw;

    .line 246
    .line 247
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzbzw;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzfrh;->zzb(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    goto :goto_2

    .line 255
    :cond_3
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 256
    .line 257
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 258
    .line 259
    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 260
    .line 261
    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 262
    .line 263
    .line 264
    new-instance v11, Lcom/google/android/gms/internal/ads/zzbzw;

    .line 265
    .line 266
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzbzw;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const/4 v5, 0x1

    .line 270
    const/4 v6, 0x1

    .line 271
    const-wide/16 v7, 0xa

    .line 272
    .line 273
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 277
    .line 278
    .line 279
    move-object v0, v4

    .line 280
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzy;

    .line 281
    .line 282
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzy;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzz;)V

    .line 283
    .line 284
    .line 285
    sput-object v1, Lcom/google/android/gms/internal/ads/zzcaa;->zzc:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 286
    .line 287
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzv;

    .line 288
    .line 289
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzw;

    .line 290
    .line 291
    const-string v3, "Schedule"

    .line 292
    .line 293
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzbzw;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    const/4 v3, 0x3

    .line 297
    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzbzv;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 298
    .line 299
    .line 300
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcaa;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    .line 301
    .line 302
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdq;->zzb(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzgdk;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcaa;->zze:Lcom/google/android/gms/internal/ads/zzgdk;

    .line 307
    .line 308
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzx;

    .line 309
    .line 310
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbzx;-><init>()V

    .line 311
    .line 312
    .line 313
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzy;

    .line 314
    .line 315
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzy;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzz;)V

    .line 316
    .line 317
    .line 318
    sput-object v1, Lcom/google/android/gms/internal/ads/zzcaa;->zzf:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 319
    .line 320
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdq;->zzc()Ljava/util/concurrent/Executor;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzy;

    .line 325
    .line 326
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzy;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbzz;)V

    .line 327
    .line 328
    .line 329
    sput-object v1, Lcom/google/android/gms/internal/ads/zzcaa;->zzg:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 330
    .line 331
    return-void
.end method
