.class public final Lj$/util/stream/N3;
.super Lj$/util/stream/Z1;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Y3;


# instance fields
.field public final synthetic n:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Lj$/util/stream/a2;ILjava/util/function/Predicate;)V
    .locals 0

    .line 335
    iput-object p3, p0, Lj$/util/stream/N3;->n:Ljava/util/function/Predicate;

    const/4 p3, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Z1;-><init>(Lj$/util/stream/a;II)V

    return-void
.end method


# virtual methods
.method public final K(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/C0;
    .locals 1

    .line 356
    new-instance v0, Lj$/util/stream/a4;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/a4;-><init>(Lj$/util/stream/a;Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 357
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/C0;

    return-object p1
.end method

.method public final L(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 342
    sget-object v0, Lj$/util/stream/X2;->ORDERED:Lj$/util/stream/X2;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->f:I

    .line 342
    invoke-virtual {v0, v1}, Lj$/util/stream/X2;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lj$/util/stream/Z;

    const/4 v1, 0x5

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/Z;-><init>(I)V

    .line 343
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/N3;->K(Lj$/util/stream/a;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/C0;

    move-result-object p1

    .line 344
    invoke-interface {p1}, Lj$/util/stream/C0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 347
    :cond_0
    new-instance v0, Lj$/util/stream/h4;

    .line 348
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->T(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    .line 782
    iget-object p2, p0, Lj$/util/stream/N3;->n:Ljava/util/function/Predicate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lj$/util/stream/h4;-><init>(Lj$/util/Spliterator;Ljava/util/function/Predicate;I)V

    return-object v0
.end method

.method public final N(ILj$/util/stream/i2;)Lj$/util/stream/i2;
    .locals 1

    .line 394
    new-instance p1, Lj$/util/stream/M3;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/M3;-><init>(Lj$/util/stream/N3;Lj$/util/stream/i2;Z)V

    return-object p1
.end method

.method public final j(Lj$/util/stream/u0;Z)Lj$/util/stream/Z3;
    .locals 1

    .line 394
    new-instance v0, Lj$/util/stream/M3;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/M3;-><init>(Lj$/util/stream/N3;Lj$/util/stream/i2;Z)V

    return-object v0
.end method
