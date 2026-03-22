.class final Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$2"
    f = "MediaNotificationManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $playbackRate:F

.field final synthetic $position:D

.field label:I

.field final synthetic this$0:Lcom/changdu/mobovideo/media/MediaNotificationManager;


# direct methods
.method public constructor <init>(Lcom/changdu/mobovideo/media/MediaNotificationManager;DFLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/changdu/mobovideo/media/MediaNotificationManager;",
            "DF",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->this$0:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->$position:D

    .line 4
    .line 5
    iput p4, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->$playbackRate:F

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    new-instance v0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->this$0:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->$position:D

    .line 6
    .line 7
    iget v4, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->$playbackRate:F

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;-><init>(Lcom/changdu/mobovideo/media/MediaNotificationManager;DFLkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->this$0:Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->$position:D

    .line 14
    .line 15
    iget v2, p0, Lcom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$2;->$playbackRate:F

    .line 16
    .line 17
    invoke-static {p1, v0, v1, v2}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/media/MediaNotificationManager;DF)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p1

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
.end method
