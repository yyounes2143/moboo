.class public final Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker;
.super Landroidx/work/CoroutineWorker;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "Landroidx/work/ListenableWorker$Result;",
        "doWork",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/content/Context;",
        "app_outsideRelease"
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
.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;->label:I

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
    iput v1, v0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;-><init>(Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v1, v0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Landroid/widget/RemoteViews;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Landroid/content/ComponentName;

    .line 45
    .line 46
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :try_start_1
    new-instance p1, Landroid/content/ComponentName;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 64
    .line 65
    const-class v4, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetProvider;

    .line 66
    .line 67
    invoke-direct {p1, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Landroid/widget/RemoteViews;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const v5, 0x7f0b00dc

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    sget-object v4, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->INSTANCE:Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;

    .line 85
    .line 86
    iget-object v5, p0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 87
    .line 88
    const-class v6, Lcom/changdu/mobovideo/MainActivity;

    .line 89
    .line 90
    const-string v7, "SignInHomeWidgetProvider"

    .line 91
    .line 92
    const-string v8, "ndaction:tosignin()"

    .line 93
    .line 94
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/changdu/mobovideo/homewidget/HomeWidgetLaunchIntent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const v5, 0x7f0802a6

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    new-instance v5, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$entity$1;

    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    invoke-direct {v5, v6}, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$entity$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 112
    .line 113
    .line 114
    iput-object p1, v0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object v2, v0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 117
    .line 118
    iput v3, v0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker$doWork$1;->label:I

    .line 119
    .line 120
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-ne v0, v1, :cond_3

    .line 125
    .line 126
    return-object v1

    .line 127
    :cond_3
    move-object v1, v0

    .line 128
    move-object v0, p1

    .line 129
    move-object p1, v1

    .line 130
    move-object v1, v2

    .line 131
    :goto_1
    check-cast p1, Lcom/changdu/mobovideo/entity/SignInHomeWidgetEntity;

    .line 132
    .line 133
    const v2, 0x7f08029a

    .line 134
    .line 135
    .line 136
    const/16 v3, 0x8

    .line 137
    .line 138
    const v4, 0x7f0802fd

    .line 139
    .line 140
    .line 141
    if-nez p1, :cond_4

    .line 142
    .line 143
    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_4
    invoke-virtual {p1}, Lcom/changdu/mobovideo/entity/SignInHomeWidgetEntity;->isSignIn()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    const/4 v6, 0x0

    .line 155
    if-nez v5, :cond_5

    .line 156
    .line 157
    invoke-virtual {v1, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/changdu/mobovideo/entity/SignInHomeWidgetEntity;->getSignInValue()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 173
    .line 174
    .line 175
    :goto_2
    invoke-virtual {p1}, Lcom/changdu/mobovideo/entity/SignInHomeWidgetEntity;->isClaimed()Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_6

    .line 180
    .line 181
    invoke-virtual {v1, v2, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/changdu/mobovideo/entity/SignInHomeWidgetEntity;->getClaimValue()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_6
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 197
    .line 198
    .line 199
    :goto_3
    invoke-virtual {p1}, Lcom/changdu/mobovideo/entity/SignInHomeWidgetEntity;->getSignInHint()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    const v3, 0x7f0802fc

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/changdu/mobovideo/entity/SignInHomeWidgetEntity;->getClaimHint()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    const v2, 0x7f080299

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    :goto_4
    iget-object p1, p0, Lcom/changdu/mobovideo/homewidget/SignInHomeWidgetUpdaterWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 220
    .line 221
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 226
    .line 227
    .line 228
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 229
    .line 230
    .line 231
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    return-object p1

    .line 233
    :catch_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    return-object p1
.end method
