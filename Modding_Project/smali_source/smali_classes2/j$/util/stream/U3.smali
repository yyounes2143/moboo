.class public final Lj$/util/stream/U3;
.super Lj$/util/stream/f0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Y3;


# virtual methods
.method public final K(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/C0;
    .locals 1

    .line 506
    new-instance v0, Lj$/util/stream/a4;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/a4;-><init>(Lj$/util/stream/a;Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 507
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/C0;

    return-object p1
.end method

.method public final L(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 492
    sget-object v0, Lj$/util/stream/X2;->ORDERED:Lj$/util/stream/X2;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->f:I

    .line 492
    invoke-virtual {v0, v1}, Lj$/util/stream/X2;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Lj$/util/stream/Z;

    const/16 v1, 0x16

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/Z;-><init>(I)V

    .line 493
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/U3;->K(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/C0;

    move-result-object p1

    .line 494
    invoke-interface {p1}, Lj$/util/stream/C0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 497
    :cond_0
    new-instance v0, Lj$/util/stream/g4;

    .line 498
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->T(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/F;

    const/4 p2, 0x0

    .line 933
    invoke-direct {v0, p1, p2}, Lj$/util/stream/g4;-><init>(Lj$/util/Spliterator;I)V

    return-object v0
.end method

.method public final N(ILj$/util/stream/i2;)Lj$/util/stream/i2;
    .locals 1

    .line 544
    new-instance p1, Lj$/util/stream/T3;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/T3;-><init>(Lj$/util/stream/U3;Lj$/util/stream/i2;Z)V

    return-object p1
.end method

.method public final j(Lj$/util/stream/u0;Z)Lj$/util/stream/Z3;
    .locals 1

    .line 544
    new-instance v0, Lj$/util/stream/T3;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/T3;-><init>(Lj$/util/stream/U3;Lj$/util/stream/i2;Z)V

    return-object v0
.end method
