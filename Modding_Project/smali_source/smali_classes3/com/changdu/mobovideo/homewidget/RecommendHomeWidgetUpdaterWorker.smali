.class public final Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;
.super Landroidx/work/CoroutineWorker;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u0096@\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "",
        "imageUrl",
        "Landroid/graphics/Bitmap;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
    iput-object p1, p0, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$loadImage$2;

    .line 16
    .line 17
    invoke-direct {v2, p1, v0}, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$loadImage$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "RecommendHomeWidgetProvider"

    const-class v3, Lcom/changdu/mobovideo/MainActivity;

    instance-of v4, v1, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;

    iget v5, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;

    invoke-direct {v4, v0, v1}, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;-><init>(Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 1
    iget v6, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->label:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v6, :cond_6

    if-eq v6, v10, :cond_5

    if-eq v6, v9, :cond_4

    if-eq v6, v8, :cond_3

    if-eq v6, v7, :cond_2

    const/4 v5, 0x5

    if-ne v6, v5, :cond_1

    iget-object v5, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$7:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    iget-object v6, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$6:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    iget-object v7, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$5:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    iget-object v8, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v9, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v10, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v14, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v4, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/changdu/mobovideo/entity/RecommendHomeWidgetEntity;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_d

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v6, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$6:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    iget-object v7, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$5:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    iget-object v8, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v9, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v10, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v14, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v15, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/changdu/mobovideo/entity/RecommendHomeWidgetEntity;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_b

    :cond_3
    iget-object v6, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$5:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    iget-object v8, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v9, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v10, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v14, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v15, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/changdu/mobovideo/entity/RecommendHomeWidgetEntity;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_a

    :cond_4
    iget-object v6, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v9, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v10, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v14, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v15, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/changdu/mobovideo/entity/RecommendHomeWidgetEntity;

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    :try_start_4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v6, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$entity$1;

    invoke-direct {v6, v12}, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$entity$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput v10, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->label:I

    invoke-static {v1, v6, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_7

    goto/16 :goto_c

    .line 3
    :cond_7
    :goto_1
    check-cast v1, Lcom/changdu/mobovideo/entity/RecommendHomeWidgetEntity;

    if-eqz v1, :cond_8

    .line 4
    invoke-virtual {v1}, Lcom/changdu/mobovideo/entity/RecommendHomeWidgetEntity;->getSeriesList()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    goto :goto_2

    :cond_8
    move-object v6, v12

    :goto_2
    if-eqz v6, :cond_9

    .line 5
    invoke-static {v6, v13}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    goto :goto_3

    :cond_9
    move-object v14, v12

    :goto_3
    if-eqz v6, :cond_a

    .line 6
    invoke-static {v6, v10}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    goto :goto_4

    :cond_a
    move-object v10, v12

    :goto_4
    if-eqz v6, :cond_b

    .line 7
    invoke-static {v6, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    goto :goto_5

    :cond_b
    move-object v15, v12

    :goto_5
    if-eqz v6, :cond_c

    .line 8
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    goto :goto_6

    :cond_c
    move-object v6, v12

    :goto_6
    if-eqz v14, :cond_e

    .line 9
    invoke-virtual {v14}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_d

    goto :goto_7

    :cond_d
    move-object/from16 v12, v16

    goto :goto_8

    :cond_e
    :goto_7
    move-object v12, v11

    :goto_8
    iput-object v1, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v14, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v10, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v15, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput v9, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->label:I

    invoke-direct {v0, v12, v4}, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_f

    goto/16 :goto_c

    :cond_f
    move-object/from16 v21, v15

    move-object v15, v1

    move-object v1, v9

    move-object/from16 v9, v21

    .line 10
    :goto_9
    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_10

    .line 11
    invoke-virtual {v10}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_11

    :cond_10
    move-object v12, v11

    :cond_11
    iput-object v15, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v14, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v10, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v9, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput-object v1, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$5:Ljava/lang/Object;

    iput v8, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->label:I

    invoke-direct {v0, v12, v4}, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_12

    goto :goto_c

    :cond_12
    move-object/from16 v21, v6

    move-object v6, v1

    move-object v1, v8

    move-object/from16 v8, v21

    .line 12
    :goto_a
    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_13

    .line 13
    invoke-virtual {v9}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_14

    :cond_13
    move-object v12, v11

    :cond_14
    iput-object v15, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v14, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v10, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v9, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v8, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput-object v6, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$5:Ljava/lang/Object;

    iput-object v1, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$6:Ljava/lang/Object;

    iput v7, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->label:I

    invoke-direct {v0, v12, v4}, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_15

    goto :goto_c

    :cond_15
    move-object/from16 v21, v6

    move-object v6, v1

    move-object v1, v7

    move-object/from16 v7, v21

    .line 14
    :goto_b
    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_16

    .line 15
    invoke-virtual {v8}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_17

    :cond_16
    move-object v12, v11

    :cond_17
    iput-object v15, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v14, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v10, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v9, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v8, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput-object v7, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$5:Ljava/lang/Object;

    iput-object v6, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$6:Ljava/lang/Object;

    iput-object v1, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->L$7:Ljava/lang/Object;

    const/4 v13, 0x5

    iput v13, v4, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker$doWork$1;->label:I

    invoke-direct {v0, v12, v4}, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_18

    :goto_c
    return-object v5

    :cond_18
    move-object v5, v1

    move-object v1, v4

    move-object v4, v15

    .line 16
    :goto_d
    check-cast v1, Landroid/graphics/Bitmap;

    .line 17
    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v0, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    const-class v15, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetProvider;

    invoke-direct {v12, v13, v15}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    new-instance v13, Landroid/widget/RemoteViews;

    iget-object v15, v0, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v4

    const v4, 0x7f0b00d4

    invoke-direct {v13, v15, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    sget-object v4, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->INSTANCE:Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;

    .line 20
    iget-object v15, v0, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 21
    invoke-virtual {v4, v15, v3, v2, v11}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v15

    move-object/from16 v18, v8

    const v8, 0x7f0802a7

    .line 22
    invoke-virtual {v13, v8, v15}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 23
    iget-object v8, v0, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    const v15, 0x7f110026

    invoke-virtual {v8, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v17, :cond_1a

    .line 24
    invoke-virtual/range {v17 .. v17}, Lcom/changdu/mobovideo/entity/RecommendHomeWidgetEntity;->getTitle()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_19

    goto :goto_e

    :cond_19
    move-object/from16 v19, v9

    goto :goto_f

    :cond_1a
    :goto_e
    iget-object v15, v0, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    move-object/from16 v19, v9

    const v9, 0x7f110349

    invoke-virtual {v15, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u00b7"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f080348

    .line 25
    invoke-virtual {v13, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v8, 0x7f08026b

    const/16 v9, 0x8

    if-eqz v17, :cond_2c

    .line 26
    invoke-virtual/range {v17 .. v17}, Lcom/changdu/mobovideo/entity/RecommendHomeWidgetEntity;->getSeriesList()Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_2c

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1b

    goto/16 :goto_18

    .line 27
    :cond_1b
    invoke-virtual {v13, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v8, 0x7f0802f2

    const/4 v15, 0x0

    .line 28
    invoke-virtual {v13, v8, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const v9, 0x7f080136

    .line 29
    const-string v8, ")"

    move-object/from16 v20, v10

    const-string v10, "ndaction:playvideo(seriesid="

    if-eqz v7, :cond_1f

    .line 30
    :try_start_5
    invoke-virtual {v13, v9, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 31
    invoke-virtual {v13, v9, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v7, 0x7f080256

    .line 32
    invoke-virtual {v13, v7, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v14, :cond_1c

    .line 33
    invoke-virtual {v14}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1d

    :cond_1c
    move-object v9, v11

    :cond_1d
    invoke-virtual {v13, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 34
    iget-object v7, v0, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    if-eqz v14, :cond_1e

    .line 35
    invoke-virtual {v14}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesId()J

    move-result-wide v14

    invoke-static {v14, v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_10

    :cond_1e
    const/4 v9, 0x0

    :goto_10
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 36
    invoke-virtual {v4, v7, v3, v2, v9}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    const v9, 0x7f0802ee

    .line 37
    invoke-virtual {v13, v9, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_11

    :cond_1f
    const/16 v7, 0x8

    .line 38
    invoke-virtual {v13, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v9, 0x7f080256

    .line 39
    invoke-virtual {v13, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_11
    const v7, 0x7f080257

    const v9, 0x7f080137

    if-eqz v6, :cond_23

    const/4 v15, 0x0

    .line 40
    invoke-virtual {v13, v9, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 41
    invoke-virtual {v13, v9, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 42
    invoke-virtual {v13, v7, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v20, :cond_20

    .line 43
    invoke-virtual/range {v20 .. v20}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_21

    :cond_20
    move-object v6, v11

    :cond_21
    invoke-virtual {v13, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 44
    iget-object v6, v0, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    if-eqz v20, :cond_22

    .line 45
    invoke-virtual/range {v20 .. v20}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesId()J

    move-result-wide v14

    invoke-static {v14, v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_12

    :cond_22
    const/4 v7, 0x0

    :goto_12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-virtual {v4, v6, v3, v2, v7}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    const v7, 0x7f0802ef

    .line 47
    invoke-virtual {v13, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_13

    :cond_23
    const/16 v6, 0x8

    .line 48
    invoke-virtual {v13, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 49
    invoke-virtual {v13, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_13
    const v6, 0x7f080258

    const v7, 0x7f080138

    if-eqz v5, :cond_27

    const/4 v15, 0x0

    .line 50
    invoke-virtual {v13, v7, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 51
    invoke-virtual {v13, v7, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 52
    invoke-virtual {v13, v6, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v19, :cond_24

    .line 53
    invoke-virtual/range {v19 .. v19}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_25

    :cond_24
    move-object v5, v11

    :cond_25
    invoke-virtual {v13, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 54
    iget-object v5, v0, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    if-eqz v19, :cond_26

    .line 55
    invoke-virtual/range {v19 .. v19}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_14

    :cond_26
    const/4 v6, 0x0

    :goto_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    const v6, 0x7f0802f0

    .line 57
    invoke-virtual {v13, v6, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_15

    :cond_27
    const/16 v5, 0x8

    .line 58
    invoke-virtual {v13, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 59
    invoke-virtual {v13, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_15
    const v5, 0x7f080259

    const v6, 0x7f080139

    if-eqz v1, :cond_2b

    const/4 v15, 0x0

    .line 60
    invoke-virtual {v13, v6, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 61
    invoke-virtual {v13, v6, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 62
    invoke-virtual {v13, v5, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v18, :cond_29

    .line 63
    invoke-virtual/range {v18 .. v18}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    goto :goto_16

    :cond_28
    move-object v11, v1

    :cond_29
    :goto_16
    invoke-virtual {v13, v5, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 64
    iget-object v1, v0, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    if-eqz v18, :cond_2a

    .line 65
    invoke-virtual/range {v18 .. v18}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_17

    :cond_2a
    const/4 v5, 0x0

    :goto_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual {v4, v1, v3, v2, v5}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0802f1

    .line 67
    invoke-virtual {v13, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_19

    :cond_2b
    const/16 v7, 0x8

    .line 68
    invoke-virtual {v13, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 69
    invoke-virtual {v13, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_19

    :cond_2c
    :goto_18
    const v1, 0x7f0802f2

    const/16 v7, 0x8

    .line 70
    invoke-virtual {v13, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v15, 0x0

    .line 71
    invoke-virtual {v13, v8, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v17, :cond_2d

    .line 72
    invoke-virtual/range {v17 .. v17}, Lcom/changdu/mobovideo/entity/RecommendHomeWidgetEntity;->getNoContentText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2e

    :cond_2d
    iget-object v1, v0, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    const v2, 0x7f110354

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    :cond_2e
    invoke-virtual {v13, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 74
    :goto_19
    iget-object v1, v0, Lcom/changdu/mobovideo/homewidget/RecommendHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v12, v13}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 76
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v1

    .line 77
    :catch_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    return-object v1
.end method
