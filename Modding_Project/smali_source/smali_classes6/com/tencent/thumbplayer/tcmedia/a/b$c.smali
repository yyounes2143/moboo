.class Lcom/tencent/thumbplayer/tcmedia/a/b$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/a/b;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/a/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/a/b$c;->a:Lcom/tencent/thumbplayer/tcmedia/a/b;

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
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "TPSysPlayerImageCapture"

    .line 5
    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    const-string p1, "eventHandler unknow msg"

    .line 12
    .line 13
    invoke-static {v2, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p1, "eventHandler EV_STOP_CAP_IMAGE"

    .line 18
    .line 19
    invoke-static {v2, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/a/b$c;->a:Lcom/tencent/thumbplayer/tcmedia/a/b;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/a/b;)Landroid/media/MediaMetadataRetriever;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/a/b$c;->a:Lcom/tencent/thumbplayer/tcmedia/a/b;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/a/b;)Landroid/media/MediaMetadataRetriever;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/a/b$c;->a:Lcom/tencent/thumbplayer/tcmedia/a/b;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/a/b;Landroid/media/MediaMetadataRetriever;)Landroid/media/MediaMetadataRetriever;

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void

    .line 46
    :cond_2
    const-string v0, "eventHandler EV_CAP_IMAGE"

    .line 47
    .line 48
    invoke-static {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/a/b$b;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/a/b$c;->a:Lcom/tencent/thumbplayer/tcmedia/a/b;

    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/a/b;Lcom/tencent/thumbplayer/tcmedia/a/b$b;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
