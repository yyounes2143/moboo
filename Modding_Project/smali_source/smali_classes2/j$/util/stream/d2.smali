.class public abstract Lj$/util/stream/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/h2;


# instance fields
.field public final a:Lj$/util/stream/i2;


# direct methods
.method public constructor <init>(Lj$/util/stream/i2;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/i2;

    iput-object p1, p0, Lj$/util/stream/d2;->a:Lj$/util/stream/i2;

    return-void
.end method


# virtual methods
.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/s1;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/s1;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/s1;->j(Lj$/util/stream/h2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->d(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Lj$/util/function/e;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic k(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/s1;->i(Lj$/util/stream/h2;Ljava/lang/Long;)V

    return-void
.end method

.method public l()V
    .locals 1

    .line 322
    iget-object v0, p0, Lj$/util/stream/d2;->a:Lj$/util/stream/i2;

    invoke-interface {v0}, Lj$/util/stream/i2;->l()V

    return-void
.end method

.method public m(J)V
    .locals 1

    .line 317
    iget-object v0, p0, Lj$/util/stream/d2;->a:Lj$/util/stream/i2;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/i2;->m(J)V

    return-void
.end method

.method public o()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lj$/util/stream/d2;->a:Lj$/util/stream/i2;

    invoke-interface {v0}, Lj$/util/stream/i2;->o()Z

    move-result v0

    return v0
.end method
