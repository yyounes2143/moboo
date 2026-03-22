.class final Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
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
    c = "com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$12"
    f = "CDAppStatePlugin.kt"
    i = {}
    l = {
        0x156
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $call:Lio/flutter/plugin/common/MethodCall;

.field label:I

.field final synthetic this$0:Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodCall;Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/MethodCall;",
            "Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;->$call:Lio/flutter/plugin/common/MethodCall;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;->this$0:Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;

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
    new-instance p1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;->$call:Lio/flutter/plugin/common/MethodCall;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;->this$0:Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;-><init>(Lio/flutter/plugin/common/MethodCall;Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const-string v0, "salt"

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :try_start_1
    sget-object p1, Lcom/changdu/mobovideo/utils/AppBizDataManager;->INSTANCE:Lcom/changdu/mobovideo/utils/AppBizDataManager;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/changdu/mobovideo/utils/AppBizDataManager;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/utils/ALocalCache;

    .line 33
    .line 34
    .line 35
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    const-string v4, "userRequestCache"

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    :try_start_2
    invoke-virtual {v2, v4}, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v2, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;->$call:Lio/flutter/plugin/common/MethodCall;

    .line 48
    .line 49
    iget-object v2, v2, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 50
    .line 51
    instance-of v5, v2, Ljava/lang/String;

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    if-eqz v5, :cond_3

    .line 55
    .line 56
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move-object v2, v6

    .line 60
    :goto_0
    if-eqz v2, :cond_a

    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    new-instance v5, Lorg/json/JSONObject;

    .line 70
    .line 71
    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-nez v7, :cond_5

    .line 83
    .line 84
    sget-object v7, Lcom/changdu/mobovideo/utils/SaltCrypto;->INSTANCE:Lcom/changdu/mobovideo/utils/SaltCrypto;

    .line 85
    .line 86
    invoke-virtual {v7, v2}, Lcom/changdu/mobovideo/utils/SaltCrypto;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-virtual {p1}, Lcom/changdu/mobovideo/utils/AppBizDataManager;->Wwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/utils/ALocalCache;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v4, v0}, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_6
    sget-object p1, Lcom/changdu/mobovideo/picture/TokenSyncStore;->INSTANCE:Lcom/changdu/mobovideo/picture/TokenSyncStore;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/changdu/mobovideo/picture/TokenSyncStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_9

    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_7
    sget-object p1, Lcom/changdu/mobovideo/picture/CDJobScheduler;->INSTANCE:Lcom/changdu/mobovideo/picture/CDJobScheduler;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;->this$0:Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/plugins/CDAppStatePlugin;)Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-nez v0, :cond_8

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_8
    move-object v6, v0

    .line 133
    :goto_1
    const-string v0, "user_request_cache_updated"

    .line 134
    .line 135
    invoke-virtual {p1, v6, v0}, Lcom/changdu/mobovideo/picture/CDJobScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/changdu/mobovideo/picture/TokenSyncStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    sget-object p1, Lcom/changdu/mobovideo/picture/PushAdapter;->INSTANCE:Lcom/changdu/mobovideo/picture/PushAdapter;

    .line 146
    .line 147
    const-string v0, "saveUserRequestCache"

    .line 148
    .line 149
    iput v3, p0, Lcom/changdu/mobovideo/plugins/CDAppStatePlugin$onMethodCall$12;->label:I

    .line 150
    .line 151
    invoke-virtual {p1, v0, p0}, Lcom/changdu/mobovideo/picture/PushAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-ne p1, v1, :cond_b

    .line 156
    .line 157
    return-object v1

    .line 158
    :cond_a
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .line 160
    return-object p1

    .line 161
    :catchall_0
    :cond_b
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 162
    .line 163
    return-object p1
.end method
