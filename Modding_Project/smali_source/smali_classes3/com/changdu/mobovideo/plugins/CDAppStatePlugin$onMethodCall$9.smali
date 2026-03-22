.class final Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;
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
    c = "com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9"
    f = "CDAppStatePlugin.kt"
    i = {
        0x0
    }
    l = {
        0xc6,
        0xcb,
        0xcf
    }
    m = "invokeSuspend"
    n = {
        "desContent"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $call:Lio/flutter/plugin/common/MethodCall;

.field final synthetic $result:Lio/flutter/plugin/common/MethodChannel$Result;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/MethodCall;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->$call:Lio/flutter/plugin/common/MethodCall;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

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
    new-instance p1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->$call:Lio/flutter/plugin/common/MethodCall;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_3

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
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_3

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :try_start_2
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string p1, ""

    .line 54
    .line 55
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v6, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9$1;

    .line 62
    .line 63
    iget-object v7, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->$call:Lio/flutter/plugin/common/MethodCall;

    .line 64
    .line 65
    invoke-direct {v6, v7, v1, v5}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9$1;-><init>(Lio/flutter/plugin/common/MethodCall;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    iput v4, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->label:I

    .line 71
    .line 72
    invoke-static {p1, v6, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne p1, v0, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v4, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9$2;

    .line 84
    .line 85
    iget-object v6, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 86
    .line 87
    invoke-direct {v4, v6, v1, v5}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9$2;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 88
    .line 89
    .line 90
    iput-object v5, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    iput v3, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->label:I

    .line 93
    .line 94
    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    if-ne p1, v0, :cond_5

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    new-instance v3, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9$3;

    .line 106
    .line 107
    iget-object v4, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 108
    .line 109
    invoke-direct {v3, v4, p1, v5}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9$3;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    .line 110
    .line 111
    .line 112
    iput-object v5, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    iput v2, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$9;->label:I

    .line 115
    .line 116
    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-ne p1, v0, :cond_5

    .line 121
    .line 122
    :goto_2
    return-object v0

    .line 123
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    .line 125
    return-object p1
.end method
