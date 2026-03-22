.class public final Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;
.super Landroidx/work/CoroutineWorker;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001a\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;",
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
        "",
        "imageUrl",
        "Landroid/graphics/Bitmap;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
    iput-object p1, p0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    new-instance v2, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;

    .line 16
    .line 17
    invoke-direct {v2, p1, v0}, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
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

    const-string v2, "FollowHomeWidgetProvider"

    const-class v3, Lcom/changdu/mobovideo/MainActivity;

    instance-of v4, v1, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;

    iget v5, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v6, v5

    if-eqz v6, :cond_0

    const/high16 v1, -0x80000000

    sub-int/2addr v5, v1

    iput v5, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;

    invoke-direct {v4, v0, v1}, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;-><init>(Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 1
    iget v6, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->label:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v10, ""

    const/4 v11, 0x0

    if-eqz v6, :cond_6

    if-eq v6, v9, :cond_5

    if-eq v6, v8, :cond_4

    if-eq v6, v7, :cond_3

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    const/4 v5, 0x5

    if-ne v6, v5, :cond_1

    iget-object v5, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$7:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    iget-object v6, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$6:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    iget-object v7, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$5:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    iget-object v8, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v13, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v14, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v15, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v4, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v6, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$6:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    iget-object v7, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$5:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    iget-object v8, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v13, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v14, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v15, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v12, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v24, v14

    move-object v14, v12

    move-object/from16 v12, v24

    goto/16 :goto_8

    :cond_3
    iget-object v6, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$5:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    iget-object v7, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v8, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v12, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v13, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v14, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;

    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :cond_4
    iget-object v6, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v8, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v12, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v13, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    iget-object v14, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;

    :try_start_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v24, v14

    move-object v14, v6

    move-object/from16 v6, v24

    goto/16 :goto_6

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

    new-instance v6, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$entity$1;

    invoke-direct {v6, v11}, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$entity$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput v9, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->label:I

    invoke-static {v1, v6, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_7

    goto/16 :goto_9

    .line 3
    :cond_7
    :goto_1
    check-cast v1, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;

    if-eqz v1, :cond_8

    .line 4
    invoke-virtual {v1}, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;->getSeriesList()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_8

    const/4 v12, 0x0

    invoke-static {v6, v12}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    goto :goto_2

    :cond_8
    move-object v6, v11

    :goto_2
    if-eqz v1, :cond_9

    .line 5
    invoke-virtual {v1}, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;->getSeriesList()Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-static {v12, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    goto :goto_3

    :cond_9
    move-object v12, v11

    :goto_3
    if-eqz v1, :cond_a

    .line 6
    invoke-virtual {v1}, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;->getSeriesList()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-static {v13, v8}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    goto :goto_4

    :cond_a
    move-object v13, v11

    :goto_4
    if-eqz v1, :cond_b

    .line 7
    invoke-virtual {v1}, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;->getSeriesList()Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-static {v14, v7}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;

    goto :goto_5

    :cond_b
    move-object v14, v11

    :goto_5
    if-eqz v6, :cond_c

    .line 8
    invoke-virtual {v6}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_d

    :cond_c
    move-object v15, v10

    :cond_d
    iput-object v1, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v6, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v12, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v13, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v14, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput v8, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->label:I

    invoke-virtual {v0, v15, v4}, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_e

    goto/16 :goto_9

    :cond_e
    move-object/from16 v24, v6

    move-object v6, v1

    move-object v1, v8

    move-object v8, v13

    move-object/from16 v13, v24

    .line 9
    :goto_6
    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v12, :cond_f

    .line 10
    invoke-virtual {v12}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_10

    :cond_f
    move-object v15, v10

    :cond_10
    iput-object v6, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v13, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v12, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v8, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v14, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput-object v1, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$5:Ljava/lang/Object;

    iput v7, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->label:I

    invoke-virtual {v0, v15, v4}, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_11

    goto :goto_9

    :cond_11
    move-object/from16 v24, v6

    move-object v6, v1

    move-object v1, v7

    move-object v7, v14

    move-object/from16 v14, v24

    .line 11
    :goto_7
    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_12

    .line 12
    invoke-virtual {v8}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_13

    :cond_12
    move-object v15, v10

    :cond_13
    iput-object v14, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v13, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v12, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v8, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v7, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput-object v6, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$5:Ljava/lang/Object;

    iput-object v1, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$6:Ljava/lang/Object;

    const/4 v11, 0x4

    iput v11, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->label:I

    invoke-virtual {v0, v15, v4}, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v5, :cond_14

    goto :goto_9

    :cond_14
    move-object v15, v13

    move-object v13, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v1

    move-object v1, v11

    .line 13
    :goto_8
    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_15

    .line 14
    invoke-virtual {v8}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_16

    :cond_15
    move-object v11, v10

    :cond_16
    iput-object v14, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v15, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v12, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-object v13, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$3:Ljava/lang/Object;

    iput-object v8, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$4:Ljava/lang/Object;

    iput-object v7, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$5:Ljava/lang/Object;

    iput-object v6, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$6:Ljava/lang/Object;

    iput-object v1, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->L$7:Ljava/lang/Object;

    const/4 v9, 0x5

    iput v9, v4, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->label:I

    invoke-virtual {v0, v11, v4}, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_17

    :goto_9
    return-object v5

    :cond_17
    move-object v5, v1

    move-object v1, v4

    move-object v4, v14

    move-object v14, v12

    .line 15
    :goto_a
    check-cast v1, Landroid/graphics/Bitmap;

    .line 16
    new-instance v9, Landroid/content/ComponentName;

    iget-object v11, v0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    const-class v12, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetProvider;

    invoke-direct {v9, v11, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    new-instance v11, Landroid/widget/RemoteViews;

    iget-object v12, v0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v22, v4

    const v4, 0x7f0b0038

    invoke-direct {v11, v12, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 18
    sget-object v4, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->INSTANCE:Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;

    .line 19
    iget-object v12, v0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 20
    invoke-virtual {v4, v12, v3, v2, v10}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v23, v8

    const v8, 0x7f0802a7

    .line 21
    invoke-virtual {v11, v8, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 22
    iget-object v8, v0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 23
    const-string v12, "ndaction:tosignin()"

    .line 24
    invoke-virtual {v4, v8, v3, v2, v12}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    const v12, 0x7f0800a1

    .line 25
    invoke-virtual {v11, v12, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-eqz v22, :cond_18

    .line 26
    invoke-virtual/range {v22 .. v22}, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;->isSignIn()Z

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_18

    invoke-virtual/range {v22 .. v22}, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;->isClaimed()Z

    move-result v8

    if-ne v8, v12, :cond_18

    const v8, 0x7f080048

    const/16 v12, 0x8

    .line 27
    invoke-virtual {v11, v8, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v8, 0x7f08009c

    const/4 v12, 0x0

    .line 28
    invoke-virtual {v11, v8, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 29
    invoke-virtual/range {v22 .. v22}, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;->getClaimedText()Ljava/lang/String;

    move-result-object v12

    .line 30
    invoke-virtual {v11, v8, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object v8, v11

    goto :goto_f

    :cond_18
    const v8, 0x7f080048

    const/4 v12, 0x0

    .line 31
    invoke-virtual {v11, v8, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v8, 0x8

    const v12, 0x7f08009c

    .line 32
    invoke-virtual {v11, v12, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v22, :cond_19

    .line 33
    invoke-virtual/range {v22 .. v22}, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;->isSignIn()Z

    move-result v8

    if-nez v8, :cond_1a

    :cond_19
    move-object v8, v11

    goto :goto_b

    .line 34
    :cond_1a
    invoke-virtual/range {v22 .. v22}, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;->getClaimText()Ljava/lang/String;

    move-result-object v8

    const v12, 0x7f080048

    .line 35
    invoke-virtual {v11, v12, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v17, 0x7f080048

    const v18, 0x7f070117

    const/16 v19, 0x0

    move-object/from16 v16, v11

    .line 36
    invoke-virtual/range {v16 .. v21}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(IIIII)V

    move-object/from16 v8, v16

    goto :goto_f

    :goto_b
    if-eqz v22, :cond_1c

    .line 37
    invoke-virtual/range {v22 .. v22}, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;->getSignInText()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1b

    goto :goto_d

    :cond_1b
    :goto_c
    const v12, 0x7f080048

    goto :goto_e

    :cond_1c
    :goto_d
    iget-object v11, v0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    const v12, 0x7f110301

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_c

    .line 38
    :goto_e
    invoke-virtual {v8, v12, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_f
    const v11, 0x7f08026b

    if-eqz v22, :cond_2e

    .line 39
    invoke-virtual/range {v22 .. v22}, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;->getSeriesList()Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_2e

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1d

    goto/16 :goto_17

    :cond_1d
    const/16 v12, 0x8

    .line 40
    invoke-virtual {v8, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v11, 0x7f0802f2

    const/4 v12, 0x0

    .line 41
    invoke-virtual {v8, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 42
    const-string v11, ")"

    move-object/from16 v17, v10

    const-string v10, "ndaction:playvideo(seriesid="

    if-eqz v7, :cond_21

    move-object/from16 v18, v13

    const v13, 0x7f080136

    .line 43
    :try_start_5
    invoke-virtual {v8, v13, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 44
    invoke-virtual {v8, v13, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v7, 0x7f080256

    .line 45
    invoke-virtual {v8, v7, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v15, :cond_1e

    .line 46
    invoke-virtual {v15}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1f

    :cond_1e
    move-object/from16 v12, v17

    :cond_1f
    invoke-virtual {v8, v7, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 47
    iget-object v7, v0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    if-eqz v15, :cond_20

    .line 48
    invoke-virtual {v15}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesId()J

    move-result-wide v12

    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_10

    :cond_20
    const/4 v12, 0x0

    :goto_10
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 49
    invoke-virtual {v4, v7, v3, v2, v12}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    const v12, 0x7f0802ee

    .line 50
    invoke-virtual {v8, v12, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_11

    :cond_21
    move-object/from16 v18, v13

    const/16 v12, 0x8

    const v13, 0x7f080136

    .line 51
    invoke-virtual {v8, v13, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v7, 0x7f080256

    .line 52
    invoke-virtual {v8, v7, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_11
    const v7, 0x7f080257

    const v12, 0x7f080137

    if-eqz v6, :cond_25

    const/4 v13, 0x0

    .line 53
    invoke-virtual {v8, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 54
    invoke-virtual {v8, v12, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 55
    invoke-virtual {v8, v7, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v14, :cond_22

    .line 56
    invoke-virtual {v14}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_23

    :cond_22
    move-object/from16 v6, v17

    :cond_23
    invoke-virtual {v8, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 57
    iget-object v6, v0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    if-eqz v14, :cond_24

    .line 58
    invoke-virtual {v14}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesId()J

    move-result-wide v12

    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_12

    :cond_24
    const/4 v7, 0x0

    :goto_12
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 59
    invoke-virtual {v4, v6, v3, v2, v7}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    const v7, 0x7f0802ef

    .line 60
    invoke-virtual {v8, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_13

    :cond_25
    const/16 v6, 0x8

    .line 61
    invoke-virtual {v8, v12, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 62
    invoke-virtual {v8, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_13
    const v6, 0x7f080258

    const v7, 0x7f080138

    if-eqz v5, :cond_29

    const/4 v12, 0x0

    .line 63
    invoke-virtual {v8, v7, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 64
    invoke-virtual {v8, v7, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 65
    invoke-virtual {v8, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v18, :cond_26

    .line 66
    invoke-virtual/range {v18 .. v18}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_27

    :cond_26
    move-object/from16 v5, v17

    :cond_27
    invoke-virtual {v8, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 67
    iget-object v5, v0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    if-eqz v18, :cond_28

    .line 68
    invoke-virtual/range {v18 .. v18}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_14

    :cond_28
    const/4 v6, 0x0

    :goto_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    const v6, 0x7f0802f0

    .line 70
    invoke-virtual {v8, v6, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_15

    :cond_29
    const/16 v12, 0x8

    .line 71
    invoke-virtual {v8, v7, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 72
    invoke-virtual {v8, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_15
    const v5, 0x7f080259

    const v6, 0x7f080139

    if-eqz v1, :cond_2d

    const/4 v12, 0x0

    .line 73
    invoke-virtual {v8, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 74
    invoke-virtual {v8, v6, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 75
    invoke-virtual {v8, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v23, :cond_2a

    .line 76
    invoke-virtual/range {v23 .. v23}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    :cond_2a
    move-object/from16 v1, v17

    :cond_2b
    invoke-virtual {v8, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    iget-object v1, v0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    if-eqz v23, :cond_2c

    .line 78
    invoke-virtual/range {v23 .. v23}, Lcom/changdu/mobovideo/entity/SeriesHomeWidgetEntity;->getSeriesId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_16

    :cond_2c
    const/4 v5, 0x0

    :goto_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {v4, v1, v3, v2, v5}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0802f1

    .line 80
    invoke-virtual {v8, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_18

    :cond_2d
    const/16 v12, 0x8

    .line 81
    invoke-virtual {v8, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 82
    invoke-virtual {v8, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_18

    :cond_2e
    :goto_17
    const v1, 0x7f0802f2

    const/16 v12, 0x8

    .line 83
    invoke-virtual {v8, v1, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v12, 0x0

    .line 84
    invoke-virtual {v8, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v22, :cond_2f

    .line 85
    invoke-virtual/range {v22 .. v22}, Lcom/changdu/mobovideo/entity/FollowHomeWidgetEntity;->getNoContentText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    :cond_2f
    iget-object v1, v0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    const v2, 0x7f110354

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_30
    invoke-virtual {v8, v11, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 87
    :goto_18
    iget-object v1, v0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v9, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 89
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v1

    .line 90
    :catch_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    return-object v1
.end method
