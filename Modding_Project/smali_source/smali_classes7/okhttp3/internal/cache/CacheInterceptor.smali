.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/CacheInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lokhttp3/internal/cache/CacheInterceptor;",
        "Lokhttp3/Interceptor;",
        "Lokhttp3/Cache;",
        "cache",
        "<init>",
        "(Lokhttp3/Cache;)V",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "Lokhttp3/internal/cache/CacheRequest;",
        "cacheRequest",
        "response",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;",
        "Lokhttp3/Cache;",
        "getCache$okhttp",
        "()Lokhttp3/Cache;",
        "Companion",
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


# static fields
.field public static final Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Cache;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/internal/cache/CacheInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lokhttp3/Cache;)V
    .locals 0
    .param p1    # Lokhttp3/Cache;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Cache;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p2

    .line 4
    :cond_0
    invoke-interface {p1}, Lokhttp3/internal/cache/CacheRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Sink;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p2}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Lokhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;

    .line 21
    .line 22
    invoke-direct {v2, v1, p1, v0}, Lokhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1;-><init>(Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "Content-Type"

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p2, p1, v1, v0, v1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkk(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    invoke-virtual {p2}, Lokhttp3/Response;->Kkkkkkkkkkkk()Lokhttp3/Response$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    new-instance v3, Lokhttp3/internal/http/RealResponseBody;

    .line 46
    .line 47
    invoke-static {v2}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)Lokio/BufferedSource;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v3, p1, v0, v1, v2}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v3}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
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
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Cache;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move-object v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v1, v3}, Lokhttp3/Cache;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    new-instance v5, Lokhttp3/internal/cache/CacheStrategy$Factory;

    .line 25
    .line 26
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-direct {v5, v3, v4, v6, v1}, Lokhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLokhttp3/Request;Lokhttp3/Response;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Lokhttp3/internal/cache/CacheStrategy$Factory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/cache/CacheStrategy;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lokhttp3/internal/cache/CacheStrategy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3}, Lokhttp3/internal/cache/CacheStrategy;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget-object v6, p0, Lokhttp3/internal/cache/CacheInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Cache;

    .line 46
    .line 47
    if-nez v6, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v6, v3}, Lokhttp3/Cache;->Kkkkkkkkkkkkkkkkk(Lokhttp3/internal/cache/CacheStrategy;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    instance-of v3, v0, Lokhttp3/internal/connection/RealCall;

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    move-object v3, v0

    .line 58
    check-cast v3, Lokhttp3/internal/connection/RealCall;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move-object v3, v2

    .line 62
    :goto_2
    if-nez v3, :cond_3

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall;->Wwwwwwwwwwwwwwwwwwwww()Lokhttp3/EventListener;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :goto_3
    if-nez v2, :cond_4

    .line 70
    .line 71
    sget-object v2, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/EventListener;

    .line 72
    .line 73
    :cond_4
    if-eqz v1, :cond_6

    .line 74
    .line 75
    if-nez v5, :cond_6

    .line 76
    .line 77
    invoke-virtual {v1}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-nez v3, :cond_5

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_5
    invoke-static {v3}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 85
    .line 86
    .line 87
    :cond_6
    :goto_4
    if-nez v4, :cond_7

    .line 88
    .line 89
    if-nez v5, :cond_7

    .line 90
    .line 91
    new-instance v1, Lokhttp3/Response$Builder;

    .line 92
    .line 93
    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v1, p1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwww(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const/16 v1, 0x1f8

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lokhttp3/Response$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    sget-object v1, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/ResponseBody;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-wide/16 v3, -0x1

    .line 129
    .line 130
    invoke-virtual {p1, v3, v4}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwww(J)Lokhttp3/Response$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    invoke-virtual {p1, v3, v4}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwww(J)Lokhttp3/Response$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v2, v0, p1}, Lokhttp3/EventListener;->Wwwwwwww(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 147
    .line 148
    .line 149
    return-object p1

    .line 150
    :cond_7
    if-nez v4, :cond_8

    .line 151
    .line 152
    invoke-virtual {v5}, Lokhttp3/Response;->Kkkkkkkkkkkk()Lokhttp3/Response$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    sget-object v1, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    .line 157
    .line 158
    invoke-static {v1, v5}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {v2, v0, p1}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 171
    .line 172
    .line 173
    return-object p1

    .line 174
    :cond_8
    if-eqz v5, :cond_9

    .line 175
    .line 176
    invoke-virtual {v2, v0, v5}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_9
    iget-object v3, p0, Lokhttp3/internal/cache/CacheInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Cache;

    .line 181
    .line 182
    if-eqz v3, :cond_a

    .line 183
    .line 184
    invoke-virtual {v2, v0}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;)V

    .line 185
    .line 186
    .line 187
    :cond_a
    :goto_5
    :try_start_0
    invoke-interface {p1, v4}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response;

    .line 188
    .line 189
    .line 190
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-nez p1, :cond_c

    .line 192
    .line 193
    if-eqz v1, :cond_c

    .line 194
    .line 195
    invoke-virtual {v1}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-nez v1, :cond_b

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_b
    invoke-static {v1}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 203
    .line 204
    .line 205
    :cond_c
    :goto_6
    if-eqz v5, :cond_10

    .line 206
    .line 207
    if-nez p1, :cond_d

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_d
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    const/16 v3, 0x130

    .line 215
    .line 216
    if-ne v1, v3, :cond_e

    .line 217
    .line 218
    invoke-virtual {v5}, Lokhttp3/Response;->Kkkkkkkkkkkk()Lokhttp3/Response$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    sget-object v3, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    .line 223
    .line 224
    invoke-virtual {v5}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkk()Lokhttp3/Headers;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkk()Lokhttp3/Headers;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-static {v3, v4, v6}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v1, v4}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkk()J

    .line 241
    .line 242
    .line 243
    move-result-wide v6

    .line 244
    invoke-virtual {v1, v6, v7}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwww(J)Lokhttp3/Response$Builder;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkk()J

    .line 249
    .line 250
    .line 251
    move-result-wide v6

    .line 252
    invoke-virtual {v1, v6, v7}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwww(J)Lokhttp3/Response$Builder;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-static {v3, v5}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v1, v4}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v3, p1}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v1, v3}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {p1}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Cache;

    .line 284
    .line 285
    invoke-virtual {p1}, Lokhttp3/Cache;->Kkkkkkkkkkkkkkkkkk()V

    .line 286
    .line 287
    .line 288
    iget-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Cache;

    .line 289
    .line 290
    invoke-virtual {p1, v5, v1}, Lokhttp3/Cache;->Kkkkkkkkkkkkkkkk(Lokhttp3/Response;Lokhttp3/Response;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v0, v1}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 294
    .line 295
    .line 296
    return-object v1

    .line 297
    :cond_e
    :goto_7
    invoke-virtual {v5}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    if-nez v1, :cond_f

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_f
    invoke-static {v1}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 305
    .line 306
    .line 307
    :cond_10
    :goto_8
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkk()Lokhttp3/Response$Builder;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    sget-object v3, Lokhttp3/internal/cache/CacheInterceptor;->Companion:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    .line 312
    .line 313
    invoke-static {v3, v5}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-virtual {v1, v6}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v3, p1}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {v1, p1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Cache;

    .line 334
    .line 335
    if-eqz v1, :cond_13

    .line 336
    .line 337
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_12

    .line 342
    .line 343
    sget-object v1, Lokhttp3/internal/cache/CacheStrategy;->Companion:Lokhttp3/internal/cache/CacheStrategy$Companion;

    .line 344
    .line 345
    invoke-virtual {v1, p1, v4}, Lokhttp3/internal/cache/CacheStrategy$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Response;Lokhttp3/Request;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_12

    .line 350
    .line 351
    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Cache;

    .line 352
    .line 353
    invoke-virtual {v1, p1}, Lokhttp3/Cache;->Kkkkkkkkkkkkkkkkkkkkkk(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {p0, v1, p1}, Lokhttp3/internal/cache/CacheInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    if-eqz v5, :cond_11

    .line 362
    .line 363
    invoke-virtual {v2, v0}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;)V

    .line 364
    .line 365
    .line 366
    :cond_11
    return-object p1

    .line 367
    :cond_12
    sget-object v0, Lokhttp3/internal/http/HttpMethod;->INSTANCE:Lokhttp3/internal/http/HttpMethod;

    .line 368
    .line 369
    invoke-virtual {v4}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v0, v1}, Lokhttp3/internal/http/HttpMethod;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-eqz v0, :cond_13

    .line 378
    .line 379
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Cache;

    .line 380
    .line 381
    invoke-virtual {v0, v4}, Lokhttp3/Cache;->Kkkkkkkkkkkkkkkkkkkkk(Lokhttp3/Request;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    .line 383
    .line 384
    :catch_0
    :cond_13
    return-object p1

    .line 385
    :catchall_0
    move-exception p1

    .line 386
    if-eqz v1, :cond_15

    .line 387
    .line 388
    invoke-virtual {v1}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    if-nez v0, :cond_14

    .line 393
    .line 394
    goto :goto_9

    .line 395
    :cond_14
    invoke-static {v0}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwww(Ljava/io/Closeable;)V

    .line 396
    .line 397
    .line 398
    :cond_15
    :goto_9
    throw p1
.end method
