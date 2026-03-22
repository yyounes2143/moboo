.class final Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.changdu.component.pay.base.CDPay$parsePayConfigXml$2"
    f = "CDPay.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $xmlStr:Ljava/lang/String;

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
            "Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;->$xmlStr:Ljava/lang/String;

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
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;->$xmlStr:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "AmountLimit"

    .line 4
    .line 5
    const-string v2, "PayId"

    .line 6
    .line 7
    const-string v3, "PayType"

    .line 8
    .line 9
    const-string v4, "Rate"

    .line 10
    .line 11
    const-string v5, "Name"

    .line 12
    .line 13
    const-string v6, "ViewType"

    .line 14
    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget v7, v1, Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;->label:I

    .line 19
    .line 20
    if-nez v7, :cond_17

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    new-instance v9, Lorg/xml/sax/InputSource;

    .line 34
    .line 35
    new-instance v10, Ljava/io/StringReader;

    .line 36
    .line 37
    iget-object v11, v1, Lcom/changdu/component/pay/base/CDPay$parsePayConfigXml$2;->$xmlStr:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {v10, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v9, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    const-string v9, "MerchandiseList"

    .line 54
    .line 55
    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMMerchandiseList$p()Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 64
    .line 65
    .line 66
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    const/4 v10, 0x0

    .line 71
    :goto_0
    if-ge v10, v9, :cond_16

    .line 72
    .line 73
    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    check-cast v12, Lorg/w3c/dom/Element;

    .line 78
    .line 79
    const-string v13, "Merchandise"

    .line 80
    .line 81
    invoke-interface {v12, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    const/4 v14, 0x0

    .line 90
    :goto_1
    if-ge v14, v13, :cond_15

    .line 91
    .line 92
    invoke-interface {v12, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 93
    .line 94
    .line 95
    move-result-object v15

    .line 96
    check-cast v15, Lorg/w3c/dom/Element;

    .line 97
    .line 98
    new-instance v16, Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;

    .line 99
    .line 100
    const/16 v22, 0xf

    .line 101
    .line 102
    const/16 v23, 0x0

    .line 103
    .line 104
    const-wide/16 v17, 0x0

    .line 105
    .line 106
    const/16 v19, 0x0

    .line 107
    .line 108
    const/16 v20, 0x0

    .line 109
    .line 110
    const/16 v21, 0x0

    .line 111
    .line 112
    invoke-direct/range {v16 .. v23}, Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;-><init>(JLjava/lang/String;ILjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    move-object/from16 v11, v16

    .line 116
    .line 117
    const-string v7, "Id"

    .line 118
    .line 119
    invoke-interface {v15, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    move-object/from16 v17, v8

    .line 124
    .line 125
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    invoke-virtual {v11, v7, v8}, Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;->setId(J)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v15, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v11, v7}, Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;->setName(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    if-eqz v7, :cond_1

    .line 144
    .line 145
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-nez v7, :cond_0

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_0
    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    invoke-virtual {v11, v7}, Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;->setRate(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    goto/16 :goto_d

    .line 166
    .line 167
    :cond_1
    :goto_2
    const-string v7, "ChannelList"

    .line 168
    .line 169
    invoke-interface {v15, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    const/4 v8, 0x0

    .line 174
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    check-cast v7, Lorg/w3c/dom/Element;

    .line 179
    .line 180
    const-string v8, "Category"

    .line 181
    .line 182
    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    const/4 v15, 0x0

    .line 191
    :goto_3
    if-ge v15, v8, :cond_14

    .line 192
    .line 193
    invoke-interface {v7, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 194
    .line 195
    .line 196
    move-result-object v18

    .line 197
    move-object/from16 v1, v18

    .line 198
    .line 199
    check-cast v1, Lorg/w3c/dom/Element;

    .line 200
    .line 201
    move-object/from16 v18, v4

    .line 202
    .line 203
    const-string v4, "Code"

    .line 204
    .line 205
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    new-instance v19, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;

    .line 214
    .line 215
    const/16 v25, 0x1f

    .line 216
    .line 217
    const/16 v26, 0x0

    .line 218
    .line 219
    const/16 v20, 0x0

    .line 220
    .line 221
    const/16 v21, 0x0

    .line 222
    .line 223
    const/16 v22, 0x0

    .line 224
    .line 225
    const/16 v23, 0x0

    .line 226
    .line 227
    const/16 v24, 0x0

    .line 228
    .line 229
    invoke-direct/range {v19 .. v26}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 230
    .line 231
    .line 232
    move-object/from16 v20, v7

    .line 233
    .line 234
    move-object/from16 v7, v19

    .line 235
    .line 236
    invoke-virtual {v7, v4}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->setCode(I)V

    .line 237
    .line 238
    .line 239
    move/from16 v19, v8

    .line 240
    .line 241
    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-virtual {v7, v8}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->setName(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    if-eqz v8, :cond_3

    .line 253
    .line 254
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    if-nez v8, :cond_2

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_2
    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    invoke-virtual {v7, v8}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->setViewType(I)V

    .line 270
    .line 271
    .line 272
    :cond_3
    :goto_4
    const-string v8, "SubTitle"

    .line 273
    .line 274
    invoke-interface {v1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    invoke-virtual {v7, v8}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->setSubTitle(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const-string v8, "Channel"

    .line 282
    .line 283
    invoke-interface {v1, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    move/from16 v21, v9

    .line 292
    .line 293
    const/4 v9, 0x0

    .line 294
    const/16 v22, 0x1

    .line 295
    .line 296
    :goto_5
    if-ge v9, v8, :cond_12

    .line 297
    .line 298
    new-instance v23, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;

    .line 299
    .line 300
    const/16 v31, 0x7f

    .line 301
    .line 302
    const/16 v32, 0x0

    .line 303
    .line 304
    const/16 v24, 0x0

    .line 305
    .line 306
    const/16 v25, 0x0

    .line 307
    .line 308
    const/16 v26, 0x0

    .line 309
    .line 310
    const/16 v27, 0x0

    .line 311
    .line 312
    const/16 v28, 0x0

    .line 313
    .line 314
    const/16 v29, 0x0

    .line 315
    .line 316
    const/16 v30, 0x0

    .line 317
    .line 318
    invoke-direct/range {v23 .. v32}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 319
    .line 320
    .line 321
    move/from16 v24, v8

    .line 322
    .line 323
    move-object/from16 v8, v23

    .line 324
    .line 325
    invoke-interface {v1, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 326
    .line 327
    .line 328
    move-result-object v23

    .line 329
    move-object/from16 v25, v1

    .line 330
    .line 331
    move-object/from16 v1, v23

    .line 332
    .line 333
    check-cast v1, Lorg/w3c/dom/Element;

    .line 334
    .line 335
    move/from16 v23, v9

    .line 336
    .line 337
    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    invoke-virtual {v8, v9}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->setName(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v9, "Descript"

    .line 345
    .line 346
    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    invoke-virtual {v8, v9}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->setDescription(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    if-eqz v9, :cond_5

    .line 358
    .line 359
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    if-nez v9, :cond_4

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_4
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v9

    .line 374
    invoke-virtual {v8, v9}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->setPayType(I)V

    .line 375
    .line 376
    .line 377
    :cond_5
    :goto_6
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    if-eqz v9, :cond_7

    .line 382
    .line 383
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 384
    .line 385
    .line 386
    move-result v9

    .line 387
    if-nez v9, :cond_6

    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_6
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    move-result v9

    .line 398
    invoke-virtual {v8, v9}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->setPayId(I)V

    .line 399
    .line 400
    .line 401
    :cond_7
    :goto_7
    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    if-eqz v9, :cond_9

    .line 406
    .line 407
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 408
    .line 409
    .line 410
    move-result v9

    .line 411
    if-nez v9, :cond_8

    .line 412
    .line 413
    goto :goto_8

    .line 414
    :cond_8
    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    move-result v9

    .line 422
    invoke-virtual {v8, v9}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->setViewType(I)V

    .line 423
    .line 424
    .line 425
    :cond_9
    :goto_8
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v9

    .line 429
    if-eqz v9, :cond_b

    .line 430
    .line 431
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    if-nez v9, :cond_a

    .line 436
    .line 437
    goto :goto_9

    .line 438
    :cond_a
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    move-result v9

    .line 446
    invoke-virtual {v8, v9}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->setAmountLimit(I)V

    .line 447
    .line 448
    .line 449
    :cond_b
    :goto_9
    const-string v9, "WeixinItems"

    .line 450
    .line 451
    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-virtual {v8, v1}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->setWeixinItems(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v7}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->getChannelList()Ljava/util/ArrayList;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    const/16 v1, 0xe

    .line 466
    .line 467
    if-ne v4, v1, :cond_c

    .line 468
    .line 469
    invoke-virtual {v7}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->getChannelList()Ljava/util/ArrayList;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    if-eqz v1, :cond_c

    .line 474
    .line 475
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    if-eqz v1, :cond_d

    .line 480
    .line 481
    :cond_c
    :goto_a
    move-object/from16 v26, v0

    .line 482
    .line 483
    goto/16 :goto_c

    .line 484
    .line 485
    :cond_d
    invoke-virtual {v7}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->getChannelList()Ljava/util/ArrayList;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    const/4 v8, 0x0

    .line 490
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    check-cast v1, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;

    .line 495
    .line 496
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->getWeixinItems()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    if-eqz v1, :cond_c

    .line 501
    .line 502
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    if-nez v1, :cond_e

    .line 507
    .line 508
    goto :goto_a

    .line 509
    :cond_e
    invoke-virtual {v7}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->getChannelList()Ljava/util/ArrayList;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    const/4 v8, 0x0

    .line 514
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    check-cast v1, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;

    .line 519
    .line 520
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->getWeixinItems()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    new-instance v8, Lkotlin/text/Regex;

    .line 525
    .line 526
    const-string v9, "\\|"

    .line 527
    .line 528
    invoke-direct {v8, v9}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    const/4 v9, 0x0

    .line 532
    invoke-virtual {v8, v1, v9}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 541
    .line 542
    .line 543
    move-result v8

    .line 544
    if-eqz v8, :cond_11

    .line 545
    .line 546
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v8

    .line 550
    move-object/from16 v26, v8

    .line 551
    .line 552
    check-cast v26, Ljava/lang/String;

    .line 553
    .line 554
    const-string v8, ","

    .line 555
    .line 556
    filled-new-array {v8}, [Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v27

    .line 560
    const/16 v30, 0x6

    .line 561
    .line 562
    const/16 v31, 0x0

    .line 563
    .line 564
    const/16 v28, 0x0

    .line 565
    .line 566
    const/16 v29, 0x0

    .line 567
    .line 568
    invoke-static/range {v26 .. v31}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 569
    .line 570
    .line 571
    move-result-object v8

    .line 572
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 573
    .line 574
    .line 575
    move-result v9

    .line 576
    move-object/from16 v26, v0

    .line 577
    .line 578
    const/4 v0, 0x2

    .line 579
    if-ge v9, v0, :cond_f

    .line 580
    .line 581
    move-object/from16 v0, v26

    .line 582
    .line 583
    goto :goto_b

    .line 584
    :cond_f
    const/4 v9, 0x0

    .line 585
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    check-cast v0, Ljava/lang/String;

    .line 590
    .line 591
    sget-object v9, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 592
    .line 593
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v9

    .line 597
    move-object/from16 v27, v1

    .line 598
    .line 599
    const/4 v1, 0x1

    .line 600
    invoke-static {v0, v9, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    if-eqz v0, :cond_10

    .line 605
    .line 606
    invoke-virtual {v7}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->getChannelList()Ljava/util/ArrayList;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    const/4 v9, 0x0

    .line 611
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    check-cast v0, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;

    .line 616
    .line 617
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v8

    .line 621
    check-cast v8, Ljava/lang/String;

    .line 622
    .line 623
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    invoke-virtual {v0, v1}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->setPayId(I)V

    .line 628
    .line 629
    .line 630
    goto :goto_c

    .line 631
    :cond_10
    move-object/from16 v0, v26

    .line 632
    .line 633
    move-object/from16 v1, v27

    .line 634
    .line 635
    goto :goto_b

    .line 636
    :cond_11
    move-object/from16 v26, v0

    .line 637
    .line 638
    const/16 v22, 0x0

    .line 639
    .line 640
    :goto_c
    add-int/lit8 v9, v23, 0x1

    .line 641
    .line 642
    move/from16 v8, v24

    .line 643
    .line 644
    move-object/from16 v1, v25

    .line 645
    .line 646
    move-object/from16 v0, v26

    .line 647
    .line 648
    goto/16 :goto_5

    .line 649
    .line 650
    :cond_12
    move-object/from16 v26, v0

    .line 651
    .line 652
    if-eqz v22, :cond_13

    .line 653
    .line 654
    invoke-virtual {v11}, Lcom/changdu/component/pay/base/model/PayServerConfigMerchandise;->getCategoryList()Ljava/util/ArrayList;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    :cond_13
    add-int/lit8 v15, v15, 0x1

    .line 662
    .line 663
    move-object/from16 v1, p0

    .line 664
    .line 665
    move-object/from16 v4, v18

    .line 666
    .line 667
    move/from16 v8, v19

    .line 668
    .line 669
    move-object/from16 v7, v20

    .line 670
    .line 671
    move/from16 v9, v21

    .line 672
    .line 673
    move-object/from16 v0, v26

    .line 674
    .line 675
    goto/16 :goto_3

    .line 676
    .line 677
    :cond_14
    move-object/from16 v26, v0

    .line 678
    .line 679
    move-object/from16 v18, v4

    .line 680
    .line 681
    move/from16 v21, v9

    .line 682
    .line 683
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMMerchandiseList$p()Ljava/util/ArrayList;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .line 689
    .line 690
    add-int/lit8 v14, v14, 0x1

    .line 691
    .line 692
    move-object/from16 v1, p0

    .line 693
    .line 694
    move-object/from16 v8, v17

    .line 695
    .line 696
    move-object/from16 v4, v18

    .line 697
    .line 698
    move/from16 v9, v21

    .line 699
    .line 700
    move-object/from16 v0, v26

    .line 701
    .line 702
    goto/16 :goto_1

    .line 703
    .line 704
    :cond_15
    move-object/from16 v26, v0

    .line 705
    .line 706
    move-object/from16 v18, v4

    .line 707
    .line 708
    move-object/from16 v17, v8

    .line 709
    .line 710
    move/from16 v21, v9

    .line 711
    .line 712
    add-int/lit8 v10, v10, 0x1

    .line 713
    .line 714
    move-object/from16 v1, p0

    .line 715
    .line 716
    goto/16 :goto_0

    .line 717
    .line 718
    :cond_16
    const/4 v1, 0x1

    .line 719
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    return-object v0

    .line 724
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 725
    .line 726
    .line 727
    const/16 v16, 0x0

    .line 728
    .line 729
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    return-object v0

    .line 734
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 735
    .line 736
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 737
    .line 738
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    throw v0
.end method
