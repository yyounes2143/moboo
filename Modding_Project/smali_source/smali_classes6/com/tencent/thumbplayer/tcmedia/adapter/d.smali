.class public Lcom/tencent/thumbplayer/tcmedia/adapter/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/thumbplayer/tcmedia/e/b;

.field private b:Lcom/tencent/thumbplayer/tcmedia/e/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

.field private e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

.field private f:Z

.field private g:I

.field private h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

.field private i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

.field private j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

.field private k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

.field private l:Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;

.field private m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

.field private n:I

.field private o:Lcom/tencent/thumbplayer/tcmedia/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/thumbplayer/tcmedia/e/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->g:I

    .line 6
    .line 7
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 8
    .line 9
    const-string v1, "TPPlayerAdapter"

    .line 10
    .line 11
    invoke-direct {v0, p2, v1}, Lcom/tencent/thumbplayer/tcmedia/e/b;-><init>(Lcom/tencent/thumbplayer/tcmedia/e/b;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a:Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 15
    .line 16
    new-instance p2, Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 17
    .line 18
    invoke-direct {p2, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;-><init>(Lcom/tencent/thumbplayer/tcmedia/e/b;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->c:Landroid/content/Context;

    .line 24
    .line 25
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 26
    .line 27
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->setOnPlayerStateChangeListener(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    .line 36
    .line 37
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    .line 41
    .line 42
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-direct {p1, p0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/adapter/d$1;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    .line 49
    .line 50
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a:Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    .line 62
    .line 63
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 64
    .line 65
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 66
    .line 67
    invoke-direct {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;-><init>(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 71
    .line 72
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 73
    .line 74
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 78
    .line 79
    return-void
.end method

.method private A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->n()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->g(J)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method private B()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->l:Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->l:Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->l:Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/b;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method private C()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->n:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method private a(ILcom/tencent/thumbplayer/tcmedia/e/b;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;
    .locals 4

    .line 2
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v2, "to create androidPlayer"

    invoke-virtual {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->p()Z

    move-result v2

    invoke-static {v0, v2, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/d;->a(Landroid/content/Context;ZLcom/tencent/thumbplayer/tcmedia/e/b;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    move-result-object p2

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v2, "to create thumbPlayer"

    invoke-virtual {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->c:Landroid/content/Context;

    :goto_0
    invoke-static {v0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/d;->a(Landroid/content/Context;Lcom/tencent/thumbplayer/tcmedia/e/b;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    move-result-object p2

    goto :goto_3

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v2, "to create thumbPlayer software dec"

    invoke-virtual {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->c:Landroid/content/Context;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v0, "to create no Player"

    invoke-virtual {p2, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object p2, v1

    goto :goto_3

    :goto_2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "to create Player,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p2, "play is null!"

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    return-object v1

    :cond_3
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->n:I

    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;)V

    return-object p2
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/adapter/c;)Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;
    .locals 1

    .line 3
    :try_start_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;

    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;-><init>(Lcom/tencent/thumbplayer/tcmedia/adapter/c;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;

    const/4 p1, 0x0

    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;-><init>(Lcom/tencent/thumbplayer/tcmedia/adapter/c;)V

    :goto_0
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/e;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/a;)Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Ljava/lang/String;I)Lcom/tencent/thumbplayer/tcmedia/api/TPRemoteSdpInfo;
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Ljava/lang/String;I)Lcom/tencent/thumbplayer/tcmedia/api/TPRemoteSdpInfo;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;I)Lcom/tencent/thumbplayer/tcmedia/api/TPRemoteSdpInfo;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Ljava/lang/String;I)Lcom/tencent/thumbplayer/tcmedia/api/TPRemoteSdpInfo;

    move-result-object p1

    return-object p1
.end method

.method private a(IIJJ)V
    .locals 10

    .line 11
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->l:Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    new-instance v2, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/b;

    iget v3, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->n:I

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/b;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/b;Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a/b;)I

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(IIJJ)V

    return-void

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->c(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-wide v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(IIJJ)V

    return-void

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-wide v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(IIJJ)V

    return-void
.end method

.method private a(IJJLjava/lang/Object;)V
    .locals 9

    .line 13
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->f:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p2, "handleOnInfo, mIsReopening"

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x98

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    if-eqz v0, :cond_1

    long-to-int v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->f(I)V

    :cond_1
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(IJJLjava/lang/Object;)V

    return-void
.end method

.method private a(JJ)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p2, "handleOnVideoSizeChange, invalid state"

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    invoke-virtual {v0, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->b(J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->a(J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(JJ)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;)V
    .locals 5

    .line 19
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->t()[Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->l()Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    iget-object v3, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    iget-object v4, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;->url:Ljava/lang/String;

    iget-object v3, v3, Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;->url:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v0, -0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->c(IJ)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->w()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;IIJJ)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(IIJJ)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;IJJLjava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p6}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(IJJLjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;JJ)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(JJ)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPAudioFrameBuffer;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPAudioFrameBuffer;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/api/TPAudioFrameBuffer;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPAudioFrameBuffer;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v0, "handleOnSubtitleData, invalid state"

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v0, "handleOnSubtitleFrameOut, invalid state"

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v0, "handleOnVideoFrameOut, invalid state"

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b(Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->b(Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;)Lcom/tencent/thumbplayer/tcmedia/api/TPPostProcessFrameBuffer;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;)V
    .locals 9

    .line 8
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$e;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$a;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/d$a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$b;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->e()Lcom/tencent/thumbplayer/tcmedia/adapter/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->g()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->e()Lcom/tencent/thumbplayer/tcmedia/adapter/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->c()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->e()Lcom/tencent/thumbplayer/tcmedia/adapter/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->g()I

    move-result v0

    const/4 v4, 0x4

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->e()Lcom/tencent/thumbplayer/tcmedia/adapter/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->d()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->e()Lcom/tencent/thumbplayer/tcmedia/adapter/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->g()I

    move-result v0

    if-ne v1, v0, :cond_4

    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->n:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->e()Lcom/tencent/thumbplayer/tcmedia/adapter/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->f()Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->e()Lcom/tencent/thumbplayer/tcmedia/adapter/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->e()Lcom/tencent/thumbplayer/tcmedia/adapter/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->f()Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->e()Lcom/tencent/thumbplayer/tcmedia/adapter/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->g()I

    move-result v0

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->e()Lcom/tencent/thumbplayer/tcmedia/adapter/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/h;->e()Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    invoke-interface {p1, v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    move v3, v0

    :goto_3
    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v4}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v4}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    iget v5, v4, Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;->trackType:I

    if-ne v5, v1, :cond_8

    iget-object v5, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v5}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->m()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$d;

    iget-object v7, v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$d;->c:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$d;->c:Ljava/lang/String;

    iget-object v8, v4, Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v4, v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$d;->a:Ljava/lang/String;

    iget-object v5, v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$d;->d:Ljava/util/Map;

    iget-object v7, v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$d;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$d;->c:Ljava/lang/String;

    invoke-interface {p1, v4, v5, v7, v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    if-ne v5, v2, :cond_a

    iget-object v5, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v5}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->n()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$a;

    iget-object v7, v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$a;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$a;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v4, v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$a;->a:Ljava/lang/String;

    iget-object v5, v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$a;->d:Ljava/util/Map;

    iget-object v7, v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$a;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/tencent/thumbplayer/tcmedia/adapter/c$a;->c:Ljava/util/List;

    invoke-interface {p1, v4, v5, v7, v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_b
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :cond_c
    :goto_5
    if-ge v3, v2, :cond_f

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/tencent/thumbplayer/tcmedia/adapter/c$c;

    iget-object v5, v4, Lcom/tencent/thumbplayer/tcmedia/adapter/c$c;->c:Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    iget-boolean v5, v5, Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;->isSelected:Z

    if-eqz v5, :cond_c

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->s()[Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    move-result-object v5

    if-nez v5, :cond_d

    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v5, "playerTrackInfoList is null."

    invoke-virtual {v4, v5}, Lcom/tencent/thumbplayer/tcmedia/e/a;->e(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    move v6, v0

    :goto_6
    array-length v7, v5

    if-ge v6, v7, :cond_c

    iget-object v7, v4, Lcom/tencent/thumbplayer/tcmedia/adapter/c$c;->c:Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    iget-object v7, v7, Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;->name:Ljava/lang/String;

    aget-object v8, v5, v6

    iget-object v8, v8, Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-wide v7, v4, Lcom/tencent/thumbplayer/tcmedia/adapter/c$c;->b:J

    invoke-interface {p1, v6, v7, v8}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(IJ)V

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->k()Lcom/tencent/thumbplayer/tcmedia/adapter/c$b;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->k()Lcom/tencent/thumbplayer/tcmedia/adapter/c$b;

    move-result-object v0

    iget-boolean v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/c$b;->a:Z

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->k()Lcom/tencent/thumbplayer/tcmedia/adapter/c$b;

    move-result-object v0

    iget-wide v3, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/c$b;->b:J

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->k()Lcom/tencent/thumbplayer/tcmedia/adapter/c$b;

    move-result-object v0

    iget-wide v5, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/c$b;->c:J

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(ZJJ)V

    goto :goto_7

    :cond_10
    move-object v1, p1

    :goto_7
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->g()Z

    move-result p1

    invoke-interface {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Z)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->h()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->h()F

    move-result p1

    invoke-interface {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(F)V

    :cond_11
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->j()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->j()F

    move-result p1

    invoke-interface {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(F)V

    :cond_12
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->i()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Ljava/lang/String;)V

    :cond_13
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->d()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceHolder;

    invoke-interface {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Landroid/view/SurfaceHolder;)V

    goto :goto_8

    :cond_14
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->d()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/Surface;

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-interface {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Landroid/view/Surface;)V

    :cond_15
    :goto_8
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;-><init>()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->l:Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;->a()[I

    move-result-object v0

    const/16 v2, 0xcc

    invoke-virtual {p1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->buildQueueInt(I[I)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/thumbplayer/tcmedia/adapter/d;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->y()V

    return-void
.end method

.method private c(II)V
    .locals 18

    .line 3
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v4, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    int-to-long v6, v1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v5, 0x3f5

    invoke-virtual/range {v4 .. v10}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(IJJLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v11, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v12, 0xc8

    const-wide/16 v13, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(IJJLjava/lang/Object;)V

    :goto_0
    iput v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->g:I

    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->state()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->setLastState(I)V

    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->o()J

    move-result-wide v4

    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v6, "switchPlayer, current position:"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    invoke-virtual {v2, v4, v5}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->f(J)V

    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    iget-object v4, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    invoke-interface {v4}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->p()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->h(J)V

    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    invoke-interface {v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->l()V

    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    invoke-interface {v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->m()V

    :cond_1
    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a:Lcom/tencent/thumbplayer/tcmedia/e/b;

    invoke-direct {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(ILcom/tencent/thumbplayer/tcmedia/e/b;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v1, :cond_3

    iput-boolean v3, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->f:Z

    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "switch player to type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;-><init>()V

    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->i()J

    move-result-wide v2

    const/16 v4, 0x64

    invoke-virtual {v1, v4, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    invoke-interface {v2, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V

    :cond_2
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->setInnerPlayStateState(I)V

    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->h()V

    return-void

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error , create player failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic c(Lcom/tencent/thumbplayer/tcmedia/adapter/d;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->z()V

    return-void
.end method

.method private d(I)V
    .locals 1

    .line 2
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->i()V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/tencent/thumbplayer/tcmedia/adapter/d;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->A()V

    return-void
.end method

.method private w()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    .line 4
    .line 5
    iget v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->n:I

    .line 6
    .line 7
    int-to-long v3, v2

    .line 8
    const-wide/16 v5, 0x0

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/16 v2, 0x3e8

    .line 12
    .line 13
    invoke-virtual/range {v1 .. v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(IJJLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->f:Z

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x3

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->innerPlayState()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eq v1, v3, :cond_1

    .line 29
    .line 30
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 31
    .line 32
    const-string v2, "handleOnPrepared, invalid state, mIsRetrying."

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->b(I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 47
    .line 48
    const-string v2, "handleOnPrepared, invalid state"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->x()V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;)V

    .line 60
    .line 61
    .line 62
    iget-boolean v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->f:Z

    .line 63
    .line 64
    const/4 v4, 0x4

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    iput-boolean v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->f:Z

    .line 69
    .line 70
    iget-object v5, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 71
    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v7, "handleOnPrepared, mIsRetrying, recoverState, state:"

    .line 75
    .line 76
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v7, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 80
    .line 81
    invoke-virtual {v7}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->state()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v5, v6}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v5, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->state()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    iget-object v6, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 102
    .line 103
    invoke-virtual {v6, v4}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    .line 104
    .line 105
    .line 106
    iget-object v4, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->lastState()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-ne v4, v3, :cond_2

    .line 113
    .line 114
    iget-object v3, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a()V

    .line 117
    .line 118
    .line 119
    :cond_2
    iget v3, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->g:I

    .line 120
    .line 121
    if-ne v3, v2, :cond_3

    .line 122
    .line 123
    iget-object v6, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    .line 124
    .line 125
    const-wide/16 v10, 0x0

    .line 126
    .line 127
    const/4 v12, 0x0

    .line 128
    const/16 v7, 0x3f6

    .line 129
    .line 130
    const-wide/16 v8, 0x0

    .line 131
    .line 132
    invoke-virtual/range {v6 .. v12}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(IJJLjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    iget-object v13, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    .line 137
    .line 138
    const-wide/16 v17, 0x0

    .line 139
    .line 140
    const/16 v19, 0x0

    .line 141
    .line 142
    const/16 v14, 0xc9

    .line 143
    .line 144
    const-wide/16 v15, 0x0

    .line 145
    .line 146
    invoke-virtual/range {v13 .. v19}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(IJJLjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    iput v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->g:I

    .line 150
    .line 151
    invoke-direct {v0, v5}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d(I)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_4
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 156
    .line 157
    invoke-virtual {v1, v4}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->setInnerPlayStateState(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 161
    .line 162
    invoke-virtual {v1, v4}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a()V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method private x()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->C()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->c(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->a(Ljava/lang/String;)Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 19
    .line 20
    const/16 v2, 0xcc

    .line 21
    .line 22
    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    long-to-int v1, v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->e(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 33
    .line 34
    const/16 v2, 0xcb

    .line 35
    .line 36
    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    long-to-int v1, v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->a(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 47
    .line 48
    const/16 v2, 0x66

    .line 49
    .line 50
    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    long-to-int v1, v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->c(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 61
    .line 62
    const/16 v2, 0xc9

    .line 63
    .line 64
    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    long-to-int v1, v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->g(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 75
    .line 76
    const/16 v2, 0xd2

    .line 77
    .line 78
    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(I)J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    long-to-int v1, v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->b(I)V

    .line 84
    .line 85
    .line 86
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 87
    .line 88
    if-nez v0, :cond_1

    .line 89
    .line 90
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 91
    .line 92
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 96
    .line 97
    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 100
    .line 101
    invoke-interface {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->n()J

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->g(J)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    .line 109
    .line 110
    const/16 v1, 0x64

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->b(I)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamLong()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-wide v2, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->value:J

    .line 125
    .line 126
    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->f(J)V

    .line 127
    .line 128
    .line 129
    :cond_2
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->b(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 11
    .line 12
    const-string v1, "handleOnComplete, invalid state"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 19
    .line 20
    const/4 v1, 0x7

    .line 21
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->b()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->b(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->c()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->m()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(F)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v1, "setAudioGainRatio, mPlayerBase = null!"

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(F)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error , setAudioGainRatio , state invalid , current state :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->state()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->o:Lcom/tencent/thumbplayer/tcmedia/f/a;

    if-eqz v0, :cond_1

    int-to-long v1, p1

    :try_start_0
    invoke-interface {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/f/a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v0, "seekTo, rich media processor seek err."

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v0, "seekTo, mPlayerBase = null!"

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error , seek to , state invalid , current state :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .locals 2
    .param p2    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPSeekMode;
        .end annotation
    .end param

    .line 10
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->state()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(II)V

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->o:Lcom/tencent/thumbplayer/tcmedia/f/a;

    if-eqz p2, :cond_1

    int-to-long v0, p1

    :try_start_0
    invoke-interface {p2, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/f/a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p2, "seekTo, rich media processor seek err."

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p2, "seekTo, mPlayerBase = null!"

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "error , seek to , state invalid , current state :"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(IJ)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->s()[Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p2, "fatal err, tpTrackInfos is null"

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-ltz p1, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_2

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(IJ)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    aget-object v0, v0, p1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(IJLcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error : track not found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error : selectTrack , state invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Landroid/content/res/AssetFileDescriptor;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , afd invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "error : setDataSource , state invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Landroid/os/ParcelFileDescriptor;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , pfd invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "error : setDataSource , state invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Landroid/view/Surface;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Landroid/view/SurfaceHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$a;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$a;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$b;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$b;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$e;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$e;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;)V
    .locals 1

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;IJ)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Ljava/lang/String;IJ)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p2, "switchDefinition, mPlayerBase = null!"

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error , switch definition , state invalid , current state :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error : setDataSource , state invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;Ljava/util/Map;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IJ)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->b()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Ljava/lang/String;Ljava/util/Map;IJ)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p2, "switchDefinition, mPlayerBase = null!"

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error , switch definition , state invalid , current state :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPCaptureParams;Lcom/tencent/thumbplayer/tcmedia/api/TPCaptureCallBack;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPCaptureParams;Lcom/tencent/thumbplayer/tcmedia/api/TPCaptureCallBack;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "error , no player for capture :"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setPlayerOptionalParam , state invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v1, "setVideoInfo state invalid"

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->e(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;->getHeight()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->b(J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;->getWidth()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->a(J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;->getDefinition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;->getVideoCodecId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->g(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , mediaAsset invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "error : setDataSource , state invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;IJ)V
    .locals 2
    .param p2    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPSwitchDefMode;
        .end annotation
    .end param

    .line 60
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;IJ)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p2, "switchDefinition, mPlayerBase = null!"

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error , switch definition , state invalid , current state :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizer;)V
    .locals 1

    .line 61
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->o:Lcom/tencent/thumbplayer/tcmedia/f/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/f/a;->a(Lcom/tencent/thumbplayer/tcmedia/f/a$a;)V

    :cond_0
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->o:Lcom/tencent/thumbplayer/tcmedia/f/a;

    return-void

    :cond_1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/f/a;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/f/a;

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->o:Lcom/tencent/thumbplayer/tcmedia/f/a;

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/d$1;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d$1;-><init>(Lcom/tencent/thumbplayer/tcmedia/adapter/d;)V

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/f/a;->a(Lcom/tencent/thumbplayer/tcmedia/f/a$a;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/e/b;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a:Lcom/tencent/thumbplayer/tcmedia/e/b;

    const-string v1, "TPPlayerAdapter"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a(Lcom/tencent/thumbplayer/tcmedia/e/b;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a:Lcom/tencent/thumbplayer/tcmedia/e/b;

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Lcom/tencent/thumbplayer/tcmedia/e/b;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a:Lcom/tencent/thumbplayer/tcmedia/e/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a:Lcom/tencent/thumbplayer/tcmedia/e/b;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/e/b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v1, "setAudioGainRatio, mPlayerBase = null!"

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error , setAudioNormalizeVolumeParams , state invalid , current state :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;IJ)V
    .locals 0
    .param p2    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPSwitchDefMode;
        .end annotation
    .end param

    .line 64
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IJ)V"
        }
    .end annotation

    .line 66
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error : addSubtitleSource, state invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;",
            ">;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error : addAudioTrackSource, state invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v1, "setOutputMute, mPlayerBase = null!"

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error , setOutputMute , state invalid , current state :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(ZJJ)V
    .locals 8

    .line 70
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    if-eqz v1, :cond_0

    invoke-interface/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(ZJJ)V

    :goto_0
    move-wide v6, v5

    move-wide v4, v3

    move v3, v2

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p2, "setLoopback, mPlayerBase = null!"

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(ZJJ)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error , setLoopback , state invalid , current state :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->state()I

    move-result v0

    return v0
.end method

.method public b(I)J
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v0, "getPropertyLong, mPlayerBase = null, return !"

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public b(F)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v1, "setPlaySpeedRatio, mPlayerBase = null!"

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->b(F)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->o:Lcom/tencent/thumbplayer/tcmedia/f/a;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/f/a;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v0, "setPlaySpeedRatio, rich media processor setPlaySpeedRatio err."

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error , setPlaySpeedRatio , state invalid , current state :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(II)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->b(II)V

    return-void
.end method

.method public b(IJ)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->s()[Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p2, "fatal err, tpTrackInfos is null"

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-ltz p1, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_2

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(IJ)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    aget-object v0, v0, p1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->b(IJLcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error : track not found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error : deselectTrack , state invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v1, "updateVideoInfo state invalid"

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->e(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;->getHeight()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->b(J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;->getWidth()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->a(J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;->getDefinition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;->getVideoCodecId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->g(I)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v1, "setLoopback, mPlayerBase = null!"

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->b(Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error , setLoopback , state invalid , current state :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Z)Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->c(Z)Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v0, "getPropertyString, mPlayerBase = null, return !"

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public c(IJ)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->t()[Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;

    :cond_0
    if-ltz p1, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_2

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->c(IJ)V

    :cond_1
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error : program index not found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error : selectProgram , state invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Z
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->state()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->n:I

    return v0
.end method

.method public e()Lcom/tencent/thumbplayer/tcmedia/adapter/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->n:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->c(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->B()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a:Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(ILcom/tencent/thumbplayer/tcmedia/e/b;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->setInnerPlayStateState(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->g()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 50
    .line 51
    const-string v1, "error , create player failed"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 58
    .line 59
    const-string v1, "error , prepare , data source invalid"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "error , prepare , state invalid , current state :"

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->B()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a:Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(ILcom/tencent/thumbplayer/tcmedia/e/b;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->setInnerPlayStateState(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->h()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 50
    .line 51
    const-string v1, "error , create player failed"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "error , prepare , state invalid , data source invalid"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "error , prepare , state invalid , current state :"

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->i()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "error , start ,state invalid"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v1, "error , start , player is null"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "error , start , state invalid , current state :"

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->f:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->j()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "error , pause ,state invalid"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v1, "error , pause , player is null"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "error , pause , state invalid , current state :"

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x9

    .line 15
    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->k()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v2, "error , stop ,state invalid"

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_0
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v1, "error , stop , player is null"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "error , stop , state invalid , current state :"

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "reset, current state :"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->l()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->m()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->o()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->l:Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->f:Z

    .line 51
    .line 52
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->setLastState(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "release, current state :"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->m()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->a()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->e()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->l:Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/a;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->f:Z

    .line 46
    .line 47
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->e:Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;

    .line 48
    .line 49
    const/16 v1, 0xb

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerState;->changeState(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public n()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->k()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    cmp-long v0, v3, v1

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->k()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 23
    .line 24
    const/16 v3, 0xb

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return-wide v1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 38
    .line 39
    const-string v3, "getDurationMs, mPlayerBase = null, return 0!"

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-wide v1

    .line 45
    :cond_2
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->n()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->g(J)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-wide v0
.end method

.method public o()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->i()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    return-wide v1

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 28
    .line 29
    const-string v3, "getCurrentPositionMs, mPlayerBase = null, return 0!"

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-wide v1

    .line 35
    :cond_2
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->o()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->f(J)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-wide v0
.end method

.method public p()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-wide v1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 19
    .line 20
    const-string v3, "getBufferedDurationMs, mPlayerBase = null, return 0!"

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-wide v1

    .line 26
    :cond_1
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->p()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->h(J)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-wide v0
.end method

.method public q()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->a()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    long-to-int v0, v0

    .line 22
    return v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 24
    .line 25
    const/16 v1, 0xd

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 35
    .line 36
    const-string v2, "getVideoWidth, state error!"

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 47
    .line 48
    const-string v2, "getVideoWidth, mPlayerBase = null, return 0!"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->q()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    int-to-long v2, v0

    .line 60
    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->a(J)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return v0
.end method

.method public r()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->b()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->b()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    long-to-int v0, v0

    .line 22
    return v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 24
    .line 25
    const/16 v1, 0xd

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 35
    .line 36
    const-string v2, "getVideoHeight, state error!"

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 47
    .line 48
    const-string v2, "getVideoHeight, mPlayerBase = null, return 0!"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->r()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    int-to-long v2, v0

    .line 60
    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->b(J)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return v0
.end method

.method public s()[Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->s()[Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/c;->b()Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, [Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    .line 24
    .line 25
    return-object v0
.end method

.method public t()[Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->t()[Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->t()[Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;

    .line 20
    .line 21
    return-object v0
.end method

.method public u()[J
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->k:Lcom/tencent/thumbplayer/tcmedia/adapter/i;

    .line 3
    .line 4
    const/16 v2, 0x13

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/i;->a(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->j()[J

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    :goto_0
    new-array v0, v0, [J

    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->b:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 32
    .line 33
    const-string v2, "getDemuxerOffsetInFile, mPlayerBase = null, return 0!"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-interface {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->u()[J

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->m:Lcom/tencent/thumbplayer/tcmedia/adapter/b;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/b;->a([J)V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-object v0

    .line 51
    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public v()Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->v()Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
