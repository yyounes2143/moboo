.class Lcom/tencent/thumbplayer/tcmedia/g/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/g/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/g/b;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b;

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
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a(Lcom/tencent/thumbplayer/tcmedia/g/b;)Lcom/tencent/thumbplayer/tcmedia/g/b/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a(Lcom/tencent/thumbplayer/tcmedia/g/b;)Lcom/tencent/thumbplayer/tcmedia/g/b/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/g/b;->b(Lcom/tencent/thumbplayer/tcmedia/g/b;)Lcom/tencent/thumbplayer/tcmedia/g/a/a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/g/b/c;->a(Lcom/tencent/thumbplayer/tcmedia/g/a/a;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/g/b;->b(Lcom/tencent/thumbplayer/tcmedia/g/b;)Lcom/tencent/thumbplayer/tcmedia/g/a/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/g/b;->b(Lcom/tencent/thumbplayer/tcmedia/g/b;)Lcom/tencent/thumbplayer/tcmedia/g/a/a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/b$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b;

    .line 39
    .line 40
    iget-boolean v1, v1, Lcom/tencent/thumbplayer/tcmedia/g/b;->b:Z

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/g/a/a;->onCreate(Ljava/lang/Boolean;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method
