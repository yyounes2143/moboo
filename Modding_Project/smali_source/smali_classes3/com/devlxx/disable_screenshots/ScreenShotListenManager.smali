.class public Lcom/devlxx/disable_screenshots/ScreenShotListenManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;,
        Lcom/devlxx/disable_screenshots/ScreenShotListenManager$OnScreenShotListener;
    }
.end annotation


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$OnScreenShotListener;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-string v0, "_data"

    .line 2
    .line 3
    const-string v1, "datetaken"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sput-object v2, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "width"

    .line 12
    .line 13
    const-string v3, "height"

    .line 14
    .line 15
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 20
    .line 21
    const-string v11, "screen-cap"

    .line 22
    .line 23
    const-string v12, "screen cap"

    .line 24
    .line 25
    const-string v1, "screenshot"

    .line 26
    .line 27
    const-string v2, "screen_shot"

    .line 28
    .line 29
    const-string v3, "screen-shot"

    .line 30
    .line 31
    const-string v4, "screen shot"

    .line 32
    .line 33
    const-string v5, "screencapture"

    .line 34
    .line 35
    const-string v6, "screen_capture"

    .line 36
    .line 37
    const-string v7, "screen-capture"

    .line 38
    .line 39
    const-string v8, "screen capture"

    .line 40
    .line 41
    const-string v9, "screencap"

    .line 42
    .line 43
    const-string v10, "screen_cap"

    .line 44
    .line 45
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 18
    .line 19
    sget-object p1, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sput-object p1, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    sget-object p1, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

    .line 32
    .line 33
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 34
    .line 35
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v0, "The context must not be null."

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcom/devlxx/disable_screenshots/ScreenShotListenManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    const/4 v2, 0x4

    .line 23
    if-lt v1, v2, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    aget-object v0, v0, v1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "Call the method must be in main thread: "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_1
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/devlxx/disable_screenshots/ScreenShotListenManager;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwww()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
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
    :goto_0
    iput-object v1, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v2, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_1
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :goto_1
    iput-object v1, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

    .line 48
    .line 49
    :cond_1
    const-wide/16 v2, 0x0

    .line 50
    .line 51
    iput-wide v2, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 52
    .line 53
    iput-object v1, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$OnScreenShotListener;

    .line 54
    .line 55
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 9
    .line 10
    new-instance v0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

    .line 11
    .line 12
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-direct {v0, p0, v1, v2}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;-><init>(Lcom/devlxx/disable_screenshots/ScreenShotListenManager;Landroid/net/Uri;Landroid/os/Handler;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

    .line 20
    .line 21
    new-instance v0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

    .line 22
    .line 23
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-direct {v0, p0, v2, v3}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;-><init>(Lcom/devlxx/disable_screenshots/ScreenShotListenManager;Landroid/net/Uri;Landroid/os/Handler;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v3, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v0, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$MediaContentObserver;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/devlxx/disable_screenshots/ScreenShotListenManager$OnScreenShotListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$OnScreenShotListener;

    .line 2
    .line 3
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;JII)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;JII)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    move-object p3, p1

    .line 6
    move-object p1, p0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p1, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$OnScreenShotListener;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p3}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p1, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/devlxx/disable_screenshots/ScreenShotListenManager$OnScreenShotListener;

    .line 20
    .line 21
    invoke-interface {p2, p3}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager$OnScreenShotListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/net/Uri;)V
    .locals 10

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    sget-object v4, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 9
    .line 10
    const-string v7, "date_added desc limit 1"

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v3, p1

    .line 15
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 16
    .line 17
    .line 18
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 34
    .line 35
    .line 36
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    :try_start_2
    const-string p1, "_data"

    .line 50
    .line 51
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const-string v0, "datetaken"

    .line 56
    .line 57
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const-string v2, "width"

    .line 62
    .line 63
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const-string v3, "height"

    .line 68
    .line 69
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    if-ltz v2, :cond_2

    .line 82
    .line 83
    if-ltz v3, :cond_2

    .line 84
    .line 85
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    move v8, p1

    .line 94
    move v9, v0

    .line 95
    :goto_0
    move-object v4, p0

    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    move-object p1, v0

    .line 99
    goto :goto_3

    .line 100
    :catch_0
    move-exception v0

    .line 101
    move-object p1, v0

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {p0, v5}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Landroid/graphics/Point;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 108
    .line 109
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 110
    .line 111
    move v9, p1

    .line 112
    move v8, v0

    .line 113
    goto :goto_0

    .line 114
    :goto_1
    invoke-virtual/range {v4 .. v9}, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;JII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_3

    .line 122
    .line 123
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    .line 129
    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_3

    .line 137
    .line 138
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 139
    .line 140
    .line 141
    :cond_3
    return-void

    .line 142
    :goto_3
    if-eqz v1, :cond_4

    .line 143
    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_4

    .line 149
    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 151
    .line 152
    .line 153
    :cond_4
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Point;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/graphics/Point;

    .line 3
    .line 4
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 8
    .line 9
    const-string v2, "window"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/WindowManager;

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v1

    .line 28
    move-object v3, v1

    .line 29
    move-object v1, v0

    .line 30
    move-object v0, v3

    .line 31
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroid/graphics/Point;

    .line 13
    .line 14
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 15
    .line 16
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 17
    .line 18
    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;JII)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-ltz v0, :cond_6

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    sub-long/2addr v2, p2

    .line 13
    const-wide/16 p2, 0x2710

    .line 14
    .line 15
    cmp-long p2, v2, p2

    .line 16
    .line 17
    if-lez p2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    sget-object p2, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/graphics/Point;

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    iget p3, p2, Landroid/graphics/Point;->x:I

    .line 25
    .line 26
    if-gt p4, p3, :cond_1

    .line 27
    .line 28
    iget v0, p2, Landroid/graphics/Point;->y:I

    .line 29
    .line 30
    if-le p5, v0, :cond_3

    .line 31
    .line 32
    :cond_1
    if-gt p5, p3, :cond_2

    .line 33
    .line 34
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 35
    .line 36
    if-le p4, p2, :cond_3

    .line 37
    .line 38
    :cond_2
    return v1

    .line 39
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_4

    .line 44
    .line 45
    return v1

    .line 46
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sget-object p2, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 51
    .line 52
    array-length p3, p2

    .line 53
    move p4, v1

    .line 54
    :goto_0
    if-ge p4, p3, :cond_6

    .line 55
    .line 56
    aget-object p5, p2, p4

    .line 57
    .line 58
    invoke-virtual {p1, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result p5

    .line 62
    if-eqz p5, :cond_5

    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    return p1

    .line 66
    :cond_5
    add-int/lit8 p4, p4, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_6
    :goto_1
    return v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x14

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    move v0, v2

    .line 21
    :goto_0
    const/4 v1, 0x5

    .line 22
    if-ge v0, v1, :cond_1

    .line 23
    .line 24
    sget-object v1, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object v0, Lcom/devlxx/disable_screenshots/ScreenShotListenManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    return v2
.end method
