.class public Lcom/tencent/thumbplayer/tcmedia/c/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/os/Looper;Lcom/tencent/thumbplayer/tcmedia/tplayer/a;)Lcom/tencent/thumbplayer/tcmedia/c/a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getNewReportEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->a()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1, p0}, Lcom/tencent/thumbplayer/tcmedia/c/e;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/c/d;

    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/d;-><init>(Lcom/tencent/thumbplayer/tcmedia/c/e;Lcom/tencent/thumbplayer/tcmedia/tplayer/a;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/c/d;->a()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->a()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1, p0}, Lcom/tencent/thumbplayer/tcmedia/c/e;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method
