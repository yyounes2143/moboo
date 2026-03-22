.class Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$a;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    .line 8
    .line 9
    invoke-static {v1, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;ILcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a;->a(ILcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    .line 30
    .line 31
    invoke-static {v1, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;ILcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
