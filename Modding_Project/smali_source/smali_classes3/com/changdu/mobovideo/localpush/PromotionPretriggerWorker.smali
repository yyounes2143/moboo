.class public final Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;
.super Landroidx/work/CoroutineWorker;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u0096@\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;",
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
.field public static final Companion:Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker$Companion;
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
    new-instance v0, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Companion:Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker$Companion;

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
    sput-object v0, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/text/SimpleDateFormat;

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
    sget-object v0, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/text/SimpleDateFormat;

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
    const-string v2, "unlock_at_ms"

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    cmp-long v5, v1, v3

    .line 16
    .line 17
    if-gtz v5, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    return-object v1

    .line 24
    :cond_0
    sget-object v5, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;

    .line 25
    .line 26
    invoke-virtual {v5}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushConfig;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    sget-object v6, Lcom/changdu/mobovideo/localpush/LocalPushTime;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushTime;

    .line 31
    .line 32
    invoke-virtual {v6, v9}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)Lj$/time/ZoneId;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    move-object v5, v6

    .line 41
    sget-object v6, Lcom/changdu/mobovideo/localpush/LocalPushPlanner;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushPlanner;

    .line 42
    .line 43
    invoke-virtual {v6, v1, v2, v9, v10}, Lcom/changdu/mobovideo/localpush/LocalPushPlanner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v11

    .line 47
    invoke-virtual {v9}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwww()J

    .line 48
    .line 49
    .line 50
    move-result-wide v13

    .line 51
    sget-object v15, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 52
    .line 53
    move-wide/from16 v16, v3

    .line 54
    .line 55
    invoke-virtual {v15}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwwww()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    cmp-long v18, v13, v16

    .line 60
    .line 61
    if-lez v18, :cond_1

    .line 62
    .line 63
    cmp-long v16, v3, v16

    .line 64
    .line 65
    if-lez v16, :cond_1

    .line 66
    .line 67
    const-wide/16 v16, 0x3e8

    .line 68
    .line 69
    mul-long v13, v13, v16

    .line 70
    .line 71
    sub-long v16, v11, v3

    .line 72
    .line 73
    cmp-long v13, v16, v13

    .line 74
    .line 75
    if-gez v13, :cond_1

    .line 76
    .line 77
    invoke-direct {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v11, v12}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v3, v4}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    return-object v1

    .line 91
    :cond_1
    invoke-virtual {v6, v1, v2, v9, v10}, Lcom/changdu/mobovideo/localpush/LocalPushPlanner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    invoke-direct {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v11, v12}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v7, v8}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v15}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 107
    .line 108
    .line 109
    move-result-wide v1

    .line 110
    invoke-direct {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v15}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwww()J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    invoke-direct {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 121
    .line 122
    .line 123
    move-wide v7, v11

    .line 124
    sget-object v11, Lcom/changdu/mobovideo/localpush/LocalPushType;->PROMOTION:Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 125
    .line 126
    move-object v6, v5

    .line 127
    invoke-virtual/range {v6 .. v11}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    return-object v1

    .line 135
    :cond_2
    move-wide v3, v11

    .line 136
    sget-object v18, Lcom/changdu/mobovideo/localpush/LocalPushType;->PROMOTION:Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 137
    .line 138
    move-object v12, v9

    .line 139
    move-object v13, v10

    .line 140
    move-wide v10, v7

    .line 141
    move-object/from16 v7, v18

    .line 142
    .line 143
    move-wide v8, v3

    .line 144
    invoke-virtual/range {v6 .. v13}, Lcom/changdu/mobovideo/localpush/LocalPushPlanner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;JJLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    move-object/from16 v18, v7

    .line 149
    .line 150
    move-wide v7, v8

    .line 151
    move-object v9, v12

    .line 152
    if-eqz v3, :cond_3

    .line 153
    .line 154
    invoke-direct {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    invoke-direct {v0, v7, v8}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, v10, v11}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v15}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 164
    .line 165
    .line 166
    move-result-wide v1

    .line 167
    invoke-direct {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v15}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwww()J

    .line 171
    .line 172
    .line 173
    move-result-wide v1

    .line 174
    invoke-direct {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 181
    .line 182
    .line 183
    move-result-wide v1

    .line 184
    invoke-direct {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    sget-object v16, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushScheduler;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v17

    .line 193
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 194
    .line 195
    .line 196
    move-result-wide v19

    .line 197
    sget-object v21, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 198
    .line 199
    invoke-virtual/range {v16 .. v21}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;JLandroidx/work/ExistingWorkPolicy;)V

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_3
    const-string v3, "LeeLog"

    .line 204
    .line 205
    invoke-direct {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-direct {v0, v7, v8}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-direct {v0, v10, v11}, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v6, "\u89e3\u9501Push \u9884\u89e6\u53d1\u8df3\u8fc7\uff1a\u89e3\u9501\u65f6\u95f4="

    .line 223
    .line 224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v1, "\uff0c\u5019\u9009\u65f6\u95f4="

    .line 231
    .line 232
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v1, "\uff0c\u5f53\u524d\u65f6\u95f4="

    .line 239
    .line 240
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, "\uff0c\u539f\u56e0=\u7edf\u4e00\u8c03\u5ea6\u540e\u65e0\u9700\u6267\u884c"

    .line 247
    .line 248
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    :goto_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 263
    .line 264
    .line 265
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    return-object v1

    .line 267
    :catchall_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    return-object v1
.end method
