.class public Lcom/tencent/thumbplayer/tcmedia/d/b$s;
.super Lcom/tencent/thumbplayer/tcmedia/d/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# instance fields
.field private a:I

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x73

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->a(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$s;->b:J

    .line 2
    .line 3
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$s;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$s;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/d/b$s;->b:J

    .line 2
    .line 3
    return-wide v0
.end method
