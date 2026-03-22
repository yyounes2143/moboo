.class public final Lcom/changdu/component/pay/google/o;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/changdu/component/pay/base/model/PayRequestItem;

.field public final synthetic b:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;


# direct methods
.method public constructor <init>(Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/o;->a:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/pay/google/o;->b:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

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
    new-instance p1, Lcom/changdu/component/pay/google/o;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/pay/google/o;->a:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/pay/google/o;->b:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/pay/google/o;-><init>(Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Lkotlin/coroutines/Continuation;)V

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
    new-instance p1, Lcom/changdu/component/pay/google/o;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/component/pay/google/o;->a:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/changdu/component/pay/google/o;->b:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/pay/google/o;-><init>(Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/google/o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
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
    sget-object p1, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 8
    .line 9
    new-instance v0, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/changdu/component/pay/google/o;->a:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/changdu/component/pay/google/o;->b:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "\u53d1\u8d77\u8d2d\u4e70\uff1a\npayRequestItem: "

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "\npayCreateOrderResult: "

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/16 v7, 0x3c

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const-string v1, "PayBizWatch"

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    invoke-direct/range {v0 .. v8}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/changdu/component/pay/base/CDPay;->notifyReceiveReportMessage(Lcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p1
.end method
