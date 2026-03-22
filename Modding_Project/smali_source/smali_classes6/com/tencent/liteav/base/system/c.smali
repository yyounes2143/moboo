.class final synthetic Lcom/tencent/liteav/base/system/c;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/base/util/j$a;


# static fields
.field private static final a:Lcom/tencent/liteav/base/system/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/system/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/liteav/base/system/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/liteav/base/system/c;->a:Lcom/tencent/liteav/base/system/c;

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

.method public static a()Lcom/tencent/liteav/base/util/j$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/liteav/base/system/c;->a:Lcom/tencent/liteav/base/system/c;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->lambda$listenAppBackgroundState$9(Z)V

    return-void
.end method
