.class public final Lcom/changdu/component/webviewcache/m;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lorg/json/JSONObject;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/m;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/webviewcache/m;->b:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/webviewcache/m;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/changdu/component/webviewcache/m;->d:I

    .line 8
    .line 9
    iput p5, p0, Lcom/changdu/component/webviewcache/m;->e:I

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lcom/changdu/component/webviewcache/m;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/webviewcache/m;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/component/webviewcache/m;->b:Lorg/json/JSONObject;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/component/webviewcache/m;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/changdu/component/webviewcache/m;->d:I

    .line 10
    .line 11
    iget v5, p0, Lcom/changdu/component/webviewcache/m;->e:I

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/changdu/component/webviewcache/m;-><init>(Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lorg/json/JSONObject;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/webviewcache/m;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/webviewcache/m;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/webviewcache/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/changdu/component/webviewcache/m;->a:Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/changdu/component/webviewcache/m;->b:Lorg/json/JSONObject;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/changdu/component/webviewcache/m;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget v2, p0, Lcom/changdu/component/webviewcache/m;->d:I

    .line 14
    .line 15
    iget v3, p0, Lcom/changdu/component/webviewcache/m;->e:I

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->readBook(Lorg/json/JSONObject;Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p1
.end method
