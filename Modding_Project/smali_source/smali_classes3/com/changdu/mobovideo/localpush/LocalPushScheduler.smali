.class public final Lcom/changdu/mobovideo/localpush/LocalPushScheduler;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/mobovideo/localpush/LocalPushScheduler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001d\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\u001d\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0017\u0010\u0010J-\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0008J\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008 \u0010\u0008J\u0017\u0010!\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0008J\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0008J7\u0010%\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010$\u001a\u00020#2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008%\u0010&JG\u0010,\u001a\u00028\u0000\"\u0010\u0008\u0000\u0010(*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\'*\u00028\u00002\u0006\u0010)\u001a\u00020#2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010*\u001a\u00020\r2\u0008\u0008\u0002\u0010+\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010/\u001a\u00020#2\u0006\u0010.\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008/\u00100R\u0014\u00103\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u00102\u00a8\u00064"
    }
    d2 = {
        "Lcom/changdu/mobovideo/localpush/LocalPushScheduler;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;)V",
        "Lcom/changdu/mobovideo/localpush/LocalPushConfig;",
        "config",
        "Wwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)V",
        "",
        "lastLoginAtMs",
        "Wwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;J)V",
        "nowMs",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(JLcom/changdu/mobovideo/localpush/LocalPushConfig;)J",
        "currentCandidateAtMs",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "unlockAtMs",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/changdu/mobovideo/localpush/LocalPushType;",
        "type",
        "candidateAtMs",
        "Landroidx/work/ExistingWorkPolicy;",
        "existingWorkPolicy",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;JLandroidx/work/ExistingWorkPolicy;)V",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "",
        "workName",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;Landroidx/work/ExistingWorkPolicy;)V",
        "Landroidx/work/WorkRequest$Builder;",
        "T",
        "stage",
        "atMs",
        "timeLabel",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroidx/work/WorkRequest$Builder;Ljava/lang/String;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;)Landroidx/work/WorkRequest$Builder;",
        "epochMs",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "(J)Ljava/lang/String;",
        "j$/time/format/DateTimeFormatter",
        "Lj$/time/format/DateTimeFormatter;",
        "TAG_TIME_FORMATTER",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLocalPushScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalPushScheduler.kt\ncom/changdu/mobovideo/localpush/LocalPushScheduler\n+ 2 Data.kt\nandroidx/work/DataKt\n+ 3 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,238:1\n32#2,5:239\n32#2,5:245\n32#2,5:251\n105#3:244\n105#3:250\n105#3:256\n*S KotlinDebug\n*F\n+ 1 LocalPushScheduler.kt\ncom/changdu/mobovideo/localpush/LocalPushScheduler\n*L\n140#1:239,5\n160#1:245,5\n186#1:251,5\n144#1:244\n161#1:250\n190#1:256\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lj$/time/format/DateTimeFormatter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushScheduler;

    .line 7
    .line 8
    const-string v0, "yyyyMMdd_HHmmss"

    .line 9
    .line 10
    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lj$/time/format/DateTimeFormatter;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushScheduler;Landroidx/work/WorkRequest$Builder;Ljava/lang/String;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;ILjava/lang/Object;)Landroidx/work/WorkRequest$Builder;
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x8

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-string p6, "at"

    .line 6
    .line 7
    :cond_0
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-wide v4, p4

    .line 12
    move-object v6, p6

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/work/WorkRequest$Builder;Ljava/lang/String;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;)Landroidx/work/WorkRequest$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwww(Landroid/content/Context;J)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    :catchall_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)V
    .locals 1
    .param p1    # Lcom/changdu/mobovideo/localpush/LocalPushConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {p0, v1, v2, v0}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v6

    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    cmp-long v0, v6, v0

    .line 18
    .line 19
    if-gtz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwww()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    cmp-long v1, v1, v6

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    sget-object v5, Lcom/changdu/mobovideo/localpush/LocalPushType;->SIGN_IN:Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 37
    .line 38
    const-string v8, "local_push_sign_in_today"

    .line 39
    .line 40
    sget-object v9, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 41
    .line 42
    move-object v3, p0

    .line 43
    move-object v4, p1

    .line 44
    invoke-virtual/range {v3 .. v9}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;Landroidx/work/ExistingWorkPolicy;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v6, v7}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkk(J)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwww()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-gtz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object v2, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwww()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    cmp-long v3, v3, v0

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    sget-object v3, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 41
    .line 42
    invoke-virtual {v3, p1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    const-string v5, "local_push_recall_pretrigger"

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v3, p1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    const-string v4, "local_push_recall_execute"

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    .line 62
    .line 63
    .line 64
    :cond_3
    sget-object v7, Lcom/changdu/mobovideo/localpush/LocalPushType;->RECALL:Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 65
    .line 66
    const-string v10, "local_push_recall_pretrigger"

    .line 67
    .line 68
    sget-object v11, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 69
    .line 70
    move-object v5, p0

    .line 71
    move-object v6, p1

    .line 72
    invoke-virtual/range {v5 .. v11}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;Landroidx/work/ExistingWorkPolicy;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0, v1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkkkkkk(J)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;J)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object p1, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkk(J)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v2, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushConfig;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lcom/changdu/mobovideo/localpush/LocalPushTime;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushTime;

    .line 20
    .line 21
    const-wide/16 v4, 0x3e8

    .line 22
    .line 23
    add-long/2addr p2, v4

    .line 24
    invoke-virtual {v2}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwww()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {v3, v2}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)Lj$/time/ZoneId;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v3, p2, p3, v4, v2}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JILj$/time/ZoneId;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v8

    .line 36
    cmp-long p2, v8, v0

    .line 37
    .line 38
    if-gtz p2, :cond_1

    .line 39
    .line 40
    sget-object p1, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkk(J)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    sget-object v7, Lcom/changdu/mobovideo/localpush/LocalPushType;->SIGN_IN:Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 47
    .line 48
    const-string v10, "local_push_sign_in_today"

    .line 49
    .line 50
    sget-object v11, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 51
    .line 52
    move-object v5, p0

    .line 53
    move-object v6, p1

    .line 54
    invoke-virtual/range {v5 .. v11}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;Landroidx/work/ExistingWorkPolicy;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 58
    .line 59
    invoke-virtual {p1, v8, v9}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkk(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :catchall_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;)J
    .locals 2
    .param p3    # Lcom/changdu/mobovideo/localpush/LocalPushConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushTime;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushTime;

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwww()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, p3}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushConfig;)Lj$/time/ZoneId;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JILj$/time/ZoneId;)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    return-wide p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lj$/time/Instant;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lj$/time/format/DateTimeFormatter;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lj$/time/ZonedDateTime;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return-object p1

    .line 20
    :catchall_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :catchall_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;Landroidx/work/ExistingWorkPolicy;)V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "type"

    .line 10
    .line 11
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "candidate_at_ms"

    .line 20
    .line 21
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x2

    .line 26
    new-array v5, v4, [Lkotlin/Pair;

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    aput-object v2, v5, v6

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    aput-object v3, v5, v2

    .line 33
    .line 34
    new-instance v3, Landroidx/work/Data$Builder;

    .line 35
    .line 36
    invoke-direct {v3}, Landroidx/work/Data$Builder;-><init>()V

    .line 37
    .line 38
    .line 39
    :goto_0
    if-ge v6, v4, :cond_0

    .line 40
    .line 41
    aget-object v7, v5, v6

    .line 42
    .line 43
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v3, v8, v7}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 54
    .line 55
    .line 56
    add-int/2addr v6, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v3}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v3, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 63
    .line 64
    const-class v4, Lcom/changdu/mobovideo/localpush/ScheduledPushPretriggerWorker;

    .line 65
    .line 66
    invoke-direct {v3, v4}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 74
    .line 75
    const-wide/16 v3, 0x0

    .line 76
    .line 77
    sub-long v0, p3, v0

    .line 78
    .line 79
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 84
    .line 85
    invoke-virtual {v2, v0, v1, v3}, Landroidx/work/WorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    move-object v2, v0

    .line 90
    check-cast v2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 91
    .line 92
    sget-object v1, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushScheduler;

    .line 93
    .line 94
    const/16 v8, 0x8

    .line 95
    .line 96
    const/4 v9, 0x0

    .line 97
    const-string v3, "scheduled_pretrigger"

    .line 98
    .line 99
    const/4 v7, 0x0

    .line 100
    move-object v4, p2

    .line 101
    move-wide v5, p3

    .line 102
    invoke-static/range {v1 .. v9}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushScheduler;Landroidx/work/WorkRequest$Builder;Ljava/lang/String;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;ILjava/lang/Object;)Landroidx/work/WorkRequest$Builder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    check-cast p2, Landroidx/work/OneTimeWorkRequest;

    .line 110
    .line 111
    sget-object p3, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 112
    .line 113
    invoke-virtual {p3, p1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_1

    .line 118
    .line 119
    move-object/from16 p3, p6

    .line 120
    .line 121
    invoke-virtual {p1, p5, p3, p2}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    .line 122
    .line 123
    .line 124
    :cond_1
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;J)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "unlock_at_ms"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v0, v1, v2

    .line 16
    .line 17
    new-instance v0, Landroidx/work/Data$Builder;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    aget-object v1, v1, v2

    .line 23
    .line 24
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v2, v1}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 42
    .line 43
    const-class v2, Lcom/changdu/mobovideo/localpush/PromotionPretriggerWorker;

    .line 44
    .line 45
    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v2, v0

    .line 53
    check-cast v2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 54
    .line 55
    sget-object v1, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushScheduler;

    .line 56
    .line 57
    sget-object v4, Lcom/changdu/mobovideo/localpush/LocalPushType;->PROMOTION:Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 58
    .line 59
    const-string v7, "unlock"

    .line 60
    .line 61
    const-string v3, "promotion_pretrigger"

    .line 62
    .line 63
    move-wide v5, p2

    .line 64
    invoke-virtual/range {v1 .. v7}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/work/WorkRequest$Builder;Ljava/lang/String;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;)Landroidx/work/WorkRequest$Builder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Landroidx/work/OneTimeWorkRequest;

    .line 72
    .line 73
    sget-object p3, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 74
    .line 75
    invoke-virtual {p3, p1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_0

    .line 80
    .line 81
    const-string p3, "local_push_promotion_pretrigger"

    .line 82
    .line 83
    sget-object v0, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 84
    .line 85
    invoke-virtual {p1, p3, v0, p2}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;JLandroidx/work/ExistingWorkPolicy;)V
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/changdu/mobovideo/localpush/LocalPushType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/work/ExistingWorkPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "type"

    .line 10
    .line 11
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "candidate_at_ms"

    .line 20
    .line 21
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x2

    .line 26
    new-array v5, v4, [Lkotlin/Pair;

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    aput-object v2, v5, v6

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    aput-object v3, v5, v2

    .line 33
    .line 34
    new-instance v3, Landroidx/work/Data$Builder;

    .line 35
    .line 36
    invoke-direct {v3}, Landroidx/work/Data$Builder;-><init>()V

    .line 37
    .line 38
    .line 39
    :goto_0
    if-ge v6, v4, :cond_0

    .line 40
    .line 41
    aget-object v7, v5, v6

    .line 42
    .line 43
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v3, v8, v7}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 54
    .line 55
    .line 56
    add-int/2addr v6, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v3}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    new-instance v5, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 63
    .line 64
    const-class v6, Lcom/changdu/mobovideo/localpush/LocalPushExecuteWorker;

    .line 65
    .line 66
    invoke-direct {v5, v6}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v3}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 74
    .line 75
    const-wide/16 v5, 0x0

    .line 76
    .line 77
    sub-long v0, p3, v0

    .line 78
    .line 79
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 84
    .line 85
    invoke-virtual {v3, v0, v1, v5}, Landroidx/work/WorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    move-object v6, v0

    .line 90
    check-cast v6, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 91
    .line 92
    sget-object v5, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushScheduler;

    .line 93
    .line 94
    const/16 v12, 0x8

    .line 95
    .line 96
    const/4 v13, 0x0

    .line 97
    const-string v7, "execute"

    .line 98
    .line 99
    const/4 v11, 0x0

    .line 100
    move-object/from16 v8, p2

    .line 101
    .line 102
    move-wide/from16 v9, p3

    .line 103
    .line 104
    invoke-static/range {v5 .. v13}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushScheduler;Landroidx/work/WorkRequest$Builder;Ljava/lang/String;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;ILjava/lang/Object;)Landroidx/work/WorkRequest$Builder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    .line 112
    .line 113
    sget-object v1, Lcom/changdu/mobovideo/localpush/LocalPushScheduler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 114
    .line 115
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    aget v1, v1, v3

    .line 120
    .line 121
    if-eq v1, v2, :cond_3

    .line 122
    .line 123
    if-eq v1, v4, :cond_2

    .line 124
    .line 125
    const/4 v2, 0x3

    .line 126
    if-ne v1, v2, :cond_1

    .line 127
    .line 128
    const-string v1, "local_push_promotion_execute"

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 132
    .line 133
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_2
    const-string v1, "local_push_recall_execute"

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    const-string v1, "local_push_sign_in_execute"

    .line 141
    .line 142
    :goto_1
    sget-object v2, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 143
    .line 144
    invoke-virtual {v2, p1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_4

    .line 149
    .line 150
    move-object/from16 v2, p5

    .line 151
    .line 152
    invoke-virtual {p1, v1, v2, v0}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    .line 153
    .line 154
    .line 155
    :cond_4
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v2, "local_push_sign_in_today"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-string v0, "local_push_sign_in_execute"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    .line 23
    .line 24
    .line 25
    :cond_1
    sget-object p1, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkk(J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v2, "local_push_recall_pretrigger"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-string v0, "local_push_recall_execute"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/work/WorkManager;->cancelUniqueWork(Ljava/lang/String;)Landroidx/work/Operation;

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/work/WorkRequest$Builder;Ljava/lang/String;Lcom/changdu/mobovideo/localpush/LocalPushType;JLjava/lang/String;)Landroidx/work/WorkRequest$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/work/WorkRequest$Builder<",
            "**>;>(TT;",
            "Ljava/lang/String;",
            "Lcom/changdu/mobovideo/localpush/LocalPushType;",
            "J",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "local_push"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p4, p5}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "lp_"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, "_"

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    .line 52
    .line 53
    .line 54
    const-string p2, "at"

    .line 55
    .line 56
    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_0

    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p0, p4, p5}, Lcom/changdu/mobovideo/localpush/LocalPushScheduler;->Wwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    new-instance p4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    .line 102
    .line 103
    .line 104
    :cond_0
    return-object p1
.end method
