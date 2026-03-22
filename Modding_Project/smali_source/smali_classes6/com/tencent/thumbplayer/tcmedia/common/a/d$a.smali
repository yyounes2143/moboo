.class Lcom/tencent/thumbplayer/tcmedia/common/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/common/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field final synthetic c:Lcom/tencent/thumbplayer/tcmedia/common/a/d;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/common/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$a;->c:Lcom/tencent/thumbplayer/tcmedia/common/a/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/common/a/d$a;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$a;->a:I

    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$a;->b:I

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/common/a/a;)V
    .locals 2

    .line 2
    const-string v0, "av1hwdecoderprofile"

    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$a;->a:I

    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    const-string v0, "av1hwdecoderlevel"

    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/common/a/d$a;->b:I

    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    return-void
.end method
