.class public final Lcom/changdu/component/webviewcache/D;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/D;->a:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lcom/changdu/component/webviewcache/D;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/webviewcache/D;->a:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/changdu/component/webviewcache/D;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    new-instance p1, Lcom/changdu/component/webviewcache/D;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/component/webviewcache/D;->a:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 8
    .line 9
    invoke-direct {p1, v0, p2}, Lcom/changdu/component/webviewcache/D;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/D;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/changdu/component/webviewcache/D;->a:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "{}"

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->clearParams()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/changdu/component/webviewcache/D;->a:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->toJsonStr()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
