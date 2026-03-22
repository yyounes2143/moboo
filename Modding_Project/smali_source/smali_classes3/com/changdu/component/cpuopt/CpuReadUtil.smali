.class public final Lcom/changdu/component/cpuopt/CpuReadUtil;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000cJ\u000e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000eJ\n\u0010\u0012\u001a\u00020\u0013*\u00020\u0005R?\u0010\u0003\u001a&\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000e\u0008\u0001\u0012\n \u0006*\u0004\u0018\u00010\u00050\u00050\u00040\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/changdu/component/cpuopt/CpuReadUtil;",
        "",
        "()V",
        "cpuFiles",
        "",
        "Ljava/io/File;",
        "kotlin.jvm.PlatformType",
        "getCpuFiles",
        "()[Ljava/io/File;",
        "cpuFiles$delegate",
        "Lkotlin/Lazy;",
        "cpuIndexPath",
        "",
        "cpuIndex",
        "",
        "printAllCpuFreq",
        "",
        "readAllCpuFreq",
        "readLong",
        "",
        "basePath",
        "childPath",
        "scalingCurFreq",
        "scalingMaxFreq",
        "scalingMinFreq",
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
.field public static final INSTANCE:Lcom/changdu/component/cpuopt/CpuReadUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final cpuFiles$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/cpuopt/CpuReadUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/cpuopt/CpuReadUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/cpuopt/CpuReadUtil;->INSTANCE:Lcom/changdu/component/cpuopt/CpuReadUtil;

    .line 7
    .line 8
    sget-object v0, Lcom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2;->INSTANCE:Lcom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/changdu/component/cpuopt/CpuReadUtil;->cpuFiles$delegate:Lkotlin/Lazy;

    .line 15
    .line 16
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

.method private final cpuIndexPath(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "/sys/devices/system/cpu/cpu"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "/"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method


# virtual methods
.method public final getCpuFiles()[Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/changdu/component/cpuopt/CpuReadUtil;->cpuFiles$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ljava/io/File;

    .line 8
    .line 9
    return-object v0
.end method

.method public final printAllCpuFreq()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/changdu/component/cpuopt/CpuReadUtil;->getCpuFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/changdu/component/cpuopt/CpuReadUtil;->scalingMinFreq(I)J

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/changdu/component/cpuopt/CpuReadUtil;->scalingMaxFreq(I)J

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/changdu/component/cpuopt/CpuReadUtil;->scalingCurFreq(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final readAllCpuFreq()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/sys/devices/system/cpu"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final readLong(Ljava/io/File;)J
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1, v0}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/changdu/component/cpuopt/CpuReadUtil;->readLong(Ljava/io/File;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final scalingCurFreq(I)J
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/changdu/component/cpuopt/CpuReadUtil;->cpuIndexPath(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "cpufreq/scaling_cur_freq"

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/changdu/component/cpuopt/CpuReadUtil;->readLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public final scalingMaxFreq(I)J
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/changdu/component/cpuopt/CpuReadUtil;->cpuIndexPath(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "cpufreq/scaling_max_freq"

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/changdu/component/cpuopt/CpuReadUtil;->readLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public final scalingMinFreq(I)J
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/changdu/component/cpuopt/CpuReadUtil;->cpuIndexPath(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "cpufreq/scaling_min_freq"

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/changdu/component/cpuopt/CpuReadUtil;->readLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method
