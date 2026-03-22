.class public final Lj$/util/stream/k0;
.super Lj$/util/stream/o0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lj$/util/stream/p0;

.field public final synthetic d:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Lj$/util/stream/p0;Ljava/util/function/Predicate;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lj$/util/stream/k0;->c:Lj$/util/stream/p0;

    iput-object p2, p0, Lj$/util/stream/k0;->d:Ljava/util/function/Predicate;

    .line 85
    invoke-direct {p0, p1}, Lj$/util/stream/o0;-><init>(Lj$/util/stream/p0;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 90
    iget-boolean v0, p0, Lj$/util/stream/o0;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/k0;->d:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    .line 0
    iget-object v0, p0, Lj$/util/stream/k0;->c:Lj$/util/stream/p0;

    iget-boolean v1, v0, Lj$/util/stream/p0;->a:Z

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lj$/util/stream/o0;->a:Z

    .line 92
    iget-boolean p1, v0, Lj$/util/stream/p0;->b:Z

    iput-boolean p1, p0, Lj$/util/stream/o0;->b:Z

    :cond_0
    return-void
.end method
