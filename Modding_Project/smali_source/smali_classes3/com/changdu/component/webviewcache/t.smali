.class public final Lcom/changdu/component/webviewcache/t;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

.field public final synthetic c:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/t;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/webviewcache/t;->c:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

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

    .line 1
    new-instance p1, Lcom/changdu/component/webviewcache/t;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/webviewcache/t;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/webviewcache/t;->c:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/webviewcache/t;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    new-instance p1, Lcom/changdu/component/webviewcache/t;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/component/webviewcache/t;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/changdu/component/webviewcache/t;->c:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/webviewcache/t;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/changdu/component/webviewcache/t;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/changdu/component/webviewcache/t;->b:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->getParamsJson()Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string p1, "money"

    .line 34
    .line 35
    const-string v1, "0"

    .line 36
    .line 37
    invoke-virtual {v5, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-string p1, "itemId"

    .line 42
    .line 43
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    const-string p1, "hwItemId"

    .line 48
    .line 49
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    const-string p1, "paySource"

    .line 54
    .line 55
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    const-string p1, "customData"

    .line 60
    .line 61
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v3, Lcom/changdu/component/webviewcache/s;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/changdu/component/webviewcache/t;->c:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    invoke-direct/range {v3 .. v11}, Lcom/changdu/component/webviewcache/s;-><init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 75
    .line 76
    .line 77
    iput v2, p0, Lcom/changdu/component/webviewcache/t;->a:I

    .line 78
    .line 79
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-ne p1, v0, :cond_2

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p1
.end method
