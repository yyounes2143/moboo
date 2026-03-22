.class final Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/plugins/CDReportPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
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
    c = "com.changdu.mobovideo.plugins.CDReportPlugin$getFirebaseAppInstanceId$1"
    f = "CDReportPlugin.kt"
    i = {
        0x0
    }
    l = {
        0x18a,
        0x190
    }
    m = "invokeSuspend"
    n = {
        "task"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $result:Lio/flutter/plugin/common/MethodChannel$Result;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/changdu/mobovideo/plugins/CDReportPlugin;


# direct methods
.method public constructor <init>(Lcom/changdu/mobovideo/plugins/CDReportPlugin;Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/changdu/mobovideo/plugins/CDReportPlugin;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->this$0:Lcom/changdu/mobovideo/plugins/CDReportPlugin;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

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
    new-instance p1, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->this$0:Lcom/changdu/mobovideo/plugins/CDReportPlugin;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;-><init>(Lcom/changdu/mobovideo/plugins/CDReportPlugin;Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lcom/google/android/gms/tasks/Task;

    .line 30
    .line 31
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :try_start_1
    sget-object p1, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getAppInstanceId()Lcom/google/android/gms/tasks/Task;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    iput v3, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->label:I

    .line 55
    .line 56
    invoke-static {v1, p0}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-ne p1, v0, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Ljava/lang/CharSequence;

    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    iget-object p1, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->this$0:Lcom/changdu/mobovideo/plugins/CDReportPlugin;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {p1, v1}, Lcom/changdu/mobovideo/plugins/CDReportPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDReportPlugin;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    :catchall_0
    :cond_5
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v1, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1$1;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 102
    .line 103
    iget-object v4, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->this$0:Lcom/changdu/mobovideo/plugins/CDReportPlugin;

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    invoke-direct {v1, v3, v4, v5}, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1$1;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/changdu/mobovideo/plugins/CDReportPlugin;Lkotlin/coroutines/Continuation;)V

    .line 107
    .line 108
    .line 109
    iput-object v5, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->L$0:Ljava/lang/Object;

    .line 110
    .line 111
    iput v2, p0, Lcom/changdu/mobovideo/plugins/CDReportPlugin$getFirebaseAppInstanceId$1;->label:I

    .line 112
    .line 113
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-ne p1, v0, :cond_6

    .line 118
    .line 119
    :goto_2
    return-object v0

    .line 120
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 121
    .line 122
    return-object p1
.end method
