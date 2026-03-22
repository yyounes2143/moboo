.class public final synthetic Lcom/google/common/collect/Illlllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/Illlllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Illlllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Enum;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->put(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
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
