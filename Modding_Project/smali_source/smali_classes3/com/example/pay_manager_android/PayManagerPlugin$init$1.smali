.class public final Lcom/example/pay_manager_android/PayManagerPlugin$init$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/pay_manager_android/PayManagerPlugin;->Wwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "com/example/pay_manager_android/PayManagerPlugin$init$1",
        "Lcom/changdu/component/pay/base/CDPay$OnPayModuleListener;",
        "googlePlayPurchaseSuccess",
        "",
        "cdOrderId",
        "",
        "isSubscribe",
        "",
        "price",
        "sku",
        "receiptOriginalJson",
        "receiptSignature",
        "purchaseToken",
        "purchaseTime",
        "",
        "callbackPayInfo",
        "onReceiveReportMessage",
        "payReportMessage",
        "Lcom/changdu/component/pay/base/model/PayReportMessage;",
        "remove_manager_update_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/example/pay_manager_android/PayManagerPlugin;


# direct methods
.method public constructor <init>(Lcom/example/pay_manager_android/PayManagerPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/pay_manager_android/PayManagerPlugin$init$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/example/pay_manager_android/PayManagerPlugin;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/example/pay_manager_android/PayManagerPlugin;Ljava/util/HashMap;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/example/pay_manager_android/PayManagerPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/example/pay_manager_android/PayManagerPlugin;)Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "googlePlayPurchaseSuccess"

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/example/pay_manager_android/PayManagerPlugin;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/example/pay_manager_android/PayManagerPlugin$init$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/example/pay_manager_android/PayManagerPlugin;Ljava/util/HashMap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public googlePlayPurchaseSuccess(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    const-string p1, "isSubscribe"

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "price"

    .line 12
    .line 13
    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string p3, "sku"

    .line 18
    .line 19
    invoke-static {p3, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    const-string p4, "googleOrderId"

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    invoke-static {p4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    const-string v0, "receiptOriginalJson"

    .line 32
    .line 33
    invoke-static {v0, p5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p5

    .line 37
    const-string v0, "receiptSignature"

    .line 38
    .line 39
    invoke-static {v0, p6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p6

    .line 43
    const-string v0, "purchaseToken"

    .line 44
    .line 45
    invoke-static {v0, p7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object p7

    .line 49
    const-string v0, "purchaseTime"

    .line 50
    .line 51
    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object p8

    .line 55
    invoke-static {v0, p8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object p8

    .line 59
    const-string p9, "callbackPayInfo"

    .line 60
    .line 61
    invoke-static {p9, p10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object p9

    .line 65
    const/16 p10, 0x9

    .line 66
    .line 67
    new-array p10, p10, [Lkotlin/Pair;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    aput-object p1, p10, v0

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    aput-object p2, p10, p1

    .line 74
    .line 75
    const/4 p1, 0x2

    .line 76
    aput-object p3, p10, p1

    .line 77
    .line 78
    const/4 p1, 0x3

    .line 79
    aput-object p4, p10, p1

    .line 80
    .line 81
    const/4 p1, 0x4

    .line 82
    aput-object p5, p10, p1

    .line 83
    .line 84
    const/4 p1, 0x5

    .line 85
    aput-object p6, p10, p1

    .line 86
    .line 87
    const/4 p1, 0x6

    .line 88
    aput-object p7, p10, p1

    .line 89
    .line 90
    const/4 p1, 0x7

    .line 91
    aput-object p8, p10, p1

    .line 92
    .line 93
    const/16 p1, 0x8

    .line 94
    .line 95
    aput-object p9, p10, p1

    .line 96
    .line 97
    invoke-static {p10}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object p2, p0, Lcom/example/pay_manager_android/PayManagerPlugin$init$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/example/pay_manager_android/PayManagerPlugin;

    .line 102
    .line 103
    invoke-static {p2}, Lcom/example/pay_manager_android/PayManagerPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/example/pay_manager_android/PayManagerPlugin;)Landroid/app/Activity;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    if-eqz p2, :cond_0

    .line 108
    .line 109
    iget-object p3, p0, Lcom/example/pay_manager_android/PayManagerPlugin$init$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/example/pay_manager_android/PayManagerPlugin;

    .line 110
    .line 111
    new-instance p4, Lcom/example/pay_manager_android/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 112
    .line 113
    invoke-direct {p4, p3, p1}, Lcom/example/pay_manager_android/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/example/pay_manager_android/PayManagerPlugin;Ljava/util/HashMap;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    .line 123
    .line 124
    :cond_0
    return-void
.end method

.method public onReceiveReportMessage(Lcom/changdu/component/pay/base/model/PayReportMessage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/pay_manager_android/PayManagerPlugin$init$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/example/pay_manager_android/PayManagerPlugin;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/example/pay_manager_android/PayManagerPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/example/pay_manager_android/PayManagerPlugin;Lcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
