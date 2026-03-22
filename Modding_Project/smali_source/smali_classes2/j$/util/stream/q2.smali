.class public final Lj$/util/stream/q2;
.super Lj$/util/stream/x;
.source "SourceFile"


# instance fields
.field public final synthetic n:J

.field public final synthetic o:J


# direct methods
.method public constructor <init>(Lj$/util/stream/y;IJJ)V
    .locals 0

    .line 449
    iput-wide p3, p0, Lj$/util/stream/q2;->n:J

    iput-wide p5, p0, Lj$/util/stream/q2;->o:J

    const/4 p3, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/x;-><init>(Lj$/util/stream/a;II)V

    return-void
.end method


# virtual methods
.method public final K(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/C0;
    .locals 12

    .line 485
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->F(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-lez v4, :cond_1

    const/16 v4, 0x4000

    .line 486
    invoke-interface {p2, v4}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p3, p1

    .line 461
    :goto_0
    iget v0, p3, Lj$/util/stream/a;->e:I

    if-lez v0, :cond_0

    .line 462
    iget-object p3, p3, Lj$/util/stream/a;->b:Lj$/util/stream/a;

    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual {p3}, Lj$/util/stream/a;->H()Lj$/util/stream/Y2;

    move-result-object v6

    .line 492
    iget-wide v8, p0, Lj$/util/stream/q2;->n:J

    iget-wide v10, p0, Lj$/util/stream/q2;->o:J

    move-object v7, p2

    invoke-static/range {v6 .. v11}, Lj$/util/stream/t2;->b(Lj$/util/stream/Y2;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;

    move-result-object p2

    .line 493
    invoke-static {p1, p2, v5}, Lj$/util/stream/s1;->z(Lj$/util/stream/a;Lj$/util/Spliterator;Z)Lj$/util/stream/w0;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v7, p2

    .line 494
    sget-object p2, Lj$/util/stream/X2;->ORDERED:Lj$/util/stream/X2;

    .line 509
    iget v4, p1, Lj$/util/stream/a;->f:I

    .line 494
    invoke-virtual {p2, v4}, Lj$/util/stream/X2;->l(I)Z

    move-result p2

    if-nez p2, :cond_4

    .line 496
    invoke-virtual {p1, v7}, Lj$/util/stream/a;->T(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lj$/util/A;

    .line 452
    iget-wide p1, p0, Lj$/util/stream/q2;->n:J

    cmp-long p3, p1, v0

    iget-wide v8, p0, Lj$/util/stream/q2;->o:J

    if-gtz p3, :cond_3

    cmp-long p3, v8, v2

    sub-long/2addr v0, p1

    if-ltz p3, :cond_2

    .line 455
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v8, p1

    goto :goto_1

    :cond_2
    move-wide v8, v0

    :goto_1
    move-wide v10, v8

    move-wide v8, v2

    goto :goto_2

    :cond_3
    move-wide v10, v8

    move-wide v8, p1

    .line 458
    :goto_2
    new-instance v6, Lj$/util/stream/y3;

    .line 1077
    invoke-direct/range {v6 .. v11}, Lj$/util/stream/E3;-><init>(Lj$/util/Spliterator;JJ)V

    .line 502
    invoke-static {p0, v6, v5}, Lj$/util/stream/s1;->z(Lj$/util/stream/a;Lj$/util/Spliterator;Z)Lj$/util/stream/w0;

    move-result-object p1

    return-object p1

    .line 505
    :cond_4
    new-instance v0, Lj$/util/stream/s2;

    iget-wide v5, p0, Lj$/util/stream/q2;->n:J

    move-object v3, v7

    iget-wide v7, p0, Lj$/util/stream/q2;->o:J

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/s2;-><init>(Lj$/util/stream/a;Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 506
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/C0;

    return-object p1
.end method

.method public final L(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 14

    .line 464
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/a;->F(Lj$/util/Spliterator;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    .line 465
    iget-wide v6, p0, Lj$/util/stream/q2;->o:J

    if-lez v0, :cond_0

    const/16 v0, 0x4000

    move-object/from16 v8, p2

    invoke-interface {v8, v0}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    new-instance v8, Lj$/util/stream/s3;

    .line 467
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/a;->T(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lj$/util/A;

    .line 0
    iget-wide v10, p0, Lj$/util/stream/q2;->n:J

    invoke-static {v10, v11, v6, v7}, Lj$/util/stream/t2;->c(JJ)J

    move-result-wide v12

    .line 871
    invoke-direct/range {v8 .. v13}, Lj$/util/stream/v3;-><init>(Lj$/util/I;JJ)V

    return-object v8

    .line 470
    :cond_0
    sget-object v0, Lj$/util/stream/X2;->ORDERED:Lj$/util/stream/X2;

    .line 509
    iget v9, p1, Lj$/util/stream/a;->f:I

    .line 470
    invoke-virtual {v0, v9}, Lj$/util/stream/X2;->l(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 472
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/a;->T(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lj$/util/A;

    .line 452
    iget-wide v10, p0, Lj$/util/stream/q2;->n:J

    cmp-long v0, v10, v2

    if-gtz v0, :cond_2

    cmp-long v0, v6, v4

    sub-long/2addr v2, v10

    if-ltz v0, :cond_1

    .line 455
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_1
    move-wide v6, v2

    move-wide v10, v4

    :cond_2
    move-wide v12, v6

    .line 458
    new-instance v8, Lj$/util/stream/y3;

    .line 1077
    invoke-direct/range {v8 .. v13}, Lj$/util/stream/E3;-><init>(Lj$/util/Spliterator;JJ)V

    return-object v8

    .line 476
    :cond_3
    new-instance v0, Lj$/util/stream/s2;

    new-instance v4, Lj$/util/stream/Z;

    const/16 v2, 0x10

    .line 0
    invoke-direct {v4, v2}, Lj$/util/stream/Z;-><init>(I)V

    .line 476
    iget-wide v5, p0, Lj$/util/stream/q2;->n:J

    iget-wide v7, p0, Lj$/util/stream/q2;->o:J

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/s2;-><init>(Lj$/util/stream/a;Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    .line 477
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/C0;

    invoke-interface {v0}, Lj$/util/stream/C0;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final N(ILj$/util/stream/i2;)Lj$/util/stream/i2;
    .locals 0

    .line 512
    new-instance p1, Lj$/util/stream/p2;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/p2;-><init>(Lj$/util/stream/q2;Lj$/util/stream/i2;)V

    return-object p1
.end method
