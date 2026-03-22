.class final Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/Exception;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.changdu.mobovideo.net.VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1"
    f = "VideoHttpErrorReportInterceptor.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $exception:Ljava/lang/Exception;

.field final synthetic $request:Lokhttp3/Request;

.field final synthetic $response:Lokhttp3/Response;

.field label:I

.field final synthetic this$0:Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;Lokhttp3/Request;Lokhttp3/Response;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;",
            "Lokhttp3/Request;",
            "Lokhttp3/Response;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$exception:Ljava/lang/Exception;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->this$0:Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$request:Lokhttp3/Request;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$response:Lokhttp3/Response;

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
    new-instance v0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$exception:Ljava/lang/Exception;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->this$0:Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$request:Lokhttp3/Request;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$response:Lokhttp3/Response;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;-><init>(Ljava/lang/Exception;Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;Lokhttp3/Request;Lokhttp3/Response;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$exception:Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    const-string v0, "CdAppClientBiz"

    .line 14
    .line 15
    const-string v1, "bizUrl"

    .line 16
    .line 17
    const-string v2, "bizInPageOperation"

    .line 18
    .line 19
    const-string v3, "bizReferer"

    .line 20
    .line 21
    const-string v4, "bizContent"

    .line 22
    .line 23
    const-string v5, "bizMsg"

    .line 24
    .line 25
    const-string v6, "NetworkError"

    .line 26
    .line 27
    const-string v7, "bizType"

    .line 28
    .line 29
    const-string v8, ""

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    :try_start_1
    sget-object v9, Lcom/changdu/mobovideo/utils/DebugUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/DebugUtil;

    .line 34
    .line 35
    invoke-virtual {v9, p1}, Lcom/changdu/mobovideo/utils/DebugUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v9, "java.io.IOException: Canceled"

    .line 40
    .line 41
    const/4 v10, 0x2

    .line 42
    const/4 v11, 0x0

    .line 43
    const/4 v12, 0x0

    .line 44
    invoke-static {p1, v9, v12, v10, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-nez v9, :cond_2

    .line 49
    .line 50
    new-instance v9, Lorg/json/JSONObject;

    .line 51
    .line 52
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v9, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->this$0:Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;

    .line 62
    .line 63
    iget-object v5, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$request:Lokhttp3/Request;

    .line 64
    .line 65
    invoke-static {p1, v5}, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;Lokhttp3/Request;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v9, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$request:Lokhttp3/Request;

    .line 79
    .line 80
    invoke-virtual {p1}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v9, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1, v0, v9}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_0
    iget-object p1, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$response:Lokhttp3/Response;

    .line 101
    .line 102
    if-nez p1, :cond_1

    .line 103
    .line 104
    new-instance p1, Lorg/json/JSONObject;

    .line 105
    .line 106
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    .line 111
    .line 112
    const-string v6, "\u63a5\u53e3\u8bf7\u6c42\u54cd\u5e94\u4e3a\u7a7a"

    .line 113
    .line 114
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    iget-object v5, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->this$0:Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;

    .line 118
    .line 119
    iget-object v6, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$request:Lokhttp3/Request;

    .line 120
    .line 121
    invoke-static {v5, v6}, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;Lokhttp3/Request;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$request:Lokhttp3/Request;

    .line 135
    .line 136
    invoke-virtual {v2}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    const/16 v9, 0x190

    .line 160
    .line 161
    if-lt p1, v9, :cond_2

    .line 162
    .line 163
    new-instance p1, Lorg/json/JSONObject;

    .line 164
    .line 165
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    const-string v6, "\u63a5\u53e3\u8bf7\u6c42\u5931\u8d25"

    .line 172
    .line 173
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    .line 175
    .line 176
    iget-object v5, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->this$0:Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;

    .line 177
    .line 178
    iget-object v6, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$request:Lokhttp3/Request;

    .line 179
    .line 180
    invoke-static {v5, v6}, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor;Lokhttp3/Request;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$request:Lokhttp3/Request;

    .line 194
    .line 195
    invoke-virtual {v2}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    const-string v1, "bizErrorCode"

    .line 207
    .line 208
    iget-object v2, p0, Lcom/changdu/mobovideo/net/VideoHttpErrorReportInterceptor$reportHttpApiErrorAsync$1;->$response:Lokhttp3/Response;

    .line 209
    .line 210
    invoke-virtual {v2}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    .line 227
    .line 228
    :catch_0
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 229
    .line 230
    return-object p1

    .line 231
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 232
    .line 233
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 234
    .line 235
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p1
.end method
