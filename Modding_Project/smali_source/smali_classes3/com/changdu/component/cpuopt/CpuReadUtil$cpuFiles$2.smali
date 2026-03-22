.class final Lcom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/changdu/component/cpuopt/CpuReadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a&\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\u000e\u0008\u0001\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u00010\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Ljava/io/File;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "()[Ljava/io/File;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCpuReadUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CpuReadUtil.kt\ncom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,85:1\n26#2:86\n*S KotlinDebug\n*F\n+ 1 CpuReadUtil.kt\ncom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2\n*L\n16#1:86\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2;->INSTANCE:Lcom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2;->invoke()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Ljava/io/File;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2$filter$1;

    invoke-direct {v1}, Lcom/changdu/component/cpuopt/CpuReadUtil$cpuFiles$2$filter$1;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/io/File;

    :cond_0
    return-object v0
.end method
