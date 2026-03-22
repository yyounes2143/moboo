.class Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$5;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$5;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->e(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->c:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$5;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "startCheckPrepareTimeoutTimer, post error"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$5;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 23
    .line 24
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$5;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->g(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$5;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->h(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$5;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->i(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    const/16 v0, -0x6e

    .line 48
    .line 49
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->d(I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const-wide/16 v4, 0x0

    .line 54
    .line 55
    const-wide/16 v6, 0x0

    .line 56
    .line 57
    const/16 v2, 0x7d1

    .line 58
    .line 59
    invoke-interface/range {v1 .. v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;->a(IIJJ)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method
