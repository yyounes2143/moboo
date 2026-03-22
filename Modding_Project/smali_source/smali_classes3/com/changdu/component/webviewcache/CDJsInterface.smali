.class public final Lcom/changdu/component/webviewcache/CDJsInterface;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u001b\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u0008J\u001b\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0008J\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\r\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u0019\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001e\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/changdu/component/webviewcache/CDJsInterface;",
        "",
        "<init>",
        "()V",
        "Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;",
        "jsInterfaceParamsData",
        "",
        "responseToWebView",
        "(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "methodName",
        "handleReceivedRequest",
        "(Ljava/lang/String;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "responseAppParams",
        "sensorsDataReport",
        "firebaseDataReport",
        "Lcom/changdu/component/webviewcache/CDWebView;",
        "webView",
        "bind",
        "(Lcom/changdu/component/webviewcache/CDWebView;)V",
        "unbind",
        "",
        "hasBind",
        "()Z",
        "paramsJsonStr",
        "request",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "visible",
        "notifyVisible",
        "(Z)V",
        "notifyUpdatePageAd",
        "webview-cache_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCDJsInterface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDJsInterface.kt\ncom/changdu/component/webviewcache/CDJsInterface\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,669:1\n1#2:670\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lcom/changdu/component/webviewcache/CDWebView;

