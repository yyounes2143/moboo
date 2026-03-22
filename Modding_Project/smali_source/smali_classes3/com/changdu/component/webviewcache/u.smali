.class public final Lcom/changdu/component/webviewcache/u;
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

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/u;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/webviewcache/u;->b:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/webviewcache/u;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/component/webviewcache/u;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/changdu/component/webviewcache/u;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/changdu/component/webviewcache/u;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/changdu/component/webviewcache/u;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/changdu/component/webviewcache/u;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/changdu/component/webviewcache/u;->i:Ljava/lang/String;

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    new-instance v0, Lcom/changdu/component/webviewcache/u;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/webviewcache/u;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/component/webviewcache/u;->b:Lorg/json/JSONObject;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/component/webviewcache/u;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/component/webviewcache/u;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/changdu/component/webviewcache/u;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/changdu/component/webviewcache/u;->f:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/changdu/component/webviewcache/u;->g:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/changdu/component/webviewcache/u;->h:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/changdu/component/webviewcache/u;->i:Ljava/lang/String;

    .line 20
    .line 21
    move-object v10, p2

    .line 22
    invoke-direct/range {v0 .. v10}, Lcom/changdu/component/webviewcache/u;-><init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/webviewcache/u;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/webviewcache/u;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/component/webviewcache/u;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/changdu/component/webviewcache/u;->b:Lorg/json/JSONObject;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/changdu/component/webviewcache/u;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/changdu/component/webviewcache/u;->d:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/changdu/component/webviewcache/u;->e:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/changdu/component/webviewcache/u;->f:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v6, p0, Lcom/changdu/component/webviewcache/u;->g:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v7, p0, Lcom/changdu/component/webviewcache/u;->h:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v8, p0, Lcom/changdu/component/webviewcache/u;->i:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual/range {v0 .. v8}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->paySubs(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p1
.end method
