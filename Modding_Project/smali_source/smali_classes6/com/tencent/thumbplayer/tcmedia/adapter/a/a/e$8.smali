.class Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnTimedTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;
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
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$8;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$8;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;-><init>()V

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/media/TimedText;->getText()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p2, ""

    .line 22
    .line 23
    :goto_0
    iput-object p2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;->subtitleData:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$8;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->B(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    int-to-long v0, p2

    .line 32
    iput-wide v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;->trackIndex:J

    .line 33
    .line 34
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$8;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->o()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;->startPositionMs:J

    .line 41
    .line 42
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$8;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 43
    .line 44
    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-interface {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method
