.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lokhttp3/internal/http/CallServerInterceptor;",
        "Lokhttp3/Interceptor;",
        "",
        "forWebSocket",
        "<init>",
        "(Z)V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "",
        "code",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(I)Z",
        "Z",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z
    .locals 2

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/16 v0, 0x66

    .line 8
    .line 9
    if-gt v0, p1, :cond_1

    .line 10
    .line 11
    const/16 v0, 0xc8

    .line 12
    .line 13
    if-ge p1, v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 13
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Connection"

    .line 2
    .line 3
    const-string v1, "close"

    .line 4
    .line 5
    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    .line 6
    .line 7
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/connection/Exchange;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->Wwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/RequestBody;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x1

    .line 25
    const/4 v8, 0x0

    .line 26
    :try_start_0
    invoke-virtual {v2, p1}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwww(Lokhttp3/Request;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-static {v9}, Lokhttp3/internal/http/HttpMethod;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-eqz v9, :cond_3

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    const-string v9, "100-continue"

    .line 42
    .line 43
    const-string v10, "Expect"

    .line 44
    .line 45
    invoke-virtual {p1, v10}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-static {v9, v10, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_0

    .line 54
    .line 55
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v7}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwww(Z)Lokhttp3/Response$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :try_start_1
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwww()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    .line 64
    .line 65
    move v10, v6

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v3

    .line 68
    move v10, v7

    .line 69
    goto :goto_2

    .line 70
    :catch_1
    move-exception v3

    .line 71
    move v10, v7

    .line 72
    move-object v9, v8

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    move v10, v7

    .line 75
    move-object v9, v8

    .line 76
    :goto_0
    if-nez v9, :cond_2

    .line 77
    .line 78
    :try_start_2
    invoke-virtual {v3}, Lokhttp3/RequestBody;->isDuplex()Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-eqz v11, :cond_1

    .line 83
    .line 84
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1, v7}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Z)Lokio/Sink;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    invoke-static {v11}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    invoke-virtual {v3, v11}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_2
    move-exception v3

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    invoke-virtual {v2, p1, v6}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Z)Lokio/Sink;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-static {v11}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-virtual {v3, v11}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v11}, Lokio/Sink;->close()V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwww()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/connection/RealConnection;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    invoke-virtual {v11}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwww()Z

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-nez v11, :cond_4

    .line 128
    .line 129
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwww()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwww()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 134
    .line 135
    .line 136
    move v10, v7

    .line 137
    move-object v9, v8

    .line 138
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 139
    .line 140
    :try_start_4
    invoke-virtual {v3}, Lokhttp3/RequestBody;->isDuplex()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_6

    .line 145
    .line 146
    :cond_5
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 147
    .line 148
    .line 149
    :cond_6
    move-object v3, v8

    .line 150
    goto :goto_3

    .line 151
    :goto_2
    instance-of v11, v3, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 152
    .line 153
    if-nez v11, :cond_13

    .line 154
    .line 155
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    if-eqz v11, :cond_12

    .line 160
    .line 161
    :goto_3
    if-nez v9, :cond_7

    .line 162
    .line 163
    :try_start_5
    invoke-virtual {v2, v6}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwww(Z)Lokhttp3/Response$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    if-eqz v10, :cond_7

    .line 168
    .line 169
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwww()V

    .line 170
    .line 171
    .line 172
    move v10, v6

    .line 173
    goto :goto_4

    .line 174
    :catch_3
    move-exception p1

    .line 175
    goto/16 :goto_8

    .line 176
    .line 177
    :cond_7
    :goto_4
    invoke-virtual {v9, p1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/connection/RealConnection;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    invoke-virtual {v11}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwww()Lokhttp3/Handshake;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    invoke-virtual {v9, v11}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-virtual {v9, v4, v5}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwww(J)Lokhttp3/Response$Builder;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 198
    .line 199
    .line 200
    move-result-wide v11

    .line 201
    invoke-virtual {v9, v11, v12}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwww(J)Lokhttp3/Response$Builder;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    invoke-virtual {v9}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-virtual {v9}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    invoke-virtual {p0, v11}, Lokhttp3/internal/http/CallServerInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    if-eqz v12, :cond_9

    .line 218
    .line 219
    invoke-virtual {v2, v6}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwww(Z)Lokhttp3/Response$Builder;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    if-eqz v10, :cond_8

    .line 224
    .line 225
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwww()V

    .line 226
    .line 227
    .line 228
    :cond_8
    invoke-virtual {v6, p1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/connection/RealConnection;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwww()Lokhttp3/Handshake;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {p1, v6}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p1, v4, v5}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwww(J)Lokhttp3/Response$Builder;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 249
    .line 250
    .line 251
    move-result-wide v4

    .line 252
    invoke-virtual {p1, v4, v5}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwww(J)Lokhttp3/Response$Builder;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    invoke-virtual {v9}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 261
    .line 262
    .line 263
    move-result v11

    .line 264
    :cond_9
    invoke-virtual {v2, v9}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwww(Lokhttp3/Response;)V

    .line 265
    .line 266
    .line 267
    iget-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 268
    .line 269
    if-eqz p1, :cond_a

    .line 270
    .line 271
    const/16 p1, 0x65

    .line 272
    .line 273
    if-ne v11, p1, :cond_a

    .line 274
    .line 275
    invoke-virtual {v9}, Lokhttp3/Response;->Kkkkkkkkkkkk()Lokhttp3/Response$Builder;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    sget-object v4, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/ResponseBody;

    .line 280
    .line 281
    invoke-virtual {p1, v4}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    goto :goto_5

    .line 290
    :cond_a
    invoke-virtual {v9}, Lokhttp3/Response;->Kkkkkkkkkkkk()Lokhttp3/Response$Builder;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {v2, v9}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-virtual {p1, v4}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    :goto_5
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkk()Lokhttp3/Request;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-virtual {v4, v0}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-static {v1, v4, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-nez v4, :cond_b

    .line 319
    .line 320
    const/4 v4, 0x2

    .line 321
    invoke-static {p1, v0, v8, v4, v8}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkk(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v1, v0, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_c

    .line 330
    .line 331
    :cond_b
    invoke-virtual {v2}, Lokhttp3/internal/connection/Exchange;->Wwwwwwwwwwwwwwwwwwww()V

    .line 332
    .line 333
    .line 334
    :cond_c
    const/16 v0, 0xcc

    .line 335
    .line 336
    if-eq v11, v0, :cond_d

    .line 337
    .line 338
    const/16 v0, 0xcd

    .line 339
    .line 340
    if-ne v11, v0, :cond_10

    .line 341
    .line 342
    :cond_d
    invoke-virtual {p1}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    if-nez v0, :cond_e

    .line 347
    .line 348
    const-wide/16 v0, -0x1

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_e
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 352
    .line 353
    .line 354
    move-result-wide v0

    .line 355
    :goto_6
    const-wide/16 v4, 0x0

    .line 356
    .line 357
    cmp-long v0, v0, v4

    .line 358
    .line 359
    if-lez v0, :cond_10

    .line 360
    .line 361
    new-instance v0, Ljava/net/ProtocolException;

    .line 362
    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    const-string v2, "HTTP "

    .line 369
    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v2, " had non-zero Content-Length: "

    .line 377
    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    if-nez p1, :cond_f

    .line 386
    .line 387
    goto :goto_7

    .line 388
    :cond_f
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    .line 389
    .line 390
    .line 391
    move-result-wide v4

    .line 392
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    :goto_7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 407
    :cond_10
    return-object p1

    .line 408
    :goto_8
    if-eqz v3, :cond_11

    .line 409
    .line 410
    invoke-static {v3, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 411
    .line 412
    .line 413
    throw v3

    .line 414
    :cond_11
    throw p1

    .line 415
    :cond_12
    throw v3

    .line 416
    :cond_13
    throw v3
.end method
