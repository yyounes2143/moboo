.class public abstract Lj$/util/stream/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/J3;


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;


# virtual methods
.method public synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/s1;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/s1;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/s1;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 179
    iget-boolean v0, p0, Lj$/util/stream/G;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lj$/util/stream/G;->a:Z

    .line 181
    iput-object p1, p0, Lj$/util/stream/G;->b:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/lang/Long;)V
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lj$/util/stream/G;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic l()V
    .locals 0

    return-void
.end method

.method public final synthetic m(J)V
    .locals 0

    return-void
.end method

.method public bridge synthetic n(Ljava/lang/Integer;)V
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lj$/util/stream/G;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final o()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lj$/util/stream/G;->a:Z

    return v0
.end method

.method public bridge synthetic q(Ljava/lang/Double;)V
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Lj$/util/stream/G;->accept(Ljava/lang/Object;)V

    return-void
.end method
