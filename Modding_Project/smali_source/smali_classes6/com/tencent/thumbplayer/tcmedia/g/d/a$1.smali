.class Lcom/tencent/thumbplayer/tcmedia/g/d/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/g/d/a;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/g/b/f;

.field final synthetic b:Lcom/tencent/thumbplayer/tcmedia/g/d/a;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/g/d/a;Lcom/tencent/thumbplayer/tcmedia/g/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/a$1;->b:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/a$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/d/a$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->h()Lcom/tencent/thumbplayer/tcmedia/g/a/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/g/a/a;->onTransToRunningPool()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
