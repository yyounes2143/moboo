.class Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/common/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field final synthetic h:Lcom/tencent/thumbplayer/tcmedia/common/a/d;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/common/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->h:Lcom/tencent/thumbplayer/tcmedia/common/a/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->a:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->b:I

    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->c:I

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/common/a/a;)V
    .locals 2

    .line 2
    const-string v0, "flowid"

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appplatform"

    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->b:I

    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    const-string v0, "apilevel"

    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->c:I

    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    const-string v0, "osver"

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "model"

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serialno"

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cpuname"

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$b;->g:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
