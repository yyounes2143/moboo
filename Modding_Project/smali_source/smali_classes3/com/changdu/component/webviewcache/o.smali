.class public final Lcom/changdu/component/webviewcache/o;
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

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/o;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/webviewcache/o;->b:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/webviewcache/o;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/component/webviewcache/o;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/changdu/component/webviewcache/o;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/changdu/component/webviewcache/o;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput p7, p0, Lcom/changdu/component/webviewcache/o;->g:I

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
    new-instance v0, Lcom/changdu/component/webviewcache/o;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/webviewcache/o;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/component/webviewcache/o;->b:Lorg/json/JSONObject;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/component/webviewcache/o;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/component/webviewcache/o;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/changdu/component/webviewcache/o;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/changdu/component/webviewcache/o;->f:Ljava/lang/String;

    .line 14
    .line 15
    iget v7, p0, Lcom/changdu/component/webviewcache/o;->g:I

    .line 16
    .line 17
    move-object v8, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/changdu/component/webviewcache/o;-><init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/webviewcache/o;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/webviewcache/o;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/changdu/component/webviewcache/o;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/changdu/component/webviewcache/o;->b:Lorg/json/JSONObject;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/changdu/component/webviewcache/o;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/changdu/component/webviewcache/o;->d:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/changdu/component/webviewcache/o;->e:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/changdu/component/webviewcache/o;->f:Ljava/lang/String;

    .line 18
    .line 19
    iget p1, p0, Lcom/changdu/component/webviewcache/o;->g:I

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    if-ne p1, v6, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v6, 0x0

    .line 26
    :goto_0
    invoke-virtual/range {v0 .. v6}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->showBookList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p1
.end method
