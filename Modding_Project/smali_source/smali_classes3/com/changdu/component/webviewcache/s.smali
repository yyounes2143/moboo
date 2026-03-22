.class public final Lcom/changdu/component/webviewcache/s;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/s;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/webviewcache/s;->b:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/webviewcache/s;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/component/webviewcache/s;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/changdu/component/webviewcache/s;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/changdu/component/webviewcache/s;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/changdu/component/webviewcache/s;->g:Ljava/lang/String;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    new-instance v0, Lcom/changdu/component/webviewcache/s;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/webviewcache/s;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/component/webviewcache/s;->b:Lorg/json/JSONObject;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/component/webviewcache/s;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/component/webviewcache/s;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/changdu/component/webviewcache/s;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/changdu/component/webviewcache/s;->f:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/changdu/component/webviewcache/s;->g:Ljava/lang/String;

    .line 16
    .line 17
    move-object v8, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/changdu/component/webviewcache/s;-><init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/webviewcache/s;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/webviewcache/s;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/component/webviewcache/s;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/changdu/component/webviewcache/s;->b:Lorg/json/JSONObject;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/changdu/component/webviewcache/s;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/changdu/component/webviewcache/s;->d:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/changdu/component/webviewcache/s;->e:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/changdu/component/webviewcache/s;->f:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v6, p0, Lcom/changdu/component/webviewcache/s;->g:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual/range {v0 .. v6}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->pay(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p1
.end method
