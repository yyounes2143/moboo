.class Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1;
.super Ljava/lang/Thread;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->reportDexLoadingIssue(Landroid/content/Context;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "data"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const-string v3, "0"

    .line 8
    .line 9
    const-string v4, "attempt"

    .line 10
    .line 11
    const-string v5, "UTF-8"

    .line 12
    .line 13
    invoke-super {v0}, Ljava/lang/Thread;->run()V

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    :try_start_0
    new-instance v7, Ljava/net/URL;

    .line 18
    .line 19
    const-string v8, "https://www.facebook.com/adnw_logging/"

    .line 20
    .line 21
    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 29
    .line 30
    :try_start_1
    const-string v8, "POST"

    .line 31
    .line 32
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v8, "Content-Type"

    .line 36
    .line 37
    const-string v9, "application/x-www-form-urlencoded;charset=UTF-8"

    .line 38
    .line 39
    invoke-virtual {v7, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v8, "Accept"

    .line 43
    .line 44
    const-string v9, "application/json"

    .line 45
    .line 46
    invoke-virtual {v7, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v8, "Accept-Charset"

    .line 50
    .line 51
    invoke-virtual {v7, v8, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v8, "user-agent"

    .line 55
    .line 56
    const-string v9, "[FBAN/AudienceNetworkForAndroid;FBSN/Android]"

    .line 57
    .line 58
    invoke-virtual {v7, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v8, 0x1

    .line 62
    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    new-instance v9, Lorg/json/JSONObject;

    .line 80
    .line 81
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    iget-object v10, v0, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {v10, v9, v8}, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v10, Lorg/json/JSONObject;

    .line 93
    .line 94
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v11, "subtype"

    .line 98
    .line 99
    const-string v12, "generic"

    .line 100
    .line 101
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    const-string v11, "subtype_code"

    .line 105
    .line 106
    const-string v12, "1320"

    .line 107
    .line 108
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    const-string v11, "caught_exception"

    .line 112
    .line 113
    const-string v12, "1"

    .line 114
    .line 115
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    const-string v11, "stacktrace"

    .line 119
    .line 120
    iget-object v12, v0, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    new-instance v11, Lorg/json/JSONObject;

    .line 126
    .line 127
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v12, "id"

    .line 131
    .line 132
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    const-string v12, "type"

    .line 144
    .line 145
    const-string v13, "debug"

    .line 146
    .line 147
    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    const-string v12, "session_time"

    .line 151
    .line 152
    new-instance v13, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    .line 162
    .line 163
    move-result-wide v14

    .line 164
    const-wide/16 v16, 0x3e8

    .line 165
    .line 166
    div-long v14, v14, v16

    .line 167
    .line 168
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    .line 177
    .line 178
    const-string v12, "time"

    .line 179
    .line 180
    new-instance v13, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 189
    .line 190
    .line 191
    move-result-wide v14

    .line 192
    div-long v14, v14, v16

    .line 193
    .line 194
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v11, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    .line 203
    .line 204
    const-string v2, "session_id"

    .line 205
    .line 206
    invoke-virtual {v11, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v11, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v11, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    .line 214
    .line 215
    iget-object v2, v0, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 216
    .line 217
    invoke-static {v2, v10, v8}, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    new-instance v2, Lorg/json/JSONArray;

    .line 221
    .line 222
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 226
    .line 227
    .line 228
    new-instance v3, Lorg/json/JSONObject;

    .line 229
    .line 230
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    .line 235
    .line 236
    const-string v1, "events"

    .line 237
    .line 238
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    new-instance v2, Ljava/io/DataOutputStream;

    .line 246
    .line 247
    invoke-virtual {v7}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    .line 253
    .line 254
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v4, "payload="

    .line 260
    .line 261
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 279
    .line 280
    .line 281
    const/16 v1, 0x4000

    .line 282
    .line 283
    new-array v1, v1, [B

    .line 284
    .line 285
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 286
    .line 287
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    :goto_0
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    const/4 v5, -0x1

    .line 299
    if-eq v4, v5, :cond_0

    .line 300
    .line 301
    const/4 v5, 0x0

    .line 302
    invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 303
    .line 304
    .line 305
    goto :goto_0

    .line 306
    :catchall_0
    move-object v1, v6

    .line 307
    move-object v6, v2

    .line 308
    goto :goto_2

    .line 309
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    .line 311
    .line 312
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 313
    .line 314
    .line 315
    :catch_0
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 316
    .line 317
    .line 318
    :catch_1
    :goto_1
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 319
    .line 320
    .line 321
    goto :goto_3

    .line 322
    :catchall_1
    move-object v1, v6

    .line 323
    goto :goto_2

    .line 324
    :catchall_2
    move-object v1, v6

    .line 325
    move-object v7, v1

    .line 326
    :goto_2
    if-eqz v6, :cond_1

    .line 327
    .line 328
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 329
    .line 330
    .line 331
    :catch_2
    :cond_1
    if-eqz v1, :cond_2

    .line 332
    .line 333
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 334
    .line 335
    .line 336
    :catch_3
    :cond_2
    if-eqz v7, :cond_3

    .line 337
    .line 338
    goto :goto_1

    .line 339
    :cond_3
    :goto_3
    return-void
.end method
