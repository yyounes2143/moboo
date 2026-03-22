.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001d\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lokhttp3/internal/http/BridgeInterceptor;",
        "Lokhttp3/Interceptor;",
        "Lokhttp3/CookieJar;",
        "cookieJar",
        "<init>",
        "(Lokhttp3/CookieJar;)V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "",
        "Lokhttp3/Cookie;",
        "cookies",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/util/List;)Ljava/lang/String;",
        "Lokhttp3/CookieJar;",
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
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/CookieJar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 0
    .param p1    # Lokhttp3/CookieJar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/CookieJar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    add-int/lit8 v3, v1, 0x1

    .line 24
    .line 25
    if-gez v1, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 28
    .line 29
    .line 30
    :cond_0
    check-cast v2, Lokhttp3/Cookie;

    .line 31
    .line 32
    if-lez v1, :cond_1

    .line 33
    .line 34
    const-string v1, "; "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v2}, Lokhttp3/Cookie;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x3d

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lokhttp3/Cookie;->Wwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move v1, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 12
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
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/RequestBody;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-wide/16 v3, -0x1

    .line 14
    .line 15
    const-string v5, "Content-Type"

    .line 16
    .line 17
    const-string v6, "Content-Length"

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    invoke-virtual {v7}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v1, v5, v7}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    cmp-long v2, v7, v3

    .line 39
    .line 40
    const-string v9, "Transfer-Encoding"

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v6, v2}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v9}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string v2, "chunked"

    .line 56
    .line 57
    invoke-virtual {v1, v9, v2}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v6}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    const-string v2, "Host"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x1

    .line 71
    const/4 v10, 0x0

    .line 72
    if-nez v7, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-static {v7, v8, v9, v10}, Lokhttp3/internal/Util;->Kkkkkkkkkkkk(Lokhttp3/HttpUrl;ZILjava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v1, v2, v7}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 83
    .line 84
    .line 85
    :cond_3
    const-string v2, "Connection"

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    if-nez v7, :cond_4

    .line 92
    .line 93
    const-string v7, "Keep-Alive"

    .line 94
    .line 95
    invoke-virtual {v1, v2, v7}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 96
    .line 97
    .line 98
    :cond_4
    const-string v2, "Accept-Encoding"

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    const-string v11, "gzip"

    .line 105
    .line 106
    if-nez v7, :cond_5

    .line 107
    .line 108
    const-string v7, "Range"

    .line 109
    .line 110
    invoke-virtual {v0, v7}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    if-nez v7, :cond_5

    .line 115
    .line 116
    invoke-virtual {v1, v2, v11}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 117
    .line 118
    .line 119
    move v8, v9

    .line 120
    :cond_5
    iget-object v2, p0, Lokhttp3/internal/http/BridgeInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/CookieJar;

    .line 121
    .line 122
    invoke-virtual {v0}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-interface {v2, v7}, Lokhttp3/CookieJar;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    move-object v7, v2

    .line 131
    check-cast v7, Ljava/util/Collection;

    .line 132
    .line 133
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-nez v7, :cond_6

    .line 138
    .line 139
    const-string v7, "Cookie"

    .line 140
    .line 141
    invoke-virtual {p0, v2}, Lokhttp3/internal/http/BridgeInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v1, v7, v2}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 146
    .line 147
    .line 148
    :cond_6
    const-string v2, "User-Agent"

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    if-nez v7, :cond_7

    .line 155
    .line 156
    const-string v7, "okhttp/4.11.0"

    .line 157
    .line 158
    invoke-virtual {v1, v2, v7}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 159
    .line 160
    .line 161
    :cond_7
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iget-object v1, p0, Lokhttp3/internal/http/BridgeInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/CookieJar;

    .line 170
    .line 171
    invoke-virtual {v0}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkk()Lokhttp3/Headers;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-static {v1, v2, v7}, Lokhttp3/internal/http/HttpHeaders;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkk()Lokhttp3/Response$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-eqz v8, :cond_8

    .line 191
    .line 192
    const-string v1, "Content-Encoding"

    .line 193
    .line 194
    const/4 v2, 0x2

    .line 195
    invoke-static {p1, v1, v10, v2, v10}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkk(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-static {v11, v7, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-eqz v7, :cond_8

    .line 204
    .line 205
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Z

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    if-eqz v7, :cond_8

    .line 210
    .line 211
    invoke-virtual {p1}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    if-eqz v7, :cond_8

    .line 216
    .line 217
    new-instance v8, Lokio/GzipSource;

    .line 218
    .line 219
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-direct {v8, v7}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkk()Lokhttp3/Headers;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-virtual {v7}, Lokhttp3/Headers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v7, v1}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v1, v6}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 247
    .line 248
    .line 249
    invoke-static {p1, v5, v10, v2, v10}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkk(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    .line 254
    .line 255
    invoke-static {v8}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)Lokio/BufferedSource;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-direct {v1, p1, v3, v4, v2}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 263
    .line 264
    .line 265
    :cond_8
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    return-object p1
.end method
