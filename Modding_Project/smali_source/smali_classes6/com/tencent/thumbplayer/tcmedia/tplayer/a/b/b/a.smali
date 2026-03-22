.class public Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/a;
.super Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;


# instance fields
.field private a:J
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a$a;
        a = "costtimems"
    .end annotation
.end field

.field private b:F
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a$a;
        a = "playspeed"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/a;->a:J

    .line 7
    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    .line 10
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/a;->b:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/a;->b:F

    .line 2
    .line 3
    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/a;->a:J

    .line 2
    .line 3
    return-void
.end method
