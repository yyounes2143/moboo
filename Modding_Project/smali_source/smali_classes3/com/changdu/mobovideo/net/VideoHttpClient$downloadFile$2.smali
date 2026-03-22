.class final Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/net/VideoHttpClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Call;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.changdu.mobovideo.net.VideoHttpClient$downloadFile$2"
    f = "VideoHttpClient.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $call:Lokhttp3/Call;

.field final synthetic $downloadUrl:Ljava/lang/String;

.field final synthetic $needReport:Z

.field final synthetic $savedFilePath:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Call;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$savedFilePath:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$call:Lokhttp3/Call;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$needReport:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$downloadUrl:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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
    new-instance v0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$savedFilePath:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$call:Lokhttp3/Call;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$needReport:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$downloadUrl:Ljava/lang/String;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;-><init>(Ljava/lang/String;Lokhttp3/Call;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "CdAppClientBiz"

    .line 4
    .line 5
    const-string v3, "bizUrl"

    .line 6
    .line 7
    const-string v4, "bizInPageOperation"

    .line 8
    .line 9
    const-string v5, "bizReferer"

    .line 10
    .line 11
    const-string v6, "bizContent"

    .line 12
    .line 13
    const-string v7, "bizMsg"

    .line 14
    .line 15
    const-string v8, "DownloadFailed"

    .line 16
    .line 17
    const-string v9, "bizType"

    .line 18
    .line 19
    const-string v10, ""

    .line 20
    .line 21
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget v0, v1, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->label:I

    .line 25
    .line 26
    if-nez v0, :cond_b

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    const/4 v12, 0x0

    .line 33
    :try_start_0
    new-instance v13, Ljava/io/File;

    .line 34
    .line 35
    iget-object v0, v1, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$savedFilePath:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    move-object v2, v0

    .line 56
    move-object v15, v12

    .line 57
    goto/16 :goto_e

    .line 58
    .line 59
    :catch_0
    move-exception v0

    .line 60
    :goto_0
    move-object v14, v12

    .line 61
    :goto_1
    move-object v15, v14

    .line 62
    :goto_2
    move-object v12, v0

    .line 63
    goto/16 :goto_a

    .line 64
    .line 65
    :cond_0
    :goto_3
    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    :try_start_4
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_1
    :try_start_5
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 75
    .line 76
    .line 77
    iget-object v0, v1, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$call:Lokhttp3/Call;

    .line 78
    .line 79
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    invoke-virtual {v14}, Lokhttp3/Response;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/ResponseBody;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v14}, Lokhttp3/Response;->Kkkkkkkkkkkkkkk()Z

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    if-eqz v15, :cond_3

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 96
    .line 97
    .line 98
    move-result-object v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    :try_start_6
    new-instance v15, Ljava/io/FileOutputStream;

    .line 100
    .line 101
    invoke-direct {v15, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 102
    .line 103
    .line 104
    :try_start_7
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 105
    .line 106
    .line 107
    const/16 v0, 0x400

    .line 108
    .line 109
    new-array v0, v0, [B

    .line 110
    .line 111
    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    .line 112
    .line 113
    .line 114
    move-result v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 115
    move-object/from16 p1, v13

    .line 116
    .line 117
    :goto_4
    const/4 v13, -0x1

    .line 118
    if-eq v12, v13, :cond_2

    .line 119
    .line 120
    :try_start_8
    invoke-virtual {v15, v0, v11, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    goto :goto_4

    .line 128
    :catchall_1
    move-exception v0

    .line 129
    move-object v2, v0

    .line 130
    :goto_5
    move-object v12, v14

    .line 131
    goto/16 :goto_e

    .line 132
    .line 133
    :catch_1
    move-exception v0

    .line 134
    move-object/from16 v13, p1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    const/4 v0, 0x1

    .line 138
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 142
    :try_start_9
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 143
    .line 144
    .line 145
    goto :goto_6

    .line 146
    :catch_2
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :goto_6
    :try_start_a
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 151
    .line 152
    .line 153
    goto :goto_7

    .line 154
    :catch_3
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    :goto_7
    return-object v2

    .line 159
    :catch_4
    move-exception v0

    .line 160
    move-object/from16 p1, v13

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :catchall_2
    move-exception v0

    .line 164
    move-object v2, v0

    .line 165
    move-object v15, v12

    .line 166
    goto :goto_5

    .line 167
    :catch_5
    move-exception v0

    .line 168
    move-object/from16 p1, v13

    .line 169
    .line 170
    move-object v15, v12

    .line 171
    goto :goto_2

    .line 172
    :catch_6
    move-exception v0

    .line 173
    move-object/from16 p1, v13

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_3
    move-object/from16 p1, v13

    .line 177
    .line 178
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 179
    .line 180
    .line 181
    goto :goto_8

    .line 182
    :catch_7
    move-exception v0

    .line 183
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    .line 185
    .line 186
    :goto_8
    iget-boolean v0, v1, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$needReport:Z

    .line 187
    .line 188
    if-eqz v0, :cond_4

    .line 189
    .line 190
    new-instance v0, Lorg/json/JSONObject;

    .line 191
    .line 192
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v14}, Lokhttp3/Response;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    invoke-virtual {v0, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    .line 213
    .line 214
    iget-object v13, v1, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$downloadUrl:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v0, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 220
    .line 221
    .line 222
    move-result-object v13

    .line 223
    invoke-virtual {v13, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 224
    .line 225
    .line 226
    goto :goto_9

    .line 227
    :catch_8
    move-exception v0

    .line 228
    move-object/from16 v13, p1

    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_4
    :goto_9
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 233
    .line 234
    .line 235
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 236
    return-object v0

    .line 237
    :catch_9
    move-exception v0

    .line 238
    move-object v13, v12

    .line 239
    move-object v14, v13

    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :goto_a
    :try_start_d
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 243
    .line 244
    .line 245
    if-eqz v13, :cond_5

    .line 246
    .line 247
    :try_start_e
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 252
    .line 253
    .line 254
    goto :goto_b

    .line 255
    :catch_a
    move-exception v0

    .line 256
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 257
    .line 258
    .line 259
    :cond_5
    :goto_b
    iget-boolean v0, v1, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$needReport:Z

    .line 260
    .line 261
    if-eqz v0, :cond_6

    .line 262
    .line 263
    new-instance v0, Lorg/json/JSONObject;

    .line 264
    .line 265
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    .line 286
    .line 287
    iget-object v4, v1, Lcom/changdu/mobovideo/net/VideoHttpClient$downloadFile$2;->$downloadUrl:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    .line 291
    .line 292
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v3, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 297
    .line 298
    .line 299
    :cond_6
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 300
    .line 301
    .line 302
    move-result-object v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 303
    if-eqz v14, :cond_7

    .line 304
    .line 305
    :try_start_10
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 306
    .line 307
    .line 308
    goto :goto_c

    .line 309
    :catch_b
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 311
    .line 312
    .line 313
    :cond_7
    :goto_c
    if-eqz v15, :cond_8

    .line 314
    .line 315
    :try_start_11
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    .line 316
    .line 317
    .line 318
    goto :goto_d

    .line 319
    :catch_c
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    .line 322
    .line 323
    :cond_8
    :goto_d
    return-object v2

    .line 324
    :goto_e
    if-eqz v12, :cond_9

    .line 325
    .line 326
    :try_start_12
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    .line 327
    .line 328
    .line 329
    goto :goto_f

    .line 330
    :catch_d
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 332
    .line 333
    .line 334
    :cond_9
    :goto_f
    if-eqz v15, :cond_a

    .line 335
    .line 336
    :try_start_13
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e

    .line 337
    .line 338
    .line 339
    goto :goto_10

    .line 340
    :catch_e
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 342
    .line 343
    .line 344
    :cond_a
    :goto_10
    throw v2

    .line 345
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 346
    .line 347
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 348
    .line 349
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    throw v0
.end method
