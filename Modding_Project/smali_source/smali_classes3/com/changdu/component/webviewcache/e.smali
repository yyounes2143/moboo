.class public final Lcom/changdu/component/webviewcache/e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/changdu/component/webviewcache/CDJsInterface;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic d:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDJsInterface;Ljava/lang/String;Lorg/json/JSONObject;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/e;->a:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/webviewcache/e;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/webviewcache/e;->c:Lorg/json/JSONObject;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/component/webviewcache/e;->d:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lcom/changdu/component/webviewcache/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/webviewcache/e;->a:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/component/webviewcache/e;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/component/webviewcache/e;->c:Lorg/json/JSONObject;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/component/webviewcache/e;->d:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/changdu/component/webviewcache/e;-><init>(Lcom/changdu/component/webviewcache/CDJsInterface;Ljava/lang/String;Lorg/json/JSONObject;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/webviewcache/e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/webviewcache/e;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/changdu/component/webviewcache/e;->a:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/changdu/component/webviewcache/CDJsInterface;->access$getMWebView$p(Lcom/changdu/component/webviewcache/CDJsInterface;)Lcom/changdu/component/webviewcache/CDWebView;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/changdu/component/webviewcache/e;->b:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/changdu/component/webviewcache/e;->c:Lorg/json/JSONObject;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/changdu/component/webviewcache/e;->d:Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v2}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->onReceiveJsBridgeRequest(Ljava/lang/String;Lorg/json/JSONObject;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;)Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method
