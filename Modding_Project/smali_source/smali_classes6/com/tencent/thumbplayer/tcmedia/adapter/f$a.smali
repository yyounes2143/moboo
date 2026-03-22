.class Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;
.implements Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/adapter/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;


# direct methods
.method private constructor <init>(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/thumbplayer/tcmedia/adapter/f;Lcom/tencent/thumbplayer/tcmedia/adapter/f$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)V

    return-void
.end method

.method private a(JJLjava/lang/Object;)V
    .locals 0

    .line 4
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/d/b$c;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$c;-><init>()V

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void
.end method

.method private b(JJLjava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/d/b$b;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private c(JJLjava/lang/Object;)V
    .locals 2

    .line 2
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/d/b$s;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$s;-><init>()V

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/d/b$s;->a(J)V

    long-to-int p2, p3

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/d/b$s;->b(I)V

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$o;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$o;-><init>()V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/d/b$o;->b(I)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/d/b$o;->a(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a()V

    return-void
.end method

.method public a(IIJJ)V
    .locals 8
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TPErrorType;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$i;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$i;-><init>()V

    invoke-virtual {v0, p2}, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->c(I)V

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->b(I)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->v()Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;-><init>()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->a(Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->c(Z)Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;-><init>()V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->a(Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(IIJJ)V

    return-void
.end method

.method public a(IJJLjava/lang/Object;)V
    .locals 7

    .line 3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    :goto_0
    move-object p2, p0

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->b(JJLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a(JJLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->c(JJLjava/lang/Object;)V

    move-object p2, v1

    :goto_1
    iget-object p3, p2, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    move-result-object v0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(IJJLjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V
    .locals 2

    .line 5
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$h;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$h;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$h;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$q;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$q;-><init>()V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/f;

    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;->c()V

    return-void
.end method
