.class public final Lcom/changdu/component/webviewcache/x;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Z

.field public final synthetic c:Lcom/changdu/component/webviewcache/CDJsInterface;


# direct methods
.method public constructor <init>(ZLcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/changdu/component/webviewcache/x;->b:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/webviewcache/x;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

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
    new-instance p1, Lcom/changdu/component/webviewcache/x;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/changdu/component/webviewcache/x;->b:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/webviewcache/x;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/webviewcache/x;-><init>(ZLcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V

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
    new-instance p1, Lcom/changdu/component/webviewcache/x;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/changdu/component/webviewcache/x;->b:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/changdu/component/webviewcache/x;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/webviewcache/x;-><init>(ZLcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/x;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
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
    iget v1, p0, Lcom/changdu/component/webviewcache/x;->a:I

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
    new-instance p1, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/changdu/component/webviewcache/x;->b:Z

    .line 33
    .line 34
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v3, "nativeVisible"

    .line 39
    .line 40
    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance v4, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 44
    .line 45
    const/4 v8, 0x6

    .line 46
    const/4 v9, 0x0

    .line 47
    const-string v5, "notifyNativeVisible"

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-direct/range {v4 .. v9}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p1}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->setRespData(Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/changdu/component/webviewcache/x;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 58
    .line 59
    iput v2, p0, Lcom/changdu/component/webviewcache/x;->a:I

    .line 60
    .line 61
    invoke-static {p1, v4, p0}, Lcom/changdu/component/webviewcache/CDJsInterface;->access$responseToWebView(Lcom/changdu/component/webviewcache/CDJsInterface;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p1
.end method
