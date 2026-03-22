.class public final Lcom/changdu/component/webviewcache/f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

.field public final synthetic c:Lcom/changdu/component/webviewcache/CDJsInterface;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/f;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/webviewcache/f;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/webviewcache/f;->d:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance p1, Lcom/changdu/component/webviewcache/f;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/webviewcache/f;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/webviewcache/f;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/changdu/component/webviewcache/f;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/changdu/component/webviewcache/f;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/webviewcache/f;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/webviewcache/f;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/changdu/component/webviewcache/f;->a:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/changdu/component/webviewcache/f;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->getParamsJson()Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v4, Lcom/changdu/component/webviewcache/e;

    .line 45
    .line 46
    iget-object v5, p0, Lcom/changdu/component/webviewcache/f;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 47
    .line 48
    iget-object v6, p0, Lcom/changdu/component/webviewcache/f;->d:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v8, p0, Lcom/changdu/component/webviewcache/f;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    invoke-direct/range {v4 .. v9}, Lcom/changdu/component/webviewcache/e;-><init>(Lcom/changdu/component/webviewcache/CDJsInterface;Ljava/lang/String;Lorg/json/JSONObject;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    iput v3, p0, Lcom/changdu/component/webviewcache/f;->a:I

    .line 57
    .line 58
    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-ne p1, v0, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/HashMap;

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/changdu/component/webviewcache/f;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->setRespData(Ljava/util/Map;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/changdu/component/webviewcache/f;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/changdu/component/webviewcache/f;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 84
    .line 85
    iput v2, p0, Lcom/changdu/component/webviewcache/f;->a:I

    .line 86
    .line 87
    invoke-static {p1, v1, p0}, Lcom/changdu/component/webviewcache/CDJsInterface;->access$responseToWebView(Lcom/changdu/component/webviewcache/CDJsInterface;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v0, :cond_5

    .line 92
    .line 93
    :goto_1
    return-object v0

    .line 94
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p1
.end method
