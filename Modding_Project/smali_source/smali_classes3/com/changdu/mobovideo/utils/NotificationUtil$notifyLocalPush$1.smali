.class final Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/utils/NotificationUtil;->Wwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
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
    c = "com.changdu.mobovideo.utils.NotificationUtil$notifyLocalPush$1"
    f = "NotificationUtil.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x11a,
        0x131,
        0x13f
    }
    m = "invokeSuspend"
    n = {
        "targetIntent",
        "title",
        "subTitle",
        "smallImage2",
        "label",
        "button",
        "pushStyle",
        "targetIntent",
        "title",
        "subTitle",
        "label",
        "button",
        "pushStyle",
        "smallImageBitmap"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNotificationUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationUtil.kt\ncom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n*L\n1#1,655:1\n24#2:656\n24#2:657\n*S KotlinDebug\n*F\n+ 1 NotificationUtil.kt\ncom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1\n*L\n282#1:656\n305#1:657\n*E\n"
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
            "Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->$jsonString:Ljava/lang/String;

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
    new-instance p1, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->$jsonString:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "pushStyle"

    .line 4
    .line 5
    const-string v2, "button"

    .line 6
    .line 7
    const-string v3, "label"

    .line 8
    .line 9
    const-string v4, "smallImage2"

    .line 10
    .line 11
    const-string v5, "smallImage"

    .line 12
    .line 13
    const-string v6, "subTitle"

    .line 14
    .line 15
    const-string v7, "title"

    .line 16
    .line 17
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    iget v9, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->label:I

    .line 22
    .line 23
    const/4 v14, 0x3

    .line 24
    const/4 v15, 0x2

    .line 25
    const/16 v16, 0x4

    .line 26
    .line 27
    const/4 v10, 0x1

    .line 28
    const/16 v17, 0x5c

    .line 29
    .line 30
    if-eqz v9, :cond_3

    .line 31
    .line 32
    if-eq v9, v10, :cond_2

    .line 33
    .line 34
    if-eq v9, v15, :cond_1

    .line 35
    .line 36
    if-ne v9, v14, :cond_0

    .line 37
    .line 38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_14

    .line 42
    .line 43
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_1
    iget-object v1, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$6:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Landroid/graphics/Bitmap;

    .line 54
    .line 55
    iget-object v2, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$5:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 58
    .line 59
    iget-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$4:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 62
    .line 63
    iget-object v4, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$3:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 66
    .line 67
    iget-object v5, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$2:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 70
    .line 71
    iget-object v6, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$1:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 74
    .line 75
    iget-object v7, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v7, Landroid/content/Intent;

    .line 78
    .line 79
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    move-object v13, v2

    .line 83
    move-object v15, v4

    .line 84
    move-object v2, v8

    .line 85
    move-object/from16 v4, p1

    .line 86
    .line 87
    goto/16 :goto_c

    .line 88
    .line 89
    :catch_0
    move-object v13, v2

    .line 90
    move-object v2, v8

    .line 91
    goto/16 :goto_e

    .line 92
    .line 93
    :cond_2
    iget-object v1, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$6:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 96
    .line 97
    iget-object v2, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$5:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 100
    .line 101
    iget-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$4:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 104
    .line 105
    iget-object v4, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$3:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v4, Ljava/lang/String;

    .line 108
    .line 109
    iget-object v5, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$2:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 112
    .line 113
    iget-object v6, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$1:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 116
    .line 117
    iget-object v7, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$0:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v7, Landroid/content/Intent;

    .line 120
    .line 121
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .line 123
    .line 124
    move-object v13, v1

    .line 125
    move-object v10, v2

    .line 126
    move-object v2, v8

    .line 127
    const/16 v19, 0x45

    .line 128
    .line 129
    move-object/from16 v1, p1

    .line 130
    .line 131
    goto/16 :goto_7

    .line 132
    .line 133
    :catch_1
    move-object v10, v2

    .line 134
    move-object v2, v8

    .line 135
    const/16 v19, 0x45

    .line 136
    .line 137
    goto/16 :goto_9

    .line 138
    .line 139
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    new-instance v9, Landroid/content/Intent;

    .line 143
    .line 144
    sget-object v18, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 145
    .line 146
    const/16 v19, 0x45

    .line 147
    .line 148
    invoke-virtual/range {v18 .. v18}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    const-class v14, Lcom/changdu/mobovideo/MainActivity;

    .line 153
    .line 154
    invoke-direct {v9, v12, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .line 156
    .line 157
    sget-object v12, Lcom/changdu/mobovideo/utils/NotificationUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/NotificationUtil;

    .line 158
    .line 159
    invoke-virtual {v12}, Lcom/changdu/mobovideo/utils/NotificationUtil;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    iget-object v14, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->$jsonString:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v9, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 169
    .line 170
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v14, ""

    .line 174
    .line 175
    iput-object v14, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 176
    .line 177
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 178
    .line 179
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v14, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 183
    .line 184
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 185
    .line 186
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 187
    .line 188
    .line 189
    iput-object v14, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 190
    .line 191
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 192
    .line 193
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object v14, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 197
    .line 198
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 199
    .line 200
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 201
    .line 202
    .line 203
    move-object/from16 p1, v14

    .line 204
    .line 205
    const-string v14, "0"

    .line 206
    .line 207
    iput-object v14, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 208
    .line 209
    :try_start_2
    new-instance v14, Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 210
    .line 211
    move-object/from16 v23, v8

    .line 212
    .line 213
    :try_start_3
    iget-object v8, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->$jsonString:Ljava/lang/String;

    .line 214
    .line 215
    invoke-direct {v14, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    if-eqz v8, :cond_4

    .line 223
    .line 224
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    iput-object v7, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :catch_2
    :goto_0
    move-object/from16 v4, p1

    .line 232
    .line 233
    move-object v14, v4

    .line 234
    goto :goto_4

    .line 235
    :cond_4
    :goto_1
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-eqz v7, :cond_5

    .line 240
    .line 241
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    iput-object v6, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 246
    .line 247
    :cond_5
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-eqz v6, :cond_6

    .line 252
    .line 253
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 257
    goto :goto_2

    .line 258
    :cond_6
    move-object/from16 v5, p1

    .line 259
    .line 260
    :goto_2
    :try_start_4
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-eqz v6, :cond_7

    .line 265
    .line 266
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 270
    goto :goto_3

    .line 271
    :catch_3
    move-object/from16 v4, p1

    .line 272
    .line 273
    :catch_4
    move-object v14, v5

    .line 274
    goto :goto_4

    .line 275
    :cond_7
    move-object/from16 v4, p1

    .line 276
    .line 277
    :goto_3
    :try_start_5
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-eqz v6, :cond_8

    .line 282
    .line 283
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    iput-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 288
    .line 289
    :cond_8
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-eqz v3, :cond_9

    .line 294
    .line 295
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    iput-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 300
    .line 301
    :cond_9
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_a

    .line 306
    .line 307
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iput-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :catch_5
    move-object/from16 v23, v8

    .line 315
    .line 316
    goto :goto_0

    .line 317
    :goto_4
    move-object v5, v14

    .line 318
    :cond_a
    :goto_5
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-nez v1, :cond_b

    .line 323
    .line 324
    move-object v7, v9

    .line 325
    move-object v5, v11

    .line 326
    move-object v6, v12

    .line 327
    move-object/from16 v2, v23

    .line 328
    .line 329
    const/4 v1, 0x0

    .line 330
    :goto_6
    move-object v3, v10

    .line 331
    goto/16 :goto_b

    .line 332
    .line 333
    :cond_b
    new-instance v1, Lcoil/request/ImageRequest$Builder;

    .line 334
    .line 335
    sget-object v2, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 336
    .line 337
    invoke-virtual {v2}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-direct {v1, v3}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v5}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    const/4 v3, 0x0

    .line 349
    invoke-virtual {v1, v3}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)Lcoil/request/ImageRequest$Builder;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    sget-object v3, Lcoil/request/CachePolicy;->DISABLED:Lcoil/request/CachePolicy;

    .line 354
    .line 355
    invoke-virtual {v1, v3}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-static/range {v19 .. v19}, Lcom/changdu/mobovideo/utils/BizKtExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    invoke-static/range {v17 .. v17}, Lcom/changdu/mobovideo/utils/BizKtExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    invoke-virtual {v1, v3, v5}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww(II)Lcoil/request/ImageRequest$Builder;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v1}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/ImageRequest;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    :try_start_6
    invoke-virtual {v2}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-static {v2}, Lcoil/Coil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcoil/ImageLoader;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    iput-object v9, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$0:Ljava/lang/Object;

    .line 384
    .line 385
    iput-object v12, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$1:Ljava/lang/Object;

    .line 386
    .line 387
    iput-object v11, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$2:Ljava/lang/Object;

    .line 388
    .line 389
    iput-object v4, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$3:Ljava/lang/Object;

    .line 390
    .line 391
    iput-object v15, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$4:Ljava/lang/Object;

    .line 392
    .line 393
    iput-object v10, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$5:Ljava/lang/Object;

    .line 394
    .line 395
    iput-object v13, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$6:Ljava/lang/Object;

    .line 396
    .line 397
    const/4 v3, 0x1

    .line 398
    iput v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->label:I

    .line 399
    .line 400
    invoke-interface {v2, v1, v0}, Lcoil/ImageLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 404
    move-object/from16 v2, v23

    .line 405
    .line 406
    if-ne v1, v2, :cond_c

    .line 407
    .line 408
    goto/16 :goto_13

    .line 409
    .line 410
    :cond_c
    move-object v7, v9

    .line 411
    move-object v5, v11

    .line 412
    move-object v6, v12

    .line 413
    move-object v3, v15

    .line 414
    :goto_7
    :try_start_7
    check-cast v1, Lcoil/request/ImageResult;

    .line 415
    .line 416
    invoke-virtual {v1}, Lcoil/request/ImageResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 417
    .line 418
    .line 419
    move-result-object v23

    .line 420
    if-eqz v23, :cond_d

    .line 421
    .line 422
    const/16 v27, 0x7

    .line 423
    .line 424
    const/16 v28, 0x0

    .line 425
    .line 426
    const/16 v24, 0x0

    .line 427
    .line 428
    const/16 v25, 0x0

    .line 429
    .line 430
    const/16 v26, 0x0

    .line 431
    .line 432
    invoke-static/range {v23 .. v28}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    goto :goto_8

    .line 437
    :catch_6
    move-object v1, v13

    .line 438
    goto :goto_9

    .line 439
    :cond_d
    const/4 v1, 0x0

    .line 440
    :goto_8
    sget-object v8, Lcom/changdu/mobovideo/plugins/BitmapUtils;->INSTANCE:Lcom/changdu/mobovideo/plugins/BitmapUtils;

    .line 441
    .line 442
    invoke-static/range {v16 .. v16}, Lcom/changdu/mobovideo/utils/BizKtExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)F

    .line 443
    .line 444
    .line 445
    move-result v9

    .line 446
    invoke-virtual {v8, v1, v9}, Lcom/changdu/mobovideo/plugins/BitmapUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 447
    .line 448
    .line 449
    move-result-object v8

    .line 450
    if-eqz v1, :cond_e

    .line 451
    .line 452
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 453
    .line 454
    .line 455
    goto :goto_a

    .line 456
    :catch_7
    move-object/from16 v2, v23

    .line 457
    .line 458
    move-object v7, v9

    .line 459
    move-object v5, v11

    .line 460
    move-object v6, v12

    .line 461
    move-object v1, v13

    .line 462
    move-object v3, v15

    .line 463
    :goto_9
    move-object v13, v1

    .line 464
    const/4 v8, 0x0

    .line 465
    :cond_e
    :goto_a
    move-object v15, v3

    .line 466
    move-object v1, v8

    .line 467
    goto/16 :goto_6

    .line 468
    .line 469
    :goto_b
    if-eqz v4, :cond_13

    .line 470
    .line 471
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    if-nez v8, :cond_f

    .line 476
    .line 477
    goto/16 :goto_11

    .line 478
    .line 479
    :cond_f
    new-instance v8, Lcoil/request/ImageRequest$Builder;

    .line 480
    .line 481
    sget-object v9, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 482
    .line 483
    invoke-virtual {v9}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 484
    .line 485
    .line 486
    move-result-object v10

    .line 487
    invoke-direct {v8, v10}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v8, v4}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    const/4 v8, 0x0

    .line 495
    invoke-virtual {v4, v8}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)Lcoil/request/ImageRequest$Builder;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    sget-object v8, Lcoil/request/CachePolicy;->DISABLED:Lcoil/request/CachePolicy;

    .line 500
    .line 501
    invoke-virtual {v4, v8}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    invoke-static/range {v19 .. v19}, Lcom/changdu/mobovideo/utils/BizKtExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 506
    .line 507
    .line 508
    move-result v8

    .line 509
    invoke-static/range {v17 .. v17}, Lcom/changdu/mobovideo/utils/BizKtExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 510
    .line 511
    .line 512
    move-result v10

    .line 513
    invoke-virtual {v4, v8, v10}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww(II)Lcoil/request/ImageRequest$Builder;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    invoke-virtual {v4}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/ImageRequest;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    :try_start_8
    invoke-virtual {v9}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 522
    .line 523
    .line 524
    move-result-object v8

    .line 525
    invoke-static {v8}, Lcoil/Coil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcoil/ImageLoader;

    .line 526
    .line 527
    .line 528
    move-result-object v8

    .line 529
    iput-object v7, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$0:Ljava/lang/Object;

    .line 530
    .line 531
    iput-object v6, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$1:Ljava/lang/Object;

    .line 532
    .line 533
    iput-object v5, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$2:Ljava/lang/Object;

    .line 534
    .line 535
    iput-object v15, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$3:Ljava/lang/Object;

    .line 536
    .line 537
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$4:Ljava/lang/Object;

    .line 538
    .line 539
    iput-object v13, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$5:Ljava/lang/Object;

    .line 540
    .line 541
    iput-object v1, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$6:Ljava/lang/Object;

    .line 542
    .line 543
    const/4 v9, 0x2

    .line 544
    iput v9, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->label:I

    .line 545
    .line 546
    invoke-interface {v8, v4, v0}, Lcoil/ImageLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    if-ne v4, v2, :cond_10

    .line 551
    .line 552
    goto/16 :goto_13

    .line 553
    .line 554
    :cond_10
    :goto_c
    check-cast v4, Lcoil/request/ImageResult;

    .line 555
    .line 556
    invoke-virtual {v4}, Lcoil/request/ImageResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 557
    .line 558
    .line 559
    move-result-object v20

    .line 560
    if-eqz v20, :cond_11

    .line 561
    .line 562
    const/16 v24, 0x7

    .line 563
    .line 564
    const/16 v25, 0x0

    .line 565
    .line 566
    const/16 v21, 0x0

    .line 567
    .line 568
    const/16 v22, 0x0

    .line 569
    .line 570
    const/16 v23, 0x0

    .line 571
    .line 572
    invoke-static/range {v20 .. v25}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    goto :goto_d

    .line 577
    :catch_8
    move-object v4, v15

    .line 578
    goto :goto_e

    .line 579
    :cond_11
    const/4 v4, 0x0

    .line 580
    :goto_d
    sget-object v8, Lcom/changdu/mobovideo/plugins/BitmapUtils;->INSTANCE:Lcom/changdu/mobovideo/plugins/BitmapUtils;

    .line 581
    .line 582
    invoke-static/range {v16 .. v16}, Lcom/changdu/mobovideo/utils/BizKtExtKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)F

    .line 583
    .line 584
    .line 585
    move-result v9

    .line 586
    invoke-virtual {v8, v4, v9}, Lcom/changdu/mobovideo/plugins/BitmapUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 587
    .line 588
    .line 589
    move-result-object v8

    .line 590
    if-eqz v4, :cond_12

    .line 591
    .line 592
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 593
    .line 594
    .line 595
    goto :goto_f

    .line 596
    :goto_e
    move-object v15, v4

    .line 597
    const/4 v8, 0x0

    .line 598
    :cond_12
    :goto_f
    move-object/from16 v27, v8

    .line 599
    .line 600
    :goto_10
    move-object/from16 v26, v1

    .line 601
    .line 602
    move-object/from16 v24, v3

    .line 603
    .line 604
    move-object/from16 v22, v5

    .line 605
    .line 606
    move-object/from16 v21, v6

    .line 607
    .line 608
    move-object/from16 v25, v7

    .line 609
    .line 610
    move-object/from16 v28, v13

    .line 611
    .line 612
    move-object/from16 v23, v15

    .line 613
    .line 614
    goto :goto_12

    .line 615
    :cond_13
    :goto_11
    const/16 v27, 0x0

    .line 616
    .line 617
    goto :goto_10

    .line 618
    :goto_12
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    new-instance v20, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1$2;

    .line 623
    .line 624
    const/16 v29, 0x0

    .line 625
    .line 626
    invoke-direct/range {v20 .. v29}, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Intent;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 627
    .line 628
    .line 629
    move-object/from16 v4, v20

    .line 630
    .line 631
    const/4 v3, 0x0

    .line 632
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$0:Ljava/lang/Object;

    .line 633
    .line 634
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$1:Ljava/lang/Object;

    .line 635
    .line 636
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$2:Ljava/lang/Object;

    .line 637
    .line 638
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$3:Ljava/lang/Object;

    .line 639
    .line 640
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$4:Ljava/lang/Object;

    .line 641
    .line 642
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$5:Ljava/lang/Object;

    .line 643
    .line 644
    iput-object v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->L$6:Ljava/lang/Object;

    .line 645
    .line 646
    const/4 v3, 0x3

    .line 647
    iput v3, v0, Lcom/changdu/mobovideo/utils/NotificationUtil$notifyLocalPush$1;->label:I

    .line 648
    .line 649
    invoke-static {v1, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    if-ne v1, v2, :cond_14

    .line 654
    .line 655
    :goto_13
    return-object v2

    .line 656
    :cond_14
    :goto_14
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 657
    .line 658
    return-object v1
.end method
