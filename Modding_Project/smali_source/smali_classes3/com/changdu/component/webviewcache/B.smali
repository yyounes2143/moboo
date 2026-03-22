.class public final Lcom/changdu/component/webviewcache/B;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Proguard"


# instance fields
.field public a:Lcom/changdu/component/webviewcache/CDWebView;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/changdu/component/webviewcache/CDJsInterface;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/B;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/changdu/component/webviewcache/B;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/changdu/component/webviewcache/B;->d:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/changdu/component/webviewcache/B;->d:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/changdu/component/webviewcache/B;->c:Lcom/changdu/component/webviewcache/CDJsInterface;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, p0}, Lcom/changdu/component/webviewcache/CDJsInterface;->access$responseToWebView(Lcom/changdu/component/webviewcache/CDJsInterface;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
