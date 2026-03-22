.class public Lcom/tencent/thumbplayer/tcmedia/adapter/g;
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
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;

.field private b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;

.field private c:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;

.field private d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;

.field private e:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;

.field private f:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;

.field private g:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;

.field private h:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;

.field private i:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$a;

.field private j:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;

.field private k:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;

.field private l:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$b;

.field private m:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;

.field private n:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$e;

.field private o:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;

.field private p:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;

.field private q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "TPPlayerListenerS"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->r:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->r:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->c:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->e:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->f:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->g:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$a;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->l:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$b;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->n:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$e;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->o:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->p:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Lcom/tencent/thumbplayer/tcmedia/api/TPRemoteSdpInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->p:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;->a(Ljava/lang/String;I)Lcom/tencent/thumbplayer/tcmedia/api/TPRemoteSdpInfo;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;->a()V

    return-void
.end method

.method public a(IIJJ)V
    .locals 7
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPErrorType;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;->a(IIJJ)V

    return-void
.end method

.method public a(IJJLjava/lang/Object;)V
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->c:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;->a(IJJLjava/lang/Object;)V

    return-void
.end method

.method public a(JJ)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->f:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;->a(JJ)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$a;)V
    .locals 0

    .line 7
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$a;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$b;)V
    .locals 0

    .line 8
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->l:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$b;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;)V
    .locals 0

    .line 9
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;)V
    .locals 0

    .line 10
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->p:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$e;)V
    .locals 0

    .line 11
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->n:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$e;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;)V
    .locals 0

    .line 12
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;)V
    .locals 0

    .line 13
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->o:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;)V
    .locals 0

    .line 14
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->c:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;)V
    .locals 0

    .line 15
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;)V
    .locals 0

    .line 16
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->e:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;)V
    .locals 0

    .line 17
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;)V
    .locals 0

    .line 18
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->g:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;)V
    .locals 0

    .line 19
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;)V
    .locals 0

    .line 20
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;)V
    .locals 0

    .line 21
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;)V
    .locals 0

    .line 22
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->f:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPAudioFrameBuffer;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$a;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPAudioFrameBuffer;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->o:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->n:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$e;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$e;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->g:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "TPPlayerListenerS"

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->r:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->r:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public b(Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->l:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$b;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$b;->b(Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;->b()V

    return-void
.end method

.method public b(II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;->b(II)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->e:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->p:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->q:Lcom/tencent/thumbplayer/tcmedia/adapter/g$a;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->c:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->e:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->f:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->g:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$a;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->l:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$b;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->n:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$e;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->o:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->p:Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;

    .line 34
    .line 35
    return-void
.end method
