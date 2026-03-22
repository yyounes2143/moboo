.class final Lcom/tencent/liteav/txcvodplayer/b/d$2;
.super Ljava/lang/Thread;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/txcvodplayer/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/tencent/liteav/txcvodplayer/b/d;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/b/d;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->g:Lcom/tencent/liteav/txcvodplayer/b/d;

    .line 2
    .line 3
    iput p3, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->a:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput p7, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->e:I

    .line 12
    .line 13
    iput-object p8, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->f:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x1

    .line 5
    const-string v4, "TXCVodPlayerNetApi"

    .line 6
    .line 7
    const/4 v5, -0x2

    .line 8
    const/4 v6, 0x0

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 10
    .line 11
    .line 12
    iget-object v7, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->g:Lcom/tencent/liteav/txcvodplayer/b/d;

    .line 13
    .line 14
    iget-boolean v8, v7, Lcom/tencent/liteav/txcvodplayer/b/d;->e:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    const-string v9, "%s/%d/%s"

    .line 17
    .line 18
    if-eqz v8, :cond_0

    .line 19
    .line 20
    :try_start_1
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 21
    .line 22
    iget-object v7, v7, Lcom/tencent/liteav/txcvodplayer/b/d;->b:Ljava/lang/String;

    .line 23
    .line 24
    iget v10, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->a:I

    .line 25
    .line 26
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v10

    .line 30
    iget-object v11, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->b:Ljava/lang/String;

    .line 31
    .line 32
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v7, v2, v1

    .line 35
    .line 36
    aput-object v10, v2, v3

    .line 37
    .line 38
    aput-object v11, v2, v0

    .line 39
    .line 40
    invoke-static {v8, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto/16 :goto_7

    .line 47
    .line 48
    :catch_0
    move-exception v0

    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_0
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 52
    .line 53
    iget-object v7, v7, Lcom/tencent/liteav/txcvodplayer/b/d;->a:Ljava/lang/String;

    .line 54
    .line 55
    iget v10, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->a:I

    .line 56
    .line 57
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    iget-object v11, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->b:Ljava/lang/String;

    .line 62
    .line 63
    new-array v2, v2, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v7, v2, v1

    .line 66
    .line 67
    aput-object v10, v2, v3

    .line 68
    .line 69
    aput-object v11, v2, v0

    .line 70
    .line 71
    invoke-static {v8, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->c:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->d:Ljava/lang/String;

    .line 78
    .line 79
    iget v7, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->e:I

    .line 80
    .line 81
    iget-object v8, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->f:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    const-string v10, "&"

    .line 89
    .line 90
    if-eqz v1, :cond_1

    .line 91
    .line 92
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v12, "t="

    .line 95
    .line 96
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :cond_1
    if-eqz v2, :cond_2

    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v11, "us="

    .line 117
    .line 118
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    :cond_2
    if-eqz v8, :cond_3

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v2, "sign="

    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    :cond_3
    if-ltz v7, :cond_4

    .line 157
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v2, "exper="

    .line 161
    .line 162
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-le v1, v3, :cond_5

    .line 183
    .line 184
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    sub-int/2addr v1, v3

    .line 189
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    if-eqz v1, :cond_6

    .line 197
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v0, "?"

    .line 207
    .line 208
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    :cond_6
    new-instance v1, Ljava/net/URL;

    .line 219
    .line 220
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v2, "getplayinfo: "

    .line 224
    .line 225
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    const/16 v2, 0xc8

    .line 250
    .line 251
    if-ne v1, v2, :cond_8

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    new-instance v1, Ljava/io/BufferedReader;

    .line 258
    .line 259
    new-instance v2, Ljava/io/InputStreamReader;

    .line 260
    .line 261
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 262
    .line 263
    .line 264
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    .line 266
    .line 267
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    if-eqz v2, :cond_7

    .line 277
    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    goto :goto_1

    .line 282
    :catchall_1
    move-exception v0

    .line 283
    move-object v6, v1

    .line 284
    goto :goto_7

    .line 285
    :catch_1
    move-exception v0

    .line 286
    move-object v6, v1

    .line 287
    goto :goto_3

    .line 288
    :cond_7
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->g:Lcom/tencent/liteav/txcvodplayer/b/d;

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-static {v2, v0}, Lcom/tencent/liteav/txcvodplayer/b/d;->a(Lcom/tencent/liteav/txcvodplayer/b/d;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 295
    .line 296
    .line 297
    move-object v6, v1

    .line 298
    goto :goto_2

    .line 299
    :catch_2
    move-object v6, v1

    .line 300
    goto :goto_5

    .line 301
    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->g:Lcom/tencent/liteav/txcvodplayer/b/d;

    .line 302
    .line 303
    const-string v1, "Request failed"

    .line 304
    .line 305
    const/4 v2, -0x1

    .line 306
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/b/d;->a(Ljava/lang/String;I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 307
    .line 308
    .line 309
    :goto_2
    if-eqz v6, :cond_9

    .line 310
    .line 311
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :goto_3
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    const-string v2, "http exception: "

    .line 318
    .line 319
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->g:Lcom/tencent/liteav/txcvodplayer/b/d;

    .line 337
    .line 338
    const-string v1, "The request was exceptional"

    .line 339
    .line 340
    invoke-virtual {v0, v1, v5}, Lcom/tencent/liteav/txcvodplayer/b/d;->a(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 341
    .line 342
    .line 343
    if-eqz v6, :cond_9

    .line 344
    .line 345
    :goto_4
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 346
    .line 347
    .line 348
    goto :goto_6

    .line 349
    :catch_3
    :goto_5
    :try_start_8
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/b/d$2;->g:Lcom/tencent/liteav/txcvodplayer/b/d;

    .line 350
    .line 351
    const-string v1, "Incorrect format"

    .line 352
    .line 353
    invoke-virtual {v0, v1, v5}, Lcom/tencent/liteav/txcvodplayer/b/d;->a(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 354
    .line 355
    .line 356
    if-eqz v6, :cond_9

    .line 357
    .line 358
    goto :goto_4

    .line 359
    :catch_4
    :cond_9
    :goto_6
    return-void

    .line 360
    :goto_7
    if-eqz v6, :cond_a

    .line 361
    .line 362
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 363
    .line 364
    .line 365
    :catch_5
    :cond_a
    throw v0
.end method
