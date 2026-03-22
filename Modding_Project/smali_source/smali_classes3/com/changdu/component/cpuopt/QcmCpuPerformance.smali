.class public final Lcom/changdu/component/cpuopt/QcmCpuPerformance;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/cpuopt/CpuPerformance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/component/cpuopt/QcmCpuPerformance$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u000cH\u0016J\u0018\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0004H\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u0018\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/changdu/component/cpuopt/QcmCpuPerformance;",
        "Lcom/changdu/component/cpuopt/CpuPerformance;",
        "()V",
        "CONFIGS_FREQUENCY_HIGH",
        "",
        "DISABLE_POWER_COLLAPSE",
        "acquireFunc",
        "Ljava/lang/reflect/Method;",
        "boostFramework",
        "Lcom/changdu/component/cpuopt/BoostFramework;",
        "boostHandlers",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "",
        "frameworkInstance",
        "",
        "initSuccess",
        "",
        "perfHintFunc",
        "releaseFunc",
        "useBoostFrameworkDirectly",
        "boostCpu",
        "duration",
        "commands",
        "init",
        "context",
        "Landroid/content/Context;",
        "perfLockAcquire",
        "list",
        "perfLockAcquireByBoostFramework",
        "stopBoost",
        "",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nQcmCpuPerformance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QcmCpuPerformance.kt\ncom/changdu/component/cpuopt/QcmCpuPerformance\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,222:1\n37#2,2:223\n*S KotlinDebug\n*F\n+ 1 QcmCpuPerformance.kt\ncom/changdu/component/cpuopt/QcmCpuPerformance\n*L\n192#1:223,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/changdu/component/cpuopt/QcmCpuPerformance$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MPCTLV3_ALL_CPUS_PWR_CLPS_DIS:I = 0x40400000

.field public static final MPCTLV3_MAX_FREQ_CLUSTER_BIG_CORE_0:I = 0x40804000

.field public static final MPCTLV3_MAX_FREQ_CLUSTER_LITTLE_CORE_0:I = 0x40804100

.field public static final MPCTLV3_MAX_FREQ_CLUSTER_PLUS_CORE_0:I = 0x40804200

.field public static final MPCTLV3_MIN_FREQ_CLUSTER_BIG_CORE_0:I = 0x40800000

.field public static final MPCTLV3_MIN_FREQ_CLUSTER_LITTLE_CORE_0:I = 0x40800100

.field public static final MPCTLV3_MIN_FREQ_CLUSTER_PLUS_CORE_0:I = 0x40800200

.field public static final MPCTLV3_SCHED_BOOST:I = 0x40c00000

.field public static final TAG:Ljava/lang/String; = "QcmCpuPerformance"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private CONFIGS_FREQUENCY_HIGH:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private DISABLE_POWER_COLLAPSE:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private acquireFunc:Ljava/lang/reflect/Method;

.field private boostFramework:Lcom/changdu/component/cpuopt/BoostFramework;

.field private boostHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private frameworkInstance:Ljava/lang/Object;

.field private initSuccess:Z

.field private perfHintFunc:Ljava/lang/reflect/Method;

.field private releaseFunc:Ljava/lang/reflect/Method;

