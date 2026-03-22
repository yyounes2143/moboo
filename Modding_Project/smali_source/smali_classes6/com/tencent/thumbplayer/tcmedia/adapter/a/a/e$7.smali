.class Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->E()V
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
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$7;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$7;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->e(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->f:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$7;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->k(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$7;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "startCheckBufferTimeOutByInfo, buffer last too long"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->e(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$7;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 31
    .line 32
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$7;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->g(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$7;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Z)Z

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$7;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->l(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$7;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->i(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    const/16 v0, -0x6e

    .line 62
    .line 63
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->d(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const-wide/16 v4, 0x0

    .line 68
    .line 69
    const-wide/16 v6, 0x0

    .line 70
    .line 71
    const/16 v2, 0x7d1

    .line 72
    .line 73
    invoke-interface/range {v1 .. v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;->a(IIJJ)V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method
