.class Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILcom/tencent/thumbplayer/tcmedia/common/a/a;)V
    .locals 2

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 9
    .line 10
    invoke-static {v1, p2, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;Lcom/tencent/thumbplayer/tcmedia/common/a/a;IZ)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;Lcom/tencent/thumbplayer/tcmedia/common/a/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