.field private useBoostFrameworkDirectly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/changdu/component/cpuopt/QcmCpuPerformance$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/changdu/component/cpuopt/QcmCpuPerformance$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->Companion:Lcom/changdu/component/cpuopt/QcmCpuPerformance$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->boostHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    const/high16 v0, 0x40400000    # 3.0f

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    new-array v2, v2, [I

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->CONFIGS_FREQUENCY_HIGH:[I

    .line 22
    .line 23
    filled-new-array {v0, v1}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->DISABLE_POWER_COLLAPSE:[I

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x1
        0x40c00000    # 6.0f
        0x1
        0x40800000    # 4.0f
        0xfff
        0x40800100    # 4.000122f
        0xfff
        0x40800200    # 4.000244f
        0xfff
        0x40804000    # 4.0078125f
        0xfff
        0x40804100
        0xfff
        0x40804200
        0xfff
    .end array-data
.end method

.method private final perfLockAcquire(I[I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->acquireFunc:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->frameworkInstance:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v2, 0x2

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object p1, v2, v3

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    aput-object p2, v2, p1

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-lez p2, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->boostHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    return p2
.end method

.method private final perfLockAcquireByBoostFramework(I[I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->boostFramework:Lcom/changdu/component/cpuopt/BoostFramework;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    array-length v1, p2

    .line 7
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/changdu/component/cpuopt/BoostFramework;->perfLockAcquire(I[I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-lez p1, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->boostHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return p1
.end method


# virtual methods
.method public boostCpu(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->initSuccess:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->useBoostFrameworkDirectly:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->DISABLE_POWER_COLLAPSE:[I

    invoke-direct {p0, p1, v0}, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->perfLockAcquireByBoostFramework(I[I)I

    .line 4
    iget-object v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->CONFIGS_FREQUENCY_HIGH:[I

    invoke-direct {p0, p1, v0}, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->perfLockAcquireByBoostFramework(I[I)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->DISABLE_POWER_COLLAPSE:[I

    invoke-direct {p0, p1, v0}, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->perfLockAcquire(I[I)I

    .line 6
    iget-object v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->CONFIGS_FREQUENCY_HIGH:[I

    invoke-direct {p0, p1, v0}, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->perfLockAcquire(I[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public boostCpu(I[I)Z
    .locals 2
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 7
    iget-boolean v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->initSuccess:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->useBoostFrameworkDirectly:Z

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->perfLockAcquireByBoostFramework(I[I)I

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->perfLockAcquire(I[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public init(Landroid/content/Context;)Z
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    const-string v3, "android.util.BoostFramework"

    .line 5
    .line 6
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    new-array v4, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    const-class v5, Landroid/content/Context;

    .line 13
    .line 14
    aput-object v5, v4, v1

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    new-array v5, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object p1, v5, v1

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->frameworkInstance:Ljava/lang/Object;

    .line 32
    .line 33
    const-string p1, "perfLockAcquire"

    .line 34
    .line 35
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    new-array v5, v0, [Ljava/lang/Class;

    .line 38
    .line 39
    aput-object v4, v5, v1

    .line 40
    .line 41
    const-class v6, [I

    .line 42
    .line 43
    aput-object v6, v5, v2

    .line 44
    .line 45
    invoke-virtual {v3, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->acquireFunc:Ljava/lang/reflect/Method;

    .line 50
    .line 51
    const-string p1, "perfHint"

    .line 52
    .line 53
    const/4 v5, 0x4

    .line 54
    new-array v5, v5, [Ljava/lang/Class;

    .line 55
    .line 56
    aput-object v4, v5, v1

    .line 57
    .line 58
    const-class v6, Ljava/lang/String;

    .line 59
    .line 60
    aput-object v6, v5, v2

    .line 61
    .line 62
    aput-object v4, v5, v0

    .line 63
    .line 64
    const/4 v0, 0x3

    .line 65
    aput-object v4, v5, v0

    .line 66
    .line 67
    invoke-virtual {v3, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->perfHintFunc:Ljava/lang/reflect/Method;

    .line 72
    .line 73
    const-string p1, "perfLockReleaseHandler"

    .line 74
    .line 75
    new-array v0, v2, [Ljava/lang/Class;

    .line 76
    .line 77
    aput-object v4, v0, v1

    .line 78
    .line 79
    invoke-virtual {v3, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->releaseFunc:Ljava/lang/reflect/Method;

    .line 84
    .line 85
    iput-boolean v2, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->initSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    return v2

    .line 88
    :catch_0
    :try_start_1
    new-instance p1, Lcom/changdu/component/cpuopt/BoostFramework;

    .line 89
    .line 90
    invoke-direct {p1}, Lcom/changdu/component/cpuopt/BoostFramework;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->boostFramework:Lcom/changdu/component/cpuopt/BoostFramework;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/changdu/component/cpuopt/BoostFramework;->isValid()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->useBoostFrameworkDirectly:Z

    .line 102
    .line 103
    iput-boolean v2, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->initSuccess:Z

    .line 104
    .line 105
    return v2

    .line 106
    :cond_1
    iput-boolean v1, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->initSuccess:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    return v1

    .line 109
    :catch_1
    iput-boolean v1, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->initSuccess:Z

    .line 110
    .line 111
    return v1
.end method

.method public stopBoost()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->boostHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    new-array v3, v2, [Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, [Ljava/lang/Integer;

    .line 12
    .line 13
    array-length v3, v1

    .line 14
    move v4, v2

    .line 15
    :goto_0
    if-ge v4, v3, :cond_2

    .line 16
    .line 17
    aget-object v5, v1, v4

    .line 18
    .line 19
    :try_start_0
    iget-object v6, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->releaseFunc:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    :cond_0
    iget-object v7, p0, Lcom/changdu/component/cpuopt/QcmCpuPerformance;->frameworkInstance:Ljava/lang/Object;

    .line 25
    .line 26
    if-nez v7, :cond_1

    .line 27
    .line 28
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v5

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_1
    new-array v8, v0, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object v5, v8, v2

    .line 36
    .line 37
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_3
    add-int/2addr v4, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method
