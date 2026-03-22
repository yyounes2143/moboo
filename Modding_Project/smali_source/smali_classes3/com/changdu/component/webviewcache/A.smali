.class public final Lcom/changdu/component/webviewcache/A;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

.field public final synthetic c:Lcom/changdu/component/webviewcache/CDJsInterface;


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/A;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/webviewcache/A;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lcom/changdu/component/webviewcache/A;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/webviewcache/A;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/webviewcache/A;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/webviewcache/A;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    new-instance p1, Lcom/changdu/component/webviewcache/A;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/component/webviewcache/A;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/changdu/component/webviewcache/A;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/webviewcache/A;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/A;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const-string v0, "android"

    .line 2
    .line 3
    const-string v1, "dimen"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget v4, p0, Lcom/changdu/component/webviewcache/A;->a:I

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    if-ne v4, v5, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :try_start_1
    invoke-static {}, Lcom/changdu/component/core/CDComponent;->getInstance()Lcom/changdu/component/core/CDComponent;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v4, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v6, "sid"

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getSid()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const-string v6, "userId"

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getUserId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string v6, "chl"

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getChannel()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const-string v6, "mt"

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getMt()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-string v6, "pt"

    .line 80
    .line 81
    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    const-string v6, "ver"

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getServerProtocolVersion()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string v6, "uniqueAppId"

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getAppId()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    const-string v6, "langId"

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getLangId()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const-string v6, "x"

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getProductX()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    const-string v6, "coreVer"

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getCoreVersion()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    const-string v6, "appVer"

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getAppVersion()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    const-string v6, "sysVer"

    .line 147
    .line 148
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const-string v6, "device"

    .line 154
    .line 155
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    const-string v6, "sw"

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getScreenWidth()I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    const-string v6, "sh"

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getScreenHeight()I

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const-string v6, "androidId"

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getAndroidId()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    const-string v6, "gaid"

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getGoogleAdId()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    const-string v6, "imei"

    .line 205
    .line 206
    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    const-string v6, "guid"

    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getGuid()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    const-string v6, "xguid"

    .line 219
    .line 220
    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    const-string v2, "notchScreen"

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    const-string v7, "status_bar_height"

    .line 234
    .line 235
    invoke-virtual {v6, v7, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    const-string v2, "naviBarHeight"

    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/changdu/component/core/CDComponent;->getContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    const-string v6, "navigation_bar_height"

    .line 261
    .line 262
    invoke-virtual {p1, v6, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_2

    .line 267
    .line 268
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    goto :goto_0

    .line 273
    :cond_2
    const/4 p1, 0x0

    .line 274
    :goto_0
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {v4, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    iget-object p1, p0, Lcom/changdu/component/webviewcache/A;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 282
    .line 283
    invoke-virtual {p1, v4}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->setRespData(Ljava/util/Map;)V

    .line 284
    .line 285
    .line 286
    iget-object p1, p0, Lcom/changdu/component/webviewcache/A;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 287
    .line 288
    iget-object v0, p0, Lcom/changdu/component/webviewcache/A;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 289
    .line 290
    iput v5, p0, Lcom/changdu/component/webviewcache/A;->a:I

    .line 291
    .line 292
    invoke-static {p1, v0, p0}, Lcom/changdu/component/webviewcache/CDJsInterface;->access$responseToWebView(Lcom/changdu/component/webviewcache/CDJsInterface;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    if-ne p1, v3, :cond_3

    .line 297
    .line 298
    return-object v3

    .line 299
    :catch_0
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 300
    .line 301
    return-object p1
.end method
