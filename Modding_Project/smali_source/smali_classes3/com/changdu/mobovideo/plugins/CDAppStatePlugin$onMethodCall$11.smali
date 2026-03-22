.class final Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
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
    c = "com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$11"
    f = "CDAppStatePlugin.kt"
    i = {}
    l = {
        0xea,
        0xf2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $artist:Ljava/lang/String;

.field final synthetic $duration:D

.field final synthetic $imageUrl:Ljava/lang/String;

.field final synthetic $playbackRate:F

.field final synthetic $position:D

.field final synthetic $result:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic $title:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;


# direct methods
.method public constructor <init>(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DDF",
            "Ljava/lang/String;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->this$0:Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$title:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$artist:Ljava/lang/String;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$duration:D

    .line 8
    .line 9
    iput-wide p6, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$position:D

    .line 10
    .line 11
    iput p8, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$playbackRate:F

    .line 12
    .line 13
    iput-object p9, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$imageUrl:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p10, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12
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
    new-instance v0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->this$0:Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$title:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$artist:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$duration:D

    .line 10
    .line 11
    iget-wide v6, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$position:D

    .line 12
    .line 13
    iget v8, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$playbackRate:F

    .line 14
    .line 15
    iget-object v9, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$imageUrl:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v10, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 18
    .line 19
    move-object v11, p2

    .line 20
    invoke-direct/range {v0 .. v11}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;-><init>(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v10

    .line 5
    iget v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->label:I

    .line 6
    .line 7
    const/4 v11, 0x0

    .line 8
    const/4 v12, 0x2

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    if-ne v0, v12, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    move-object v0, p1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->this$0:Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;)Lcom/changdu/mobovideo/media/MediaNotificationManager;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget-object v2, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$title:Ljava/lang/String;

    .line 45
    .line 46
    move-object v3, v2

    .line 47
    iget-object v2, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$artist:Ljava/lang/String;

    .line 48
    .line 49
    move-object v5, v3

    .line 50
    iget-wide v3, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$duration:D

    .line 51
    .line 52
    move-object v7, v5

    .line 53
    iget-wide v5, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$position:D

    .line 54
    .line 55
    move-object v8, v7

    .line 56
    iget v7, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$playbackRate:F

    .line 57
    .line 58
    move-object v13, v8

    .line 59
    iget-object v8, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$imageUrl:Ljava/lang/String;

    .line 60
    .line 61
    iput v1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->label:I

    .line 62
    .line 63
    move-object v9, p0

    .line 64
    move-object v1, v13

    .line 65
    invoke-virtual/range {v0 .. v9}, Lcom/changdu/mobovideo/media/MediaNotificationManager;->Wwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-ne v0, v10, :cond_3

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move-object v0, v11

    .line 76
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v2, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11$1;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 83
    .line 84
    invoke-direct {v2, v3, v0, v11}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11$1;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    iput v12, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$11;->label:I

    .line 88
    .line 89
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-ne v0, v10, :cond_5

    .line 94
    .line 95
    :goto_2
    return-object v10

    .line 96
    :cond_5
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 97
    .line 98
    return-object v0
.end method
