.class final Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$setFollowHomeWidgetData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.changdu.mobovideo.plugins.CDHomeWidgetPlugin$setFollowHomeWidgetData$1"
    f = "CDHomeWidgetPlugin.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $call:Lio/flutter/plugin/common/MethodCall;

.field label:I


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodCall;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/MethodCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$setFollowHomeWidgetData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$setFollowHomeWidgetData$1;->$call:Lio/flutter/plugin/common/MethodCall;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$setFollowHomeWidgetData$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$setFollowHomeWidgetData$1;->$call:Lio/flutter/plugin/common/MethodCall;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$setFollowHomeWidgetData$1;-><init>(Lio/flutter/plugin/common/MethodCall;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$setFollowHomeWidgetData$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$setFollowHomeWidgetData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$setFollowHomeWidgetData$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$setFollowHomeWidgetData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$setFollowHomeWidgetData$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/changdu/mobovideo/plugins/CDHomeWidgetPlugin$setFollowHomeWidgetData$1;->$call:Lio/flutter/plugin/common/MethodCall;

    .line 12
    .line 13
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v0, p1, Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p1, Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    const-string v0, "FollowCache"

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    sget-object v1, Lcom/changdu/mobovideo/utils/AppBizDataManager;->INSTANCE:Lcom/changdu/mobovideo/utils/AppBizDataManager;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/changdu/mobovideo/utils/AppBizDataManager;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/utils/ALocalCache;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1, v0, p1}, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sget-object p1, Lcom/changdu/mobovideo/utils/AppBizDataManager;->INSTANCE:Lcom/changdu/mobovideo/utils/AppBizDataManager;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/changdu/mobovideo/utils/AppBizDataManager;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/utils/ALocalCache;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method
