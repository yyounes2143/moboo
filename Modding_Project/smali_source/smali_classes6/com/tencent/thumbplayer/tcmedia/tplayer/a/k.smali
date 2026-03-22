.class public Lcom/tencent/thumbplayer/tcmedia/tplayer/a/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string p0, "TPReporterFactory"

    .line 10
    .line 11
    const-string v0, "Type is not match ReporterType, return null"

    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;-><init>()V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;-><init>()V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    new-instance p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method
