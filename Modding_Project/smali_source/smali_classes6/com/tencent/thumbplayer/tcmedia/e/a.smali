.class public Lcom/tencent/thumbplayer/tcmedia/e/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/thumbplayer/tcmedia/e/b;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/e/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->b:Lcom/tencent/thumbplayer/tcmedia/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/e/b;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/e/b;

    invoke-direct {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/b;-><init>(Lcom/tencent/thumbplayer/tcmedia/e/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->b:Lcom/tencent/thumbplayer/tcmedia/e/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/thumbplayer/tcmedia/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->b:Lcom/tencent/thumbplayer/tcmedia/e/b;

    return-object v0
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/e/b;)V
    .locals 1

    .line 2
    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/e/b;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->b:Lcom/tencent/thumbplayer/tcmedia/e/b;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->b:Lcom/tencent/thumbplayer/tcmedia/e/b;

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->b:Lcom/tencent/thumbplayer/tcmedia/e/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->b:Lcom/tencent/thumbplayer/tcmedia/e/b;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->b:Lcom/tencent/thumbplayer/tcmedia/e/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->b:Lcom/tencent/thumbplayer/tcmedia/e/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->b:Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->b:Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/e/a;->b:Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
