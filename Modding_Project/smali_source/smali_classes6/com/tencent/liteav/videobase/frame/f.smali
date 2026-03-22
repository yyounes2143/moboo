.class final synthetic Lcom/tencent/liteav/videobase/frame/f;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/videobase/frame/g;


# static fields
.field private static final a:Lcom/tencent/liteav/videobase/frame/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/frame/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/liteav/videobase/frame/f;->a:Lcom/tencent/liteav/videobase/frame/f;

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

.method public static a()Lcom/tencent/liteav/videobase/frame/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/frame/f;->a:Lcom/tencent/liteav/videobase/frame/f;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/videobase/frame/j;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/tencent/liteav/videobase/frame/e$b;

    invoke-static {p1}, Lcom/tencent/liteav/videobase/frame/e$b;->a(Lcom/tencent/liteav/videobase/frame/e$b;)V

    return-void
.end method
