.class public Lcom/tencent/liteav/base/util/TimeUtil;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static a()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->nativeGetTimeTick()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static b()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->nativeGetUtcTimeTick()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private static native nativeGetTimeTick()J
.end method

.method private static native nativeGetUtcTimeTick()J
.end method
