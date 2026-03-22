.class public Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:I = 0x32

.field public static final ERROR:I = 0xa

.field public static final INFO:I = 0x28

.field public static final VERBOSE:I = 0x3c

.field public static final WARNING:I = 0x14

.field private static isDebug:Z = true

.field private static logPrintLevel:I = 0x32

.field private static onLogListener:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/16 v1, 0x32

    .line 5
    .line 6
    invoke-static {v1, p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->printTag(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xa

    invoke-static {v1, p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->printTag(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0xa

    invoke-static {v0, p0, p2, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->printTag(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/16 v1, 0x28

    .line 5
    .line 6
    invoke-static {v1, p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->printTag(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static logToLogListener(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-eq p0, v0, :cond_4

    .line 4
    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/16 v0, 0x28

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x32

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x3c

    .line 18
    .line 19
    if-eq p0, v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->onLogListener:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;

    .line 23
    .line 24
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->onLogListener:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;

    .line 29
    .line 30
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->onLogListener:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;

    .line 35
    .line 36
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->onLogListener:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;

    .line 41
    .line 42
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_4
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->onLogListener:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;

    .line 47
    .line 48
    invoke-interface {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private static varargs printTag(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0xa

    .line 6
    .line 7
    :cond_0
    if-eqz p3, :cond_2

    .line 8
    .line 9
    :try_start_0
    array-length v0, p3

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_2
    :goto_0
    sget-object p3, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->onLogListener:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;

    .line 18
    .line 19
    if-eqz p3, :cond_3

    .line 20
    .line 21
    sget p3, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->logPrintLevel:I

    .line 22
    .line 23
    if-gt p0, p3, :cond_4

    .line 24
    .line 25
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->logToLogListener(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    sget-boolean p3, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->isDebug:Z

    .line 30
    .line 31
    if-eqz p3, :cond_4

    .line 32
    .line 33
    sget p3, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->logPrintLevel:I

    .line 34
    .line 35
    if-gt p0, p3, :cond_4

    .line 36
    .line 37
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->toSysLevel(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :cond_4
    return-void

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_1
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catch_2
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static setDebugEnable(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->isDebug:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setLogPrintLevel(I)V
    .locals 0

    .line 1
    sput p0, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->logPrintLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public static setOnLogListener(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->onLogListener:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr$OnLogListener;

    .line 2
    .line 3
    return-void
.end method

.method private static toSysLevel(I)I
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-eq p0, v0, :cond_4

    .line 4
    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/16 v0, 0x28

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x32

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x3c

    .line 18
    .line 19
    if-eq p0, v0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x2

    .line 24
    return p0

    .line 25
    :cond_1
    const/4 p0, 0x3

    .line 26
    return p0

    .line 27
    :cond_2
    const/4 p0, 0x4

    .line 28
    return p0

    .line 29
    :cond_3
    const/4 p0, 0x5

    .line 30
    return p0

    .line 31
    :cond_4
    const/4 p0, 0x6

    .line 32
    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/16 v1, 0x3c

    .line 5
    .line 6
    invoke-static {v1, p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->printTag(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/16 v1, 0x14

    .line 5
    .line 6
    invoke-static {v1, p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->printTag(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
