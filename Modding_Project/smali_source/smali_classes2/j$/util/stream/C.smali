.class public final Lj$/util/stream/C;
.super Lj$/util/stream/G;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/f2;


# static fields
.field public static final c:Lj$/util/stream/B;

.field public static final d:Lj$/util/stream/B;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 264
    new-instance v0, Lj$/util/stream/B;

    sget-object v2, Lj$/util/stream/Y2;->DOUBLE_VALUE:Lj$/util/stream/Y2;

    .line 265
    sget-object v3, Lj$/util/k;->c:Lj$/util/k;

    new-instance v4, Lj$/util/stream/o;

    const/4 v1, 0x3

    .line 0
    invoke-direct {v4, v1}, Lj$/util/stream/o;-><init>(I)V

    .line 265
    new-instance v5, Lj$/util/stream/o;

    const/4 v1, 0x4

    .line 0
    invoke-direct {v5, v1}, Lj$/util/stream/o;-><init>(I)V

    const/4 v1, 0x1

    .line 265
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/B;-><init>(ZLj$/util/stream/Y2;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Lj$/util/stream/C;->c:Lj$/util/stream/B;

    .line 267
    new-instance v1, Lj$/util/stream/B;

    .line 268
    new-instance v5, Lj$/util/stream/o;

    const/4 v0, 0x3

    .line 0
    invoke-direct {v5, v0}, Lj$/util/stream/o;-><init>(I)V

    .line 268
    new-instance v6, Lj$/util/stream/o;

    const/4 v0, 0x4

    .line 0
    invoke-direct {v6, v0}, Lj$/util/stream/o;-><init>(I)V

    move-object v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    .line 268
    invoke-direct/range {v1 .. v6}, Lj$/util/stream/B;-><init>(ZLj$/util/stream/Y2;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v1, Lj$/util/stream/C;->d:Lj$/util/stream/B;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 0

    .line 256
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/G;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/b;

    move-result-object p1

    return-object p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 3

    .line 261
    iget-boolean v0, p0, Lj$/util/stream/G;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/G;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 113
    new-instance v2, Lj$/util/k;

    invoke-direct {v2, v0, v1}, Lj$/util/k;-><init>(D)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
