.class public Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;)Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/d;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/d;-><init>(Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/c;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/c;-><init>(Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
