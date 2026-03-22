.class public final Lcom/changdu/mobovideo/picture/TokenSyncBridge;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ \u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/changdu/mobovideo/picture/TokenSyncBridge;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "reason",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Ljava/lang/String;)I",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/changdu/mobovideo/googleengage/UserRequestCache;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lcom/changdu/mobovideo/googleengage/UserRequestCache;",
        "body",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;)I",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTokenSyncBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenSyncBridge.kt\ncom/changdu/mobovideo/picture/TokenSyncBridge\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,152:1\n29#2:153\n*S KotlinDebug\n*F\n+ 1 TokenSyncBridge.kt\ncom/changdu/mobovideo/picture/TokenSyncBridge\n*L\n64#1:153\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/mobovideo/picture/TokenSyncBridge;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/picture/TokenSyncBridge;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/mobovideo/picture/TokenSyncBridge;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/mobovideo/picture/TokenSyncBridge;->INSTANCE:Lcom/changdu/mobovideo/picture/TokenSyncBridge;

    .line 7
    .line 8
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

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingTokenBlocking$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingTokenBlocking$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/picture/TokenSyncBridge;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/changdu/mobovideo/picture/TokenSyncBridge;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p2, 0x1

    .line 3
    instance-of v0, p3, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p3

    .line 8
    check-cast v0, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;

    .line 9
    .line 10
    iget v1, v0, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;->label:I

    .line 11
    .line 12
    const/high16 v2, -0x80000000

    .line 13
    .line 14
    and-int v3, v1, v2

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    sub-int/2addr v1, v2

    .line 19
    iput v1, v0, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;->label:I

    .line 20
    .line 21
    :goto_0
    move-object v6, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v0, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p3}, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;-><init>(Lcom/changdu/mobovideo/picture/TokenSyncBridge;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    iget-object p3, v6, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget v1, v6, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;->label:I

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    if-ne v1, p2, :cond_1

    .line 41
    .line 42
    iget-object v0, v6, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;->L$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/changdu/mobovideo/googleengage/UserRequestCache;

    .line 45
    .line 46
    iget-object v1, v6, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object p3, Lcom/changdu/mobovideo/picture/TokenSyncStore;->INSTANCE:Lcom/changdu/mobovideo/picture/TokenSyncStore;

    .line 67
    .line 68
    invoke-virtual {p3}, Lcom/changdu/mobovideo/picture/TokenSyncStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    if-eqz p3, :cond_e

    .line 73
    .line 74
    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    goto/16 :goto_7

    .line 81
    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/changdu/mobovideo/picture/TokenSyncBridge;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/googleengage/UserRequestCache;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    if-eqz v5, :cond_d

    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/changdu/mobovideo/googleengage/UserRequestCache;->getBaseHost()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_d

    .line 97
    .line 98
    invoke-virtual {v5}, Lcom/changdu/mobovideo/googleengage/UserRequestCache;->getUserId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_d

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/changdu/mobovideo/googleengage/UserRequestCache;->getUserToken()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :cond_4
    invoke-virtual {v5}, Lcom/changdu/mobovideo/googleengage/UserRequestCache;->getTokenExpireTs()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    const-wide/16 v3, 0x0

    .line 125
    .line 126
    cmp-long v1, v1, v3

    .line 127
    .line 128
    if-lez v1, :cond_5

    .line 129
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide v1

    .line 134
    const/16 v3, 0x3e8

    .line 135
    .line 136
    int-to-long v3, v3

    .line 137
    div-long/2addr v1, v3

    .line 138
    invoke-virtual {v5}, Lcom/changdu/mobovideo/googleengage/UserRequestCache;->getTokenExpireTs()J

    .line 139
    .line 140
    .line 141
    move-result-wide v3

    .line 142
    const-wide/16 v8, 0x1e

    .line 143
    .line 144
    sub-long/2addr v3, v8

    .line 145
    cmp-long v1, v1, v3

    .line 146
    .line 147
    if-ltz v1, :cond_5

    .line 148
    .line 149
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1

    .line 154
    :cond_5
    :try_start_1
    invoke-virtual {v5}, Lcom/changdu/mobovideo/googleengage/UserRequestCache;->getBaseHost()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    const-string v2, "account"

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string v2, "app"

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const-string v2, "device"

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const-string v2, "uploadDeviceToken"

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    sget-object v1, Lcom/changdu/mobovideo/net/VideoHttpClient;->INSTANCE:Lcom/changdu/mobovideo/net/VideoHttpClient;

    .line 199
    .line 200
    new-instance v3, Ljava/util/HashMap;

    .line 201
    .line 202
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 203
    .line 204
    .line 205
    sget-object v4, Lcom/changdu/mobovideo/utils/GsonUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/GsonUtil;

    .line 206
    .line 207
    const-string v8, "deviceToken"

    .line 208
    .line 209
    invoke-static {v8, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    new-array v9, p2, [Lkotlin/Pair;

    .line 214
    .line 215
    aput-object v8, v9, p1

    .line 216
    .line 217
    invoke-static {v9}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    invoke-virtual {v4, v8}, Lcom/changdu/mobovideo/utils/GsonUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    iput-object p3, v6, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;->L$0:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v5, v6, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;->L$1:Ljava/lang/Object;

    .line 228
    .line 229
    iput p2, v6, Lcom/changdu/mobovideo/picture/TokenSyncBridge$uploadPendingToken$1;->label:I

    .line 230
    .line 231
    invoke-virtual/range {v1 .. v6}, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/changdu/mobovideo/googleengage/UserRequestCache;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    if-ne v1, v0, :cond_6

    .line 236
    .line 237
    return-object v0

    .line 238
    :cond_6
    move-object v0, v1

    .line 239
    move-object v1, p3

    .line 240
    move-object p3, v0

    .line 241
    move-object v0, v5

    .line 242
    :goto_2
    check-cast p3, Lokhttp3/Response;

    .line 243
    .line 244
    if-nez p3, :cond_7

    .line 245
    .line 246
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    return-object p1

    .line 251
    :cond_7
    invoke-virtual {p3}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    if-eqz v2, :cond_8

    .line 256
    .line 257
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    goto :goto_3

    .line 262
    :cond_8
    const/4 v2, 0x0

    .line 263
    :goto_3
    if-nez v2, :cond_9

    .line 264
    .line 265
    const-string v2, ""

    .line 266
    .line 267
    :cond_9
    invoke-virtual {p0, v2}, Lcom/changdu/mobovideo/picture/TokenSyncBridge;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    invoke-virtual {p3}, Lokhttp3/Response;->Kkkkkkkkkkkkkkk()Z

    .line 272
    .line 273
    .line 274
    move-result p3

    .line 275
    if-eqz p3, :cond_a

    .line 276
    .line 277
    const/16 p3, 0xc8

    .line 278
    .line 279
    if-ne v2, p3, :cond_a

    .line 280
    .line 281
    sget-object p2, Lcom/changdu/mobovideo/picture/TokenSyncStore;->INSTANCE:Lcom/changdu/mobovideo/picture/TokenSyncStore;

    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/changdu/mobovideo/googleengage/UserRequestCache;->getUserId()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p3

    .line 287
    invoke-virtual {p2, v1, p3}, Lcom/changdu/mobovideo/picture/TokenSyncStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_a
    const/16 p1, 0x1a4

    .line 292
    .line 293
    if-eq v2, p1, :cond_c

    .line 294
    .line 295
    const/16 p1, 0x1a5

    .line 296
    .line 297
    if-ne v2, p1, :cond_b

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_b
    move p1, v7

    .line 301
    goto :goto_5

    .line 302
    :cond_c
    :goto_4
    move p1, p2

    .line 303
    :goto_5
    move v7, p1

    .line 304
    :catchall_0
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    return-object p1

    .line 309
    :cond_d
    :goto_6
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    return-object p1

    .line 314
    :cond_e
    :goto_7
    const/4 p1, 0x3

    .line 315
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "code"

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    return p1

    .line 21
    :catchall_0
    return v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/googleengage/UserRequestCache;
    .locals 4

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/utils/AppBizDataManager;->INSTANCE:Lcom/changdu/mobovideo/utils/AppBizDataManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/mobovideo/utils/AppBizDataManager;->Wwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/utils/ALocalCache;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "userRequestCache"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_2
    :try_start_0
    sget-object v2, Lcom/changdu/mobovideo/utils/GsonUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/GsonUtil;

    .line 30
    .line 31
    const-class v3, Lcom/changdu/mobovideo/googleengage/UserRequestCache;

    .line 32
    .line 33
    invoke-virtual {v2, v0, v3}, Lcom/changdu/mobovideo/utils/GsonUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/changdu/mobovideo/googleengage/UserRequestCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    return-object v0

    .line 40
    :catchall_0
    return-object v1
.end method
