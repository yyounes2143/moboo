.class public final Lj$/util/stream/Y1;
.super Lj$/util/stream/a2;
.source "SourceFile"


# virtual methods
.method public final M()Z
    .locals 1

    .line 645
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final N(ILj$/util/stream/i2;)Lj$/util/stream/i2;
    .locals 0

    .line 650
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lj$/util/stream/a;->a:Lj$/util/stream/a;

    iget-boolean v0, v0, Lj$/util/stream/a;->l:Z

    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lj$/util/stream/a;->P()Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void

    .line 661
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/a2;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachOrdered(Ljava/util/function/Consumer;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lj$/util/stream/a;->a:Lj$/util/stream/a;

    iget-boolean v0, v0, Lj$/util/stream/a;->l:Z

    if-nez v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lj$/util/stream/a;->P()Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void

    .line 671
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/a2;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final unordered()Lj$/util/stream/BaseStream;
    .locals 3

    .line 513
    sget-object v0, Lj$/util/stream/X2;->ORDERED:Lj$/util/stream/X2;

    iget v1, p0, Lj$/util/stream/a;->f:I

    invoke-virtual {v0, v1}, Lj$/util/stream/X2;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 153
    :cond_0
    new-instance v0, Lj$/util/stream/W1;

    sget v1, Lj$/util/stream/X2;->r:I

    const/4 v2, 0x1

    .line 94
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/Z1;-><init>(Lj$/util/stream/a;II)V

    return-object v0
.end method
