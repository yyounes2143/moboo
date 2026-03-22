.class public final Lcom/changdu/component/cpuopt/CpuBoostManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0008\u0010\u0012\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/changdu/component/cpuopt/CpuBoostManager;",
        "",
        "()V",
        "TAG",
        "",
        "cpuBoostEnable",
        "",
        "cpuPerformance",
        "Lcom/changdu/component/cpuopt/CpuPerformance;",
        "inited",
        "boostCpu",
        "duration",
        "",
        "reason",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "stopBoost",
        "cpu_optimize_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/component/cpuopt/CpuBoostManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "CpuBoostManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static cpuBoostEnable:Z

.field private static cpuPerformance:Lcom/changdu/component/cpuopt/CpuPerformance;

.field private static inited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/cpuopt/CpuBoostManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/cpuopt/CpuBoostManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/cpuopt/CpuBoostManager;->INSTANCE:Lcom/changdu/component/cpuopt/CpuBoostManager;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic boostCpu$default(Lcom/changdu/component/cpuopt/CpuBoostManager;ILjava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/cpuopt/CpuBoostManager;->boostCpu(ILjava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final stopBoost()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/changdu/component/cpuopt/CpuBoostManager;->inited:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/changdu/component/cpuopt/CpuBoostManager;->cpuPerformance:Lcom/changdu/component/cpuopt/CpuPerformance;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_1
    invoke-interface {v0}, Lcom/changdu/component/cpuopt/CpuPerformance;->stopBoost()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final boostCpu(ILjava/lang/String;)Z
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-boolean p2, Lcom/changdu/component/cpuopt/CpuBoostManager;->inited:Z

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    sget-object p2, Lcom/changdu/component/cpuopt/CpuBoostManager;->cpuPerformance:Lcom/changdu/component/cpuopt/CpuPerformance;

    .line 8
    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    :cond_1
    invoke-interface {p2, p1}, Lcom/changdu/component/cpuopt/CpuPerformance;->boostCpu(I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/changdu/component/cpuopt/CpuBoostManager;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "qcom"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/changdu/component/cpuopt/QcmCpuPerformance;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/changdu/component/cpuopt/CpuBoostManager;->cpuPerformance:Lcom/changdu/component/cpuopt/CpuPerformance;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lcom/changdu/component/cpuopt/CpuPerformance;->init(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sput-boolean p1, Lcom/changdu/component/cpuopt/CpuBoostManager;->cpuBoostEnable:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance p1, Lcom/changdu/component/cpuopt/VoidCpuPerformance;

    .line 35
    .line 36
    invoke-direct {p1}, Lcom/changdu/component/cpuopt/VoidCpuPerformance;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object p1, Lcom/changdu/component/cpuopt/CpuBoostManager;->cpuPerformance:Lcom/changdu/component/cpuopt/CpuPerformance;

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    sput-boolean p1, Lcom/changdu/component/cpuopt/CpuBoostManager;->cpuBoostEnable:Z

    .line 43
    .line 44
    :goto_0
    const/4 p1, 0x1

    .line 45
    sput-boolean p1, Lcom/changdu/component/cpuopt/CpuBoostManager;->inited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p1
.end method
