.class Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e$1;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e$1;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "TPLiveReporter"

    .line 10
    .line 11
    const-string v1, "Period Timer Exit because play done."

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e$1;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;)Ljava/util/concurrent/Future;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e$1;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e$1;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/e;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
