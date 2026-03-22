.class final Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/utils/CDAppProtect;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.changdu.mobovideo.utils.CDAppProtect$handleConfig$2"
    f = "CDAppProtect.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCDAppProtect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDAppProtect.kt\ncom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2\n+ 2 GsonUtil.kt\ncom/changdu/mobovideo/utils/GsonUtil\n*L\n1#1,300:1\n39#2,8:301\n*S KotlinDebug\n*F\n+ 1 CDAppProtect.kt\ncom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2\n*L\n281#1:301,8\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $appProtectConfig:Ljava/lang/String;

.field final synthetic $save:Z

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;->$appProtectConfig:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;->$save:Z

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
    new-instance p1, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;->$appProtectConfig:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;->$save:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;-><init>(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;->$appProtectConfig:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/utils/GsonUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/GsonUtil;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;->$appProtectConfig:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2$invokeSuspend$$inlined$fromJsonStr$1;

    .line 36
    .line 37
    invoke-direct {v2}, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2$invokeSuspend$$inlined$fromJsonStr$1;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    :goto_0
    check-cast v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-static {}, Lcom/changdu/mobovideo/utils/CDAppProtect;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    monitor-enter p1

    .line 62
    :try_start_1
    invoke-static {}, Lcom/changdu/mobovideo/utils/CDAppProtect;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/changdu/mobovideo/utils/CDAppProtect;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    monitor-exit p1

    .line 77
    iget-object p1, p0, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;->$appProtectConfig:Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    monitor-exit p1

    .line 82
    throw v0

    .line 83
    :cond_3
    :goto_1
    invoke-static {}, Lcom/changdu/mobovideo/utils/CDAppProtect;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    monitor-enter p1

    .line 88
    :try_start_2
    invoke-static {}, Lcom/changdu/mobovideo/utils/CDAppProtect;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    .line 97
    monitor-exit p1

    .line 98
    const-string p1, ""

    .line 99
    .line 100
    :goto_2
    iget-boolean v0, p0, Lcom/changdu/mobovideo/utils/CDAppProtect$handleConfig$2;->$save:Z

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    :try_start_3
    sget-object v0, Lcom/changdu/mobovideo/utils/AppBizDataManager;->INSTANCE:Lcom/changdu/mobovideo/utils/AppBizDataManager;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/changdu/mobovideo/utils/AppBizDataManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/utils/ALocalCache;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    sget-object v1, Lcom/changdu/mobovideo/utils/CDAppProtect;->INSTANCE:Lcom/changdu/mobovideo/utils/CDAppProtect;

    .line 113
    .line 114
    invoke-static {v1}, Lcom/changdu/mobovideo/utils/CDAppProtect;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/utils/CDAppProtect;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1, p1}, Lcom/changdu/mobovideo/utils/ALocalCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 119
    .line 120
    .line 121
    :catch_1
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 122
    .line 123
    return-object p1

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    monitor-exit p1

    .line 126
    throw v0

    .line 127
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 130
    .line 131
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method
