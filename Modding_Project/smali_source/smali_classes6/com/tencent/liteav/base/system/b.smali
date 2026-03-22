.class final synthetic Lcom/tencent/liteav/base/system/b;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field private static final a:Lcom/tencent/liteav/base/system/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/system/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/liteav/base/system/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/liteav/base/system/b;->a:Lcom/tencent/liteav/base/system/b;

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

.method public static a()Ljava/util/concurrent/Callable;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/liteav/base/system/b;->a:Lcom/tencent/liteav/base/system/b;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/system/a;->d()Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
