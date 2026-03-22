.class public final Lj$/util/stream/D;
.super Lj$/util/stream/G;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/g2;


# static fields
.field public static final c:Lj$/util/stream/B;

.field public static final d:Lj$/util/stream/B;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 220
    new-instance v0, Lj$/util/stream/B;

    sget-object v2, Lj$/util/stream/Y2;->INT_VALUE:Lj$/util/stream/Y2;

    .line 221
    sget-object v3, Lj$/util/l;->c:Lj$/util/l;

    new-instance v4, Lj$/util/stream/o;

    const/4 v1, 0x5

    .line 0
    invoke-direct {v4, v1}, Lj$/util/stream/o;-><init>(I)V

    .line 221
    new-instance v5, Lj$/util/stream/o;

    const/4 v1, 0x6

    .line 0
    invoke-direct {v5, v1}, Lj$/util/stream/o;-><init>(I)V

    const/4 v1, 0x1

    .line 221
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/B;-><init>(ZLj$/util/stream/Y2;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Lj$/util/stream/D;->c:Lj$/util/stream/B;

    .line 223
    new-instance v1, Lj$/util/stream/B;

    .line 224
    new-instance v5, Lj$/util/stream/o;

    const/4 v0, 0x5

    .line 0
    invoke-direct {v5, v0}, Lj$/util/stream/o;-><init>(I)V

    .line 224
    new-instance v6, Lj$/util/stream/o;

    const/4 v0, 0x6

    .line 0
    invoke-direct {v6, v0}, Lj$/util/stream/o;-><init>(I)V

    move-object v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    .line 224
    invoke-direct/range {v1 .. v6}, Lj$/util/stream/B;-><init>(ZLj$/util/stream/Y2;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v1, Lj$/util/stream/D;->d:Lj$/util/stream/B;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/G;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->c(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/d;

    move-result-object p1

    return-object p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    .line 217
    iget-boolean v0, p0, Lj$/util/stream/G;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/G;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 113
    new-instance v1, Lj$/util/l;

    invoke-direct {v1, v0}, Lj$/util/l;-><init>(I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
