.class Lcom/tencent/thumbplayer/tcmedia/g/e/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/g/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "mSurfaceTexture:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->e:Lcom/tencent/thumbplayer/tcmedia/g/c/b;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " onReleased, release OutputSurface"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "OutputSurface"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a$1;->a:Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/g/e/a/a;->b()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
