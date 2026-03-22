.class Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$a;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$b;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$e;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/adapter/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;


# direct methods
.method private constructor <init>(Lcom/tencent/thumbplayer/tcmedia/adapter/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/adapter/d$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/adapter/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Lcom/tencent/thumbplayer/tcmedia/api/TPRemoteSdpInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-static {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Ljava/lang/String;I)Lcom/tencent/thumbplayer/tcmedia/api/TPRemoteSdpInfo;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;)V

    return-void
.end method

.method public a(IIJJ)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;IIJJ)V

    return-void
.end method

.method public a(IJJLjava/lang/Object;)V
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;IJJLjava/lang/Object;)V

    return-void
.end method

.method public a(JJ)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;JJ)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPAudioFrameBuffer;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPAudioFrameBuffer;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;)V

    return-void
.end method

.method public b(Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/d;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d(Lcom/tencent/thumbplayer/tcmedia/adapter/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