.field public b:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$firebaseDataReport(Lcom/changdu/component/webviewcache/CDJsInterface;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/changdu/component/webviewcache/CDJsInterface;->firebaseDataReport(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getMWebView$p(Lcom/changdu/component/webviewcache/CDJsInterface;)Lcom/changdu/component/webviewcache/CDWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$handleReceivedRequest(Lcom/changdu/component/webviewcache/CDJsInterface;Ljava/lang/String;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/changdu/component/webviewcache/CDJsInterface;->handleReceivedRequest(Ljava/lang/String;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$responseAppParams(Lcom/changdu/component/webviewcache/CDJsInterface;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/changdu/component/webviewcache/CDJsInterface;->responseAppParams(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$responseToWebView(Lcom/changdu/component/webviewcache/CDJsInterface;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/changdu/component/webviewcache/CDJsInterface;->responseToWebView(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$sensorsDataReport(Lcom/changdu/component/webviewcache/CDJsInterface;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/changdu/component/webviewcache/CDJsInterface;->sensorsDataReport(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final firebaseDataReport(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/changdu/component/webviewcache/b;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, p0, v2}, Lcom/changdu/component/webviewcache/b;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method private final handleReceivedRequest(Ljava/lang/String;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    sparse-switch v0, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :sswitch_0
    const-string v0, "toBookList"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 22
    .line 23
    if-eqz p1, :cond_1b

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1b

    .line 30
    .line 31
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v2, Lcom/changdu/component/webviewcache/p;

    .line 36
    .line 37
    invoke-direct {v2, p2, p1, v1}, Lcom/changdu/component/webviewcache/p;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v2, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-ne p1, p2, :cond_1b

    .line 49
    .line 50
    return-object p1

    .line 51
    :sswitch_1
    const-string v0, "disableNativePullToRefresh"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_1
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 62
    .line 63
    if-eqz p1, :cond_1b

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_1b

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->disableNativePullToRefresh()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :sswitch_2
    const-string v0, "toPaySubs"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :cond_2
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 87
    .line 88
    if-eqz p1, :cond_1b

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_1b

    .line 95
    .line 96
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v2, Lcom/changdu/component/webviewcache/v;

    .line 101
    .line 102
    invoke-direct {v2, p2, p1, v1}, Lcom/changdu/component/webviewcache/v;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v2, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    if-ne p1, p2, :cond_1b

    .line 114
    .line 115
    return-object p1

    .line 116
    :sswitch_3
    const-string v0, "toShowVipPayView"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_3

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_3
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 127
    .line 128
    if-eqz p1, :cond_1b

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_1b

    .line 135
    .line 136
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v2, Lcom/changdu/component/webviewcache/d;

    .line 141
    .line 142
    invoke-direct {v2, p2, p1, v1}, Lcom/changdu/component/webviewcache/d;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v2, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-ne p1, p2, :cond_1b

    .line 154
    .line 155
    return-object p1

    .line 156
    :sswitch_4
    const-string v0, "toBookstore"

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_4

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_4
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 167
    .line 168
    if-eqz p1, :cond_1b

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-eqz p1, :cond_1b

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->showBookstore()V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :sswitch_5
    const-string v0, "toBookshelf"

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_5

    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_5
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 192
    .line 193
    if-eqz p1, :cond_1b

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-eqz p1, :cond_1b

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->showBookshelf()V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :sswitch_6
    const-string v0, "getAppParams"

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-nez v0, :cond_6

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/changdu/component/webviewcache/CDJsInterface;->responseAppParams(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    if-ne p1, p2, :cond_7

    .line 225
    .line 226
    return-object p1

    .line 227
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 228
    .line 229
    return-object p1

    .line 230
    :sswitch_7
    const-string v0, "toRechargeVips"

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-nez v0, :cond_8

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_8
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 241
    .line 242
    if-eqz p1, :cond_1b

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    if-eqz p1, :cond_1b

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->showRechargeVipsCard()V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :sswitch_8
    const-string v0, "toRechargeCoin"

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-nez v0, :cond_9

    .line 262
    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_9
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 266
    .line 267
    if-eqz p1, :cond_1b

    .line 268
    .line 269
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    if-eqz p1, :cond_1b

    .line 274
    .line 275
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->showRechargeCoin()V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :sswitch_9
    const-string v0, "nativeTitleBarVisible"

    .line 281
    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_a

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_a
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 291
    .line 292
    if-eqz p1, :cond_1b

    .line 293
    .line 294
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    if-eqz p1, :cond_1b

    .line 299
    .line 300
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    new-instance v2, Lcom/changdu/component/webviewcache/h;

    .line 305
    .line 306
    invoke-direct {v2, p2, p0, p1, v1}, Lcom/changdu/component/webviewcache/h;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v0, v2, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    if-ne p1, p2, :cond_1b

    .line 318
    .line 319
    return-object p1

    .line 320
    :sswitch_a
    const-string v0, "toVipMembership"

    .line 321
    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-nez v0, :cond_b

    .line 327
    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    :cond_b
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 331
    .line 332
    if-eqz p1, :cond_1b

    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    if-eqz p1, :cond_1b

    .line 339
    .line 340
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->showVipMembership()V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_1

    .line 344
    .line 345
    :sswitch_b
    const-string v0, "firebaseDataReport"

    .line 346
    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-nez v0, :cond_c

    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :cond_c
    invoke-direct {p0, p2, p3}, Lcom/changdu/component/webviewcache/CDJsInterface;->firebaseDataReport(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    if-ne p1, p2, :cond_d

    .line 364
    .line 365
    return-object p1

    .line 366
    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 367
    .line 368
    return-object p1

    .line 369
    :sswitch_c
    const-string v0, "toRechargeSignCard"

    .line 370
    .line 371
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-nez v0, :cond_e

    .line 376
    .line 377
    goto/16 :goto_0

    .line 378
    .line 379
    :cond_e
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 380
    .line 381
    if-eqz p1, :cond_1b

    .line 382
    .line 383
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    if-eqz p1, :cond_1b

    .line 388
    .line 389
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->showRechargeSignCard()V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_1

    .line 393
    .line 394
    :sswitch_d
    const-string v0, "toWeb"

    .line 395
    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-nez v0, :cond_f

    .line 401
    .line 402
    goto/16 :goto_0

    .line 403
    .line 404
    :cond_f
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 405
    .line 406
    if-eqz p1, :cond_1b

    .line 407
    .line 408
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    if-eqz p1, :cond_1b

    .line 413
    .line 414
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    new-instance v2, Lcom/changdu/component/webviewcache/r;

    .line 419
    .line 420
    invoke-direct {v2, p2, p1, v1}, Lcom/changdu/component/webviewcache/r;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V

    .line 421
    .line 422
    .line 423
    invoke-static {v0, v2, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object p2

    .line 431
    if-ne p1, p2, :cond_1b

    .line 432
    .line 433
    return-object p1

    .line 434
    :sswitch_e
    const-string v0, "toPay"

    .line 435
    .line 436
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-nez v0, :cond_10

    .line 441
    .line 442
    goto/16 :goto_0

    .line 443
    .line 444
    :cond_10
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 445
    .line 446
    if-eqz p1, :cond_1b

    .line 447
    .line 448
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    if-eqz p1, :cond_1b

    .line 453
    .line 454
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    new-instance v2, Lcom/changdu/component/webviewcache/t;

    .line 459
    .line 460
    invoke-direct {v2, p2, p1, v1}, Lcom/changdu/component/webviewcache/t;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V

    .line 461
    .line 462
    .line 463
    invoke-static {v0, v2, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object p2

    .line 471
    if-ne p1, p2, :cond_1b

    .line 472
    .line 473
    return-object p1

    .line 474
    :sswitch_f
    const-string v0, "toBookDetail"

    .line 475
    .line 476
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-nez v0, :cond_11

    .line 481
    .line 482
    goto/16 :goto_0

    .line 483
    .line 484
    :cond_11
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 485
    .line 486
    if-eqz p1, :cond_1b

    .line 487
    .line 488
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    if-eqz p1, :cond_1b

    .line 493
    .line 494
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    new-instance v2, Lcom/changdu/component/webviewcache/l;

    .line 499
    .line 500
    invoke-direct {v2, p2, p1, v1}, Lcom/changdu/component/webviewcache/l;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V

    .line 501
    .line 502
    .line 503
    invoke-static {v0, v2, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    if-ne p1, p2, :cond_1b

    .line 512
    .line 513
    return-object p1

    .line 514
    :sswitch_10
    const-string v0, "closePage"

    .line 515
    .line 516
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    if-nez v0, :cond_12

    .line 521
    .line 522
    goto/16 :goto_0

    .line 523
    .line 524
    :cond_12
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 525
    .line 526
    if-eqz p1, :cond_1b

    .line 527
    .line 528
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    if-eqz p1, :cond_1b

    .line 533
    .line 534
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->closePage()V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_1

    .line 538
    .line 539
    :sswitch_11
    const-string v0, "toReadBook"

    .line 540
    .line 541
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    if-nez v0, :cond_13

    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :cond_13
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 550
    .line 551
    if-eqz p1, :cond_1b

    .line 552
    .line 553
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    if-eqz p1, :cond_1b

    .line 558
    .line 559
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    new-instance v2, Lcom/changdu/component/webviewcache/n;

    .line 564
    .line 565
    invoke-direct {v2, p2, p1, v1}, Lcom/changdu/component/webviewcache/n;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;Lkotlin/coroutines/Continuation;)V

    .line 566
    .line 567
    .line 568
    invoke-static {v0, v2, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object p2

    .line 576
    if-ne p1, p2, :cond_1b

    .line 577
    .line 578
    return-object p1

    .line 579
    :sswitch_12
    const-string v0, "sensorsDataReport"

    .line 580
    .line 581
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-nez v0, :cond_14

    .line 586
    .line 587
    goto :goto_0

    .line 588
    :cond_14
    invoke-direct {p0, p2, p3}, Lcom/changdu/component/webviewcache/CDJsInterface;->sensorsDataReport(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object p2

    .line 596
    if-ne p1, p2, :cond_15

    .line 597
    .line 598
    return-object p1

    .line 599
    :cond_15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 600
    .line 601
    return-object p1

    .line 602
    :sswitch_13
    const-string v0, "ndAction"

    .line 603
    .line 604
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    if-nez v0, :cond_16

    .line 609
    .line 610
    goto :goto_0

    .line 611
    :cond_16
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    new-instance v0, Lcom/changdu/component/webviewcache/j;

    .line 616
    .line 617
    invoke-direct {v0, p2, p0, v1}, Lcom/changdu/component/webviewcache/j;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V

    .line 618
    .line 619
    .line 620
    invoke-static {p1, v0, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object p1

    .line 624
    return-object p1

    .line 625
    :sswitch_14
    const-string v0, "enableNativePullToRefresh"

    .line 626
    .line 627
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    if-nez v0, :cond_17

    .line 632
    .line 633
    goto :goto_0

    .line 634
    :cond_17
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 635
    .line 636
    if-eqz p1, :cond_1b

    .line 637
    .line 638
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 639
    .line 640
    .line 641
    move-result-object p1

    .line 642
    if-eqz p1, :cond_1b

    .line 643
    .line 644
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->enableNativePullToRefresh()V

    .line 645
    .line 646
    .line 647
    goto :goto_1

    .line 648
    :sswitch_15
    const-string v0, "toVipTask"

    .line 649
    .line 650
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    if-nez v0, :cond_18

    .line 655
    .line 656
    goto :goto_0

    .line 657
    :cond_18
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 658
    .line 659
    if-eqz p1, :cond_1b

    .line 660
    .line 661
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 662
    .line 663
    .line 664
    move-result-object p1

    .line 665
    if-eqz p1, :cond_1b

    .line 666
    .line 667
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->showVipTask()V

    .line 668
    .line 669
    .line 670
    goto :goto_1

    .line 671
    :sswitch_16
    const-string v0, "toPointCenterHome"

    .line 672
    .line 673
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    if-nez v0, :cond_1a

    .line 678
    .line 679
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    new-instance v2, Lcom/changdu/component/webviewcache/f;

    .line 684
    .line 685
    invoke-direct {v2, p2, p0, p1, v1}, Lcom/changdu/component/webviewcache/f;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 686
    .line 687
    .line 688
    invoke-static {v0, v2, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object p1

    .line 692
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object p2

    .line 696
    if-ne p1, p2, :cond_19

    .line 697
    .line 698
    return-object p1

    .line 699
    :cond_19
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 700
    .line 701
    return-object p1

    .line 702
    :cond_1a
    iget-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 703
    .line 704
    if-eqz p1, :cond_1b

    .line 705
    .line 706
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebView;->getCdJsBridgeListener()Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;

    .line 707
    .line 708
    .line 709
    move-result-object p1

    .line 710
    if-eqz p1, :cond_1b

    .line 711
    .line 712
    invoke-virtual {p1}, Lcom/changdu/component/webviewcache/CDWebViewJsBridgeListener;->showPointsCenter()V

    .line 713
    .line 714
    .line 715
    :cond_1b
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 716
    .line 717
    return-object p1

    .line 718
    nop

    .line 719
    :sswitch_data_0
    .sparse-switch
        -0x4b49fb77 -> :sswitch_16
        -0x47848bb9 -> :sswitch_15
        -0x40ac323f -> :sswitch_14
        -0x3ebb2874 -> :sswitch_13
        -0x372d99a9 -> :sswitch_12
        -0x34efeac6 -> :sswitch_11
        -0x1cc40759 -> :sswitch_10
        -0xf10068b -> :sswitch_f
        0x696542d -> :sswitch_e
        0x6966ed9 -> :sswitch_d
        0x151feecf -> :sswitch_c
        0x184c7ae5 -> :sswitch_b
        0x39752d18 -> :sswitch_a
        0x469e2840 -> :sswitch_9
        0x4cef77f3 -> :sswitch_8
        0x4cf80558 -> :sswitch_7
        0x52a8f451 -> :sswitch_6
        0x54afb8a6 -> :sswitch_5
        0x54b5535d -> :sswitch_4
        0x603ff6c8 -> :sswitch_3
        0x6dedf400 -> :sswitch_2
        0x7501443c -> :sswitch_1
        0x76468ac2 -> :sswitch_0
    .end sparse-switch
.end method

.method private final responseAppParams(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/changdu/component/webviewcache/A;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, p0, v2}, Lcom/changdu/component/webviewcache/A;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method private final responseToWebView(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/changdu/component/webviewcache/B;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/changdu/component/webviewcache/B;

    .line 7
    .line 8
    iget v1, v0, Lcom/changdu/component/webviewcache/B;->d:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/changdu/component/webviewcache/B;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/changdu/component/webviewcache/B;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/changdu/component/webviewcache/B;-><init>(Lcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/changdu/component/webviewcache/B;->b:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/changdu/component/webviewcache/B;->d:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    iget-object p1, v0, Lcom/changdu/component/webviewcache/B;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 55
    .line 56
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/changdu/component/webviewcache/CDJsInterface;->hasBind()Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_4

    .line 68
    .line 69
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_4
    iget-object p2, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 73
    .line 74
    if-eqz p2, :cond_6

    .line 75
    .line 76
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v6, Lcom/changdu/component/webviewcache/D;

    .line 81
    .line 82
    invoke-direct {v6, p1, v5}, Lcom/changdu/component/webviewcache/D;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)V

    .line 83
    .line 84
    .line 85
    iput-object p2, v0, Lcom/changdu/component/webviewcache/B;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 86
    .line 87
    iput v4, v0, Lcom/changdu/component/webviewcache/B;->d:I

    .line 88
    .line 89
    invoke-static {v2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-ne p1, v1, :cond_5

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    move-object v7, p2

    .line 97
    move-object p2, p1

    .line 98
    move-object p1, v7

    .line 99
    :goto_1
    check-cast p2, Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    new-instance v4, Lcom/changdu/component/webviewcache/C;

    .line 106
    .line 107
    invoke-direct {v4, p1, p2, v5}, Lcom/changdu/component/webviewcache/C;-><init>(Lcom/changdu/component/webviewcache/CDWebView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 108
    .line 109
    .line 110
    iput-object v5, v0, Lcom/changdu/component/webviewcache/B;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 111
    .line 112
    iput v3, v0, Lcom/changdu/component/webviewcache/B;->d:I

    .line 113
    .line 114
    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ne p1, v1, :cond_6

    .line 119
    .line 120
    :goto_2
    return-object v1

    .line 121
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 122
    .line 123
    return-object p1
.end method

.method private final sensorsDataReport(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/changdu/component/webviewcache/E;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, p0, v2}, Lcom/changdu/component/webviewcache/E;-><init>(Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method


# virtual methods
.method public final bind(Lcom/changdu/component/webviewcache/CDWebView;)V
    .locals 2
    .param p1    # Lcom/changdu/component/webviewcache/CDWebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface",
            "AddJavascriptInterface"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/changdu/component/webviewcache/CDJsInterface;->unbind()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v0, "cdbridge"

    .line 9
    .line 10
    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {v0, p1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    .line 32
    .line 33
    const-string v1, "CDWebViewCoroutineMain"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 47
    .line 48
    return-void
.end method

.method public final hasBind()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final notifyUpdatePageAd()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v3, Lcom/changdu/component/webviewcache/w;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/changdu/component/webviewcache/w;-><init>(Lcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final notifyVisible(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v3, Lcom/changdu/component/webviewcache/y;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p1, p0, v1}, Lcom/changdu/component/webviewcache/y;-><init>(ZLcom/changdu/component/webviewcache/CDJsInterface;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final request(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 11
    .line 12
    .line 13
    const-class v1, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 14
    .line 15
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    new-instance v0, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 24
    .line 25
    const/4 v4, 0x7

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :goto_0
    move-object p2, v0

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    move-object p2, v0

    .line 37
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;

    .line 41
    .line 42
    const/4 v4, 0x7

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-direct/range {v0 .. v5}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;->getRequestId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    new-instance v4, Lcom/changdu/component/webviewcache/z;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/changdu/component/webviewcache/z;-><init>(Lcom/changdu/component/webviewcache/CDJsInterface;Ljava/lang/String;Lcom/changdu/component/webviewcache/CDJsInterfaceParamsData;Lkotlin/coroutines/Continuation;)V

    .line 72
    .line 73
    .line 74
    const/4 v5, 0x3

    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v2, 0x0

    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_2
    return-void
.end method

.method public final unbind()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "cdbridge"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->a:Lcom/changdu/component/webviewcache/CDWebView;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iput-object v0, p0, Lcom/changdu/component/webviewcache/CDJsInterface;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 22
    .line 23
    return-void
.end method
