.class public final Lcom/bytedance/shadowhook/ShadowHook;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/shadowhook/ShadowHook$ILibLoader;,
        Lcom/bytedance/shadowhook/ShadowHook$Config;,
        Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;,
        Lcom/bytedance/shadowhook/ShadowHook$Mode;,
        Lcom/bytedance/shadowhook/ShadowHook$RecordItem;
    }
.end annotation


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bytedance/shadowhook/ShadowHook$ILibLoader; = null

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J = -0x1L

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I = 0x2

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z = false

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/shadowhook/ShadowHook$Mode;->SHARED:Lcom/bytedance/shadowhook/ShadowHook$Mode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/shadowhook/ShadowHook$Mode;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 8
    .line 9
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

.method public static declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bytedance/shadowhook/ShadowHook$Config;)Z
    .locals 3

    .line 1
    const-class v0, Lcom/bytedance/shadowhook/ShadowHook;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return v2

    .line 11
    :cond_0
    if-eqz p0, :cond_2

    .line 12
    .line 13
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/shadowhook/ShadowHook$Config;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bytedance/shadowhook/ShadowHook$ILibLoader;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/shadowhook/ShadowHook$Config;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bytedance/shadowhook/ShadowHook$ILibLoader;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v1, "shadowhook"

    .line 25
    .line 26
    invoke-interface {p0, v1}, Lcom/bytedance/shadowhook/ShadowHook$ILibLoader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const-string p0, "shadowhook"

    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    sput-boolean v2, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return v2

    .line 39
    :catchall_0
    monitor-exit v0

    .line 40
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    throw p0
.end method

.method public static declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bytedance/shadowhook/ShadowHook$Config;)I
    .locals 6

    .line 1
    const-class v0, Lcom/bytedance/shadowhook/ShadowHook;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget p0, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    :try_start_1
    sput-boolean v1, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    new-instance p0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bytedance/shadowhook/ShadowHook$Config;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_1
    invoke-static {p0}, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bytedance/shadowhook/ShadowHook$Config;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    const/16 p0, 0x64

    .line 39
    .line 40
    sput p0, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    sub-long/2addr v4, v2

    .line 47
    sput-wide v4, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 48
    .line 49
    sget p0, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return p0

    .line 53
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/bytedance/shadowhook/ShadowHook$Config;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    invoke-static {v1}, Lcom/bytedance/shadowhook/ShadowHook;->nativeSetDisable(Z)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/shadowhook/ShadowHook$Config;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/bytedance/shadowhook/ShadowHook$Config;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-static {v1}, Lcom/bytedance/shadowhook/ShadowHook;->nativeSetRecordable(Z)V

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/shadowhook/ShadowHook$Config;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {p0}, Lcom/bytedance/shadowhook/ShadowHook$Config;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-static {v1, p0}, Lcom/bytedance/shadowhook/ShadowHook;->nativeInit(IZ)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    sput p0, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_1
    const/16 p0, 0x65

    .line 91
    .line 92
    :try_start_3
    sput p0, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 93
    .line 94
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    sub-long/2addr v4, v2

    .line 99
    sput-wide v4, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 100
    .line 101
    sget p0, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    .line 103
    monitor-exit v0

    .line 104
    return p0

    .line 105
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    throw p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bytedance/shadowhook/ShadowHook$ILibLoader;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bytedance/shadowhook/ShadowHook$ILibLoader;

    .line 2
    .line 3
    return-object v0
.end method

.method private static native nativeGetArch()Ljava/lang/String;
.end method

.method private static native nativeGetDebuggable()Z
.end method

.method private static native nativeGetDisable()Z
.end method

.method private static native nativeGetInitErrno()I
.end method

.method private static native nativeGetMode()I
.end method

.method private static native nativeGetRecordable()Z
.end method

.method private static native nativeGetRecords(I)Ljava/lang/String;
.end method

.method private static native nativeGetVersion()Ljava/lang/String;
.end method

.method private static native nativeInit(IZ)I
.end method

.method private static native nativeSetDebuggable(Z)V
.end method

.method private static native nativeSetDisable(Z)V
.end method

.method private static native nativeSetRecordable(Z)V
.end method

.method private static native nativeToErrmsg(I)Ljava/lang/String;
.end method
