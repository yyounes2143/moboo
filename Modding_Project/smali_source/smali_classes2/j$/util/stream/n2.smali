.class public final Lj$/util/stream/n2;
.super Lj$/util/stream/d2;
.source "SourceFile"


# instance fields
.field public b:J

.field public c:J

.field public final synthetic d:Lj$/util/stream/o2;


# direct methods
.method public constructor <init>(Lj$/util/stream/o2;Lj$/util/stream/i2;)V
    .locals 2

    .line 403
    iput-object p1, p0, Lj$/util/stream/n2;->d:Lj$/util/stream/o2;

    invoke-direct {p0, p2}, Lj$/util/stream/d2;-><init>(Lj$/util/stream/i2;)V

    .line 404
    iget-wide v0, p1, Lj$/util/stream/o2;->n:J

    iput-wide v0, p0, Lj$/util/stream/n2;->b:J

    const-wide/16 v0, 0x0

    .line 405
    iget-wide p1, p1, Lj$/util/stream/o2;->o:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    :goto_0
    iput-wide p1, p0, Lj$/util/stream/n2;->c:J

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 7

    .line 414
    iget-wide v0, p0, Lj$/util/stream/n2;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x1

    if-nez v4, :cond_1

    .line 415
    iget-wide v0, p0, Lj$/util/stream/n2;->c:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sub-long/2addr v0, v5

    .line 416
    iput-wide v0, p0, Lj$/util/stream/n2;->c:J

    .line 417
    iget-object v0, p0, Lj$/util/stream/d2;->a:Lj$/util/stream/i2;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/i2;->accept(J)V

    :cond_0
    return-void

    :cond_1
    sub-long/2addr v0, v5

    .line 421
    iput-wide v0, p0, Lj$/util/stream/n2;->b:J

    return-void
.end method

.method public final m(J)V
    .locals 7

    .line 409
    iget-object v0, p0, Lj$/util/stream/n2;->d:Lj$/util/stream/o2;

    iget-wide v3, v0, Lj$/util/stream/o2;->n:J

    iget-wide v5, p0, Lj$/util/stream/n2;->c:J

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lj$/util/stream/t2;->a(JJJ)J

    move-result-wide p1

    iget-object v0, p0, Lj$/util/stream/d2;->a:Lj$/util/stream/i2;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/i2;->m(J)V

    return-void
.end method

.method public final o()Z
    .locals 4

    .line 427
    iget-wide v0, p0, Lj$/util/stream/n2;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/d2;->a:Lj$/util/stream/i2;

    invoke-interface {v0}, Lj$/util/stream/i2;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
