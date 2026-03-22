.class public final Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;
.super Landroidx/work/CoroutineWorker;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker$Companion;,
        Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u0096@\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "workerParams",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "",
        "epochMs",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(J)Ljava/lang/String;",
        "Landroidx/work/ListenableWorker$Result;",
        "doWork",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final Companion:Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker$Companion;
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
    new-instance v0, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Companion:Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker$Companion;

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
    sput-object v0, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/text/SimpleDateFormat;

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

.method private final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;
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
    sget-object v0, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/text/SimpleDateFormat;

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


# virtual methods
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
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "candidate_at_ms"

    .line 29
    .line 30
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    invoke-virtual {v1, v2, v4, v5}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    cmp-long v6, v1, v4

    .line 37
    .line 38
    if-gtz v6, :cond_1

    .line 39
    .line 40
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    return-object v1

    .line 45
    :cond_1
    sget-object v10, Lcom/changdu/mobovideo/localpush/LocalPushType;->SIGN_IN:Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 46
    .line 47
    if-ne v3, v10, :cond_2

    .line 48
    .line 49
    sget-object v6, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwww()J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    cmp-long v8, v6, v1

    .line 56
    .line 57
    if-eqz v8, :cond_2

    .line 58
    .line 59
    invoke-direct {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v6, v7}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    return-object v1

    .line 70
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    sget-object v8, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;

    .line 75
    .line 76
    invoke-virtual {v8}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushConfig;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    sget-object v11, Lcom/changdu/mobovideo/localpush/LocalPushTime;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushTime;

    .line 81
    .line 82
    invoke-virtual {v11, v8}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)Lj$/time/ZoneId;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    sget-object v12, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    aget v13, v12, v13

    .line 93
    .line 94
    const/4 v14, 0x3

    .line 95
    const/4 v15, 0x2

    .line 96
    move-wide/from16 v16, v4

    .line 97
    .line 98
    const/4 v4, 0x1

    .line 99
    if-eq v13, v4, :cond_5

    .line 100
    .line 101
    if-eq v13, v15, :cond_4

    .line 102
    .line 103
    if-ne v13, v14, :cond_3

    .line 104
    .line 105
    move-wide/from16 v18, v16

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 109
    .line 110
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 111
    .line 112
    .line 113
    throw v1

    .line 114
    :cond_4
    invoke-virtual {v8}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwww()J

    .line 115
    .line 116
    .line 117
    move-result-wide v18

    .line 118
    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {v8}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwww()J

    .line 120
    .line 121
    .line 122
    move-result-wide v18

    .line 123
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    aget v5, v12, v5

    .line 128
    .line 129
    if-eq v5, v4, :cond_8

    .line 130
    .line 131
    if-eq v5, v15, :cond_7

    .line 132
    .line 133
    if-ne v5, v14, :cond_6

    .line 134
    .line 135
    move-wide/from16 v4, v16

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 139
    .line 140
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 141
    .line 142
    .line 143
    throw v1

    .line 144
    :cond_7
    sget-object v4, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwww()J

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    goto :goto_1

    .line 151
    :cond_8
    sget-object v4, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwww()J

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    :goto_1
    cmp-long v12, v18, v16

    .line 158
    .line 159
    if-lez v12, :cond_a

    .line 160
    .line 161
    cmp-long v12, v4, v16

    .line 162
    .line 163
    if-lez v12, :cond_a

    .line 164
    .line 165
    const-wide/16 v12, 0x3e8

    .line 166
    .line 167
    mul-long v18, v18, v12

    .line 168
    .line 169
    sub-long v12, v1, v4

    .line 170
    .line 171
    cmp-long v12, v12, v18

    .line 172
    .line 173
    if-gez v12, :cond_a

    .line 174
    .line 175
    invoke-direct {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v6, v7}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, v4, v5}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    if-ne v3, v10, :cond_9

    .line 185
    .line 186
    sget-object v3, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushScheduler;

    .line 187
    .line 188
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v3, v4, v1, v2}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;J)V

    .line 193
    .line 194
    .line 195
    :cond_9
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    return-object v1

    .line 200
    :cond_a
    sget-object v4, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 203
    .line 204
    .line 205
    move-result-wide v12

    .line 206
    invoke-virtual {v4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwww()J

    .line 207
    .line 208
    .line 209
    move-result-wide v14

    .line 210
    move-wide v4, v1

    .line 211
    sget-object v2, Lcom/changdu/mobovideo/localpush/LocalPushPlanner;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushPlanner;

    .line 212
    .line 213
    invoke-virtual/range {v2 .. v9}, Lcom/changdu/mobovideo/localpush/LocalPushPlanner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;JJLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)Ljava/lang/Long;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    move-object v2, v9

    .line 218
    move-wide/from16 v20, v4

    .line 219
    .line 220
    move-object v5, v8

    .line 221
    move-wide/from16 v8, v20

    .line 222
    .line 223
    if-eq v3, v10, :cond_b

    .line 224
    .line 225
    sget-object v4, Lcom/changdu/mobovideo/localpush/LocalPushType;->RECALL:Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 226
    .line 227
    if-ne v3, v4, :cond_d

    .line 228
    .line 229
    :cond_b
    if-eqz v1, :cond_c

    .line 230
    .line 231
    invoke-direct {v0, v8, v9}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    invoke-direct {v0, v6, v7}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    invoke-direct {v0, v12, v13}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    invoke-direct {v0, v14, v15}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 247
    .line 248
    .line 249
    move-result-wide v4

    .line 250
    invoke-direct {v0, v4, v5}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_c
    invoke-direct {v0, v8, v9}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    invoke-direct {v0, v6, v7}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    invoke-direct {v0, v12, v13}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    invoke-direct {v0, v14, v15}, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 267
    .line 268
    .line 269
    move-result-wide v6

    .line 270
    move-wide/from16 v20, v6

    .line 271
    .line 272
    move-object v7, v3

    .line 273
    move-wide/from16 v3, v20

    .line 274
    .line 275
    move-object v6, v2

    .line 276
    move-object v2, v11

    .line 277
    invoke-virtual/range {v2 .. v7}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-object v3, v7

    .line 281
    :cond_d
    :goto_2
    if-eqz v1, :cond_e

    .line 282
    .line 283
    sget-object v2, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushScheduler;

    .line 284
    .line 285
    move-object v4, v3

    .line 286
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 291
    .line 292
    .line 293
    move-result-wide v5

    .line 294
    sget-object v7, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 295
    .line 296
    invoke-virtual/range {v2 .. v7}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;JLandroidx/work/ExistingWorkPolicy;)V

    .line 297
    .line 298
    .line 299
    move-object v3, v4

    .line 300
    :cond_e
    if-ne v3, v10, :cond_f

    .line 301
    .line 302
    sget-object v1, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushScheduler;

    .line 303
    .line 304
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v1, v2, v8, v9}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;J)V

    .line 309
    .line 310
    .line 311
    :cond_f
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    return-object v1

    .line 316
    :catchall_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 317
    .line 318
    .line 319
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 320
    return-object v1

    .line 321
    :catchall_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    return-object v1
.end method
