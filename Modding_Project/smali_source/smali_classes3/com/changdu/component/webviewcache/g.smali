.class public final Lcom/changdu/component/webviewcache/g;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/g;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/changdu/component/webviewcache/g;->b:Z

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
    new-instance p1, Lcom/changdu/component/webviewcache/g;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/webviewcache/g;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/changdu/component/webviewcache/g;->b:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/webviewcache/g;-><init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;ZLkotlin/coroutines/Continuation;)V

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
    new-instance p1, Lcom/changdu/component/webviewcache/g;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/component/webviewcache/g;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/changdu/component/webviewcache/g;->b:Z

    .line 10
    .line 11
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/webviewcache/g;-><init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;ZLkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/changdu/component/webviewcache/g;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/changdu/component/webviewcache/g;->b:Z

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->nativeTitleBarVisible(Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
