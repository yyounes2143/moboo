.class public final Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;
.super Landroidx/work/CoroutineWorker;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker$Companion;,
        Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "workerParams",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "Landroidx/work/ListenableWorker$Result;",
        "doWork",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/changdu/mobovideo/localpush/LocalPushType;",
        "type",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;",
        "",
        "epochMs",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(J)Ljava/lang/String;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Companion:Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/text/SimpleDateFormat;

    .line 21
    .line 22
    return-void
.end method

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
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    const-string p1, "\u89e3\u9501Push"

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 22
    .line 23
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    const-string p1, "\u53ec\u56dePush"

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    const-string p1, "\u7b7e\u5230Push"

    .line 31
    .line 32
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "\u65e0"

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    :try_start_0
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    new-instance v1, Ljava/util/Date;

    .line 13
    .line 14
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "type"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 16
    .line 17
    .line 18
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    return-object v1

    .line 20
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/changdu/mobovideo/localpush/LocalPushType;->valueOf(Ljava/lang/String;)Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 21
    .line 22
    .line 23
    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "candidate_at_ms"

    .line 33
    .line 34
    const-wide/16 v8, 0x0

    .line 35
    .line 36
    invoke-virtual {v1, v2, v8, v9}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v10

    .line 40
    sget-object v1, Lcom/changdu/mobovideo/utils/NotificationUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/NotificationUtil;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/changdu/mobovideo/utils/NotificationUtil;->Wwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    return-object v1

    .line 60
    :cond_1
    sget-object v1, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushConfig;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    sget-object v2, Lcom/changdu/mobovideo/localpush/LocalPushTime;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushTime;

    .line 67
    .line 68
    invoke-virtual {v2, v5}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)Lj$/time/ZoneId;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual/range {v2 .. v7}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;Lcom/changdu/mobovideo/localpush/LocalPushType;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    invoke-virtual {v0, v7}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v10, v11}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {v2 .. v7}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    return-object v1

    .line 95
    :cond_2
    sget-object v1, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 96
    .line 97
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    aget v2, v1, v2

    .line 102
    .line 103
    const/4 v6, 0x3

    .line 104
    const/4 v14, 0x2

    .line 105
    const/4 v15, 0x1

    .line 106
    if-eq v2, v15, :cond_6

    .line 107
    .line 108
    if-eq v2, v14, :cond_6

    .line 109
    .line 110
    if-ne v2, v6, :cond_5

    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwww()J

    .line 113
    .line 114
    .line 115
    move-result-wide v16

    .line 116
    sget-object v2, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 117
    .line 118
    const-wide/16 v18, 0x3e8

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwwww()J

    .line 121
    .line 122
    .line 123
    move-result-wide v12

    .line 124
    cmp-long v20, v16, v8

    .line 125
    .line 126
    if-lez v20, :cond_3

    .line 127
    .line 128
    cmp-long v20, v12, v8

    .line 129
    .line 130
    if-lez v20, :cond_3

    .line 131
    .line 132
    mul-long v16, v16, v18

    .line 133
    .line 134
    sub-long v20, v3, v12

    .line 135
    .line 136
    cmp-long v16, v20, v16

    .line 137
    .line 138
    if-gez v16, :cond_3

    .line 139
    .line 140
    invoke-virtual {v0, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v10, v11}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v12, v13}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    return-object v1

    .line 154
    :cond_3
    invoke-virtual {v2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 155
    .line 156
    .line 157
    move-result-wide v12

    .line 158
    move-object/from16 p1, v7

    .line 159
    .line 160
    invoke-virtual {v5}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 161
    .line 162
    .line 163
    move-result-wide v6

    .line 164
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 165
    .line 166
    .line 167
    move-result-wide v5

    .line 168
    mul-long v5, v5, v18

    .line 169
    .line 170
    cmp-long v7, v12, v8

    .line 171
    .line 172
    if-lez v7, :cond_4

    .line 173
    .line 174
    sub-long v7, v3, v12

    .line 175
    .line 176
    cmp-long v5, v7, v5

    .line 177
    .line 178
    if-gez v5, :cond_4

    .line 179
    .line 180
    invoke-virtual {v0, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v10, v11}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v12, v13}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    return-object v1

    .line 194
    :cond_4
    move-object/from16 v7, p1

    .line 195
    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :cond_5
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 199
    .line 200
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 201
    .line 202
    .line 203
    throw v1

    .line 204
    :cond_6
    move-object/from16 p1, v7

    .line 205
    .line 206
    const-wide/16 v18, 0x3e8

    .line 207
    .line 208
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    aget v6, v1, v6

    .line 213
    .line 214
    if-eq v6, v15, :cond_9

    .line 215
    .line 216
    if-eq v6, v14, :cond_8

    .line 217
    .line 218
    const/4 v2, 0x3

    .line 219
    if-ne v6, v2, :cond_7

    .line 220
    .line 221
    move-wide v5, v8

    .line 222
    goto :goto_0

    .line 223
    :cond_7
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 224
    .line 225
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 226
    .line 227
    .line 228
    throw v1

    .line 229
    :cond_8
    invoke-virtual {v5}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwww()J

    .line 230
    .line 231
    .line 232
    move-result-wide v5

    .line 233
    goto :goto_0

    .line 234
    :cond_9
    invoke-virtual {v5}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwww()J

    .line 235
    .line 236
    .line 237
    move-result-wide v5

    .line 238
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    aget v7, v1, v7

    .line 243
    .line 244
    if-eq v7, v15, :cond_c

    .line 245
    .line 246
    if-eq v7, v14, :cond_b

    .line 247
    .line 248
    const/4 v2, 0x3

    .line 249
    if-ne v7, v2, :cond_a

    .line 250
    .line 251
    move-wide v12, v8

    .line 252
    goto :goto_1

    .line 253
    :cond_a
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 254
    .line 255
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 256
    .line 257
    .line 258
    throw v1

    .line 259
    :cond_b
    sget-object v7, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 260
    .line 261
    invoke-virtual {v7}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwww()J

    .line 262
    .line 263
    .line 264
    move-result-wide v12

    .line 265
    goto :goto_1

    .line 266
    :cond_c
    sget-object v7, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 267
    .line 268
    invoke-virtual {v7}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwww()J

    .line 269
    .line 270
    .line 271
    move-result-wide v12

    .line 272
    :goto_1
    cmp-long v7, v5, v8

    .line 273
    .line 274
    if-lez v7, :cond_4

    .line 275
    .line 276
    cmp-long v7, v12, v8

    .line 277
    .line 278
    if-lez v7, :cond_4

    .line 279
    .line 280
    mul-long v5, v5, v18

    .line 281
    .line 282
    sub-long v7, v3, v12

    .line 283
    .line 284
    cmp-long v5, v7, v5

    .line 285
    .line 286
    if-gez v5, :cond_4

    .line 287
    .line 288
    move-object/from16 v7, p1

    .line 289
    .line 290
    invoke-virtual {v0, v7}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v10, v11}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v12, v13}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    return-object v1

    .line 307
    :goto_2
    invoke-virtual {v0, v7}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v10, v11}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    sget-object v5, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 317
    .line 318
    invoke-virtual {v5}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 319
    .line 320
    .line 321
    move-result-wide v8

    .line 322
    invoke-virtual {v0, v8, v9}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwww()J

    .line 326
    .line 327
    .line 328
    move-result-wide v8

    .line 329
    invoke-virtual {v0, v8, v9}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    sget-object v6, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;

    .line 333
    .line 334
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    invoke-virtual {v6, v8, v7}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;)Z

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    if-nez v6, :cond_d

    .line 343
    .line 344
    invoke-virtual {v0, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v10, v11}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    return-object v1

    .line 355
    :cond_d
    sget-object v6, Lcom/changdu/mobovideo/localpush/LocalPushReporter;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushReporter;

    .line 356
    .line 357
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    invoke-virtual {v6, v8, v7, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushReporter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;J)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwww(J)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwww()J

    .line 368
    .line 369
    .line 370
    move-result-wide v8

    .line 371
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 372
    .line 373
    .line 374
    move-result-wide v8

    .line 375
    invoke-virtual {v5, v8, v9}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkk(J)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    aget v1, v1, v6

    .line 383
    .line 384
    if-eq v1, v15, :cond_10

    .line 385
    .line 386
    if-eq v1, v14, :cond_f

    .line 387
    .line 388
    const/4 v2, 0x3

    .line 389
    if-ne v1, v2, :cond_e

    .line 390
    .line 391
    invoke-virtual {v5, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(J)V

    .line 392
    .line 393
    .line 394
    goto :goto_3

    .line 395
    :cond_e
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 396
    .line 397
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 398
    .line 399
    .line 400
    throw v1

    .line 401
    :cond_f
    invoke-virtual {v5, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkkkkkkkk(J)V

    .line 402
    .line 403
    .line 404
    goto :goto_3

    .line 405
    :cond_10
    invoke-virtual {v5, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkkkk(J)V

    .line 406
    .line 407
    .line 408
    :goto_3
    invoke-virtual {v0, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v5}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 412
    .line 413
    .line 414
    move-result-wide v1

    .line 415
    invoke-virtual {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v5}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwww()J

    .line 419
    .line 420
    .line 421
    move-result-wide v1

    .line 422
    invoke-virtual {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    return-object v1

    .line 430
    :catchall_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 431
    .line 432
    .line 433
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 434
    return-object v1

    .line 435
    :catchall_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    return-object v1
.end method
