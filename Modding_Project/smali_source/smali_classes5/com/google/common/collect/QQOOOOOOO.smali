.class public final synthetic Lcom/google/common/collect/QQOOOOOOO;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/QQOOOOOOO;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/function/BinaryOperator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/QQOOOOOOO;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/function/BinaryOperator;

    .line 2
    .line 3
    check-cast p1, Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;

    .line 4
    .line 5
    check-cast p2, Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;

    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Lcom/google/common/collect/TableCollectors;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;)Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
