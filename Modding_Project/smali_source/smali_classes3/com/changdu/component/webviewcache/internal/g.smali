.class public final Lcom/changdu/component/webviewcache/internal/g;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/changdu/component/webviewcache/internal/g;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/changdu/component/webviewcache/internal/h;)Lcom/changdu/component/webviewcache/CDWebResourceResponse;
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/changdu/component/webviewcache/internal/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p1, Lcom/changdu/component/webviewcache/internal/h;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/component/webviewcache/internal/g;->a:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v3, Lcom/changdu/component/webviewcache/internal/f;->b:Lcom/changdu/component/webviewcache/internal/f;

    .line 8
    .line 9
    if-nez v3, :cond_1

    .line 10
    .line 11
    const-class v3, Lcom/changdu/component/webviewcache/internal/f;

    .line 12
    .line 13
    monitor-enter v3

    .line 14
    :try_start_0
    sget-object v4, Lcom/changdu/component/webviewcache/internal/f;->b:Lcom/changdu/component/webviewcache/internal/f;

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    new-instance v4, Lcom/changdu/component/webviewcache/internal/f;

    .line 19
    .line 20
    invoke-direct {v4, v2}, Lcom/changdu/component/webviewcache/internal/f;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    sput-object v4, Lcom/changdu/component/webviewcache/internal/f;->b:Lcom/changdu/component/webviewcache/internal/f;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit v3

    .line 29
    goto :goto_2

    .line 30
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1

    .line 32
    :cond_1
    :goto_2
    sget-object v2, Lcom/changdu/component/webviewcache/internal/f;->b:Lcom/changdu/component/webviewcache/internal/f;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/changdu/component/webviewcache/internal/f;->a:Lokhttp3/OkHttpClient;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/changdu/component/webviewcache/internal/h;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    const-string v3, "OkHttp"

    .line 45
    .line 46
    :cond_2
    new-instance v4, Lokhttp3/Request$Builder;

    .line 47
    .line 48
    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v5, "User-Agent"

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-string v5, "User-Agent"

    .line 58
    .line 59
    invoke-virtual {v4, v5, v3}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-object v4, p1, Lcom/changdu/component/webviewcache/internal/h;->c:Ljava/util/Map;

    .line 64
    .line 65
    if-eqz v4, :cond_5

    .line 66
    .line 67
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_5

    .line 72
    .line 73
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_5

    .line 86
    .line 87
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Ljava/util/Map$Entry;

    .line 92
    .line 93
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Ljava/lang/String;

    .line 98
    .line 99
    const-string v7, "If-Match"

    .line 100
    .line 101
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-nez v7, :cond_3

    .line 106
    .line 107
    const-string v7, "If-None-Match"

    .line 108
    .line 109
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-nez v7, :cond_3

    .line 114
    .line 115
    const-string v7, "If-Modified-Since"

    .line 116
    .line 117
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-nez v7, :cond_3

    .line 122
    .line 123
    const-string v7, "If-Unmodified-Since"

    .line 124
    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_3

    .line 130
    .line 131
    const-string v7, "Last-Modified"

    .line 132
    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-nez v7, :cond_3

    .line 138
    .line 139
    const-string v7, "Expires"

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-nez v7, :cond_3

    .line 146
    .line 147
    const-string v7, "Cache-Control"

    .line 148
    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_4

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_4
    invoke-virtual {v3, v6}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 157
    .line 158
    .line 159
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v3, v6, v5}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    iget p1, p1, Lcom/changdu/component/webviewcache/internal/h;->e:I

    .line 170
    .line 171
    const/4 v4, 0x1

    .line 172
    if-eq p1, v4, :cond_9

    .line 173
    .line 174
    const/4 v5, 0x2

    .line 175
    if-eq p1, v5, :cond_8

    .line 176
    .line 177
    const/4 v5, 0x3

    .line 178
    if-eq p1, v5, :cond_7

    .line 179
    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    new-instance p1, Lokhttp3/CacheControl$Builder;

    .line 183
    .line 184
    invoke-direct {p1}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CacheControl;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    goto :goto_4

    .line 192
    :cond_6
    new-instance p1, Lokhttp3/CacheControl$Builder;

    .line 193
    .line 194
    invoke-direct {p1}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CacheControl$Builder;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CacheControl;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    goto :goto_4

    .line 206
    :cond_7
    sget-object p1, Lokhttp3/CacheControl;->Wwwwwwwwwwwwwwwwwwww:Lokhttp3/CacheControl;

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_8
    sget-object p1, Lokhttp3/CacheControl;->Wwwwwwwwwwwwwwwwwwwww:Lokhttp3/CacheControl;

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_9
    if-nez v1, :cond_a

    .line 213
    .line 214
    new-instance p1, Lokhttp3/CacheControl$Builder;

    .line 215
    .line 216
    invoke-direct {p1}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CacheControl$Builder;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CacheControl;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    goto :goto_4

    .line 228
    :cond_a
    new-instance p1, Lokhttp3/CacheControl$Builder;

    .line 229
    .line 230
    invoke-direct {p1}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 231
    .line 232
    .line 233
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 234
    .line 235
    const v6, 0x7fffffff

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v6, v5}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CacheControl;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    :goto_4
    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request$Builder;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    const/4 v0, 0x0

    .line 263
    :try_start_1
    invoke-virtual {v2, p1}, Lokhttp3/OkHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Call;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 268
    .line 269
    .line 270
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 271
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    const/16 v3, 0x64

    .line 276
    .line 277
    if-lt v2, v3, :cond_e

    .line 278
    .line 279
    const/16 v3, 0x257

    .line 280
    .line 281
    if-gt v2, v3, :cond_e

    .line 282
    .line 283
    const/16 v3, 0x12b

    .line 284
    .line 285
    if-le v2, v3, :cond_b

    .line 286
    .line 287
    const/16 v3, 0x190

    .line 288
    .line 289
    if-lt v2, v3, :cond_e

    .line 290
    .line 291
    :cond_b
    new-instance v2, Lcom/changdu/component/webviewcache/CDWebResourceResponse;

    .line 292
    .line 293
    invoke-direct {v2}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    invoke-virtual {v2, v3}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->setResponseCode(I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkk()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-virtual {v2, v3}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    const/16 v5, 0x130

    .line 315
    .line 316
    if-eq v3, v5, :cond_c

    .line 317
    .line 318
    move v3, v4

    .line 319
    goto :goto_5

    .line 320
    :cond_c
    const/4 v3, 0x0

    .line 321
    :goto_5
    invoke-virtual {v2, v3}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->setModified(Z)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    if-eqz v3, :cond_d

    .line 329
    .line 330
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->bytes()[B

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-virtual {v2, v3}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->setOriginBytes([B)V

    .line 335
    .line 336
    .line 337
    goto :goto_6

    .line 338
    :catchall_1
    move-exception v0

    .line 339
    goto :goto_8

    .line 340
    :catch_0
    move-exception v1

    .line 341
    goto :goto_7

    .line 342
    :cond_d
    :goto_6
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkk()Lokhttp3/Headers;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-static {v3}, Lcom/changdu/component/webviewcache/util/a;->a(Lokhttp3/Headers;)Ljava/util/HashMap;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v2, v3}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 351
    .line 352
    .line 353
    xor-int/2addr v1, v4

    .line 354
    invoke-virtual {v2, v1}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->setCacheByOurselves(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 358
    .line 359
    .line 360
    return-object v2

    .line 361
    :catchall_2
    move-exception p1

    .line 362
    move-object v8, v0

    .line 363
    move-object v0, p1

    .line 364
    move-object p1, v8

    .line 365
    goto :goto_8

    .line 366
    :catch_1
    move-exception v1

    .line 367
    move-object p1, v0

    .line 368
    :goto_7
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 369
    .line 370
    .line 371
    if-eqz p1, :cond_f

    .line 372
    .line 373
    :cond_e
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 374
    .line 375
    .line 376
    :cond_f
    return-object v0

    .line 377
    :goto_8
    if-eqz p1, :cond_10

    .line 378
    .line 379
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 380
    .line 381
    .line 382
    :cond_10
    throw v0
.end method
