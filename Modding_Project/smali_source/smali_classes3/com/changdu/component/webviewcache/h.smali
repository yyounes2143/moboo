.class public final Lcom/changdu/component/webviewcache/h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

.field public final synthetic c:Lcom/changdu/component/webviewcache/CDJsInterface;

.field public final synthetic d:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/h;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/webviewcache/h;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/webviewcache/h;->d:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

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
    new-instance p1, Lcom/changdu/component/webviewcache/h;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/webviewcache/h;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/webviewcache/h;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/changdu/component/webviewcache/h;->d:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/changdu/component/webviewcache/h;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/webviewcache/h;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/webviewcache/h;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/changdu/component/webviewcache/h;->a:I

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
    iget-object p1, p0, Lcom/changdu/component/webviewcache/h;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->getParamsJson()Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v1, "visible"

    .line 41
    .line 42
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v4, Lcom/changdu/component/webviewcache/g;

    .line 51
    .line 52
    iget-object v5, p0, Lcom/changdu/component/webviewcache/h;->d:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    invoke-direct {v4, v5, p1, v6}, Lcom/changdu/component/webviewcache/g;-><init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;ZLkotlin/coroutines/Continuation;)V

    .line 56
    .line 57
    .line 58
    iput v3, p0, Lcom/changdu/component/webviewcache/h;->a:I

    .line 59
    .line 60
    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-ne p1, v0, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    new-instance v1, Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v3, "result"

    .line 83
    .line 84
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/changdu/component/webviewcache/h;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->setRespData(Ljava/util/Map;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/changdu/component/webviewcache/h;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/changdu/component/webviewcache/h;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 95
    .line 96
    iput v2, p0, Lcom/changdu/component/webviewcache/h;->a:I

    .line 97
    .line 98
    invoke-static {p1, v1, p0}, Lcom/changdu/component/webviewcache/CDJsInterface;->access$responseToWebView(Lcom/changdu/component/webviewcache/CDJsInterface;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-ne p1, v0, :cond_4

    .line 103
    .line 104
    :goto_1
    return-object v0

    .line 105
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p1
.end method
