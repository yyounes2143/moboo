.class public final Lcom/changdu/component/webviewcache/z;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lcom/changdu/component/webviewcache/CDJsInterface;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDJsInterface;Ljava/lang/String;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/z;->b:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/webviewcache/z;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/webviewcache/z;->d:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

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
    new-instance p1, Lcom/changdu/component/webviewcache/z;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/webviewcache/z;->b:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/webviewcache/z;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/changdu/component/webviewcache/z;->d:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/changdu/component/webviewcache/z;-><init>(Lcom/changdu/component/webviewcache/CDJsInterface;Ljava/lang/String;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/webviewcache/z;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/webviewcache/z;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/z;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/changdu/component/webviewcache/z;->a:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/changdu/component/webviewcache/z;->b:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/changdu/component/webviewcache/z;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/changdu/component/webviewcache/z;->d:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 34
    .line 35
    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 36
    .line 37
    iput v2, p0, Lcom/changdu/component/webviewcache/z;->a:I

    .line 38
    .line 39
    invoke-static {p1, v1, v3, p0}, Lcom/changdu/component/webviewcache/CDJsInterface;->access$handleReceivedRequest(Lcom/changdu/component/webviewcache/CDJsInterface;Ljava/lang/String;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p1
.end method
