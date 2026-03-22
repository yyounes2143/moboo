.class public Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerFactory;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TPPlayerFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createRichMediaASyncRequester(Landroid/content/Context;)Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaAsyncRequester;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/f/a/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/f/a/a;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "Failed to create rich media async requester:"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "TPPlayerFactory"

    .line 31
    .line 32
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public static createRichMediaSynchronizer(Landroid/content/Context;)Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizer;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/f/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/f/b;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "Failed to create rich media synchronizer:"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "TPPlayerFactory"

    .line 31
    .line 32
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public static createTPPlayer(Landroid/content/Context;)Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;-><init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;

    return-object p0
.end method

.method public static createTPPlayer(Landroid/content/Context;Landroid/os/Looper;)Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;
    .locals 1

    .line 2
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;-><init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;

    return-object p0
.end method

.method public static createTPPlayer(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;)Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;
    .locals 1

    .line 3
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;)V

    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;-><init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;

    return-object p0
.end method

.method public static createTPPlayer(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/tencent/thumbplayer/tcmedia/e/b;)Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;
    .locals 1

    .line 4
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/tencent/thumbplayer/tcmedia/e/b;)V

    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;-><init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;

    return-object p0
.end method

.method public static createTPPlayer(Landroid/content/Context;Lcom/tencent/thumbplayer/tcmedia/e/b;)Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;
    .locals 2

    .line 5
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/tencent/thumbplayer/tcmedia/e/b;)V

    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;-><init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/d;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;

    return-object p0
.end method

.method public static createTPSurface(Landroid/graphics/SurfaceTexture;)Lcom/tencent/thumbplayer/tcmedia/api/TPSurface;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/TPSurface;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPSurface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
