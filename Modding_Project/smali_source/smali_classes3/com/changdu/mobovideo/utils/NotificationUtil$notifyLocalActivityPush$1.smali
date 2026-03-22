.class final Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/utils/NotificationUtil;->Wwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
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
    c = "com.changdu.mobovideo.utils.NotificationUtil$notifyLocalActivityPush$1"
    f = "NotificationUtil.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x18d,
        0x19c
    }
    m = "invokeSuspend"
    n = {
        "targetIntent",
        "title",
        "subTitle",
        "button",
        "pushStyle",
        "progress",
        "bonusStr",
        "tip"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNotificationUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationUtil.kt\ncom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n*L\n1#1,655:1\n24#2:656\n*S KotlinDebug\n*F\n+ 1 NotificationUtil.kt\ncom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1\n*L\n397#1:656\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $jsonString:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->$jsonString:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->$jsonString:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "tip"

    .line 4
    .line 5
    const-string v2, "bonusStr"

    .line 6
    .line 7
    const-string v3, "progress"

    .line 8
    .line 9
    const-string v4, "pushStyle"

    .line 10
    .line 11
    const-string v5, "button"

    .line 12
    .line 13
    const-string v6, "smallImage"

    .line 14
    .line 15
    const-string v7, "subTitle"

    .line 16
    .line 17
    const-string v8, "title"

    .line 18
    .line 19
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    iget v10, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->label:I

    .line 24
    .line 25
    const/4 v11, 0x2

    .line 26
    const/4 v12, 0x1

    .line 27
    if-eqz v10, :cond_2

    .line 28
    .line 29
    if-eq v10, v12, :cond_1

    .line 30
    .line 31
    if-ne v10, v11, :cond_0

    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_11

    .line 37
    .line 38
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_1
    iget-object v1, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$7:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    iget-object v2, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$6:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 53
    .line 54
    iget-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$5:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 57
    .line 58
    iget-object v4, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$4:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 61
    .line 62
    iget-object v5, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$3:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 65
    .line 66
    iget-object v6, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$2:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 69
    .line 70
    iget-object v7, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 73
    .line 74
    iget-object v8, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v8, Landroid/content/Intent;

    .line 77
    .line 78
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    move-object v10, v2

    .line 82
    move-object v2, v9

    .line 83
    move-object v9, v3

    .line 84
    move-object v3, v1

    .line 85
    move-object/from16 v1, p1

    .line 86
    .line 87
    goto/16 :goto_9

    .line 88
    .line 89
    :catch_0
    move-object v10, v2

    .line 90
    move-object v2, v9

    .line 91
    goto/16 :goto_d

    .line 92
    .line 93
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    new-instance v10, Landroid/content/Intent;

    .line 97
    .line 98
    sget-object v14, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 99
    .line 100
    invoke-virtual {v14}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 101
    .line 102
    .line 103
    move-result-object v14

    .line 104
    const-class v15, Lcom/changdu/mobovideo/MainActivity;

    .line 105
    .line 106
    invoke-direct {v10, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .line 108
    .line 109
    sget-object v14, Lcom/changdu/mobovideo/utils/NotificationUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/NotificationUtil;

    .line 110
    .line 111
    invoke-virtual {v14}, Lcom/changdu/mobovideo/utils/NotificationUtil;->Wwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    iget-object v15, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->$jsonString:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 121
    .line 122
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v15, ""

    .line 126
    .line 127
    iput-object v15, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 128
    .line 129
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 130
    .line 131
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v15, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 135
    .line 136
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 137
    .line 138
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v15, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 142
    .line 143
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 144
    .line 145
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 146
    .line 147
    .line 148
    move-object/from16 v17, v9

    .line 149
    .line 150
    const-string v9, "0"

    .line 151
    .line 152
    iput-object v9, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 153
    .line 154
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 155
    .line 156
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 157
    .line 158
    .line 159
    move-object/from16 p1, v10

    .line 160
    .line 161
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 162
    .line 163
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object v15, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 167
    .line 168
    move-object/from16 v18, v1

    .line 169
    .line 170
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 171
    .line 172
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object v15, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 176
    .line 177
    move-object/from16 v19, v15

    .line 178
    .line 179
    :try_start_1
    new-instance v15, Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 180
    .line 181
    move-object/from16 v20, v1

    .line 182
    .line 183
    :try_start_2
    iget-object v1, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->$jsonString:Ljava/lang/String;

    .line 184
    .line 185
    invoke-direct {v15, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 192
    if-eqz v1, :cond_3

    .line 193
    .line 194
    :try_start_3
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iput-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :catch_1
    move-object/from16 v15, v19

    .line 202
    .line 203
    :goto_0
    move-object/from16 v3, v20

    .line 204
    .line 205
    goto/16 :goto_6

    .line 206
    .line 207
    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 211
    if-eqz v1, :cond_4

    .line 212
    .line 213
    :try_start_5
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iput-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 218
    .line 219
    :cond_4
    :try_start_6
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 223
    if-eqz v1, :cond_5

    .line 224
    .line 225
    :try_start_7
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 229
    goto :goto_2

    .line 230
    :cond_5
    move-object/from16 v1, v19

    .line 231
    .line 232
    :goto_2
    :try_start_8
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 236
    if-eqz v6, :cond_6

    .line 237
    .line 238
    :try_start_9
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    iput-object v5, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :catch_2
    move-object v15, v1

    .line 246
    goto :goto_0

    .line 247
    :cond_6
    :goto_3
    :try_start_a
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 251
    if-eqz v5, :cond_7

    .line 252
    .line 253
    :try_start_b
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    iput-object v4, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 258
    .line 259
    :cond_7
    :try_start_c
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 263
    if-eqz v4, :cond_8

    .line 264
    .line 265
    :try_start_d
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 266
    .line 267
    .line 268
    move-result-wide v3

    .line 269
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    iput-object v3, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 274
    .line 275
    :cond_8
    :try_start_e
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 279
    if-eqz v3, :cond_9

    .line 280
    .line 281
    :try_start_f
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    iput-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 286
    .line 287
    :cond_9
    move-object/from16 v2, v18

    .line 288
    .line 289
    :try_start_10
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-eqz v3, :cond_a

    .line 294
    .line 295
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    .line 299
    move-object/from16 v3, v20

    .line 300
    .line 301
    :try_start_11
    iput-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :catch_3
    :goto_4
    move-object v15, v1

    .line 305
    goto :goto_6

    .line 306
    :catch_4
    move-object/from16 v3, v20

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_a
    move-object/from16 v3, v20

    .line 310
    .line 311
    goto :goto_7

    .line 312
    :catch_5
    move-object/from16 v3, v20

    .line 313
    .line 314
    :goto_5
    move-object/from16 v15, v19

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :catch_6
    move-object v3, v1

    .line 318
    goto :goto_5

    .line 319
    :goto_6
    move-object v1, v15

    .line 320
    :goto_7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-nez v2, :cond_b

    .line 325
    .line 326
    move-object/from16 v24, p1

    .line 327
    .line 328
    move-object/from16 v23, v3

    .line 329
    .line 330
    move-object/from16 v22, v10

    .line 331
    .line 332
    move-object/from16 v18, v11

    .line 333
    .line 334
    move-object/from16 v2, v17

    .line 335
    .line 336
    const/16 v25, 0x0

    .line 337
    .line 338
    :goto_8
    move-object/from16 v20, v9

    .line 339
    .line 340
    move-object/from16 v21, v12

    .line 341
    .line 342
    move-object/from16 v19, v13

    .line 343
    .line 344
    move-object/from16 v17, v14

    .line 345
    .line 346
    goto/16 :goto_f

    .line 347
    .line 348
    :cond_b
    new-instance v2, Lcoil/request/ImageRequest$Builder;

    .line 349
    .line 350
    sget-object v4, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 351
    .line 352
    invoke-virtual {v4}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-direct {v2, v5}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v1}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    const/4 v2, 0x0

    .line 364
    invoke-virtual {v1, v2}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)Lcoil/request/ImageRequest$Builder;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    sget-object v2, Lcoil/request/CachePolicy;->DISABLED:Lcoil/request/CachePolicy;

    .line 369
    .line 370
    invoke-virtual {v1, v2}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    const/16 v2, 0x45

    .line 375
    .line 376
    invoke-static {v2}, Lcom/changdu/mobovideo/utils/BizKtExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    const/16 v5, 0x5c

    .line 381
    .line 382
    invoke-static {v5}, Lcom/changdu/mobovideo/utils/BizKtExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    invoke-virtual {v1, v2, v5}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww(II)Lcoil/request/ImageRequest$Builder;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {v1}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/ImageRequest;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    :try_start_12
    invoke-virtual {v4}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-static {v2}, Lcoil/Coil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcoil/ImageLoader;

    .line 399
    .line 400
    .line 401
    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    .line 402
    move-object/from16 v4, p1

    .line 403
    .line 404
    :try_start_13
    iput-object v4, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$0:Ljava/lang/Object;

    .line 405
    .line 406
    iput-object v14, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$1:Ljava/lang/Object;

    .line 407
    .line 408
    iput-object v11, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$2:Ljava/lang/Object;

    .line 409
    .line 410
    iput-object v13, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$3:Ljava/lang/Object;

    .line 411
    .line 412
    iput-object v12, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$4:Ljava/lang/Object;

    .line 413
    .line 414
    iput-object v9, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$5:Ljava/lang/Object;

    .line 415
    .line 416
    iput-object v10, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$6:Ljava/lang/Object;

    .line 417
    .line 418
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$7:Ljava/lang/Object;

    .line 419
    .line 420
    const/4 v5, 0x1

    .line 421
    iput v5, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->label:I

    .line 422
    .line 423
    invoke-interface {v2, v1, v0}, Lcoil/ImageLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    .line 427
    move-object/from16 v2, v17

    .line 428
    .line 429
    if-ne v1, v2, :cond_c

    .line 430
    .line 431
    goto/16 :goto_10

    .line 432
    .line 433
    :cond_c
    move-object v8, v4

    .line 434
    move-object v6, v11

    .line 435
    move-object v4, v12

    .line 436
    move-object v5, v13

    .line 437
    move-object v7, v14

    .line 438
    :goto_9
    :try_start_14
    check-cast v1, Lcoil/request/ImageResult;

    .line 439
    .line 440
    invoke-virtual {v1}, Lcoil/request/ImageResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 441
    .line 442
    .line 443
    move-result-object v16

    .line 444
    if-eqz v16, :cond_d

    .line 445
    .line 446
    const/16 v20, 0x7

    .line 447
    .line 448
    const/16 v21, 0x0

    .line 449
    .line 450
    const/16 v17, 0x0

    .line 451
    .line 452
    const/16 v18, 0x0

    .line 453
    .line 454
    const/16 v19, 0x0

    .line 455
    .line 456
    invoke-static/range {v16 .. v21}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    goto :goto_a

    .line 461
    :catch_7
    move-object v1, v3

    .line 462
    move-object v3, v9

    .line 463
    goto :goto_d

    .line 464
    :cond_d
    const/4 v1, 0x0

    .line 465
    :goto_a
    sget-object v11, Lcom/changdu/mobovideo/plugins/BitmapUtils;->INSTANCE:Lcom/changdu/mobovideo/plugins/BitmapUtils;

    .line 466
    .line 467
    const/4 v12, 0x4

    .line 468
    invoke-static {v12}, Lcom/changdu/mobovideo/utils/BizKtExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)F

    .line 469
    .line 470
    .line 471
    move-result v12

    .line 472
    invoke-virtual {v11, v1, v12}, Lcom/changdu/mobovideo/plugins/BitmapUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 473
    .line 474
    .line 475
    move-result-object v11

    .line 476
    if-eqz v1, :cond_e

    .line 477
    .line 478
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    .line 479
    .line 480
    .line 481
    :cond_e
    move-object v1, v3

    .line 482
    :goto_b
    move-object v12, v4

    .line 483
    move-object v13, v5

    .line 484
    move-object v14, v7

    .line 485
    move-object v3, v10

    .line 486
    move-object v10, v8

    .line 487
    goto :goto_e

    .line 488
    :catch_8
    :goto_c
    move-object/from16 v2, v17

    .line 489
    .line 490
    move-object v1, v3

    .line 491
    move-object v8, v4

    .line 492
    move-object v3, v9

    .line 493
    move-object v6, v11

    .line 494
    move-object v4, v12

    .line 495
    move-object v5, v13

    .line 496
    move-object v7, v14

    .line 497
    goto :goto_d

    .line 498
    :catch_9
    move-object/from16 v4, p1

    .line 499
    .line 500
    goto :goto_c

    .line 501
    :goto_d
    move-object v9, v3

    .line 502
    const/4 v11, 0x0

    .line 503
    goto :goto_b

    .line 504
    :goto_e
    move-object/from16 v23, v1

    .line 505
    .line 506
    move-object/from16 v22, v3

    .line 507
    .line 508
    move-object/from16 v18, v6

    .line 509
    .line 510
    move-object/from16 v24, v10

    .line 511
    .line 512
    move-object/from16 v25, v11

    .line 513
    .line 514
    goto/16 :goto_8

    .line 515
    .line 516
    :goto_f
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    new-instance v16, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1$1;

    .line 521
    .line 522
    const/16 v26, 0x0

    .line 523
    .line 524
    invoke-direct/range {v16 .. v26}, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Intent;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    .line 525
    .line 526
    .line 527
    move-object/from16 v4, v16

    .line 528
    .line 529
    const/4 v3, 0x0

    .line 530
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$0:Ljava/lang/Object;

    .line 531
    .line 532
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$1:Ljava/lang/Object;

    .line 533
    .line 534
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$2:Ljava/lang/Object;

    .line 535
    .line 536
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$3:Ljava/lang/Object;

    .line 537
    .line 538
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$4:Ljava/lang/Object;

    .line 539
    .line 540
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$5:Ljava/lang/Object;

    .line 541
    .line 542
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$6:Ljava/lang/Object;

    .line 543
    .line 544
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->L$7:Ljava/lang/Object;

    .line 545
    .line 546
    const/4 v3, 0x2

    .line 547
    iput v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalActivityPush$1;->label:I

    .line 548
    .line 549
    invoke-static {v1, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    if-ne v1, v2, :cond_f

    .line 554
    .line 555
    :goto_10
    return-object v2

    .line 556
    :cond_f
    :goto_11
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 557
    .line 558
    return-object v1
.end method
