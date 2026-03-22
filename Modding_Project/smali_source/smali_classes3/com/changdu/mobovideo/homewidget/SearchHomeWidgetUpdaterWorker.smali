.class public final Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker;
.super Landroidx/work/CoroutineWorker;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker;",
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
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/content/Context;",
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


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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
    iput-object p1, p0, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;-><init>(Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;->label:I

    .line 36
    .line 37
    const-string v5, "SearchHomeWidgetProvider"

    .line 38
    .line 39
    const-class v6, Lcom/changdu/mobovideo/MainActivity;

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    if-ne v4, v7, :cond_1

    .line 45
    .line 46
    iget-object v3, v2, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, Landroid/widget/RemoteViews;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Landroid/content/ComponentName;

    .line 53
    .line 54
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    .line 70
    .line 71
    iget-object v4, v0, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 72
    .line 73
    const-class v8, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetProvider;

    .line 74
    .line 75
    invoke-direct {v1, v4, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Landroid/widget/RemoteViews;

    .line 79
    .line 80
    iget-object v8, v0, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    const v9, 0x7f0b00d5

    .line 87
    .line 88
    .line 89
    invoke-direct {v4, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    sget-object v8, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->INSTANCE:Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;

    .line 93
    .line 94
    iget-object v9, v0, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 95
    .line 96
    const-string v10, "ndaction:tosearch()"

    .line 97
    .line 98
    invoke-virtual {v8, v9, v6, v5, v10}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    const v9, 0x7f0802a7

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v9, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    new-instance v9, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$entity$1;

    .line 113
    .line 114
    const/4 v10, 0x0

    .line 115
    invoke-direct {v9, v10}, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$entity$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, v2, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object v4, v2, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 121
    .line 122
    iput v7, v2, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker$doWork$1;->label:I

    .line 123
    .line 124
    invoke-static {v8, v9, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-ne v2, v3, :cond_3

    .line 129
    .line 130
    return-object v3

    .line 131
    :cond_3
    move-object v3, v2

    .line 132
    move-object v2, v1

    .line 133
    move-object v1, v3

    .line 134
    move-object v3, v4

    .line 135
    :goto_1
    check-cast v1, Lcom/changdu/mobovideo/entity/SearchHomeWidgetEntity;

    .line 136
    .line 137
    const v4, 0x7f08026b

    .line 138
    .line 139
    .line 140
    const/4 v8, 0x0

    .line 141
    const v9, 0x7f0802b7

    .line 142
    .line 143
    .line 144
    const v10, 0x7f0802b6

    .line 145
    .line 146
    .line 147
    const/16 v11, 0x8

    .line 148
    .line 149
    if-eqz v1, :cond_7

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/changdu/mobovideo/entity/SearchHomeWidgetEntity;->getSeriesList()Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    if-eqz v12, :cond_7

    .line 156
    .line 157
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-eqz v12, :cond_4

    .line 162
    .line 163
    goto/16 :goto_3

    .line 164
    .line 165
    :cond_4
    invoke-virtual {v3, v4, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/changdu/mobovideo/entity/SearchHomeWidgetEntity;->getSearchHintText()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const v12, 0x7f0802bf

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v12, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/changdu/mobovideo/entity/SearchHomeWidgetEntity;->getSeriesList()Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Ljava/lang/Iterable;

    .line 187
    .line 188
    const/4 v4, 0x2

    .line 189
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    check-cast v4, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    .line 199
    const-string v12, ")"

    .line 200
    .line 201
    const-string v13, "ndaction:tosearch(keyWords="

    .line 202
    .line 203
    if-eqz v4, :cond_5

    .line 204
    .line 205
    :try_start_2
    invoke-virtual {v3, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesName()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v14

    .line 212
    invoke-virtual {v3, v10, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    sget-object v14, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->INSTANCE:Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;

    .line 216
    .line 217
    iget-object v15, v0, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 218
    .line 219
    invoke-virtual {v4}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesName()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    new-instance v8, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {v14, v15, v6, v5, v4}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-virtual {v3, v10, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_5
    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 250
    .line 251
    .line 252
    :goto_2
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    .line 257
    .line 258
    if-eqz v1, :cond_6

    .line 259
    .line 260
    const/4 v4, 0x0

    .line 261
    invoke-virtual {v3, v9, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-virtual {v3, v9, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    sget-object v4, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->INSTANCE:Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;

    .line 272
    .line 273
    iget-object v7, v0, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesName()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    new-instance v8, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v4, v7, v6, v5, v1}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v3, v9, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_6
    invoke-virtual {v3, v9, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 306
    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/changdu/mobovideo/entity/SearchHomeWidgetEntity;->getNoContentText()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    if-nez v1, :cond_9

    .line 316
    .line 317
    :cond_8
    iget-object v1, v0, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 318
    .line 319
    const v5, 0x7f110354

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    :cond_9
    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    const/4 v1, 0x0

    .line 330
    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v9, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 337
    .line 338
    .line 339
    :goto_4
    iget-object v1, v0, Lcom/changdu/mobovideo/homewidget/SearchHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 340
    .line 341
    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 346
    .line 347
    .line 348
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 349
    .line 350
    .line 351
    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 352
    return-object v1

    .line 353
    :catch_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    return-object v1
.end method
