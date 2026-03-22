.class public final Lcom/changdu/component/cpuopt/VoidCpuPerformance;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/cpuopt/CpuPerformance;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/changdu/component/cpuopt/VoidCpuPerformance;",
        "Lcom/changdu/component/cpuopt/CpuPerformance;",
        "()V",
        "boostCpu",
        "",
        "duration",
        "",
        "commands",
        "",
        "init",
        "context",
        "Landroid/content/Context;",
        "stopBoost",
        "",
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


# virtual methods
.method public boostCpu(I)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public boostCpu(I[I)Z
    .locals 0
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroid/content/Context;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public stopBoost()V
    .locals 0

    .line 1
    return-void
.end method
