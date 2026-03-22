.class public Lcom/tencent/thumbplayer/tcmedia/tplayer/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/thumbplayer/tcmedia/d/c;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/d/c;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->a:Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/tencent/thumbplayer/tcmedia/d/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->a:Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 2
    .line 3
    return-object v0
.end method
