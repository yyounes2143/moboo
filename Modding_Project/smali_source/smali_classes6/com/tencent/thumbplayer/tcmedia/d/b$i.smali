.class public Lcom/tencent/thumbplayer/tcmedia/d/b$i;
.super Lcom/tencent/thumbplayer/tcmedia/d/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

.field private d:Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x6a

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->a(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->d:Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->c:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public f()Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->c:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->d:Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;

    .line 2
    .line 3
    return-object v0
.end method
