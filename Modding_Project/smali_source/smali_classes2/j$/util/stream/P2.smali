.class public final Lj$/util/stream/P2;
.super Lj$/util/stream/R2;
.source "SourceFile"

# interfaces
.implements Lj$/util/F;


# instance fields
.field public final synthetic g:Lj$/util/stream/Q2;


# direct methods
.method public constructor <init>(Lj$/util/stream/Q2;IIII)V
    .locals 0

    .line 932
    iput-object p1, p0, Lj$/util/stream/P2;->g:Lj$/util/stream/Q2;

    .line 933
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/R2;-><init>(Lj$/util/stream/S2;IIII)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 929
    check-cast p2, [J

    check-cast p3, Ljava/util/function/LongConsumer;

    .line 946
    aget-wide p1, p2, p1

    invoke-interface {p3, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method public final b(Ljava/lang/Object;II)Lj$/util/I;
    .locals 2

    .line 929
    check-cast p1, [J

    add-int/2addr p3, p2

    .line 305
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v0, v0

    invoke-static {v0, p2, p3}, Lj$/util/Spliterators;->a(III)V

    .line 306
    new-instance v0, Lj$/util/X;

    const/16 v1, 0x410

    invoke-direct {v0, p1, p2, p3, v1}, Lj$/util/X;-><init>([JIII)V

    return-object v0
.end method

.method public final c(IIII)Lj$/util/I;
    .locals 6

    .line 940
    new-instance v0, Lj$/util/stream/P2;

    iget-object v1, p0, Lj$/util/stream/P2;->g:Lj$/util/stream/Q2;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/P2;-><init>(Lj$/util/stream/Q2;IIII)V

    return-object v0
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->j(Lj$/util/F;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->z(Lj$/util/F;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
