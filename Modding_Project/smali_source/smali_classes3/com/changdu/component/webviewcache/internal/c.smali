.class public final Lcom/changdu/component/webviewcache/internal/c;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/webviewcache/Destroyable;
.implements Lcom/changdu/component/webviewcache/WebResourceInterceptor;


# instance fields
.field public a:Lcom/changdu/component/webviewcache/lru/g;

.field public final b:Lcom/changdu/component/webviewcache/config/CacheConfig;


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/config/CacheConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/changdu/component/webviewcache/internal/c;->b:Lcom/changdu/component/webviewcache/config/CacheConfig;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/changdu/component/webviewcache/CDWebResourceResponse;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const-string v2, "Content-Type"

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    const-string v2, ";"

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    array-length v2, p1

    .line 46
    if-lt v2, v1, :cond_1

    .line 47
    .line 48
    aget-object p1, p1, v0

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    :goto_2
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Lcom/changdu/component/webviewcache/internal/c;->b:Lcom/changdu/component/webviewcache/config/CacheConfig;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/changdu/component/webviewcache/config/CacheConfig;->getFilter()Lcom/changdu/component/webviewcache/config/MimeTypeFilter;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2, p1}, Lcom/changdu/component/webviewcache/config/MimeTypeFilter;->isFilter(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    return v1

    .line 67
    :cond_2
    return v0
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/internal/c;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/lru/g;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/changdu/component/webviewcache/internal/c;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/lru/g;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final load(Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;)Lcom/changdu/component/webviewcache/CDWebResourceResponse;
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->getRequest()Lcom/changdu/component/webviewcache/CacheRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/changdu/component/webviewcache/internal/c;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/changdu/component/webviewcache/lru/g;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto/16 :goto_c

    .line 20
    .line 21
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/changdu/component/webviewcache/internal/c;->b:Lcom/changdu/component/webviewcache/config/CacheConfig;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/changdu/component/webviewcache/config/CacheConfig;->getCacheDir()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/changdu/component/webviewcache/internal/c;->b:Lcom/changdu/component/webviewcache/config/CacheConfig;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/changdu/component/webviewcache/config/CacheConfig;->getVersion()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-object v3, p0, Lcom/changdu/component/webviewcache/internal/c;->b:Lcom/changdu/component/webviewcache/config/CacheConfig;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/changdu/component/webviewcache/config/CacheConfig;->getDiskCacheSize()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    new-instance v5, Ljava/io/File;

    .line 40
    .line 41
    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v5, v2, v3, v4}, Lcom/changdu/component/webviewcache/lru/g;->a(Ljava/io/File;IJ)Lcom/changdu/component/webviewcache/lru/g;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/changdu/component/webviewcache/internal/c;->a:Lcom/changdu/component/webviewcache/lru/g;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    .line 54
    .line 55
    :goto_0
    monitor-exit p0

    .line 56
    :goto_1
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/CacheRequest;->getKey()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v2, 0x1

    .line 61
    const/4 v3, 0x0

    .line 62
    :try_start_4
    iget-object v4, p0, Lcom/changdu/component/webviewcache/internal/c;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/changdu/component/webviewcache/lru/g;->a()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_1
    iget-object v4, p0, Lcom/changdu/component/webviewcache/internal/c;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 73
    .line 74
    invoke-virtual {v4, v1}, Lcom/changdu/component/webviewcache/lru/g;->b(Ljava/lang/String;)Lcom/changdu/component/webviewcache/lru/f;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_7

    .line 79
    .line 80
    iget-object v4, v1, Lcom/changdu/component/webviewcache/lru/f;->a:[Ljava/io/InputStream;

    .line 81
    .line 82
    aget-object v4, v4, v3

    .line 83
    .line 84
    invoke-static {v4}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/InputStream;)Lokio/Source;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)Lokio/BufferedSource;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-interface {v4}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-interface {v4}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-interface {v4}, Lokio/BufferedSource;->Wwwwwwwwwww()J

    .line 101
    .line 102
    .line 103
    move-result-wide v7

    .line 104
    new-instance v9, Lokhttp3/Headers$Builder;

    .line 105
    .line 106
    invoke-direct {v9}, Lokhttp3/Headers$Builder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-interface {v4}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-nez v11, :cond_2

    .line 122
    .line 123
    invoke-virtual {v9, v10}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 124
    .line 125
    .line 126
    const-wide/16 v10, 0x1

    .line 127
    .line 128
    sub-long/2addr v7, v10

    .line 129
    goto :goto_2

    .line 130
    :catch_1
    move-exception v1

    .line 131
    goto :goto_5

    .line 132
    :cond_2
    :goto_2
    move v10, v3

    .line 133
    :goto_3
    int-to-long v11, v10

    .line 134
    cmp-long v11, v11, v7

    .line 135
    .line 136
    if-gez v11, :cond_4

    .line 137
    .line 138
    invoke-interface {v4}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    if-nez v12, :cond_3

    .line 147
    .line 148
    invoke-virtual {v9, v11}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 149
    .line 150
    .line 151
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_4
    invoke-virtual {v9}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-static {v4}, Lcom/changdu/component/webviewcache/util/a;->a(Lokhttp3/Headers;)Ljava/util/HashMap;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    iget-object v7, v1, Lcom/changdu/component/webviewcache/lru/f;->a:[Ljava/io/InputStream;

    .line 163
    .line 164
    aget-object v7, v7, v2

    .line 165
    .line 166
    if-eqz v7, :cond_6

    .line 167
    .line 168
    new-instance v1, Lcom/changdu/component/webviewcache/CDWebResourceResponse;

    .line 169
    .line 170
    invoke-direct {v1}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v6}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    invoke-virtual {v1, v5}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->setResponseCode(I)V

    .line 185
    .line 186
    .line 187
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 188
    .line 189
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .line 191
    .line 192
    const/16 v6, 0x400

    .line 193
    .line 194
    new-array v6, v6, [B

    .line 195
    .line 196
    :goto_4
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    const/4 v9, -0x1

    .line 201
    if-le v8, v9, :cond_5

    .line 202
    .line 203
    invoke-virtual {v5, v6, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v1, v5}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->setOriginBytes([B)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v4}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v3}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->setModified(Z)V

    .line 224
    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_6
    invoke-virtual {v1}, Lcom/changdu/component/webviewcache/lru/f;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 232
    .line 233
    .line 234
    :cond_7
    :goto_6
    const/4 v1, 0x0

    .line 235
    :goto_7
    if-eqz v1, :cond_8

    .line 236
    .line 237
    invoke-virtual {p0, v1}, Lcom/changdu/component/webviewcache/internal/c;->a(Lcom/changdu/component/webviewcache/CDWebResourceResponse;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-eqz v4, :cond_8

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->setIsFromDiskCache(Z)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/CacheRequest;->getUrl()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    return-object v1

    .line 250
    :cond_8
    invoke-virtual {p1, v0}, Lcom/changdu/component/webviewcache/WebResourceInterceptorChain;->process(Lcom/changdu/component/webviewcache/CacheRequest;)Lcom/changdu/component/webviewcache/CDWebResourceResponse;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    if-eqz p1, :cond_e

    .line 255
    .line 256
    invoke-virtual {p0, p1}, Lcom/changdu/component/webviewcache/internal/c;->a(Lcom/changdu/component/webviewcache/CDWebResourceResponse;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_e

    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->isCacheByOurselves()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_e

    .line 267
    .line 268
    invoke-virtual {v0}, Lcom/changdu/component/webviewcache/CacheRequest;->getKey()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->isCacheable()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-nez v1, :cond_9

    .line 277
    .line 278
    goto/16 :goto_b

    .line 279
    .line 280
    :cond_9
    iget-object v1, p0, Lcom/changdu/component/webviewcache/internal/c;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 281
    .line 282
    invoke-virtual {v1}, Lcom/changdu/component/webviewcache/lru/g;->a()Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_a

    .line 287
    .line 288
    goto/16 :goto_b

    .line 289
    .line 290
    :cond_a
    :try_start_5
    iget-object v1, p0, Lcom/changdu/component/webviewcache/internal/c;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 291
    .line 292
    invoke-virtual {v1, v0}, Lcom/changdu/component/webviewcache/lru/g;->a(Ljava/lang/String;)Lcom/changdu/component/webviewcache/lru/d;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    if-nez v1, :cond_b

    .line 297
    .line 298
    goto/16 :goto_b

    .line 299
    .line 300
    :cond_b
    invoke-virtual {v1, v3}, Lcom/changdu/component/webviewcache/lru/d;->a(I)Ljava/io/OutputStream;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-static {v3}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/OutputStream;)Lokio/Sink;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-static {v3}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->getResponseCode()I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-interface {v3, v4}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    const/16 v5, 0xa

    .line 325
    .line 326
    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-interface {v3, v4}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    int-to-long v6, v6

    .line 349
    invoke-interface {v3, v6, v7}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwww(J)Lokio/BufferedSink;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    invoke-interface {v6, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 354
    .line 355
    .line 356
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 365
    .line 366
    .line 367
    move-result v6

    .line 368
    if-eqz v6, :cond_c

    .line 369
    .line 370
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    check-cast v6, Ljava/util/Map$Entry;

    .line 375
    .line 376
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    check-cast v7, Ljava/lang/String;

    .line 381
    .line 382
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    check-cast v6, Ljava/lang/String;

    .line 387
    .line 388
    invoke-interface {v3, v7}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    const-string v8, ": "

    .line 393
    .line 394
    invoke-interface {v7, v8}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    invoke-interface {v7, v6}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    invoke-interface {v6, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 403
    .line 404
    .line 405
    goto :goto_8

    .line 406
    :catch_2
    move-exception v0

    .line 407
    goto :goto_9

    .line 408
    :catch_3
    move-exception v1

    .line 409
    goto :goto_a

    .line 410
    :cond_c
    invoke-interface {v3}, Lokio/BufferedSink;->flush()V

    .line 411
    .line 412
    .line 413
    invoke-interface {v3}, Lokio/Sink;->close()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v2}, Lcom/changdu/component/webviewcache/lru/d;->a(I)Ljava/io/OutputStream;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-static {v2}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/OutputStream;)Lokio/Sink;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-static {v2}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebResourceResponse;->getOriginBytes()[B

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    if-eqz v3, :cond_d

    .line 433
    .line 434
    array-length v4, v3

    .line 435
    if-lez v4, :cond_d

    .line 436
    .line 437
    invoke-interface {v2, v3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 438
    .line 439
    .line 440
    invoke-interface {v2}, Lokio/BufferedSink;->flush()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1}, Lcom/changdu/component/webviewcache/lru/d;->a()V

    .line 444
    .line 445
    .line 446
    :cond_d
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 447
    .line 448
    .line 449
    goto :goto_b

    .line 450
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    goto :goto_b

    .line 454
    :goto_a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    :try_start_6
    iget-object v1, p0, Lcom/changdu/component/webviewcache/internal/c;->a:Lcom/changdu/component/webviewcache/lru/g;

    .line 458
    .line 459
    invoke-virtual {v1, v0}, Lcom/changdu/component/webviewcache/lru/g;->d(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 460
    .line 461
    .line 462
    :catch_4
    :cond_e
    :goto_b
    return-object p1

    .line 463
    :goto_c
    monitor-exit p0

    .line 464
    throw p1
.end method
