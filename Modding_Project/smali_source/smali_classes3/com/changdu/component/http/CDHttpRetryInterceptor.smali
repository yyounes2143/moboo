.class public final Lcom/changdu/component/http/CDHttpRetryInterceptor;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/component/http/CDHttpRetryInterceptor$Companion;,
        Lcom/changdu/component/http/CDHttpRetryInterceptor$NeedRetry;,
        Lcom/changdu/component/http/CDHttpRetryInterceptor$UrlHostReplaceTagName;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00072\u00020\u0001:\u0003\u0007\u0008\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/changdu/component/http/CDHttpRetryInterceptor;",
        "Lokhttp3/Interceptor;",
        "()V",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "Companion",
        "NeedRetry",
        "UrlHostReplaceTagName",
        "http_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/changdu/component/http/CDHttpRetryInterceptor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/changdu/component/http/CDHttpRetryInterceptor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/changdu/component/http/CDHttpRetryInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/changdu/component/http/CDHttpRetryInterceptor;->Companion:Lcom/changdu/component/http/CDHttpRetryInterceptor$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 10
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
    const-class v1, Lretrofit2/Invocation;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lretrofit2/Invocation;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lretrofit2/Invocation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    const-class v4, Lcom/changdu/component/http/CDHttpRetryInterceptor$UrlHostReplaceTagName;

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/changdu/component/http/CDHttpRetryInterceptor$UrlHostReplaceTagName;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v3, v2

    .line 32
    :goto_0
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-interface {v3}, Lcom/changdu/component/http/CDHttpRetryInterceptor$UrlHostReplaceTagName;->hostTagName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    :cond_1
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lretrofit2/Invocation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const-class v3, Lcom/changdu/component/http/CDHttpRetryInterceptor$NeedRetry;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/changdu/component/http/CDHttpRetryInterceptor$NeedRetry;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move-object v1, v2

    .line 55
    :goto_1
    const/4 v3, 0x0

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-interface {v1}, Lcom/changdu/component/http/CDHttpRetryInterceptor$NeedRetry;->needRetry()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v4, v3

    .line 64
    :goto_2
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-interface {v1}, Lcom/changdu/component/http/CDHttpRetryInterceptor$NeedRetry;->retryCount()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/4 v5, 0x1

    .line 72
    :goto_3
    if-eqz v1, :cond_5

    .line 73
    .line 74
    invoke-interface {v1}, Lcom/changdu/component/http/CDHttpRetryInterceptor$NeedRetry;->retryDelayInMillis()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_4

    .line 79
    :cond_5
    const/16 v1, 0x7d0

    .line 80
    .line 81
    :goto_4
    :try_start_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response;

    .line 82
    .line 83
    .line 84
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    move-object v7, v6

    .line 86
    move-object v6, v2

    .line 87
    goto :goto_5

    .line 88
    :catch_0
    move-exception v6

    .line 89
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    move-object v7, v2

    .line 93
    :goto_5
    if-nez v6, :cond_6

    .line 94
    .line 95
    if-eqz v7, :cond_6

    .line 96
    .line 97
    invoke-virtual {v7}, Lokhttp3/Response;->Kkkkkkkkkkkkkkk()Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-nez v8, :cond_9

    .line 102
    .line 103
    :cond_6
    if-eqz v4, :cond_9

    .line 104
    .line 105
    :goto_6
    if-nez v6, :cond_7

    .line 106
    .line 107
    if-eqz v7, :cond_7

    .line 108
    .line 109
    invoke-virtual {v7}, Lokhttp3/Response;->Kkkkkkkkkkkkkkk()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_9

    .line 114
    .line 115
    :cond_7
    if-ge v3, v5, :cond_9

    .line 116
    .line 117
    int-to-long v8, v1

    .line 118
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    if-eqz v7, :cond_8

    .line 124
    .line 125
    :try_start_1
    invoke-virtual {v7}, Lokhttp3/Response;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .line 127
    .line 128
    goto :goto_7

    .line 129
    :catch_1
    move-exception v4

    .line 130
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    goto :goto_7

    .line 134
    :catch_2
    move-exception v4

    .line 135
    move-object v6, v4

    .line 136
    goto :goto_8

    .line 137
    :cond_8
    :goto_7
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response;

    .line 138
    .line 139
    .line 140
    move-result-object v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    move-object v6, v2

    .line 142
    goto :goto_6

    .line 143
    :goto_8
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_9
    if-nez v6, :cond_a

    .line 148
    .line 149
    if-eqz v7, :cond_a

    .line 150
    .line 151
    invoke-virtual {v7}, Lokhttp3/Response;->Kkkkkkkkkkkkkkk()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_d

    .line 156
    .line 157
    :cond_a
    invoke-virtual {v0}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    sget-object v3, Lcom/changdu/component/http/HttpRequest;->Companion:Lcom/changdu/component/http/HttpRequest$Companion;

    .line 166
    .line 167
    invoke-virtual {v3, v1}, Lcom/changdu/component/http/HttpRequest$Companion;->getRetryHost(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    if-eqz v3, :cond_d

    .line 172
    .line 173
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_b

    .line 178
    .line 179
    goto :goto_b

    .line 180
    :cond_b
    invoke-virtual {v0}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4, v3}, Lokhttp3/HttpUrl$Builder;->Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v3}, Lokhttp3/HttpUrl$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v0}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request$Builder;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwww(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string v3, "Host"

    .line 205
    .line 206
    invoke-virtual {v0, v3, v1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    if-eqz v7, :cond_c

    .line 215
    .line 216
    :try_start_3
    invoke-virtual {v7}, Lokhttp3/Response;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 217
    .line 218
    .line 219
    goto :goto_9

    .line 220
    :catch_3
    move-exception v1

    .line 221
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    .line 223
    .line 224
    goto :goto_9

    .line 225
    :catch_4
    move-exception p1

    .line 226
    move-object v2, p1

    .line 227
    goto :goto_a

    .line 228
    :cond_c
    :goto_9
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response;

    .line 229
    .line 230
    .line 231
    move-result-object v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 232
    goto :goto_c

    .line 233
    :goto_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    .line 235
    .line 236
    goto :goto_c

    .line 237
    :cond_d
    :goto_b
    move-object v2, v6

    .line 238
    :goto_c
    if-nez v2, :cond_f

    .line 239
    .line 240
    if-eqz v7, :cond_e

    .line 241
    .line 242
    return-object v7

    .line 243
    :cond_e
    new-instance p1, Ljava/io/IOException;

    .line 244
    .line 245
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 246
    .line 247
    .line 248
    throw p1

    .line 249
    :cond_f
    throw v2
.end method
