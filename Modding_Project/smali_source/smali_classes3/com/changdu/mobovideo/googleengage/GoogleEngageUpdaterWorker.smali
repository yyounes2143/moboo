.class public final Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;
.super Landroidx/work/CoroutineWorker;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\t\u0010\nJ\"\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0082@\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "Landroidx/work/ListenableWorker$Result;",
        "doWork",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/changdu/mobovideo/googleengage/EngageServiceManager;",
        "service",
        "",
        "type",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/googleengage/EngageServiceManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/content/Context;",
        "Companion",
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
        "SMAP\nGoogleEngageUpdaterWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleEngageUpdaterWorker.kt\ncom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 GsonUtil.kt\ncom/changdu/mobovideo/utils/GsonUtil\n*L\n1#1,140:1\n29#2:141\n39#3,8:142\n*S KotlinDebug\n*F\n+ 1 GoogleEngageUpdaterWorker.kt\ncom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker\n*L\n105#1:141\n121#1:142,8\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;->Companion:Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;Lcom/changdu/mobovideo/googleengage/EngageServiceManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/googleengage/EngageServiceManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/googleengage/EngageServiceManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/changdu/mobovideo/googleengage/EngageServiceManager;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    instance-of v1, p3, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$1;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    move-object v1, p3

    .line 7
    check-cast v1, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$1;

    .line 8
    .line 9
    iget v2, v1, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$1;->label:I

    .line 10
    .line 11
    const/high16 v3, -0x80000000

    .line 12
    .line 13
    and-int v4, v2, v3

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    sub-int/2addr v2, v3

    .line 18
    iput v2, v1, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$1;->label:I

    .line 19
    .line 20
    :goto_0
    move-object v7, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v1, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p3}, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$1;-><init>(Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    iget-object p3, v7, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget v2, v7, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$1;->label:I

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-ne v2, v0, :cond_1

    .line 40
    .line 41
    iget-object p1, v7, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;

    .line 44
    .line 45
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p3, Lcom/changdu/mobovideo/utils/AppBizDataManager;->INSTANCE:Lcom/changdu/mobovideo/utils/AppBizDataManager;

    .line 62
    .line 63
    invoke-virtual {p3}, Lcom/changdu/mobovideo/utils/AppBizDataManager;->Wwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/utils/ALocalCache;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    if-eqz p3, :cond_3

    .line 68
    .line 69
    const-string v2, "userRequestCache"

    .line 70
    .line 71
    invoke-virtual {p3, v2}, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    move-object p3, v8

    .line 77
    :goto_2
    if-eqz p3, :cond_a

    .line 78
    .line 79
    sget-object v2, Lcom/changdu/mobovideo/utils/GsonUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/GsonUtil;

    .line 80
    .line 81
    const-class v3, Lcom/changdu/mobovideo/googleengage/UserRequestCache;

    .line 82
    .line 83
    invoke-virtual {v2, p3, v3}, Lcom/changdu/mobovideo/utils/GsonUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    move-object v6, p3

    .line 88
    check-cast v6, Lcom/changdu/mobovideo/googleengage/UserRequestCache;

    .line 89
    .line 90
    if-eqz v6, :cond_4

    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/changdu/mobovideo/googleengage/UserRequestCache;->getBaseHost()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    move-object p3, v8

    .line 98
    :goto_3
    if-eqz p3, :cond_a

    .line 99
    .line 100
    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-eqz p3, :cond_5

    .line 105
    .line 106
    goto/16 :goto_7

    .line 107
    .line 108
    :cond_5
    invoke-virtual {v6}, Lcom/changdu/mobovideo/googleengage/UserRequestCache;->getBaseHost()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    const-string v3, "video"

    .line 121
    .line 122
    invoke-virtual {p3, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    const-string v3, "app"

    .line 127
    .line 128
    invoke-virtual {p3, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    const-string v3, "series"

    .line 133
    .line 134
    invoke-virtual {p3, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    const-string v3, "getGoogleEngageSupport"

    .line 139
    .line 140
    invoke-virtual {p3, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    const-string v3, "type"

    .line 145
    .line 146
    invoke-static {v3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    new-array v3, v0, [Lkotlin/Pair;

    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    aput-object p2, v3, v4

    .line 154
    .line 155
    invoke-static {v3}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    move-object v3, v2

    .line 160
    sget-object v2, Lcom/changdu/mobovideo/net/VideoHttpClient;->INSTANCE:Lcom/changdu/mobovideo/net/VideoHttpClient;

    .line 161
    .line 162
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    new-instance v4, Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, p2}, Lcom/changdu/mobovideo/utils/GsonUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    iput-object p1, v7, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$1;->L$0:Ljava/lang/Object;

    .line 180
    .line 181
    iput v0, v7, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$1;->label:I

    .line 182
    .line 183
    move-object v3, p3

    .line 184
    invoke-virtual/range {v2 .. v7}, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/changdu/mobovideo/googleengage/UserRequestCache;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p3

    .line 188
    if-ne p3, v1, :cond_6

    .line 189
    .line 190
    return-object v1

    .line 191
    :cond_6
    :goto_4
    check-cast p3, Lokhttp3/Response;

    .line 192
    .line 193
    if-eqz p3, :cond_a

    .line 194
    .line 195
    invoke-virtual {p3}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    if-eqz p2, :cond_a

    .line 200
    .line 201
    invoke-virtual {p3}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    const/16 v0, 0xc8

    .line 206
    .line 207
    if-ne p2, v0, :cond_a

    .line 208
    .line 209
    sget-object p2, Lcom/changdu/mobovideo/utils/GsonUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/GsonUtil;

    .line 210
    .line 211
    invoke-virtual {p3}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    if-eqz p2, :cond_7

    .line 216
    .line 217
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    goto :goto_5

    .line 222
    :cond_7
    move-object p2, v8

    .line 223
    :goto_5
    if-nez p2, :cond_8

    .line 224
    .line 225
    :catch_0
    move-object p2, v8

    .line 226
    goto :goto_6

    .line 227
    :cond_8
    :try_start_0
    new-instance p3, Lcom/google/gson/Gson;

    .line 228
    .line 229
    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    .line 230
    .line 231
    .line 232
    new-instance v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$$inlined$fromJsonStr$1;

    .line 233
    .line 234
    invoke-direct {v0}, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$invoke$$inlined$fromJsonStr$1;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p3, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_6
    check-cast p2, Lcom/changdu/mobovideo/entity/CDResponse;

    .line 246
    .line 247
    if-eqz p2, :cond_9

    .line 248
    .line 249
    invoke-virtual {p2}, Lcom/changdu/mobovideo/entity/CDResponse;->getData()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p3

    .line 253
    move-object v8, p3

    .line 254
    check-cast v8, Lcom/changdu/mobovideo/entity/GoogleEngageApiResult;

    .line 255
    .line 256
    :cond_9
    if-eqz v8, :cond_a

    .line 257
    .line 258
    iget-object p3, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 259
    .line 260
    invoke-virtual {p2}, Lcom/changdu/mobovideo/entity/CDResponse;->getData()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Lcom/changdu/mobovideo/entity/GoogleEngageApiResult;

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/changdu/mobovideo/entity/GoogleEngageApiResult;->getCpList()Ljava/util/ArrayList;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {p1, p3, v0}, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;->Wwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 271
    .line 272
    .line 273
    iget-object p3, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 274
    .line 275
    invoke-virtual {p2}, Lcom/changdu/mobovideo/entity/CDResponse;->getData()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Lcom/changdu/mobovideo/entity/GoogleEngageApiResult;

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/changdu/mobovideo/entity/GoogleEngageApiResult;->getContinueWatchingList()Ljava/util/ArrayList;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {p1, p3, v0}, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;->Wwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 286
    .line 287
    .line 288
    iget-object p3, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 289
    .line 290
    invoke-virtual {p2}, Lcom/changdu/mobovideo/entity/CDResponse;->getData()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    check-cast p2, Lcom/changdu/mobovideo/entity/GoogleEngageApiResult;

    .line 295
    .line 296
    invoke-virtual {p2}, Lcom/changdu/mobovideo/entity/GoogleEngageApiResult;->getRecoList()Ljava/util/ArrayList;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    invoke-virtual {p1, p3, p2}, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;->Wwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 301
    .line 302
    .line 303
    :cond_a
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 304
    .line 305
    return-object p1
.end method

.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;-><init>(Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_4

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    iget-object v2, v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;

    .line 58
    .line 59
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :try_start_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 67
    .line 68
    .line 69
    new-instance v2, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 72
    .line 73
    invoke-direct {v2, p1}, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    iput v4, v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;->label:I

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;->Wwwwwwwwwwwwwwwwwwwwwww(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v4, "type"

    .line 100
    .line 101
    invoke-virtual {p1, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const/4 v4, 0x0

    .line 106
    iput-object v4, v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    iput v3, v0, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker$doWork$1;->label:I

    .line 109
    .line 110
    invoke-virtual {p0, v2, p1, v0}, Lcom/changdu/mobovideo/googleengage/GoogleEngageUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/googleengage/EngageServiceManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-ne p1, v1, :cond_5

    .line 115
    .line 116
    :goto_2
    return-object v1

    .line 117
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 118
    .line 119
    .line 120
    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    return-object p1

    .line 122
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    return-object p1
.end method
