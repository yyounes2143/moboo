.class public final Lcom/changdu/component/pay/google/a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/pay/google/OnPurchaseListener;


# instance fields
.field public final synthetic a:Lcom/changdu/component/pay/google/GooglePayActivity;


# direct methods
.method public constructor <init>(Lcom/changdu/component/pay/google/GooglePayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/a;->a:Lcom/changdu/component/pay/google/GooglePayActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/changdu/component/pay/google/a;->a:Lcom/changdu/component/pay/google/GooglePayActivity;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/changdu/component/pay/google/GooglePayActivity;->c(Lcom/changdu/component/pay/google/GooglePayActivity;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    if-nez p3, :cond_1

    .line 13
    .line 14
    move-object p3, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    :goto_0
    new-instance v7, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "bizErrorCode"

    .line 30
    .line 31
    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v10, p0, Lcom/changdu/component/pay/google/a;->a:Lcom/changdu/component/pay/google/GooglePayActivity;

    .line 35
    .line 36
    new-instance v1, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 37
    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    move-object p2, v0

    .line 41
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "GooglePlay \u652f\u4ed8\u5931\u8d25\nerrorCode: "

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, "\nerrorMsg: "

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p2, "\nthrowable: "

    .line 63
    .line 64
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object p2, p0, Lcom/changdu/component/pay/google/a;->a:Lcom/changdu/component/pay/google/GooglePayActivity;

    .line 75
    .line 76
    invoke-static {p2}, Lcom/changdu/component/pay/google/GooglePayActivity;->b(Lcom/changdu/component/pay/google/GooglePayActivity;)Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-object p2, v0

    .line 84
    :goto_1
    iget-object p3, p0, Lcom/changdu/component/pay/google/a;->a:Lcom/changdu/component/pay/google/GooglePayActivity;

    .line 85
    .line 86
    invoke-static {p3}, Lcom/changdu/component/pay/google/GooglePayActivity;->a(Lcom/changdu/component/pay/google/GooglePayActivity;)Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    if-eqz p3, :cond_4

    .line 91
    .line 92
    move-object v0, p3

    .line 93
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "payRequestItem: "

    .line 99
    .line 100
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p2, "\npayCreateOrderResult: "

    .line 107
    .line 108
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    const/16 v8, 0x19

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    const/4 v2, 0x0

    .line 122
    const/4 v5, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    invoke-direct/range {v1 .. v9}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v10, p1, v1}, Lcom/changdu/component/pay/google/GooglePayActivity;->a(Lcom/changdu/component/pay/google/GooglePayActivity;ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final onPurchasePaySuccess(Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/a;->a:Lcom/changdu/component/pay/google/GooglePayActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/changdu/component/pay/google/GooglePayActivity;->e:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getParameter()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    :cond_0
    move-object v1, v2

    .line 16
    :cond_1
    if-eqz p1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move-object v2, p1

    .line 26
    :cond_3
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/changdu/component/pay/google/GooglePayActivity;->a(Lcom/changdu/component/pay/google/GooglePayActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onReady()V
    .locals 11

    .line 1
    iget-object v4, p0, Lcom/changdu/component/pay/google/a;->a:Lcom/changdu/component/pay/google/GooglePayActivity;

    .line 2
    .line 3
    iget-boolean v0, v4, Lcom/changdu/component/pay/google/GooglePayActivity;->a:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, v4, Lcom/changdu/component/pay/google/GooglePayActivity;->a:Z

    .line 10
    .line 11
    iget-object v2, v4, Lcom/changdu/component/pay/google/GooglePayActivity;->c:Lcom/changdu/component/pay/google/x;

    .line 12
    .line 13
    if-eqz v2, :cond_5

    .line 14
    .line 15
    iget-object v1, v4, Lcom/changdu/component/pay/google/GooglePayActivity;->d:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 16
    .line 17
    iget-object v3, v4, Lcom/changdu/component/pay/google/GooglePayActivity;->e:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    if-eqz v3, :cond_4

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v3}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getParameter()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v3}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getJumpUrl()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    sget-object v0, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/PayUtil;->getMainLoaderScope()Lkotlinx/coroutines/CoroutineScope;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    new-instance v0, Lcom/changdu/component/pay/google/q;

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/changdu/component/pay/google/q;-><init>(Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/google/x;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 72
    .line 73
    .line 74
    const/4 v9, 0x3

    .line 75
    const/4 v10, 0x0

    .line 76
    move-object v5, v6

    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v7, 0x0

    .line 79
    move-object v8, v0

    .line 80
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    :goto_0
    iget-object v0, v2, Lcom/changdu/component/pay/google/x;->c:Lcom/changdu/component/pay/google/a;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    const/4 v2, 0x6

    .line 90
    const/16 v3, 0x3ea

    .line 91
    .line 92
    invoke-static {v0, v3, v1, v2}, Lcom/changdu/component/pay/google/b;->a(Lcom/changdu/component/pay/google/OnPurchaseListener;ILjava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_1
    return-void
.end method
