.class public Lcom/tencent/liteav/base/util/CommonUtil;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/base/util/CommonUtil$a;
    }
.end annotation


# static fields
.field private static mNativeNtpTimeManagerListener:J

.field private static sCallback:Lcom/tencent/liteav/base/util/CommonUtil$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/util/SoLoader;->loadAllLibraries()Z

    .line 2
    .line 3
    .line 4
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

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x2e

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    if-ge v0, v1, :cond_0

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static getNetworkTimestamp()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/util/CommonUtil;->nativeNtpTimeManagerListenerHasBeenCreated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-wide v0, Lcom/tencent/liteav/base/util/CommonUtil;->mNativeNtpTimeManagerListener:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/CommonUtil;->nativeGetNetworkTimestamp(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public static getSDKVersionStr()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/util/CommonUtil;->nativeGetSDKVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeGetNetworkTimestamp(J)J
.end method

.method public static native nativeGetSDKVersion()Ljava/lang/String;
.end method

.method private static nativeNtpTimeManagerListenerHasBeenCreated()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/liteav/base/util/CommonUtil;->sCallback:Lcom/tencent/liteav/base/util/CommonUtil$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method private static native nativeSetGlobalEnv(Ljava/lang/String;)I
.end method

.method private static native nativeSetSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)Z
.end method

.method private static native nativeUpdateNetworkTime(J)I
.end method

.method public static onUpdateNetworkTime(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/liteav/base/util/CommonUtil;->sCallback:Lcom/tencent/liteav/base/util/CommonUtil$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1}, Lcom/tencent/liteav/base/util/CommonUtil$a;->a(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static setGlobalEnv(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/liteav/base/util/CommonUtil;->nativeSetGlobalEnv(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static setSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/tencent/liteav/base/util/CommonUtil;->nativeSetSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static setUpdateNetworkTimeCallback(Lcom/tencent/liteav/base/util/CommonUtil$a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/util/CommonUtil;->nativeNtpTimeManagerListenerHasBeenCreated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/base/util/CommonUtil;->nativeCreate()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    sput-wide v0, Lcom/tencent/liteav/base/util/CommonUtil;->mNativeNtpTimeManagerListener:J

    .line 13
    .line 14
    sput-object p0, Lcom/tencent/liteav/base/util/CommonUtil;->sCallback:Lcom/tencent/liteav/base/util/CommonUtil$a;

    .line 15
    .line 16
    return-void
.end method

.method public static updateNetworkTime()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/util/CommonUtil;->nativeNtpTimeManagerListenerHasBeenCreated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-wide v0, Lcom/tencent/liteav/base/util/CommonUtil;->mNativeNtpTimeManagerListener:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/CommonUtil;->nativeUpdateNetworkTime(J)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, -0x1

    .line 15
    return v0
.end method
