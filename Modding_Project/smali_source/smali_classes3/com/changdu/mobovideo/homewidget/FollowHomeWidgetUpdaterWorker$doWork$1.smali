.class final Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.changdu.mobovideo.homewidget.FollowHomeWidgetUpdaterWorker"
    f = "FollowHomeWidgetProvider.kt"
    i = {
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4
    }
    l = {
        0x3c,
        0x49,
        0x4a,
        0x4b,
        0x4c
    }
    m = "doWork"
    n = {
        "entity",
        "series1",
        "series2",
        "series3",
        "series4",
        "entity",
        "series1",
        "series2",
        "series3",
        "series4",
        "imageBitmap1",
        "entity",
        "series1",
        "series2",
        "series3",
        "series4",
        "imageBitmap1",
        "imageBitmap2",
        "entity",
        "series1",
        "series2",
        "series3",
        "series4",
        "imageBitmap1",
        "imageBitmap2",
        "imageBitmap3"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
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
        "L$6",
        "L$7"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;


# direct methods
.method public constructor <init>(Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->this$0:Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$doWork$1;->this$0:Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
