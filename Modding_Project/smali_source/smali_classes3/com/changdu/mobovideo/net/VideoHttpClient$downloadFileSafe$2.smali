.class final Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Call;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.changdu.mobovideo.net.VideoHttpClient$downloadFileSafe$2"
    f = "VideoHttpClient.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0xf2
    }
    m = "invokeSuspend"
    n = {
        "downloadFilePath",
        "targetFile",
        "result"
    }
    s = {
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $call:Lokhttp3/Call;

.field final synthetic $downloadUrl:Ljava/lang/String;

.field final synthetic $force:Z

.field final synthetic $needReport:Z

.field final synthetic $savedFilePath:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lokhttp3/Call;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$savedFilePath:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$force:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$downloadUrl:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$call:Lokhttp3/Call;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$needReport:Z

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$savedFilePath:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$force:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$downloadUrl:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$call:Lokhttp3/Call;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$needReport:Z

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;-><init>(Ljava/lang/String;ZLjava/lang/String;Lokhttp3/Call;ZLkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    const-string v1, ""

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v2, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->label:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    if-ne v2, v4, :cond_0

    .line 15
    .line 16
    iget v2, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->I$0:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->L$1:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/io/File;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v6, Ljava/lang/String;

    .line 25
    .line 26
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    move-object v11, p0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :catchall_0
    move-exception v0

    .line 33
    move-object p1, v0

    .line 34
    move-object v11, p0

    .line 35
    goto/16 :goto_9

    .line 36
    .line 37
    :catch_0
    move-exception v0

    .line 38
    move-object p1, v0

    .line 39
    move-object v11, p0

    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$savedFilePath:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, ".downloading"

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    :try_start_1
    new-instance p1, Ljava/io/File;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$savedFilePath:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 80
    .line 81
    .line 82
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    :try_start_2
    iget-boolean v2, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$force:Z

    .line 86
    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    move-object p1, v0

    .line 95
    move-object v11, p0

    .line 96
    :goto_0
    move v2, v3

    .line 97
    goto/16 :goto_7

    .line 98
    .line 99
    :cond_2
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    return-object p1

    .line 104
    :cond_3
    :goto_1
    :try_start_3
    sget-object v6, Lcom/changdu/mobovideo/net/VideoHttpClient;->INSTANCE:Lcom/changdu/mobovideo/net/VideoHttpClient;

    .line 105
    .line 106
    iget-object v7, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$downloadUrl:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v9, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$call:Lokhttp3/Call;

    .line 109
    .line 110
    iget-boolean v10, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$needReport:Z

    .line 111
    .line 112
    iput-object v8, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->L$1:Ljava/lang/Object;

    .line 115
    .line 116
    iput v3, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->I$0:I

    .line 117
    .line 118
    iput v4, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->label:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 119
    .line 120
    move-object v11, p0

    .line 121
    :try_start_4
    invoke-static/range {v6 .. v11}, Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/net/VideoHttpClient;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Call;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 125
    if-ne v2, v0, :cond_4

    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_4
    move-object v0, p1

    .line 129
    move-object p1, v2

    .line 130
    move v2, v3

    .line 131
    move-object v6, v8

    .line 132
    :goto_2
    :try_start_5
    check-cast p1, Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    new-instance v7, Ljava/io/File;

    .line 139
    .line 140
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 141
    .line 142
    .line 143
    if-eqz p1, :cond_5

    .line 144
    .line 145
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {v7, p1}, Lcom/changdu/mobovideo/net/VideoHttpClientKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 150
    .line 151
    .line 152
    move v2, v4

    .line 153
    goto :goto_3

    .line 154
    :catchall_1
    move-exception v0

    .line 155
    move-object p1, v0

    .line 156
    move-object v5, v7

    .line 157
    goto/16 :goto_9

    .line 158
    .line 159
    :catch_2
    move-exception v0

    .line 160
    move-object p1, v0

    .line 161
    move-object v5, v7

    .line 162
    goto :goto_7

    .line 163
    :cond_5
    :goto_3
    :try_start_7
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    :goto_4
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 168
    .line 169
    .line 170
    goto :goto_8

    .line 171
    :catchall_2
    move-exception v0

    .line 172
    :goto_5
    move-object p1, v0

    .line 173
    goto :goto_9

    .line 174
    :catch_3
    move-exception v0

    .line 175
    move-object p1, v0

    .line 176
    goto :goto_7

    .line 177
    :catch_4
    move-exception v0

    .line 178
    :goto_6
    move-object p1, v0

    .line 179
    goto :goto_0

    .line 180
    :catchall_3
    move-exception v0

    .line 181
    move-object v11, p0

    .line 182
    goto :goto_5

    .line 183
    :catch_5
    move-exception v0

    .line 184
    move-object v11, p0

    .line 185
    goto :goto_6

    .line 186
    :goto_7
    :try_start_8
    iget-boolean v0, v11, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$needReport:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 187
    .line 188
    if-eqz v0, :cond_6

    .line 189
    .line 190
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    .line 191
    .line 192
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v6, "bizType"

    .line 196
    .line 197
    const-string v7, "DownloadFailed"

    .line 198
    .line 199
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    .line 201
    .line 202
    const-string v6, "bizMsg"

    .line 203
    .line 204
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {v0, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    .line 210
    .line 211
    const-string p1, "bizContent"

    .line 212
    .line 213
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    .line 215
    .line 216
    const-string p1, "bizReferer"

    .line 217
    .line 218
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    const-string p1, "bizInPageOperation"

    .line 222
    .line 223
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    .line 225
    .line 226
    const-string p1, "bizUrl"

    .line 227
    .line 228
    iget-object v1, v11, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFileSafe$2;->$downloadUrl:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    const-string v1, "CdAppClientBiz"

    .line 238
    .line 239
    invoke-virtual {p1, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 240
    .line 241
    .line 242
    :catch_6
    :cond_6
    if-eqz v5, :cond_7

    .line 243
    .line 244
    :try_start_a
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 245
    .line 246
    .line 247
    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 248
    goto :goto_4

    .line 249
    :catch_7
    :cond_7
    :goto_8
    if-eqz v2, :cond_8

    .line 250
    .line 251
    move v3, v4

    .line 252
    :cond_8
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    return-object p1

    .line 257
    :goto_9
    if-eqz v5, :cond_9

    .line 258
    .line 259
    :try_start_b
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 264
    .line 265
    .line 266
    :catch_8
    :cond_9
    throw p1
.end method
