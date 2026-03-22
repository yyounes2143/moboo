.class public final synthetic Lcom/google/common/collect/QQOOOO;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/function/Function;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/function/Function;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/QQOOOO;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/function/Function;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/collect/QQOOOO;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/function/Function;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/common/collect/QQOOOO;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/function/Function;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/QQOOOO;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/function/Function;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/QQOOOO;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/function/Function;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/common/collect/QQOOOO;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/function/Function;

    .line 6
    .line 7
    check-cast p1, Lcom/google/common/collect/ImmutableTable$Builder;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/common/collect/TableCollectors;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$Builder;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
